package seatechit.ihtkk.tool.taxMessageNtdt;

import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/TBaoBTruNtdt.class */
public class TBaoBTruNtdt extends HSoThue {
    public TBaoBTruNtdt(Document tbaoBtruDoc, String tbaoBtruFileName, ConfigInfo config, String maTbao) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tbaoBtruDoc, tbaoBtruFileName, config);
        String nodeName;
        DmucTBaoBTruNtdt dmTbaoBtru = config.getDmTbaoBtruNtdt();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName = "PBAN_TLIEU_XML";
        }
        Node node = tbaoBtruDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            this.pbanHSoXML = "4.0.0";
        } else {
            this.pbanHSoXML = node.getTextContent();
        }
        this.xsdFile = dmTbaoBtru.getXSDTBaoBTru(this.pbanHSoXML, maTbao);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmTbaoBtru.getCTuViewType(this.pbanHSoXML, maTbao);
        this.xsltFile = dmTbaoBtru.getXSLTTBaoBTru(this.pbanHSoXML, maTbao);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tbaoBtruDoc);
        this.hsoViewFileName = tbaoBtruFileName;
    }
}
