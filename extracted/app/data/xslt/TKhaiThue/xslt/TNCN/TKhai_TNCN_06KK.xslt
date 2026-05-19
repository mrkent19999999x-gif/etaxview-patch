<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'06/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập khấu trừ thuế đối với thu nhập từ đầu tư vốn, từ chuyển nhượng chứng khoán, từ bản quyền, từ nhượng quyền thương mại, từ trúng thưởng của cá nhân cư trú và cá nhân không cư trú; từ kinh doanh của cá nhân không cư trú; Tổ chức nhận chuyển nhượng vốn của cá nhân không cư trú )'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam (VNĐ)</i></div>
   <table class="tkhai_table"  > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						    <td class="align-c"><b>I</b></td>
						   <td colspan="4"><b>Thu nhập từ đầu tư vốn:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập tính thuế:</td>
						   <td class="align-c">[21]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauVon/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ</td>
						   <td class="align-c">[22]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauVon/ct22)"/></td>
						 </tr>  
	                     <tr>
						    <td class="align-c"><b>II</b></td>
						   <td colspan="4"><b>Thu nhập từ chuyển nhượng chứng khoán:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng giá trị chứng khoán chuyển nhượng  </td>
						   <td class="align-c">[23]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuChuyenNhuongCKhoan/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế TNCN đã khấu trừ </td>
						   <td class="align-c">[24]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuChuyenNhuongCKhoan/ct24)"/></td>
						 </tr>  
                         <tr>
						    <td class="align-c"><b>III</b></td>
						   <td colspan="4"><b>Thu nhập từ bản quyền, nhượng quyền thương mại:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập tính thuế</td>
						   <td class="align-c">[25]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế TNCN đã khấu trừ </td>
						   <td class="align-c">[26]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct26)"/></td>
						 </tr>  
                         <tr>
	 					    <td class="align-c"><b>IV</b></td>
						   <td colspan="4"><b>Thu nhập từ trúng thưởng:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập tính thuế</td>
						   <td class="align-c">[27]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế TNCN đã khấu trừ </td>
						   <td class="align-c">[28]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct28)"/></td>
						 </tr>  
                         <tr>
						    <td class="align-c"><b>V</b></td>
						   <td colspan="4"><b>Thu nhập từ kinh doanh trả cho cá nhân không cư trú:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"> 1 </td>
						   <td>Tổng số cá nhân nhận thu nhập chịu thuế</td>
						   <td class="align-c"> [29] </td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNhapTuKDoanhCaNhanKhongCTru/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng thu nhập chịu thuế trả cho cá nhân</td>
						   <td class="align-c"> [30] </td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNhapTuKDoanhCaNhanKhongCTru/ct30)"/></td>
						 </tr>  
                                    <tr>
						   <td class="align-c">3</td>
						   <td>Tổng số thuế TNCN đã khấu trừ</td>
						   <td class="align-c">[31]</td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNhapTuKDoanhCaNhanKhongCTru/ct31)"/></td>
						 </tr>  
						 <tr>
						    <td class="align-c"><b>VI</b></td>
						   <td colspan="4"><b>Thu nhập từ chuyển nhượng vốn của cá nhân không cư trú</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"> 1 </td>
						   <td>Tổng giá chuyển nhượng vốn</td>
						   <td class="align-c"> [32] </td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNhapTuCNhungVonCNhanKhongCuTru/ct32)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế TNCN đã khấu trừ </td>
						   <td class="align-c"> [33] </td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNhapTuCNhungVonCNhanKhongCuTru/ct33)"/></td>
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