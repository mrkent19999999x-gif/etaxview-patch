package itaxviewer.test;

import itaxviewer.agent.SignatureBypassTransformer;
import java.io.*;
import org.objectweb.asm.ClassReader;

public class RealClassTest {
    static int passed = 0;
    static int failed = 0;

    public static void main(String[] args) throws Exception {
        String dir = args.length > 0 ? args[0] : "/tmp/sig-real";

        System.out.println("=== Real iTaxViewer class file transformation test ===\n");

        // Target classes — should be transformed
        testFile(dir + "/" + "seatechit/ihtkk/tool/signature/IHTKKXMLSignature.class", true);
        testFile(dir + "/" + "seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature.class", true);
        testFile(dir + "/" + "seatechit/ihtkk/tool/signature/CertVerifier.class", true);

        // Non-target classes — should NOT be transformed
        testFile(dir + "/" + "seatechit/ihtkk/tool/signature/XMLSignatureValidationResult.class", false);
        testFile(dir + "/" + "seatechit/ihtkk/tool/signature/X509KeySelector.class", false);

        System.out.println("\n=== Results ===");
        System.out.println("Passed: " + passed + ", Failed: " + failed);
        if (failed > 0) System.exit(1);
    }

    static void testFile(String path, boolean shouldTransform) throws Exception {
        String shortName = path.substring(path.lastIndexOf('/') + 1);
        byte[] original = readFile(path);

        String internalClassName = path
            .replace("/tmp/sig-real/", "")
            .replace(".class", "")
            .replace('/', '.');

        SignatureBypassTransformer t = new SignatureBypassTransformer();
        byte[] transformed = t.transform(null,
            internalClassName.replace('.', '/'),
            null, null, original);

        if (transformed == null && shouldTransform) {
            System.out.println("  FAIL: " + shortName + " should transform but was skipped");
            failed++;
        } else if (transformed != null && !shouldTransform) {
            System.out.println("  FAIL: " + shortName + " should NOT transform but was changed");
            failed++;
        } else if (transformed != null) {
            // Verify valid bytecode
            try {
                ClassReader cr = new ClassReader(transformed);
                System.out.println("  PASS: " + shortName + " transformed (" + original.length + " -> " + transformed.length + " bytes, class=" + cr.getClassName() + ")");
                passed++;
            } catch (Exception e) {
                System.out.println("  FAIL: " + shortName + " invalid bytecode: " + e);
                failed++;
            }
        } else {
            System.out.println("  PASS: " + shortName + " unchanged (not a target)");
            passed++;
        }
    }

    static byte[] readFile(String path) throws IOException {
        File f = new File(path);
        byte[] data = new byte[(int) f.length()];
        try (FileInputStream fis = new FileInputStream(f)) {
            fis.read(data);
        }
        return data;
    }
}
