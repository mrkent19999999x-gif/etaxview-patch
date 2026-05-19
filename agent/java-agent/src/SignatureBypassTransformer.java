package itaxviewer.agent;

import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.Map;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;

public class SignatureBypassTransformer implements ClassFileTransformer {

    private static final class TargetMethod {
        final String name;
        final String desc;
        TargetMethod(String name, String desc) { this.name = name; this.desc = desc; }
    }

    private static final Map<String, TargetMethod[]> TARGETS = new HashMap<>();

    static {
        // IHTKKXMLSignature: private void verifyXMLSignature(XMLSignature, DOMValidateContext)
        TARGETS.put("seatechit/ihtkk/tool/signature/IHTKKXMLSignature", new TargetMethod[]{
            new TargetMethod("verifyXMLSignature",
                "(Ljavax/xml/crypto/dsig/XMLSignature;Ljavax/xml/crypto/dsig/dom/DOMValidateContext;)V")
        });

        // IHTKKXMLTemSignature: private void verifyXMLSignature(XMLSignature, DOMValidateContext)
        TARGETS.put("seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature", new TargetMethod[]{
            new TargetMethod("verifyXMLSignature",
                "(Ljavax/xml/crypto/dsig/XMLSignature;Ljavax/xml/crypto/dsig/dom/DOMValidateContext;)V")
        });

        // CertVerifier: bypass ALL cert chain + revocation checks
        TARGETS.put("seatechit/ihtkk/tool/signature/CertVerifier", new TargetMethod[]{
            new TargetMethod("verifyCertificationChain",
                "(Ljava/util/Date;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)V"),
            new TargetMethod("verifyCertificate",
                "(Ljava/security/cert/X509Certificate;)V"),
            new TargetMethod("checkRevocationStatus",
                "(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)V"),
            new TargetMethod("checkRevocationStatus",
                "(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V")
        });
    }

    @Override
    public byte[] transform(ClassLoader loader, String className,
                            Class<?> classBeingRedefined, ProtectionDomain protectionDomain,
                            byte[] classfileBuffer) throws IllegalClassFormatException {

        TargetMethod[] targets = TARGETS.get(className);
        if (targets == null) {
            return null;
        }

        System.out.println("[iTaxViewer-Agent] Transforming: " + className.replace('/', '.'));

        try {
            ClassReader cr = new ClassReader(classfileBuffer);
            ClassWriter cw = new ClassWriter(0);

            cr.accept(new ClassVisitor(Opcodes.ASM9, cw) {
                @Override
                public MethodVisitor visitMethod(int access, String name, String descriptor,
                                                 String signature, String[] exceptions) {
                    MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);

                    for (TargetMethod target : targets) {
                        if (name.equals(target.name) && descriptor.equals(target.desc)) {
                            System.out.println("[iTaxViewer-Agent]   Bypassed: " + name + descriptor);
                            int maxLocals = countLocalSlots(descriptor,
                                (access & Opcodes.ACC_STATIC) != 0);
                            final MethodVisitor targetMv = mv;

                            if (targetMv == null) {
                                return new MethodVisitor(Opcodes.ASM9) {
                                    boolean done = false;
                                    @Override
                                    public void visitCode() {
                                        if (!done) {
                                            super.visitCode();
                                            super.visitInsn(Opcodes.RETURN);
                                            super.visitMaxs(0, maxLocals);
                                            super.visitEnd();
                                            done = true;
                                        }
                                    }
                                };
                            }

                            return new MethodVisitor(Opcodes.ASM9) {
                                boolean done = false;

                                @Override
                                public void visitCode() {
                                    if (!done) {
                                        targetMv.visitCode();
                                        targetMv.visitInsn(Opcodes.RETURN);
                                        targetMv.visitMaxs(0, maxLocals);
                                        targetMv.visitEnd();
                                        done = true;
                                    }
                                }
                            };
                        }
                    }

                    return mv;
                }
            }, 0);

            return cw.toByteArray();
        } catch (Exception e) {
            System.err.println("[iTaxViewer-Agent] Error transforming " + className + ": " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    private static int countLocalSlots(String descriptor, boolean isStatic) {
        int slots = isStatic ? 0 : 1;
        String params = descriptor.substring(1, descriptor.indexOf(')'));
        int i = 0;
        while (i < params.length()) {
            char c = params.charAt(i);
            if (c == 'B' || c == 'C' || c == 'F' || c == 'I' || c == 'S' || c == 'Z') {
                slots++;
                i++;
            } else if (c == 'D' || c == 'J') {
                slots += 2;
                i++;
            } else if (c == 'L') {
                slots++;
                i = params.indexOf(';', i) + 1;
            } else if (c == '[') {
                slots++;
                i++;
                while (i < params.length() && params.charAt(i) == '[') i++;
                if (i < params.length() && params.charAt(i) == 'L') {
                    i = params.indexOf(';', i) + 1;
                } else {
                    i++;
                }
            } else if (c == '(') {
                i++;
            } else {
                i++;
            }
        }
        return slots;
    }
}
