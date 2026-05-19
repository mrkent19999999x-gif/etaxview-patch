package com.seatech.tct.autoupdate.parsers;

import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/parsers/DownloaderXMLParserHandler.class */
public class DownloaderXMLParserHandler extends DefaultHandler {
    private String currentelement = "";
    private ArrayList<String> files = new ArrayList<>();

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String uri, String name, String qName, Attributes atts) {
        this.currentelement = qName;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] ch, int start, int length) {
        String value = null;
        if (!this.currentelement.equals("")) {
            value = String.copyValueOf(ch, start, length).trim();
        }
        if (this.currentelement.equals("file")) {
            this.files.add(value);
        }
        this.currentelement = "";
    }

    public ArrayList<String> getFiles() {
        return this.files;
    }
}
