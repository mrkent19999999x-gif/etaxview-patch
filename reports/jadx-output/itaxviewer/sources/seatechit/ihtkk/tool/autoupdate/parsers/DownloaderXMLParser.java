package seatechit.ihtkk.tool.autoupdate.parsers;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
import seatechit.ihtkk.tool.autoupdate.objects.Modes;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/autoupdate/parsers/DownloaderXMLParser.class */
public class DownloaderXMLParser {
    public ArrayList<String> parse(String filename, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        XMLReader reader = XMLReaderFactory.createXMLReader();
        DownloaderXMLParserHandler handler = new DownloaderXMLParserHandler();
        reader.setContentHandler(handler);
        reader.setErrorHandler(handler);
        if (mode == Modes.FILE) {
            reader.parse(new InputSource(new FileReader(new File(filename))));
        } else {
            URL u = new URL(filename);
            URLConnection conn = u.openConnection();
            InputStream in = conn.getInputStream();
            reader.parse(new InputSource(in));
        }
        return handler.getFiles();
    }
}
