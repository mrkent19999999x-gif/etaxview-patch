package seatechit.ihtkk.tool.autoupdate.parsers;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
import seatechit.ihtkk.tool.autoupdate.objects.Release;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/autoupdate/parsers/ReleaseXMLParserHandler.class */
public class ReleaseXMLParserHandler extends DefaultHandler {
    private String currentelement = "";
    private Release releaseinfo = new Release();

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
        if (this.currentelement.equals("pubDate")) {
            this.releaseinfo.setPubDate(value);
        } else if (this.currentelement.equals("pkgver")) {
            this.releaseinfo.setpkgver(value);
        } else if (this.currentelement.equals("pkgrel")) {
            this.releaseinfo.setPkgrel(value);
        } else if (this.currentelement.equals("severity")) {
            this.releaseinfo.setseverity(value);
        } else if (this.currentelement.equals("message")) {
            this.releaseinfo.setMessage(value);
        }
        this.currentelement = "";
    }

    public Release getInfo() {
        return this.releaseinfo;
    }
}
