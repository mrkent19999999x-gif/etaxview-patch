// Frida script: Bypass SSL pinning in iTaxViewer
// Target: Java SWT application
//
// Usage:
//   frida -n iTaxViewer.exe -l ssl-unpin.js --no-pause
//   frida -p <PID> -l ssl-unpin.js

'use strict';

Java.perform(function() {
    console.log('[SSLUnpin] SSL pinning bypass started');

    // ---- TrustAllManager ----
    var X509TrustManager = Java.use('javax.net.ssl.X509TrustManager');

    var TrustAllManager = Java.registerClass({
        name: 'itaxviewer.TrustAllManager',
        implements: [X509TrustManager],
        methods: {
            checkClientTrusted: function(chain, authType) {},
            checkServerTrusted: function(chain, authType) {},
            getAcceptedIssuers: function() { return []; }
        }
    });

    var trustAllInstance = TrustAllManager.$new();

    // ---- Hook SSLContext.init ----
    var SSLContext = Java.use('javax.net.ssl.SSLContext');
    SSLContext.init.overload(
        '[Ljavax.net.ssl.KeyManager;',
        '[Ljavax.net.ssl.TrustManager;',
        'java.security.SecureRandom'
    ).implementation = function(keyManagers, trustManagers, secureRandom) {
        console.log('[SSLUnpin] SSLContext.init() - replacing trust managers');
        var trustAll = [trustAllInstance];
        this.init(keyManagers, trustAll, secureRandom);
    };

    // ---- Hook HttpsURLConnection.setDefaultHostnameVerifier ----
    var HostnameVerifier = Java.use('javax.net.ssl.HostnameVerifier');
    var TrustAllHostnameVerifier = Java.registerClass({
        name: 'itaxviewer.TrustAllHostnameVerifier',
        implements: [HostnameVerifier],
        methods: {
            verify: function(hostname, session) {
                return true;
            }
        }
    });

    var HttpsURLConnection = Java.use('javax.net.ssl.HttpsURLConnection');
    HttpsURLConnection.setDefaultHostnameVerifier.overload(
        'javax.net.ssl.HostnameVerifier'
    ).implementation = function(verifier) {
        console.log('[SSLUnpin] setDefaultHostnameVerifier() - bypassed');
        this.setDefaultHostnameVerifier(TrustAllHostnameVerifier.$new());
    };

    // ---- Hook HttpsURLConnection.setHostnameVerifier (instance method) ----
    try {
        HttpsURLConnection.setHostnameVerifier.overload(
            'javax.net.ssl.HostnameVerifier'
        ).implementation = function(verifier) {
            console.log('[SSLUnpin] setHostnameVerifier() - bypassed');
            this.setHostnameVerifier(TrustAllHostnameVerifier.$new());
        };
    } catch(e) {
        console.log('[SSLUnpin] setHostnameVerifier instance method not found');
    }

    // ---- Hook HttpsURLConnection.setSSLSocketFactory ----
    try {
        HttpsURLConnection.setSSLSocketFactory.overload(
            'javax.net.ssl.SSLSocketFactory'
        ).implementation = function(factory) {
            console.log('[SSLUnpin] setSSLSocketFactory() - bypassed');
            var ctx = SSLContext.getInstance('TLS');
            ctx.init(null, [trustAllInstance], null);
            this.setSSLSocketFactory(ctx.getSocketFactory());
        };
    } catch(e) {
        console.log('[SSLUnpin] setSSLSocketFactory hook failed: ' + e.message);
    }

    // ---- Bouncy Castle JSSE detection ----
    try {
        var BC = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
        console.log('[SSLUnpin] Bouncy Castle JSSE detected');
    } catch(e) {
        console.log('[SSLUnpin] No Bouncy Castle JSSE');
    }

    console.log('[SSLUnpin] All SSL bypass hooks installed');
});
