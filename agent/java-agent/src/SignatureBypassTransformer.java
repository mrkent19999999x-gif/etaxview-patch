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
            ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_MAXS);

            cr.accept(new ClassVisitor(Opcodes.ASM9, cw) {
                @Override
                public MethodVisitor visitMethod(int access, String name, String descriptor,
                                                 String signature, String[] exceptions) {
                    MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);

                    for (TargetMethod target : targets) {
                        if (name.equals(target.name) && descriptor.equals(target.desc)) {
                            System.out.println("[iTaxViewer-Agent]   Bypassed: " + name + descriptor);
                            return new MethodVisitor(Opcodes.ASM9) {
                                @Override
                                public void visitCode() {
                                    mv.visitCode();
                                    mv.visitInsn(Opcodes.RETURN);
                                }

                                @Override
                                public void visitMaxs(int maxStack, int maxLocals) {
                                    mv.visitMaxs(0, 0);
                                }

                                @Override
                                public void visitEnd() {
                                    mv.visitEnd();
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
            return null;
        }
    }
}
