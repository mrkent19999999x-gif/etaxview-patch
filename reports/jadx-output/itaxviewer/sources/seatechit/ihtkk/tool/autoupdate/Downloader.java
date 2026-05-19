package seatechit.ihtkk.tool.autoupdate;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import javax.swing.JFrame;
import javax.swing.JLabel;
import org.xml.sax.SAXException;
import seatechit.ihtkk.tool.autoupdate.objects.Modes;
import seatechit.ihtkk.tool.autoupdate.parsers.DownloaderXMLParser;
import seatechit.ihtkk.tool.taxview.SignerLogger;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/autoupdate/Downloader.class */
public class Downloader {
    public void download(String filesxml, String destinationdir, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        DownloaderXMLParser parser = new DownloaderXMLParser();
        Iterator iterator = parser.parse(filesxml, mode).iterator();
        File dir = new File(destinationdir);
        if (!dir.exists()) {
            SignerLogger.log("Directory create");
            dir.mkdir();
            SignerLogger.log("Directory is: " + dir.getAbsolutePath());
        }
        JLabel jLabel1 = new JLabel();
        jLabel1.setText("Đang tải bản cập nhật......");
        JFrame frame = new JFrame();
        frame.setContentPane(jLabel1);
        frame.setDefaultCloseOperation(3);
        frame.setSize(300, 70);
        frame.setVisible(true);
        while (iterator.hasNext()) {
            URL url = new URL(iterator.next());
            wget(url, String.valueOf(destinationdir) + File.separator + new File(url.getFile()).getName());
        }
        frame.setVisible(true);
        frame.dispose();
    }

    private void wget(URL url, String destination) throws MalformedURLException, IOException {
        URLConnection conn = url.openConnection();
        InputStream in = conn.getInputStream();
        SignerLogger.log("destination is: " + destination);
        File dstfile = new File(destination);
        SignerLogger.log("File is: " + dstfile.getAbsolutePath());
        OutputStream out = new FileOutputStream(dstfile);
        byte[] buffer = new byte[512];
        while (true) {
            int length = in.read(buffer);
            if (length > 0) {
                out.write(buffer, 0, length);
            } else {
                in.close();
                out.close();
                return;
            }
        }
    }
}
