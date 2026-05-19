package com.seatech.tct.autoupdate;

import com.seatech.tct.autoupdate.objects.Modes;
import com.seatech.tct.autoupdate.parsers.DownloaderXMLParser;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import org.xml.sax.SAXException;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/Downloader.class */
public class Downloader {
    public void download(String filesxml, String destinationdir, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        DownloaderXMLParser parser = new DownloaderXMLParser();
        Iterator iterator = parser.parse(filesxml, mode).iterator();
        File dir = new File(destinationdir);
        if (!dir.exists()) {
            dir.mkdir();
        }
        while (iterator.hasNext()) {
            if (mode.equals(Modes.URL)) {
                URL url = new URL(iterator.next());
                wget(url, String.valueOf(destinationdir) + File.separator + new File(url.getFile()).getName());
            } else if (mode.equals(Modes.FILE)) {
                String urlStr = iterator.next();
                if (!"".equals(urlStr)) {
                    wget(urlStr, String.valueOf(destinationdir) + File.separator + new File(urlStr).getName());
                }
            }
        }
    }

    private void wget(URL url, String destination) throws MalformedURLException, IOException {
        URLConnection conn = url.openConnection();
        InputStream in = conn.getInputStream();
        File dstfile = new File(destination);
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

    private void wget(String source, String destination) throws MalformedURLException, IOException {
        File srcfile = new File(source);
        File dstfile = new File(destination);
        InputStream in = new FileInputStream(srcfile);
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
