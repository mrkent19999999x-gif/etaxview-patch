package seatechit.ihtkk.tool.taxdoc;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.io.FileUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.hquanform.HquanForm;
import seatechit.ihtkk.tool.hquanform1.HquanForm1;
import seatechit.ihtkk.tool.hquanformnew.HquanFormNew;
import seatechit.ihtkk.tool.taxCatalog.DMuc;
import seatechit.ihtkk.tool.taxMessage.TBaoHDDT;
import seatechit.ihtkk.tool.taxMessage.TBaoThue;
import seatechit.ihtkk.tool.taxMessageNtdt.BuTruNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.TBaoThueNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.TSoatNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.XNhanCTuNtdt;
import seatechit.ihtkk.tool.taxRegistration.DKyThue;
import seatechit.ihtkk.tool.taxmessagekdtt.BKeKDTT;
import seatechit.ihtkk.tool.taxmessagekdtt.TBaoKDTT;
import seatechit.ihtkk.tool.taxreturn.BLaiInvoice;
import seatechit.ihtkk.tool.taxreturn.DNghiInvoice;
import seatechit.ihtkk.tool.taxreturn.TKhaiHDDTInvoice;
import seatechit.ihtkk.tool.taxreturn.TKhaiThue;
import seatechit.ihtkk.tool.taxreturn.TkhaiInvoice;
import seatechit.ihtkk.tool.taxview.SignerLogger;
import seatechit.ihtkk.tool.taxvoucher.GNTNSNN;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxdoc/HSoThueFactory.class */
public abstract class HSoThueFactory {
    private static final String TKHAI_ROOT_TAG_NAME = "HSoThueDTu";
    private static final String HDDT_ROOT_TAG_NAME = "TKhai";
    private static final String CTU_ROOT_TAG_NAME = "CHUNGTU";
    private static final String TBAO_ROOT_TAG_NAME = "TBaoThueDTu";
    private static final String TBAONtdt_ROOT_TAG_NAME = "THONGBAO";
    private static final String TBAONtdt_ROOT_TAG_NAME1 = "TBAO_TKHOAN_NH";
    private static final String TBAONtdt_ROOT_TAG_NAME2 = "TBAO_TKHOAN_NT";
    private static final String TBAONtdt_ROOT_TAG_NAME3 = "TBAO_NGUNG";
    private static final String TBAONtdt_ROOT_TAG_NAME4 = "THONG_BAO";
    private static final String DMUC_TAG_NAME = "DanhMucDTu";
    private static final String HSODKY_TAG_NAME = "DKyThueDTu";
    private static final String HQuan_TAG_NAME = "TOKHAI_OBJ";
    private static final String HQuan_TAG_NAME_NEW = ":Envelope";
    private static final String HQuan_TAG_NAME_2 = "TOKHAISUA_OBJ";
    private static final String TBAO_KDTT_ROOT_TAG_NAME = "THONGBAO";
    private static final String BKE_KDTT_ROOT_TAG_NAME = "BKE_TBAO";
    private static final String TSOATntdt_ROOT_TAG_NAME = "TRASOAT_THUE";
    private static final String XNhanThue_ROOT_TAG_NAME = "XACNHAN_THUE";
    private static final String XNhanNVThue_ROOT_TAG_NAME = "XACNHAN_NVTHUE";
    private static final String BuTruThue_ROOT_TAG_NAME = "XULY_NTHUA";
    private static final String HDDT_DNGHI_ROOT_TAG_NAME = "DNghi";
    private static final String TBAO_HDDT_ROOT_TAG_NAME = "TBao";
    private static final String HDDT_TKHAI_ROOT_TAG_NAME = "TBao";
    private static final String HDDT_BLAI_ROOT_TAG_NAME = "BCTHSDBLai";
    private static final String TBAO_SSDT_HDDT_ROOT_TAG_NAME = "TBTNhan";
    private static final String BLAI_CT500_ROOT_TAG_NAME = "BLai";

    public static HSoThue createHSoThue(String tkhaiFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxInvalidDocException, ITaxViewerException {
        Document hsoDoc;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        String tkhaiFileName2 = URLDecoder.decode(fixVietnameseFileName(tkhaiFileName), "UTF-8");
        File fTKhai = new File(tkhaiFileName2);
        String strContent = FileUtils.readFileToString(fTKhai, StandardCharsets.UTF_8.toString());
        try {
            if (strContent.contains(HQuan_TAG_NAME_NEW)) {
                hsoDoc = db.parse(new InputSource(new StringReader(strContent)));
            } else {
                hsoDoc = db.parse(fTKhai);
            }
            Element rootElm = hsoDoc.getDocumentElement();
            if (rootElm.getTagName().equals(TKHAI_ROOT_TAG_NAME)) {
                return new TKhaiThue(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(TBAO_ROOT_TAG_NAME)) {
                return new TBaoThue(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(CTU_ROOT_TAG_NAME)) {
                return new GNTNSNN(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals("THONGBAO") || rootElm.getTagName().equals(TBAONtdt_ROOT_TAG_NAME1) || rootElm.getTagName().equals(TBAONtdt_ROOT_TAG_NAME2) || rootElm.getTagName().equals(TBAONtdt_ROOT_TAG_NAME3) || rootElm.getTagName().equals(TBAONtdt_ROOT_TAG_NAME4)) {
                return new TBaoThueNtdt(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(DMUC_TAG_NAME)) {
                return new DMuc(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(HSODKY_TAG_NAME)) {
                return new DKyThue(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(HQuan_TAG_NAME)) {
                return new HquanForm(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(HQuan_TAG_NAME_2)) {
                return new HquanForm1(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().contains(HQuan_TAG_NAME_NEW)) {
                return new HquanFormNew(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(BKE_KDTT_ROOT_TAG_NAME)) {
                return new BKeKDTT(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(TSOATntdt_ROOT_TAG_NAME)) {
                return new TSoatNtdt(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(BuTruThue_ROOT_TAG_NAME)) {
                return new BuTruNtdt(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(XNhanThue_ROOT_TAG_NAME) || rootElm.getTagName().equals(XNhanNVThue_ROOT_TAG_NAME)) {
                return new XNhanCTuNtdt(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(HDDT_ROOT_TAG_NAME)) {
                return new TkhaiInvoice(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(HDDT_DNGHI_ROOT_TAG_NAME) || rootElm.getTagName().equals(HDDT_BLAI_ROOT_TAG_NAME)) {
                return new DNghiInvoice(hsoDoc, tkhaiFileName2, config);
            }
            if ((rootElm.getTagName().equals("TBao") || rootElm.getTagName().equals(TBAO_SSDT_HDDT_ROOT_TAG_NAME)) && isTBaoHDDT(readtagfromXML(hsoDoc, "MSo"))) {
                return new TBaoHDDT(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals("TBao") && isTKHaiTBaoHDDT(readtagfromXML(hsoDoc, "MSo"))) {
                return new TKhaiHDDTInvoice(hsoDoc, tkhaiFileName2, config);
            }
            if (rootElm.getTagName().equals(BLAI_CT500_ROOT_TAG_NAME)) {
                return new BLaiInvoice(hsoDoc, tkhaiFileName2, config);
            }
            throw new ITaxInvalidDocException("Tệp hồ sơ không đúng định dạng.");
        } catch (SAXException saxe) {
            saxe.printStackTrace();
            SignerLogger.log("start 1" + saxe);
            throw new ITaxInvalidDocException("Tệp hồ sơ không đúng định dạng.");
        }
    }

    public static HSoThue createHSoThueByText(String contentData, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxInvalidDocException, ITaxViewerException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        try {
            InputSource is = new InputSource(new StringReader(contentData));
            Document hsoDoc = db.parse(is);
            Element rootElm = hsoDoc.getDocumentElement();
            if (rootElm.getTagName().equals("THONGBAO")) {
                return new TBaoKDTT(hsoDoc, "", config);
            }
            throw new ITaxInvalidDocException("Tệp hồ sơ không đúng định dạng.");
        } catch (Exception se) {
            se.printStackTrace();
            SignerLogger.log("start 2" + se);
            throw new ITaxInvalidDocException("Dữ liệu hồ sơ không đúng định dạng.");
        }
    }

    public static String readtagfromXML(Document hsoDoc, String tagName) {
        try {
            String nList = hsoDoc.getElementsByTagName(tagName).item(0).getTextContent();
            return nList;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean isTBaoHDDT(String mso) {
        return Pattern.compile("^(01/TB-SSĐT|01/TB-ĐKĐT|01/TB-TNĐT|01/TB-ĐKĐT|01/TB-TNĐT|01/TB-TNĐT|01/TB-BSTT-NNT|01/TB-NSD|01/TB-BSTT|01/CCTT-TB)$").matcher(mso).find();
    }

    public static boolean isTKHaiTBaoHDDT(String mso) {
        return Pattern.compile("^(04/SS-CTĐT|04/SS-HĐĐT|01/TB-ĐKĐT|01/TB-BSTT)$").matcher(mso).find();
    }

    public static String fixVietnameseFileName(String input) {
        if (input == null) {
            return null;
        }
        String fixed = input.replace((char) 208, (char) 272);
        return fixed.replace((char) 240, (char) 273).replace((char) 254, (char) 432).replace((char) 222, (char) 431).replace((char) 230, (char) 230).replace((char) 198, (char) 198).replace((char) 162, (char) 7845).replace((char) 165, (char) 7897).replace((char) 169, (char) 7899).replace((char) 171, (char) 224).replace((char) 172, (char) 7843).replace((char) 173, (char) 227).replace((char) 174, (char) 225).replace((char) 177, (char) 226).replace((char) 178, (char) 259).replace((char) 181, (char) 234).replace((char) 182, (char) 232).replace((char) 183, (char) 233).replace((char) 184, (char) 7865).replace((char) 185, (char) 7869).replace((char) 186, (char) 7873).replace((char) 187, (char) 7879).replace((char) 188, (char) 7877).replace((char) 189, (char) 7875).replace((char) 190, (char) 244).replace((char) 191, (char) 417);
    }
}
