package seatechit.ihtkk.tool.taxMessageNtdt;

import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/TSoatNtdt.class */
public class TSoatNtdt extends HSoThue {
    public TSoatNtdt(Document tSoatDoc, String tSoatFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tSoatDoc, tSoatFileName, config);
        String nodeName;
        DmucTSoatNtdt dmTsoat = config.getDmTSoatNtdt();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName = "PBAN_TLIEU_XML";
        }
        Node node = tSoatDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            this.pbanHSoXML = "4.0.0";
        } else {
            this.pbanHSoXML = node.getTextContent();
        }
        this.xsdFile = dmTsoat.getXSDTSoat(this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmTsoat.getCTuViewType(this.pbanHSoXML);
        this.xsltFile = dmTsoat.getXSLTTSoat(this.pbanHSoXML);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tSoatDoc);
        this.hsoViewFileName = tSoatFileName;
    }
}
