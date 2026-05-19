package seatechit.ihtkk.tool.signature;

import java.security.cert.X509Certificate;
import java.util.Date;

public class CertVerifier {
    public static int count = 0;

    public void verifyCertificationChain(Date date, X509Certificate cert, X509Certificate[] chain) {
        count++;
        System.out.println("[MOCK] CertVerifier.verifyCertificationChain called (" + count + ")");
    }

    public void verifyCertificate(X509Certificate cert) {
        count++;
        System.out.println("[MOCK] CertVerifier.verifyCertificate called (" + count + ")");
    }

    public void checkRevocationStatus(X509Certificate cert, X509Certificate[] chain) {
        count++;
        System.out.println("[MOCK] CertVerifier.checkRevocationStatus(cert, X509Certificate[]) called (" + count + ")");
    }

    public void checkRevocationStatus(X509Certificate cert, X509Certificate single) {
        count++;
        System.out.println("[MOCK] CertVerifier.checkRevocationStatus(cert, X509Certificate) called (" + count + ")");
    }
}
