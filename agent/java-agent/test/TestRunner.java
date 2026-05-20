import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.signature.IHTKKXMLTemSignature;
import seatechit.ihtkk.tool.signature.CertVerifier;

public class TestRunner {

    private static int passed = 0;
    private static int failed = 0;
    private static int total = 0;

    public static void main(String[] args) throws Exception {
        boolean agentActive = false;
        for (String a : args) {
            if ("-agent".equals(a)) agentActive = true;
        }

        String mode = agentActive ? "WITH AGENT" : "WITHOUT AGENT";
        System.out.println("==========================================");
        System.out.println(" iTaxViewer Signature Bypass Agent Tests");
        System.out.println(" Mode: " + mode);
        System.out.println("==========================================\n");

        testIHTKKXMLSignature();
        testIHTKKXMLTemSignature();
        testCertVerifier();
        testNonTargetClass();

        System.out.println("\n==========================================");
        System.out.println(" Results: " + passed + "/" + total + " passed");
        if (failed > 0) {
            System.out.println(" FAILED: " + failed + " test(s) failed");
            if (agentActive) System.exit(1);
        } else {
            System.out.println(" ALL TESTS PASSED");
        }
        System.out.println("==========================================");
    }

    private static void testIHTKKXMLSignature() {
        System.out.println("[Test] IHTKKXMLSignature.verifyXMLSignature()");
        IHTKKXMLSignature.count = 0;
        IHTKKXMLSignature sig1 = new IHTKKXMLSignature();
        sig1.verifyXMLSignature(null, null);
        assertResult("IHTKKXMLSignature.verifyXMLSignature()", IHTKKXMLSignature.count == 0);
    }

    private static void testIHTKKXMLTemSignature() {
        System.out.println("[Test] IHTKKXMLTemSignature.verifyXMLSignature()");
        IHTKKXMLTemSignature.count = 0;
        IHTKKXMLTemSignature sig2 = new IHTKKXMLTemSignature();
        sig2.verifyXMLSignature(null, null);
        assertResult("IHTKKXMLTemSignature.verifyXMLSignature()", IHTKKXMLTemSignature.count == 0);
    }

    private static void testCertVerifier() {
        System.out.println("[Test] CertVerifier.verifyCertificationChain()");
        CertVerifier.count = 0;
        CertVerifier cv = new CertVerifier();
        cv.verifyCertificationChain(null, null, null);
        assertResult("CertVerifier.verifyCertificationChain()", CertVerifier.count == 0);

        System.out.println("[Test] CertVerifier.verifyCertificate()");
        CertVerifier.count = 0;
        cv.verifyCertificate(null);
        assertResult("CertVerifier.verifyCertificate()", CertVerifier.count == 0);

        System.out.println("[Test] CertVerifier.checkRevocationStatus(cert, X509Certificate[])");
        CertVerifier.count = 0;
        cv.checkRevocationStatus(null, (java.security.cert.X509Certificate[]) null);
        assertResult("CertVerifier.checkRevocationStatus(array)", CertVerifier.count == 0);

        System.out.println("[Test] CertVerifier.checkRevocationStatus(cert, single)");
        CertVerifier.count = 0;
        cv.checkRevocationStatus(null, (java.security.cert.X509Certificate) null);
        assertResult("CertVerifier.checkRevocationStatus(single)", CertVerifier.count == 0);
    }

    private static void testNonTargetClass() {
        System.out.println("[Test] NonTargetClass.doSomething() should NOT be affected");
        NonTargetClass ntc = new NonTargetClass();
        try {
            ntc.doSomething();
            assertResult("NonTargetClass.doSomething()", true);
        } catch (Exception e) {
            assertResult("NonTargetClass.doSomething()", false);
        }
    }

    private static void assertResult(String name, boolean ok) {
        total++;
        if (ok) {
            System.out.println("  [PASS] " + name);
            passed++;
        } else {
            System.out.println("  [FAIL] " + name);
            failed++;
        }
    }
}
