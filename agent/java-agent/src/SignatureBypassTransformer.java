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
        TARGETS.put("seatechit/ihtkk/tool/signature/IHTKKXMLSignature", new TargetMethod[]{
            new TargetMethod("verifyXMLSignature",
                "(Ljavax/xml/crypto/dsig/XMLSignature;Ljavax/xml/crypto/dsig/dom/DOMValidateContext;)V")
        });

        TARGETS.put("seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature", new TargetMethod[]{
            new TargetMethod("verifyXMLSignature",
                "(Ljavax/xml/crypto/dsig/XMLSignature;Ljavax/xml/crypto/dsig/dom/DOMValidateContext;)V")
        });

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
            ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_MAXS);

            cr.accept(new ClassVisitor(Opcodes.ASM9, cw) {
                @Override
                public MethodVisitor visitMethod(int access, String name, String descriptor,
                                                 String signature, String[] exceptions) {
                    for (TargetMethod target : targets) {
                        if (name.equals(target.name) && descriptor.equals(target.desc)) {
                            System.out.println("[iTaxViewer-Agent]   Bypassed: " + name + descriptor);
                            int maxLocals = countLocalSlots(descriptor,
                                (access & Opcodes.ACC_STATIC) != 0);
                            MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);
                            return new NopMethodVisitor(mv, maxLocals);
                        }
                    }

                    return super.visitMethod(access, name, descriptor, signature, exceptions);
                }
            }, ClassReader.EXPAND_FRAMES);

            return cw.toByteArray();
        } catch (Exception e) {
            System.err.println("[iTaxViewer-Agent] Error transforming " + className + ": " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    /**
     * MethodVisitor that replaces the entire method body with a single RETURN.
     * Swallows all bytecode instructions from the original method.
     */
    private static class NopMethodVisitor extends MethodVisitor {
        private final MethodVisitor delegate;
        private final int maxLocals;

        NopMethodVisitor(MethodVisitor delegate, int maxLocals) {
            super(Opcodes.ASM9);
            this.delegate = delegate;
            this.maxLocals = maxLocals;
        }

        @Override
        public void visitCode() {
            delegate.visitCode();
            delegate.visitInsn(Opcodes.RETURN);
        }

        @Override
        public void visitInsn(int opcode) {
        }

        @Override
        public void visitIntInsn(int opcode, int operand) {
        }

        @Override
        public void visitVarInsn(int opcode, int var) {
        }

        @Override
        public void visitTypeInsn(int opcode, String type) {
        }

        @Override
        public void visitFieldInsn(int opcode, String owner, String name, String descriptor) {
        }

        @Override
        public void visitMethodInsn(int opcode, String owner, String name, String descriptor, boolean isInterface) {
        }

        @Override
        public void visitInvokeDynamicInsn(String name, String descriptor, org.objectweb.asm.Handle bootstrapMethodHandle, Object... bootstrapMethodArguments) {
        }

        @Override
        public void visitJumpInsn(int opcode, org.objectweb.asm.Label label) {
        }

        @Override
        public void visitLdcInsn(Object value) {
        }

        @Override
        public void visitIincInsn(int var, int increment) {
        }

        @Override
        public void visitTableSwitchInsn(int min, int max, org.objectweb.asm.Label dflt, org.objectweb.asm.Label... labels) {
        }

        @Override
        public void visitLookupSwitchInsn(org.objectweb.asm.Label dflt, int[] keys, org.objectweb.asm.Label[] labels) {
        }

        @Override
        public void visitMultiANewArrayInsn(String descriptor, int numDimensions) {
        }

        @Override
        public void visitLabel(org.objectweb.asm.Label label) {
        }

        @Override
        public void visitLineNumber(int line, org.objectweb.asm.Label start) {
        }

        @Override
        public void visitLocalVariable(String name, String descriptor, String signature,
                                       org.objectweb.asm.Label start, org.objectweb.asm.Label end, int index) {
        }

        @Override
        public void visitFrame(int type, int numLocal, Object[] local, int numStack, Object[] stack) {
        }

        @Override
        public void visitTryCatchBlock(org.objectweb.asm.Label start, org.objectweb.asm.Label end,
                                       org.objectweb.asm.Label handler, String type) {
        }

        @Override
        public void visitMaxs(int maxStack, int maxLocals) {
            delegate.visitMaxs(0, this.maxLocals);
        }

        @Override
        public void visitEnd() {
            delegate.visitEnd();
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
