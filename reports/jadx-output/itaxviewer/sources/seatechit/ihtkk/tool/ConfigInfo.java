package seatechit.ihtkk.tool;

import java.io.File;
import java.security.cert.X509Certificate;
import seatechit.ihtkk.tool.hquanform.DMucHquan;
import seatechit.ihtkk.tool.hquanform1.DMucHquan1;
import seatechit.ihtkk.tool.hquanformnew.DMucHquanNew;
import seatechit.ihtkk.tool.signature.CertVerifier;
import seatechit.ihtkk.tool.taxCatalog.DMucDMuc;
import seatechit.ihtkk.tool.taxMessage.DMucTBao;
import seatechit.ihtkk.tool.taxMessageNtdt.DMucTBaoNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.DMucXNhanCTuNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.DmucBtruNtdt;
import seatechit.ihtkk.tool.taxMessageNtdt.DmucTSoatNtdt;
import seatechit.ihtkk.tool.taxRegistration.DMucDKy;
import seatechit.ihtkk.tool.taxmessagekdtt.DMucBKeKDTT;
import seatechit.ihtkk.tool.taxmessagekdtt.DMucTBaoKDTT;
import seatechit.ihtkk.tool.taxreturn.DMucTKhai;
import seatechit.ihtkk.tool.taxvoucher.DMucCTu;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/ConfigInfo.class */
public class ConfigInfo {
    private DMucTKhai dmTKhai = new DMucTKhai("data\\DMucTKhai.xml");
    private DMucCTu dmCTu = new DMucCTu("data\\DMucCTu.xml");
    private DMucTBao dmTBao = new DMucTBao("data\\DMucTBao.xml");
    private DMucTBao dmTBao_InCDoi = new DMucTBao("data\\DMucTbao_InCDoi.xml");
    private DMucTBaoNtdt dmTBaoNtdt = new DMucTBaoNtdt("data\\DMucTBaoNtdt.xml");
    private DMucDMuc dmDMuc = new DMucDMuc("data\\DMucDMuc.xml");
    private DMucDKy dmDKy = new DMucDKy("data\\DMucHSoDky.xml");
    private DMucHquan dmHquan = new DMucHquan("data\\DMucHquan.xml");
    private DMucHquan1 dmHquan1 = new DMucHquan1("data\\DMucHquan1.xml");
    private DMucHquanNew dmHquanNew = new DMucHquanNew("data\\DMucHquanNew.xml");
    private DMucTBaoKDTT dmTBaoKDTT = new DMucTBaoKDTT("data\\DMucTBaoKDTT.xml");
    private DMucBKeKDTT dmBKeKDTT = new DMucBKeKDTT("data\\DMucBKeKDTT.xml");
    private DmucTSoatNtdt dmTSoatNtdt = new DmucTSoatNtdt("data\\DmucTSoatNtdt.xml");
    private DmucBtruNtdt dmBtruNtdt = new DmucBtruNtdt("data\\DmucBtruNtdt.xml");
    private DMucXNhanCTuNtdt dmXNhanCTuNtdt = new DMucXNhanCTuNtdt("data\\DMucXNhanCTuNtdt.xml");
    private String homePageFileName = new File("infor\\homepage\\TaxViewHomePage.htm").toURI().toURL().toString();
    private String TBaoXpath = "/TBaoThueDTu/TBaoThue";
    private String DmucXpath = "/DanhMucDTu/DanhMuc";
    private String DkyXpath = "/DKyThueDTu/DKyThue";
    private String TBaoNtdtXpath = "/THONGBAO/NDUNG_TBAO";
    private X509Certificate[] rootCerts = CertVerifier.getCertificateList("certstore\\root");
    private X509Certificate[] trustedCerts = CertVerifier.getCertificateList("certstore\\trust");

    public DMucHquanNew getDmHquanNew() {
        return this.dmHquanNew;
    }

    public void setDmHquanNew(DMucHquanNew dmHquanNew) {
        this.dmHquanNew = dmHquanNew;
    }

    public DMucDKy getDmDKy() {
        return this.dmDKy;
    }

    public void setDmDKy(DMucDKy dmDKy) {
        this.dmDKy = dmDKy;
    }

    public String getDmucXpath() {
        return this.DmucXpath;
    }

    public String getDkyXpath() {
        return this.DkyXpath;
    }

    public String getTBaoNtdtXpath() {
        return this.TBaoNtdtXpath;
    }

    public String getTBaoXpath() {
        return this.TBaoXpath;
    }

    public DMucDMuc getDmDMuc() {
        return this.dmDMuc;
    }

    public DMucTBao getDmTBao() {
        return this.dmTBao;
    }

    public DMucTBaoNtdt getDmTBaoNtdt() {
        return this.dmTBaoNtdt;
    }

    public String getHomePageFileName() {
        return this.homePageFileName;
    }

    public DMucTKhai getDmTKhai() {
        return this.dmTKhai;
    }

    public DMucCTu getDmCTu() {
        return this.dmCTu;
    }

    public X509Certificate[] getRootCerts() {
        return this.rootCerts;
    }

    public X509Certificate[] getTrustedCerts() {
        return this.trustedCerts;
    }

    public DMucHquan getDmHquan() {
        return this.dmHquan;
    }

    public void setDmHquan(DMucHquan dmHquan) {
        this.dmHquan = dmHquan;
    }

    public DMucHquan1 getDmHquan1() {
        return this.dmHquan1;
    }

    public void setDmHquan1(DMucHquan1 dmHquan1) {
        this.dmHquan1 = dmHquan1;
    }

    public DMucTBaoKDTT getDmTBaoKDTT() {
        return this.dmTBaoKDTT;
    }

    public void setDmTBaoKDTT(DMucTBaoKDTT dmTBaoKDTT) {
        this.dmTBaoKDTT = dmTBaoKDTT;
    }

    public DMucBKeKDTT getDmBKeKDTT() {
        return this.dmBKeKDTT;
    }

    public void setDmBKeKDTT(DMucBKeKDTT dmBKeKDTT) {
        this.dmBKeKDTT = dmBKeKDTT;
    }

    public DmucTSoatNtdt getDmTSoatNtdt() {
        return this.dmTSoatNtdt;
    }

    public void setDmTSoatNtdt(DmucTSoatNtdt dmTSoatNtdt) {
        this.dmTSoatNtdt = dmTSoatNtdt;
    }

    public DMucXNhanCTuNtdt getDmXNhanCTuNtdt() {
        return this.dmXNhanCTuNtdt;
    }

    public void setDmXNhanCTuNtdt(DMucXNhanCTuNtdt dmXNhanCTuNtdt) {
        this.dmXNhanCTuNtdt = dmXNhanCTuNtdt;
    }

    public DMucTBao getDmTBao_InCDoi() {
        return this.dmTBao_InCDoi;
    }

    public void setDmTBao_InCDoi(DMucTBao dmTBao_InCDoi) {
        this.dmTBao_InCDoi = dmTBao_InCDoi;
    }

    public DmucBtruNtdt getDmBtruNtdt() {
        return this.dmBtruNtdt;
    }

    public void setDmBtruNtdt(DmucBtruNtdt dmBtruNtdt) {
        this.dmBtruNtdt = dmBtruNtdt;
    }
}
