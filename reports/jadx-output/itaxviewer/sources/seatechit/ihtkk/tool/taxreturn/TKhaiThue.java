package seatechit.ihtkk.tool.taxreturn;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.regex.Pattern;
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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxreturn/TKhaiThue.class */
public class TKhaiThue extends HSoThue {
    public TKhaiThue(Document tkhaiDoc, String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        super(tkhaiDoc, tkhaiFileName, config);
        String nodeName;
        String nodeName2;
        String nodeName3;
        String nodeName4;
        String nodeName5;
        DMucTKhai dmTKhai = config.getDmTKhai();
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":maTKhai";
        } else {
            nodeName = "maTKhai";
        }
        Node node = tkhaiDoc.getElementsByTagName(nodeName).item(0);
        if (node == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'maTKhai'");
        }
        this.maHSo = node.getTextContent();
        if (this.prefix != null) {
            nodeName2 = String.valueOf(this.prefix) + ":pbanTKhaiXML";
        } else {
            nodeName2 = "pbanTKhaiXML";
        }
        Node node2 = tkhaiDoc.getElementsByTagName(nodeName2).item(0);
        if (node2 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'pbanTKhaiXML'");
        }
        this.pbanHSoXML = node2.getTextContent();
        if ((this.maHSo.equals("42") || this.maHSo.equals("43") || this.maHSo.equals("44") || this.maHSo.equals("103")) && !this.pbanHSoXML.equals("2.0.5") && !this.pbanHSoXML.equals("2.0.8")) {
            this.pbanHSoXML = "2.0.0";
        }
        if (!this.maHSo.equals("680") && !this.maHSo.equals("800") && !this.maHSo.equals("801") && !this.maHSo.equals("802") && !this.maHSo.equals("803") && !this.maHSo.equals("804") && !this.maHSo.equals("805") && !this.maHSo.equals("806") && !this.maHSo.equals("807") && !this.maHSo.equals("808") && !this.maHSo.equals("809") && !this.maHSo.equals("810") && !this.maHSo.equals("811") && !this.maHSo.equals("814") && !this.maHSo.equals("815") && !this.maHSo.equals("816") && !this.maHSo.equals("823") && !this.maHSo.equals("826") && !this.maHSo.equals("827") && !this.maHSo.equals("900") && !this.maHSo.equals("901") && !this.maHSo.equals("902") && !this.maHSo.equals("903") && !this.maHSo.equals("904") && !this.maHSo.equals("905") && !this.maHSo.equals("906") && !this.maHSo.equals("907") && !this.maHSo.equals("909") && !this.maHSo.equals("910") && !this.maHSo.equals("911") && !this.maHSo.equals("913") && !this.maHSo.equals("845") && !this.maHSo.equals("912") && !this.maHSo.equals("962") && !this.maHSo.equals("1120") && !this.maHSo.equals("954") && !this.maHSo.equals("955") && !this.maHSo.equals("1130") && !this.maHSo.equals("1131") && !this.maHSo.equals("1132") && !this.maHSo.equals("1133") && !this.maHSo.equals("1134") && !this.maHSo.equals("1135") && !this.maHSo.equals("1136") && !this.maHSo.equals("1137") && !this.maHSo.equals("1133") && !this.maHSo.equals("1158") && !this.maHSo.equals("1175") && !this.maHSo.equals("1176") && !this.maHSo.equals("1165") && !this.maHSo.equals("1229") && !this.maHSo.equals("1124")) {
            if (this.prefix != null) {
                nodeName5 = String.valueOf(this.prefix) + ":loaiTKhai";
            } else {
                nodeName5 = "loaiTKhai";
            }
            Node node3 = tkhaiDoc.getElementsByTagName(nodeName5).item(0);
            if (node3 == null) {
                throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'loaiTKhai'");
            }
            this.loaiHSo = node3.getTextContent();
        }
        if (this.prefix != null) {
            nodeName3 = String.valueOf(this.prefix) + ":tenTKhai";
        } else {
            nodeName3 = "tenTKhai";
        }
        Node node4 = tkhaiDoc.getElementsByTagName(nodeName3).item(0);
        if (node4 == null) {
            throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'tenTKhai'");
        }
        this.tenHSo = node4.getTextContent();
        if (!this.maHSo.equals("680") && !this.maHSo.equals("800") && !this.maHSo.equals("801") && !this.maHSo.equals("802") && !this.maHSo.equals("803") && !this.maHSo.equals("804") && !this.maHSo.equals("805") && !this.maHSo.equals("806") && !this.maHSo.equals("807") && !this.maHSo.equals("808") && !this.maHSo.equals("809") && !this.maHSo.equals("810") && !this.maHSo.equals("811") && !this.maHSo.equals("814") && !this.maHSo.equals("815") && !this.maHSo.equals("816") && !this.maHSo.equals("823") && !this.maHSo.equals("826") && !this.maHSo.equals("827") && !this.maHSo.equals("900") && !this.maHSo.equals("901") && !this.maHSo.equals("902") && !this.maHSo.equals("903") && !this.maHSo.equals("904") && !this.maHSo.equals("905") && !this.maHSo.equals("906") && !this.maHSo.equals("907") && !this.maHSo.equals("909") && !this.maHSo.equals("910") && !this.maHSo.equals("911") && !this.maHSo.equals("913") && !this.maHSo.equals("845") && !this.maHSo.equals("912") && !this.maHSo.equals("962") && !this.maHSo.equals("1120") && !this.maHSo.equals("954") && !this.maHSo.equals("955") && !this.maHSo.equals("1130") && !this.maHSo.equals("1131") && !this.maHSo.equals("1132") && !this.maHSo.equals("1133") && !this.maHSo.equals("1134") && !this.maHSo.equals("1135") && !this.maHSo.equals("1136") && !this.maHSo.equals("1137") && !this.maHSo.equals("1133") && !this.maHSo.equals("1158") && !this.maHSo.equals("1175") && !this.maHSo.equals("1176") && !this.maHSo.equals("1165") && !this.maHSo.equals("1229") && !this.maHSo.equals("1124")) {
            if (this.prefix != null) {
                nodeName4 = String.valueOf(this.prefix) + ":kieuKy";
            } else {
                nodeName4 = "kieuKy";
            }
            if (tkhaiDoc.getElementsByTagName(nodeName4).item(0) == null) {
                throw new ITaxViewerException("Cấu trúc tệp hồ sơ không đúng: không có thẻ dữ liệu 'kieuKy'");
            }
        }
        if (this.maHSo.equals("680") || this.maHSo.equals("800") || this.maHSo.equals("801") || this.maHSo.equals("802") || this.maHSo.equals("803") || this.maHSo.equals("804") || this.maHSo.equals("805") || this.maHSo.equals("806") || this.maHSo.equals("807") || this.maHSo.equals("808") || this.maHSo.equals("809") || this.maHSo.equals("810") || this.maHSo.equals("811") || this.maHSo.equals("814") || this.maHSo.equals("815") || this.maHSo.equals("816") || this.maHSo.equals("823") || this.maHSo.equals("826") || this.maHSo.equals("827") || this.loaiHSo == null || this.loaiHSo.equals("") || this.maHSo.equals("900") || this.maHSo.equals("901") || this.maHSo.equals("902") || this.maHSo.equals("903") || this.maHSo.equals("904") || this.maHSo.equals("905") || this.maHSo.equals("906") || this.maHSo.equals("907") || this.maHSo.equals("909") || this.maHSo.equals("910") || this.maHSo.equals("911") || this.maHSo.equals("913") || this.maHSo.equals("845") || this.maHSo.equals("912") || this.maHSo.equals("962") || this.maHSo.equals("1120") || this.maHSo.equals("954") || this.maHSo.equals("1130") || this.maHSo.equals("1131") || this.maHSo.equals("1132") || this.maHSo.equals("1133") || this.maHSo.equals("1134") || this.maHSo.equals("1135") || this.maHSo.equals("1136") || this.maHSo.equals("1137") || this.maHSo.equals("1133") || this.maHSo.equals("1158") || this.maHSo.equals("1175") || this.maHSo.equals("1176") || this.maHSo.equals("1165") || this.maHSo.equals("1229") || this.maHSo.equals("1124")) {
            this.xsdFile = dmTKhai.getXSDTKhaiDKT(this.maHSo, this.pbanHSoXML);
            this.viewMethod = dmTKhai.getTKhaiViewTypeDKT(this.maHSo, this.pbanHSoXML);
            this.excelFile = dmTKhai.getExcelTemplateTTKhaiDKT(this.maHSo, this.pbanHSoXML);
            this.xsltFile = dmTKhai.getXSLTTKhaiDKT(this.maHSo, this.pbanHSoXML);
            this.orientation = dmTKhai.getTKhaiOrientationDKT(this.maHSo, this.pbanHSoXML);
            this.plucList = getPLucListDKT(dmTKhai);
        } else {
            this.xsdFile = dmTKhai.getXSDTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
            this.viewMethod = dmTKhai.getTKhaiViewType(this.maHSo, this.pbanHSoXML, this.loaiHSo);
            this.excelFile = dmTKhai.getExcelTemplateTTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
            this.xsltFile = dmTKhai.getXSLTTKhai(this.maHSo, this.pbanHSoXML, this.loaiHSo);
            this.orientation = dmTKhai.getTKhaiOrientation(this.maHSo, this.pbanHSoXML, this.loaiHSo);
            this.plucList = getPLucList(dmTKhai);
        }
        if (this.xsdFile == null) {
            throw new ITaxViewerException("Mã hồ sơ (" + this.maHSo + ") hoặc phiên bản hồ sơ (" + this.pbanHSoXML + ") không đúng");
        }
        if (isTKhaiHDDT(this.maHSo)) {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignatureHHDT(tkhaiDoc);
        } else {
            this.sigValidationResult = new IHTKKXMLSignature(config.getRootCerts(), config.getTrustedCerts()).verifyXMLSignature(tkhaiDoc);
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

    private Collection getPLucList(DMucTKhai dmTKhai) {
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
                pluc.setPlucName(dmTKhai.getTenPLuc(this.maHSo, this.pbanHSoXML, this.loaiHSo, plucID));
                pluc.setPlucViewMethod(dmTKhai.getPLucViewType(this.maHSo, this.pbanHSoXML, this.loaiHSo, plucID));
                pluc.setOrientation(dmTKhai.getPLucOrientation(this.maHSo, this.pbanHSoXML, this.loaiHSo, plucID));
                pluc.setPlucExcelFile(dmTKhai.getExcelTemplatePLuc(this.maHSo, this.pbanHSoXML, this.loaiHSo, plucID));
                pluc.setPlucXSLTFile(dmTKhai.getXSLTPLuc(this.maHSo, this.pbanHSoXML, this.loaiHSo, plucID));
                collPLuc.add(pluc);
            }
        }
        return collPLuc;
    }

    private Collection getPLucListDKT(DMucTKhai dmTKhai) {
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
                pluc.setPlucName(dmTKhai.getTenPLucDKT(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucViewMethod(dmTKhai.getPLucViewTypeDKT(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setOrientation(dmTKhai.getPLucOrientationDKT(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucExcelFile(dmTKhai.getExcelTemplatePLucDKT(this.maHSo, this.pbanHSoXML, plucID));
                pluc.setPlucXSLTFile(dmTKhai.getXSLTPLucDKT(this.maHSo, this.pbanHSoXML, plucID));
                collPLuc.add(pluc);
            }
        }
        return collPLuc;
    }

    public static boolean isTKhaiHDDT(String maTkhai) {
        return Pattern.compile("^(1140|1164|1165)$").matcher(maTkhai).find();
    }
}
