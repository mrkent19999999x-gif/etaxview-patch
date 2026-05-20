package itaxviewer.test;

import itaxviewer.agent.SignatureBypassTransformer;
import java.io.*;
import org.objectweb.asm.ClassReader;

public class RealClassTest {
    static int passed = 0;
    static int failed = 0;

    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.err.println("Usage: RealClassTest <base-dir>");
            System.exit(1);
        }
        String baseDir = args[0];

        System.out.println("=== Real iTaxViewer class file transformation test ===\n");
        System.out.println("Base dir: " + baseDir + "\n");

        // Target classes — should be transformed
        testFile(baseDir, "seatechit/ihtkk/tool/signature/IHTKKXMLSignature.class", true);
        testFile(baseDir, "seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature.class", true);
        testFile(baseDir, "seatechit/ihtkk/tool/signature/CertVerifier.class", true);

        // Non-target classes — should NOT be transformed
        testFile(baseDir, "seatechit/ihtkk/tool/signature/XMLSignatureValidationResult.class", false);
        testFile(baseDir, "seatechit/ihtkk/tool/signature/X509KeySelector.class", false);

        System.out.println("\n=== Results ===");
        System.out.println("Passed: " + passed + ", Failed: " + failed);
        if (failed > 0) System.exit(1);
    }

    static void testFile(String baseDir, String relativePath, boolean shouldTransform) throws Exception {
        String fullPath = baseDir + "/" + relativePath;
        File f = new File(fullPath);
        if (!f.exists()) {
            System.out.println("  SKIP: " + relativePath + " (file not found)");
            return;
        }

        String shortName = relativePath.substring(relativePath.lastIndexOf('/') + 1);
        byte[] original = readFile(fullPath);

        String internalClassName = relativePath.replace(".class", "");

        SignatureBypassTransformer t = new SignatureBypassTransformer();
        byte[] transformed = t.transform(null, internalClassName, null, null, original);

        if (transformed == null && shouldTransform) {
            System.out.println("  FAIL: " + shortName + " should transform but was skipped");
            failed++;
        } else if (transformed != null && !shouldTransform) {
            System.out.println("  FAIL: " + shortName + " should NOT transform but was changed");
            failed++;
        } else if (transformed != null) {
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
            int read = fis.read(data);
            if (read != data.length) {
                throw new IOException("Incomplete read: " + read + " of " + data.length);
            }
        }
        return data;
    }
}
