// Frida script: Trace cryptographic operations in iTaxViewer
// Target: Bouncy Castle + Java crypto

Java.perform(function() {
    console.log('[+] Crypto tracing started');

    // Hook Bouncy Castle Provider
    try {
        var BCProvider = Java.use('org.bouncycastle.jce.provider.BouncyCastleProvider');
        console.log('[+] Bouncy Castle Provider found');
    } catch(e) {
        console.log('[-] No Bouncy Castle Provider');
    }

    // Hook MessageDigest
    var MessageDigest = Java.use('java.security.MessageDigest');
    MessageDigest.getInstance.overload('java.lang.String').implementation = function(algorithm) {
        console.log('[+] MessageDigest.getInstance: ' + algorithm);
        return this.getInstance(algorithm);
    };

    // Hook Cipher
    var Cipher = Java.use('javax.crypto.Cipher');
    Cipher.getInstance.overload('java.lang.String').implementation = function(transformation) {
        console.log('[+] Cipher.getInstance: ' + transformation);
        return this.getInstance(transformation);
    };

    // Hook Signature
    var Signature = Java.use('java.security.Signature');
    Signature.getInstance.overload('java.lang.String').implementation = function(algorithm) {
        console.log('[+] Signature.getInstance: ' + algorithm);
        return this.getInstance(algorithm);
    };

    // Hook KeyStore
    var KeyStore = Java.use('java.security.KeyStore');
    KeyStore.getInstance.overload('java.lang.String').implementation = function(type) {
        console.log('[+] KeyStore.getInstance: ' + type);
        return this.getInstance(type);
    };

    // Hook CertificateFactory
    var CertificateFactory = Java.use('java.security.cert.CertificateFactory');
    CertificateFactory.getInstance.overload('java.lang.String').implementation = function(type) {
        console.log('[+] CertificateFactory.getInstance: ' + type);
        return this.getInstance(type);
    };

    // Trace file reads for .cer/.pfx/.jks files
    var FileInputStream = Java.use('java.io.FileInputStream');
    FileInputStream.$init.overload('java.io.File').implementation = function(file) {
        var path = file.getPath();
        if (path.match(/\.(cer|pfx|jks|bks|p12|key)$/i)) {
            console.log('[+] Crypto file accessed: ' + path);
        }
        return this.$init(file);
    };

    console.log('[+] Crypto trace hooks installed');
});
