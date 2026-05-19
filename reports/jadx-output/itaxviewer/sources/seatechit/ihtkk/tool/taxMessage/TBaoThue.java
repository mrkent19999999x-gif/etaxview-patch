package seatechit.ihtkk.tool.taxMessage;

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
import seatechit.ihtkk.tool.signature.IHTKKXMLTemSignature;
import seatechit.ihtkk.tool.taxdoc.HSoThue;
import seatechit.ihtkk.tool.taxdoc.PLuc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessage/TBaoThue.class */
public class TBaoThue extends HSoThue {
    public TBaoThue(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        DMucTBao dmTBao;
        config.getDmTBao();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":maTBao";
        } else {
            nodeName = "maTBao";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'maTBao'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":pbanTBao";
        } else {
            nodeName2 = "pbanTBao";
        }
        Node node2 = tkhaiDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'pbanTBao'");
        }
        this.pbanHSoXML = node2.getTextContent();
        Node vbanCDoiNode = tkhaiDoc.getElementsByTagName("TTinVBanCDoi").item(0);
        if (vbanCDoiNode == null) {
            dmTBao = config.getDmTBao();
        } else {
            dmTBao = config.getDmTBao_InCDoi();
        }
        this.xsdFile = dmTBao.getXSDTBao(this.maHSo, this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã Thông báo (" + this.maHSo + ") hoặc phiên bản thông báo (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmTBao.getTBaoViewType(this.maHSo, this.pbanHSoXML);
        this.excelFile = dmTBao.getExcelTemplateTTBao(this.maHSo, this.pbanHSoXML);
        this.xsltFile = dmTBao.getXSLTTBao(this.maHSo, this.pbanHSoXML);
        this.orientation = dmTBao.getTKhaiOrientation(this.maHSo, this.pbanHSoXML);
        this.plucList = getPLucList(dmTBao);
        if ("960".equals(this.maHSo)) {
            this.sigValidationResult = new IHTKKXMLTemSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tkhaiDoc, config.getTBaoXpath());
        } else if ("2004".equals(this.maHSo)) {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignatureHDDT(tkhaiDoc, config.getTBaoXpath());
        } else {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tkhaiDoc, config.getTBaoXpath());
        }
        this.hsoViewFileName = createTemFileForView();
    }

    private String createTemFileForView() throws ITaxViewerException, IOException {
        String content = FileUtils.readFileToString(new File(this.hsoFileName), "UTF-8");
        String content2 = content.replaceAll("xmlns=\"http://kekhaithue.gdt.gov.vn/TBaoThue\"", "").replaceAll("xmlns=\"http://kekhaithue.gdt.gov.vn/TBThue_T-VAN\"", "");
        String baseFileName = FilenameUtils.getBaseName(this.hsoFileName);
        File tempfile = File.createTempFile(baseFileName, ".tmp");
        tempfile.deleteOnExit();
        FileUtils.writeStringToFile(tempfile, content2, "UTF-8");
        return tempfile.getAbsolutePath();
    }

    private Collection getPLucList(DMucTBao dmTBao) {
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
                pluc.setPlucName(dmTBao.getTenPLuc(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucViewMethod(dmTBao.getPLucViewType(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setOrientation(dmTBao.getPLucOrientation(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucExcelFile(dmTBao.getExcelTemplatePLuc(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucXSLTFile(dmTBao.getXSLTPLuc(this.maHSo, this.pbanHSoXML, plucID));
                collPLuc.add(pluc);
            }
        }
        return collPLuc;
    }
}
