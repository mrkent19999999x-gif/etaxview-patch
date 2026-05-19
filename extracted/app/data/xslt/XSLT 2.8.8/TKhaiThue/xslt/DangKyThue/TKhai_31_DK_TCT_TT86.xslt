<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
  <xsl:include href="../../include/TKhaiHeader.xsl"/>
  <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/> 

  <xsl:template match="/">
    <xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>	
	<xsl:variable name="ttdlythue" select="HSoThueDTu/HSoKhaiThue/TTinChung/DLyThue"/>	
    <xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
    <xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ trưởng Bộ Tài chính)'"/>

    <xsl:call-template name="tkhaiHeader_31_DK_TCT">
      <xsl:with-param name="mauTKhai" select="'31/ĐK-TCT'"/>
      <xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
    </xsl:call-template>
		
    <div style="width:100%;padding-top: 6pt;text-align:center"> <b>VĂN BẢN</b></div>
    <div style="width:100%;padding-top: 0pt;text-align:center"><b>Đăng ký hủy chuyển địa điểm</b><br/>────────────<br/></div><br/>
		
    <div style="width:100%;padding-top: 6pt;text-align:center">Kính gửi: 
      <xsl:value-of select="$ttkthue/tenCQTQuanLy"/>
    </div><br/>
		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      1. Tên người nộp thuế <i>(ghi theo đăng ký thuế)</i>:  
      <xsl:value-of select="$ttkthue/tenNNT"/>
    </div>
		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      2. Mã số thuế: <xsl:value-of select="$ttkthue/mst"/>
    </div>
		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      3. Địa chỉ trụ sở <i>(ghi theo địa chỉ trụ sở của tổ chức đã đăng ký thuế)</i>: 
	  <xsl:value-of select="$tkchinh/diaChiTSChinh/soNha"/>, <xsl:value-of select="$tkchinh/diaChiTSChinh/tenPhuong"/>, <xsl:value-of select="$tkchinh/diaChiTSChinh/tenTinh"/>
    </div>
		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      4. Địa chỉ kinh doanh <i>(ghi theo địa chỉ đăng ký kinh doanh của hộ kinh doanh, cá nhân kinh doanh đã đăng ký thuế)</i> : 
	  <xsl:value-of select="$tkchinh/DiaChiKD/soNha"/>, <xsl:value-of select="$tkchinh/DiaChiKD/tenPhuong"/>, <xsl:value-of select="$tkchinh/DiaChiKD/tenTinh"/>
    </div>
	    
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      5. Thông tin đại lý thuế <i>(nếu có)</i>: 
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      a) Tên: <xsl:value-of select="$ttdlythue/tenDLyThue"/>
    </div>		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      b) Mã số thuế của đại lý thuế: <xsl:value-of select="$ttdlythue/mstDLyThue"/>
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      c) Số hợp đồng đại lý thuế: <xsl:value-of select="$ttdlythue/soHDongDLyThue"/>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
	  ngày ký hợp đồng: <xsl:value-of select="ihtkk:stringDatetime($ttdlythue/ngayKyHDDLyThue,'dd/mm/yyyy')"/>
    </div>
		
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      6. Hồ sơ chuyển địa điểm dẫn đến thay đổi cơ quan thuế quản lý nộp cho cơ quan thuế ngày 
      <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_NopHSChuyenDiaDiemDi,'dd/mm/yyyy')"/>, 
      mã giao dịch điện tử <i>(nếu có)</i> số <xsl:value-of select="$tkchinh/maGiaoDichDT"/>
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      7. Lý do đề nghị hủy chuyển địa điểm: <xsl:value-of select="$tkchinh/lyDoDNHuyChuyenDD"/>
    </div>
		
    <div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.
    </div>
		
    <xsl:call-template name="tkhaiFooter_30_31_DK_TCT"/>
    <table style="page-break-inside: avoid;">
      <tr>
        <td><div id="sigDiv"></div></td>
      </tr>
    </table>
  </xsl:template>		
</xsl:stylesheet>
