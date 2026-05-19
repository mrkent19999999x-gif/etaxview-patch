import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.signature.IHTKKXMLTemSignature;
import seatechit.ihtkk.tool.signature.CertVerifier;

public class TestRunner {
    public static void main(String[] args) throws Exception {
        int passed = 0;
        int failed = 0;

        boolean agentActive = false;
        for (String a : args) {
            if ("-agent".equals(a)) agentActive = true;
        }

        System.out.println("=== iTaxViewer Signature Bypass Agent Test ===");
        System.out.println("Mode: " + (agentActive ? "WITH AGENT" : "WITHOUT AGENT"));
        System.out.println();

        // Test 1: IHTKKXMLSignature.verifyXMLSignature
        IHTKKXMLSignature sig1 = new IHTKKXMLSignature();
        sig1.verifyXMLSignature(null, null);
        if (IHTKKXMLSignature.count == 0) {
            System.out.println("  PASS: IHTKKXMLSignature.verifyXMLSignature() was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: IHTKKXMLSignature.verifyXMLSignature() was NOT NOP'd");
            failed++;
        }

        // Test 2: IHTKKXMLTemSignature.verifyXMLSignature
        IHTKKXMLTemSignature sig2 = new IHTKKXMLTemSignature();
        sig2.verifyXMLSignature(null, null);
        if (IHTKKXMLTemSignature.count == 0) {
            System.out.println("  PASS: IHTKKXMLTemSignature.verifyXMLSignature() was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: IHTKKXMLTemSignature.verifyXMLSignature() was NOT NOP'd");
            failed++;
        }

        // Test 3: CertVerifier.verifyCertificationChain
        CertVerifier cv = new CertVerifier();
        cv.verifyCertificationChain(null, null, null);
        if (CertVerifier.count == 0) {
            System.out.println("  PASS: CertVerifier.verifyCertificationChain() was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: CertVerifier.verifyCertificationChain() was NOT NOP'd");
            failed++;
        }

        // Test 4: CertVerifier.verifyCertificate
        cv.verifyCertificate(null);
        if (CertVerifier.count == 0) {
            System.out.println("  PASS: CertVerifier.verifyCertificate() was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: CertVerifier.verifyCertificate() was NOT NOP'd");
            failed++;
        }

        // Test 5: CertVerifier.checkRevocationStatus (X509Certificate[])
        cv.checkRevocationStatus(null, (java.security.cert.X509Certificate[]) null);
        if (CertVerifier.count == 0) {
            System.out.println("  PASS: CertVerifier.checkRevocationStatus(cert, X509Certificate[]) was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: CertVerifier.checkRevocationStatus(cert, X509Certificate[]) was NOT NOP'd");
            failed++;
        }

        // Test 6: CertVerifier.checkRevocationStatus (single X509Certificate)
        cv.checkRevocationStatus(null, (java.security.cert.X509Certificate) null);
        if (CertVerifier.count == 0) {
            System.out.println("  PASS: CertVerifier.checkRevocationStatus(cert, single) was NOP'd");
            passed++;
        } else {
            System.out.println("  FAIL: CertVerifier.checkRevocationStatus(cert, single) was NOT NOP'd");
            failed++;
        }

        System.out.println();
        if (failed == 0) {
            System.out.println("ALL " + passed + " TESTS PASSED" + (agentActive ? " (agent working correctly)" : " (expected without agent)"));
        } else {
            System.out.println(passed + " PASSED, " + failed + " FAILED" + (agentActive ? " (agent may not be working!)" : " (expected without agent)"));
            if (agentActive) System.exit(1);
        }
    }
}
