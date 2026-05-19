// iTaxViewer - Digital Signature Bypass (Frida hook)
// Bypasses all XML signature verification, certificate chain validation, and OCSP revocation checks
//
// Usage:
//   frida -n iTaxViewer.exe -l signature-bypass.js --no-pause
//   frida -p <PID> -l signature-bypass.js

'use strict';

Java.perform(function () {
    console.log('[SigBypass] Frida signature bypass agent loaded');

    // ---- 1. IHTKKXMLSignature ----
    var IHTKKXMLSignature = Java.use('seatechit.ihtkk.tool.signature.IHTKKXMLSignature');

    // private void verifyXMLSignature(XMLSignature, DOMValidateContext)
    IHTKKXMLSignature.verifyXMLSignature.overload('javax.xml.crypto.dsig.XMLSignature', 'javax.xml.crypto.dsig.dom.DOMValidateContext')
        .implementation = function (signature, valContext) {
            console.log('[SigBypass] IHTKKXMLSignature.verifyXMLSignature() bypassed');
            // Do nothing - no exception thrown = signature marked as VALID
        };

    // ---- 2. IHTKKXMLTemSignature ----
    var IHTKKXMLTemSignature = Java.use('seatechit.ihtkk.tool.signature.IHTKKXMLTemSignature');

    IHTKKXMLTemSignature.verifyXMLSignature.overload('javax.xml.crypto.dsig.XMLSignature', 'javax.xml.crypto.dsig.dom.DOMValidateContext')
        .implementation = function (signature, valContext) {
            console.log('[SigBypass] IHTKKXMLTemSignature.verifyXMLSignature() bypassed');
        };

    // ---- 3. CertVerifier ----
    var CertVerifier = Java.use('seatechit.ihtkk.tool.signature.CertVerifier');

    CertVerifier.verifyCertificationChain.overload('java.util.Date', 'java.security.cert.X509Certificate', '[Ljava.security.cert.X509Certificate;')
        .implementation = function (dValidity, cert, certChain) {
            console.log('[SigBypass] CertVerifier.verifyCertificationChain() bypassed');
        };

    CertVerifier.verifyCertificate.overload('java.security.cert.X509Certificate')
        .implementation = function (aCertificate) {
            console.log('[SigBypass] CertVerifier.verifyCertificate() bypassed');
        };

    CertVerifier.checkRevocationStatus.overload('java.security.cert.X509Certificate', '[Ljava.security.cert.X509Certificate;')
        .implementation = function (cert, issuerCerts) {
            console.log('[SigBypass] CertVerifier.checkRevocationStatus(cert, issuerCerts[]) bypassed');
        };

    CertVerifier.checkRevocationStatus.overload('java.security.cert.X509Certificate', 'java.security.cert.X509Certificate')
        .implementation = function (cert, issuerCert) {
            console.log('[SigBypass] CertVerifier.checkRevocationStatus(cert, issuerCert) bypassed');
        };

    console.log('[SigBypass] All signature hooks installed');
});
