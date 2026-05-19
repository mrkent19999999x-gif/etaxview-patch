package seatechit.ihtkk.tool.autoupdate;

import com.sun.net.ssl.internal.ssl.Provider;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import org.xml.sax.SAXException;
import seatechit.ihtkk.tool.autoupdate.objects.Modes;
import seatechit.ihtkk.tool.autoupdate.objects.Release;
import seatechit.ihtkk.tool.autoupdate.parsers.ReleaseXMLParser;
import seatechit.ihtkk.tool.signature.CertVerifier;
import seatechit.ihtkk.tool.taxview.SignerLogger;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/autoupdate/AutoUpdate.class */
public class AutoUpdate extends JFrame {
    private String rootUrl = "";
    private JLabel jLabel1;
    private JLabel jLabel2;

    public AutoUpdate(String rootUrl) {
        rootUrl = (rootUrl == null || rootUrl == "") ? "https://thuedientu.gdt.gov.vn/etaxnnt/static/update" : rootUrl;
        initComponents();
        int answer = -1;
        ReleaseXMLParser parser = new ReleaseXMLParser();
        try {
            Release currentLocal = parser.parse("update/latest.xml", Modes.FILE);
            Release current = parser.parse(String.valueOf(rootUrl) + "/latest.xml", Modes.URL);
            if (current.compareTo(currentLocal) > 0) {
                answer = 0;
                switch (answer) {
                    case CertVerifier.CERT_STATUS_GOOD /* 0 */:
                        Downloader dl = new Downloader();
                        dl.download(String.valueOf(rootUrl) + "/files.xml", "tmp", Modes.URL);
                        SignerLogger.log("Download success");
                        break;
                }
            }
        } catch (FileNotFoundException ex) {
            JOptionPane.showMessageDialog(this.rootPane, "Tải gói cập nhật không thành công!\nKhông thể tải về hoặc tạo tệp tin cập nhật!\nVui lòng kiểm tra lại quyền và kết nối mạng!", "Lỗi tải gói cập nhật!", 2);
            SignerLogger.log(ex);
            answer = -1;
        } catch (IOException ex2) {
            JOptionPane.showMessageDialog(this.rootPane, "Lỗi ghi dữ liệu!", "Lỗi tải gói cập nhật!", 2);
            SignerLogger.log(ex2);
            answer = -1;
        } catch (InterruptedException ex3) {
            JOptionPane.showMessageDialog(this.rootPane, "Không có kết nối mạng!\nVui lòng kiểm tra kết nối và đường truyền mạng !", "Lỗi tải gói cập nhật!", 2);
            SignerLogger.log(ex3);
            answer = -1;
        } catch (SAXException ex4) {
            JOptionPane.showMessageDialog(this.rootPane, "Tải gói cập nhật không thành công!\nLỗi nạp file xml!\n", "Lỗi tải gói cập nhật!", 2);
            SignerLogger.log(ex4);
            answer = -1;
        }
        if (answer == 0) {
            try {
                SignerLogger.log("Start shutdow");
                attachShutDownHook();
                System.exit(0);
                SignerLogger.log("Shutdow completed");
            } catch (Exception ex5) {
                SignerLogger.log(ex5);
            }
        }
        File tmp = new File("tmp");
        if (tmp.exists()) {
            for (File file : tmp.listFiles()) {
                file.delete();
            }
            tmp.delete();
        }
    }

    public AutoUpdate() {
    }

    public void attachShutDownHook() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: seatechit.ihtkk.tool.autoupdate.AutoUpdate.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String javaPath = String.valueOf(System.getProperty("user.dir")) + File.separator + "jre" + File.separator + "bin" + File.separator + "java.exe";
                SignerLogger.log("javaPath " + javaPath);
                String[] run = {javaPath, "-jar", "update/update.jar"};
                try {
                    SignerLogger.log("Start Hook");
                    Runtime.getRuntime().exec(run);
                } catch (Exception ex) {
                    SignerLogger.log("Hook error: " + ex.getMessage());
                }
            }
        });
    }

    private void initComponents() {
        pack();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        javax.swing.UIManager.setLookAndFeel(r0.getClassName());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run(java.lang.String[] r5) throws java.lang.Exception {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto L10
            r0 = r5
            int r0 = r0.length
            if (r0 <= 0) goto L10
            r0 = r4
            r1 = r5
            r2 = 0
            r1 = r1[r2]
            r0.rootUrl = r1
        L10:
            javax.swing.UIManager$LookAndFeelInfo[] r0 = javax.swing.UIManager.getInstalledLookAndFeels()     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            r1 = r0
            r9 = r1
            int r0 = r0.length     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            r8 = r0
            r0 = 0
            r7 = r0
            goto L3c
        L1e:
            r0 = r9
            r1 = r7
            r0 = r0[r1]     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            r6 = r0
            java.lang.String r0 = "Nimbus"
            r1 = r6
            java.lang.String r1 = r1.getName()     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            boolean r0 = r0.equals(r1)     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            if (r0 == 0) goto L39
            r0 = r6
            java.lang.String r0 = r0.getClassName()     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            javax.swing.UIManager.setLookAndFeel(r0)     // Catch: java.lang.ClassNotFoundException -> L45 java.lang.InstantiationException -> L4c java.lang.IllegalAccessException -> L53 javax.swing.UnsupportedLookAndFeelException -> L5a
            goto L61
        L39:
            int r7 = r7 + 1
        L3c:
            r0 = r7
            r1 = r8
            if (r0 < r1) goto L1e
            goto L61
        L45:
            r6 = move-exception
            r0 = r6
            seatechit.ihtkk.tool.taxview.SignerLogger.log(r0)
            r0 = r6
            throw r0
        L4c:
            r6 = move-exception
            r0 = r6
            seatechit.ihtkk.tool.taxview.SignerLogger.log(r0)
            r0 = r6
            throw r0
        L53:
            r6 = move-exception
            r0 = r6
            seatechit.ihtkk.tool.taxview.SignerLogger.log(r0)
            r0 = r6
            throw r0
        L5a:
            r6 = move-exception
            r0 = r6
            seatechit.ihtkk.tool.taxview.SignerLogger.log(r0)
            r0 = r6
            throw r0
        L61:
            seatechit.ihtkk.tool.autoupdate.AutoUpdate$2 r0 = new seatechit.ihtkk.tool.autoupdate.AutoUpdate$2
            r1 = r0
            r2 = r4
            r1.<init>()
            java.awt.EventQueue.invokeLater(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: seatechit.ihtkk.tool.autoupdate.AutoUpdate.run(java.lang.String[]):void");
    }

    public static void doTrustToCertificates() throws Exception {
        Security.addProvider(new Provider());
        TrustManager[] trustAllCerts = {new X509TrustManager() { // from class: seatechit.ihtkk.tool.autoupdate.AutoUpdate.3
            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] certs, String authType) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] certs, String authType) {
            }
        }};
        SSLContext sc = SSLContext.getInstance("SSL");
        sc.init(null, trustAllCerts, new SecureRandom());
        HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
        HostnameVerifier hv = new HostnameVerifier() { // from class: seatechit.ihtkk.tool.autoupdate.AutoUpdate.4
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String urlHostName, SSLSession session) {
                if (!urlHostName.equalsIgnoreCase(session.getPeerHost())) {
                    System.out.println("Warning: URL host '" + urlHostName + "' is different to SSLSession host '" + session.getPeerHost() + "'.");
                    return true;
                }
                return true;
            }
        };
        HttpsURLConnection.setDefaultHostnameVerifier(hv);
    }

    public static boolean isNewVersion(String rootUrl) {
        if (rootUrl == null || rootUrl == "") {
            rootUrl = "http://ihtkkresource.gdt.gov.vn/etax_resource/resources/Itaxviewer/update";
        }
        boolean isNewVersion = false;
        ReleaseXMLParser parser = new ReleaseXMLParser();
        try {
            URL aURL = new URL(rootUrl);
            if (aURL.getProtocol().equals("https")) {
                doTrustToCertificates();
                URL url = new URL(rootUrl);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                SignerLogger.log("-------ResponseCode =" + conn.getResponseCode());
            }
        } catch (Exception e) {
            SignerLogger.log("Cannot register WeakSSL for HTTPS--" + e);
        }
        try {
            Release currentLocal = parser.parse("update/latest.xml", Modes.FILE);
            Release current = parser.parse(String.valueOf(rootUrl) + "/latest.xml", Modes.URL);
            if (current.compareTo(currentLocal) > 0) {
                isNewVersion = true;
            }
        } catch (FileNotFoundException ex) {
            SignerLogger.log(ex);
            isNewVersion = false;
        } catch (IOException ex2) {
            SignerLogger.log(ex2);
            isNewVersion = false;
        } catch (InterruptedException ex3) {
            SignerLogger.log(ex3);
            isNewVersion = false;
        } catch (SAXException ex4) {
            SignerLogger.log(ex4);
            isNewVersion = false;
        }
        return isNewVersion;
    }

    public void downloadPackage(String rootUrl) {
        try {
            SignerLogger.log("Start download");
            Downloader dl = new Downloader();
            dl.download(String.valueOf(rootUrl) + "/files.xml", "update", Modes.URL);
            SignerLogger.log("Download success");
        } catch (FileNotFoundException ex) {
            SignerLogger.log(ex);
        } catch (IOException ex2) {
            SignerLogger.log(ex2);
        } catch (InterruptedException ex3) {
            SignerLogger.log(ex3);
        } catch (SAXException ex4) {
            SignerLogger.log(ex4);
        }
    }

    public void updatePackage() {
        try {
            SignerLogger.log("Start shutdow");
            attachShutDownHook();
            SignerLogger.log("Shutdow completed");
            File tmp = new File("tmp");
            if (tmp.exists()) {
                for (File file : tmp.listFiles()) {
                    file.delete();
                }
                tmp.delete();
            }
        } catch (Exception ex) {
            SignerLogger.log(ex);
        }
    }
}
