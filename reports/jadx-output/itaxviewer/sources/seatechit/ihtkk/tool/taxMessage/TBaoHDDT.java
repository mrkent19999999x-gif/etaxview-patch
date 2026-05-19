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
import seatechit.ihtkk.tool.taxdoc.HSoThue;
import seatechit.ihtkk.tool.taxdoc.PLuc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessage/TBaoHDDT.class */
public class TBaoHDDT extends HSoThue {
    public TBaoHDDT(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        DMucTBao dmTBao;
        config.getDmTBao();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":maTBao";
        } else {
            nodeName = "MSo";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'maTBao'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":pbanTBao";
        } else {
            nodeName2 = "PBan";
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
        this.viewMethod = dmTBao.getTBaoViewType(this.maHSo, this.pbanHSoXML);
        this.excelFile = dmTBao.getExcelTemplateTTBao(this.maHSo, this.pbanHSoXML);
        this.xsltFile = dmTBao.getXSLTTBao(this.maHSo, this.pbanHSoXML);
        this.orientation = dmTBao.getTKhaiOrientation(this.maHSo, this.pbanHSoXML);
        this.plucList = getPLucList(dmTBao);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignatureTBaoHDDT(tkhaiDoc);
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
                pluc.setPlucName(dmTBao.getTenPLucHDDT(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucViewMethod(dmTBao.getPLucHDDTViewType(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setOrientation(dmTBao.getPLucHDDTOrientation(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucExcelFile(dmTBao.getExcelHDDTTemplatePLuc(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucXSLTFile(dmTBao.getXSLTPLucHDDT(this.maHSo, this.pbanHSoXML, plucID));
                collPLuc.add(pluc);
            }
        }
        return collPLuc;
    }
}
