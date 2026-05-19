// Frida script: Bypass SSL pinning in iTaxViewer
// Target: Java SWT application

Java.perform(function() {
    var ArrayList = Java.use('java.util.ArrayList');
    
    // Hook TrustManager
    var TrustManager = Java.use('javax.net.ssl.TrustManager');
    var X509TrustManager = Java.use('javax.net.ssl.X509TrustManager');
    
    // Bypass certificate validation
    var TrustAllManager = Java.registerClass({
        name: 'com.example.TrustAllManager',
        implements: [X509TrustManager],
        methods: {
            checkClientTrusted: function(chain, authType) {},
            checkServerTrusted: function(chain, authType) {},
            getAcceptedIssuers: function() { return []; }
        }
    });

    // Hook SSLContext.init to use our trust manager
    var SSLContext = Java.use('javax.net.ssl.SSLContext');
    SSLContext.init.overload(
        '[Ljavax.net.ssl.KeyManager;',
        '[Ljavax.net.ssl.TrustManager;',
        'java.security.SecureRandom'
    ).implementation = function(keyManagers, trustManagers, secureRandom) {
        console.log('[+] SSLContext.init hooked - replacing trust managers');
        var trustAll = [TrustAllManager.$new()];
        this.init(keyManagers, trustAll, secureRandom);
    };

    // Hook HttpsURLConnection
    var HttpsURLConnection = Java.use('javax.net.ssl.HttpsURLConnection');
    HttpsURLConnection.setDefaultHostnameVerifier.implementation = function(v) {
        console.log('[+] Hostname verifier bypassed');
    };

    // Hook Bouncy Castle if used for custom TLS
    try {
        var BC = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
        console.log('[+] Bouncy Castle JSSE detected');
    } catch(e) {
        console.log('[-] No Bouncy Castle JSSE');
    }

    console.log('[+] SSL pinning bypass active');
});
