package seatechit.ihtkk.tool.taxCatalog;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.signature.IHTKKXMLSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;
import seatechit.ihtkk.tool.taxdoc.PLuc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxCatalog/DMuc.class */
public class DMuc extends HSoThue {
    public DMuc(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        DMucDMuc dmDMuc = config.getDmDMuc();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":maDanhMuc";
        } else {
            nodeName = "maDanhMuc";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'maDanhMuc'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":pBanDanhMuc";
        } else {
            nodeName2 = "pBanDanhMuc";
        }
        Node node2 = tkhaiDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'pBanDanhMuc'");
        }
        this.pbanHSoXML = node2.getTextContent();
        this.xsdFile = dmDMuc.getXSDDmuc(this.maHSo, this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã Danh mục (" + this.maHSo + ") hoặc phiên bản Danh mục (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmDMuc.getDmucViewType(this.maHSo, this.pbanHSoXML);
        this.excelFile = dmDMuc.getExcelTemplateTDmuc(this.maHSo, this.pbanHSoXML);
        this.xsltFile = dmDMuc.getXSLTDmuc(this.maHSo, this.pbanHSoXML);
        this.orientation = dmDMuc.getDmucOrientation(this.maHSo, this.pbanHSoXML);
        this.plucList = getPLucList(dmDMuc);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tkhaiDoc, config.getDmucXpath());
        this.hsoViewFileName = createTemFileForView();
    }

    private String createTemFileForView() throws ITaxViewerException, IOException {
        String content = FileUtils.readFileToString(new File(this.hsoFileName), "UTF-8");
        String content2 = content.replaceAll("xmlns=\"http://kekhaithue.gdt.gov.vn/TKhaiThue\"", "");
        String baseFileName = FilenameUtils.getBaseName(this.hsoFileName);
        File tempfile = File.createTempFile(baseFileName, ".tmp");
        tempfile.deleteOnExit();
        FileUtils.writeStringToFile(tempfile, content2, "UTF-8");
        return tempfile.getAbsolutePath();
    }

    private Collection getPLucList(DMucDMuc dmDmuc) {
        String plucID;
        ArrayList collPLuc = new ArrayList();
        String plucNodeName = "PLuc";
        if (this.prefix != null) {
            plucNodeName = String.valueOf(this.prefix) + ":" + plucNodeName;
        }
        Node plucNode = this.tkhaiDoc.getElementsByTagName(plucNodeName).item(0);
        if (plucNode == null) {
            return null;
        }
        NodeList plucList = plucNode.getChildNodes();
        int len = plucList.getLength();
        for (int i = 0; i < len; i++) {
            if (plucList.item(i).getNodeType() == 1) {
                PLuc pluc = new PLuc();
                String[] plucIDWithPrefix = plucList.item(i).getNodeName().split(":");
                if (plucIDWithPrefix.length == 1) {
                    plucID = plucIDWithPrefix[0];
                } else {
                    plucID = plucIDWithPrefix[1];
                }
                pluc.setPlucID(plucID);
                pluc.setPlucName(dmDmuc.getTenPLuc(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucViewMethod(dmDmuc.getPLucViewType(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setOrientation(dmDmuc.getPLucOrientation(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucExcelFile(dmDmuc.getExcelTemplatePLuc(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucXSLTFile(dmDmuc.getXSLTPLuc(this.maHSo, this.pbanHSoXML, plucID));
                collPLuc.add(pluc);
            }
        }
        return collPLuc;
    }
}
