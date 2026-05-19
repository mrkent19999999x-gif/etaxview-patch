package seatechit.ihtkk.tool.taxMessageNtdt;

import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/XNhanCTuNtdt.class */
public class XNhanCTuNtdt extends HSoThue {
    public XNhanCTuNtdt(Document xNhanDoc, String xNhanFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(xNhanDoc, xNhanFileName, config);
        String nodeName;
        DMucXNhanCTuNtdt dmXNhan = config.getDmXNhanCTuNtdt();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName = "PBAN_TLIEU_XML";
        }
        Node node = xNhanDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            this.pbanHSoXML = "4.0.1";
        } else {
            this.pbanHSoXML = node.getTextContent();
        }
        this.xsdFile = dmXNhan.getXSDTXNhanCTu(this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmXNhan.getCTuViewType(this.pbanHSoXML);
        this.xsltFile = dmXNhan.getXSLTXNhanCTu(this.pbanHSoXML);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(xNhanDoc);
        this.hsoViewFileName = xNhanFileName;
    }
}
