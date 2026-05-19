package seatechit.ihtkk.tool.taxMessageNtdt;

import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/BuTruNtdt.class */
public class BuTruNtdt extends HSoThue {
    public BuTruNtdt(Document btruDoc, String btruFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(btruDoc, btruFileName, config);
        String nodeName;
        DmucBtruNtdt dmBtru = config.getDmBtruNtdt();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName = "PBAN_TLIEU_XML";
        }
        Node node = btruDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            this.pbanHSoXML = "4.0.1";
        } else {
            this.pbanHSoXML = node.getTextContent();
        }
        this.xsdFile = dmBtru.getXSDBtru(this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmBtru.getCTuViewType(this.pbanHSoXML);
        this.xsltFile = dmBtru.getXSLTBtru(this.pbanHSoXML);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(btruDoc);
        this.hsoViewFileName = btruFileName;
    }
}
