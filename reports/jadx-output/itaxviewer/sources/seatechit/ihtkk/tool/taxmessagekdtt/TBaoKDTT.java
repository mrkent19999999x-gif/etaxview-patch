package seatechit.ihtkk.tool.taxmessagekdtt;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxmessagekdtt/TBaoKDTT.class */
public class TBaoKDTT extends HSoThue {
    public TBaoKDTT(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        String nodeName3;
        DMucTBaoKDTT dmTBaoNtdt = config.getDmTBaoKDTT();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":MA_THONGBAO";
        } else {
            nodeName = "MA_THONGBAO";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            if (this.prefix != null) {
                nodeName3 = String.valueOf(this.prefix) + ":MA_TBAO";
            } else {
                nodeName3 = "MA_TBAO";
            }
            node = tkhaiDoc.getElementsByTagName(nodeName3).item(0);
        }
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'MA_THONGBAO'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":PBAN_TLIEU_XML";
        } else {
            nodeName2 = "PBAN_TLIEU_XML";
        }
        Node node2 = tkhaiDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            this.pbanHSoXML = "4.0.0";
        } else {
            this.pbanHSoXML = node2.getTextContent();
        }
        if (this.pbanHSoXML.equals("")) {
            this.pbanHSoXML = "4.0.0";
        }
        this.xsdFile = dmTBaoNtdt.getXSDTBao(this.maHSo, this.pbanHSoXML);
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã Thông báo (" + this.maHSo + ") hoặc phiên bản thông báo (" + this.pbanHSoXML + ") không đúng");
        }
        this.viewMethod = dmTBaoNtdt.getTBaoViewType(this.maHSo, this.pbanHSoXML);
        this.excelFile = dmTBaoNtdt.getExcelTemplateTTBao(this.maHSo, this.pbanHSoXML);
        this.xsltFile = dmTBaoNtdt.getXSLTTBao(this.maHSo, this.pbanHSoXML);
        this.orientation = dmTBaoNtdt.getTKhaiOrientation(this.maHSo, this.pbanHSoXML);
        this.plucList = getPLucList(dmTBaoNtdt);
        this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tkhaiDoc);
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

    private Collection getPLucList(DMucTBaoKDTT dmTBao) {
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
