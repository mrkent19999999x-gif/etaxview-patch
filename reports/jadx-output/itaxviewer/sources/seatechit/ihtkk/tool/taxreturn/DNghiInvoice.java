package seatechit.ihtkk.tool.taxreturn;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.signature.X500PrincipalHelper;
import seatechit.ihtkk.tool.taxdoc.HSoThue;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxreturn/DNghiInvoice.class */
public class DNghiInvoice extends HSoThue {
    public DNghiInvoice(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        String nodeName3;
        String nodeName4;
        DMucTKhai dmTKhai = config.getDmTKhai();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":MSo";
        } else {
            nodeName = "MSo";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'MSo'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":PBan";
        } else {
            nodeName2 = "PBan";
        }
        Node node2 = tkhaiDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'PBan'");
        }
        this.pbanHSoXML = node2.getTextContent();
        if (this.prefix != null) {
            nodeName3 = String.valueOf(this.prefix) + ":Ten";
        } else {
            nodeName3 = "Ten";
        }
        Node node3 = tkhaiDoc.getElementsByTagName(nodeName3).item(0);
        if (node3 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'Ten'");
        }
        this.tenHSo = node3.getTextContent();
        if (this.prefix != null) {
            nodeName4 = String.valueOf(this.prefix) + ":LKTThue";
        } else {
            nodeName4 = "LKTThue";
        }
        tkhaiDoc.getElementsByTagName(nodeName4).item(0);
        this.loaiHSo = X500PrincipalHelper.attrC;
        this.xsdFile = dmTKhai.getXSDTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã hồ sơ (" + this.maHSo + ") hoặc phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmTKhai.getTKhaiViewType(this.maHSo, this.pbanHSoXML, this.loaiHSo);
        this.excelFile = dmTKhai.getExcelTemplateTTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
        this.xsltFile = dmTKhai.getXSLTTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
        this.orientation = dmTKhai.getTKhaiOrientation(this.maHSo, this.pbanHSoXML, this.loaiHSo);
        if (this.maHSo.equals("06/ĐN-PSĐT")) {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignatureTKhaiDNghiHDDT(tkhaiDoc);
        } else {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignatureTKhaiHDDT(tkhaiDoc);
        }
        this.hsoViewFileName = createTemFileForView();
    }

    private String createTemFileForView() throws ITaxViewerException, IOException {
        String content = FileUtils.readFileToString(new File(this.hsoFileName), "UTF-8");
        String content2 = content.replaceAll("xmlns=\"http://kekhaithue.gdt.gov.vn/TKhaiThue\"", "");
        String baseFileName = FilenameUtils.getBaseName(this.hsoFileName);
        if (baseFileName.length() < 3) {
            baseFileName = "hso_" + baseFileName;
        }
        File tempfile = File.createTempFile(baseFileName, ".tmp");
        tempfile.deleteOnExit();
        FileUtils.writeStringToFile(tempfile, content2, "UTF-8");
        return tempfile.getAbsolutePath();
    }
}
