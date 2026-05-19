package com.seatech.tct.autoupdate.parsers;

import com.seatech.tct.autoupdate.objects.Instruction;
import com.seatech.tct.autoupdate.objects.Modes;
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

/* loaded from: updater.jar:com/seatech/tct/autoupdate/parsers/UpdateXMLParser.class */
public class UpdateXMLParser {
    public ArrayList<Instruction> parse(String filename, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        XMLReader reader = XMLReaderFactory.createXMLReader();
        UpdateXMLParserHandler handler = new UpdateXMLParserHandler();
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
        return handler.getInstructions();
    }
}
