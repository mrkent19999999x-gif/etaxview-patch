package seatechit.ihtkk.tool.taxvoucher;

import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxvoucher/GNTNSNN.class */
public class GNTNSNN extends HSoThue {
    public GNTNSNN(Document ctuDoc, String ctuFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(ctuDoc, ctuFileName, config);
        String nodeName;
        String nodeName2;
        DMucCTu dmCTu = config.getDmCTu();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":MA_CTU";
        } else {
            nodeName = "MA_CTU";
        }
        Node node = ctuDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'MA_CTU'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName2 = "PBAN_TLIEU_XML";
        }
        Node node2 = ctuDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            this.pbanHSoXML = "1.0";
        } else {
            this.pbanHSoXML = node2.getTextContent();
        }
        this.xsdFile = dmCTu.getXSDCTu(this.maHSo, this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã hồ sơ (" + this.maHSo + ") hoặc phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmCTu.getCTuViewType(this.maHSo, this.pbanHSoXML);
        this.xsltFile = dmCTu.getXSLTCTu(this.maHSo, this.pbanHSoXML);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(ctuDoc);
        this.hsoViewFileName = ctuFileName;
    }
}
