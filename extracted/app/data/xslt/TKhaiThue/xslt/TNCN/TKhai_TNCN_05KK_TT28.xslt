<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'05/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập chịu thuế từ tiền lương, tiền công cho cá nhân)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 <div></div>
	   <div class="align-l"><b>I. Nghĩa vụ khấu trừ thuế của tổ chức, cá nhân trả thu nhập:</b></div>
                                <table class="tkhai_table"  > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>ĐVT</b></td>
						   <td class="align-c"><b>Số người/ Số tiền	</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td><b>Tổng số cá nhân đã khấu trừ thuế</b></td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.1</td>
						   <td>Cá nhân cư trú</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.2</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>2</b></td>
						   <td><b>Tổng TNCT trả cho cá nhân</b></td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>3</b></td>
						   <td><b>Tổng TNCT trả cho cá nhân thuộc diện phải khấu trừ thuế</b></td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct30)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct31)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td><b>Tổng số thuế TNCN đã khấu trừ</b></td>
						   <td class="align-c"><b>[32]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct32)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[33]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct33)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[34]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct34)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[35]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct35)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>5</b></td>
						   <td><b>Tổng số thuế TNCN phải khấu trừ</b></td>
						   <td class="align-c"><b>[36]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNPhaiKTru/ct36)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[37]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNPhaiKTru/ct37)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[38]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNPhaiKTru/ct38)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[39]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNPhaiKTru/ct39)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>6</b></td>
						   <td><b>Tổng số thuế TNCN đã nộp NSNN </b></td>
						   <td class="align-c"><b>[40]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/ct40)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>7</b></td>
						   <td><b>Tổng số thuế TNCN còn phải nộp NSNN  </b></td>
						   <td class="align-c"><b>[41]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/ct41)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>8</b></td>
						   <td><b>Tổng số thuế TNCN đã nộp thừa</b></td>
						   <td class="align-c"><b>[42]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/ct42)"/></td>
						 </tr>
					 </table>  
		 <div></div>
  <div class="align-l"><b>II. Nghĩa vụ quyết toán thay cho cá nhân:</b></div>
  
        <table class="tkhai_table" >  
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>ĐVT</b></td>
						   <td class="align-c"><b>Số người/ Số tiền</b></td>
						 </tr>
						 
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng số cá nhân uỷ quyền cho tổ chức, cá nhân trả thu nhập quyết toán thay</td>
						   <td class="align-c"><b>[43]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct43)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>2</b></td>
						   <td>Tổng số thuế TNCN đã khấu trừ</td>
						   <td class="align-c"><b>[44]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct44)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>3</b></td>
						   <td>Tổng số thuế TNCN phải nộp</td>
						   <td class="align-c"><b>[45]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct45)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td>Tổng số thuế TNCN còn phải nộp NSNN</td>
						   <td class="align-c"><b>[46]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct46)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>5</b></td>
						   <td>Tổng số thuế TNCN đã nộp thừa </td>
						   <td class="align-c"><b>[47]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct47)"/></td>
						 </tr>  
				   </table>

					
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>