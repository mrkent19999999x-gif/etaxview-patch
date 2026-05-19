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
		<xsl:with-param name="mauTKhai"   select="'06/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập từ đầu tư vốn, từ chuyển nhượng chứng khoán, từ bản quyền, nhượng quyền thương mại, từ trúng thưởng cho cá nhân và trả thu nhập từ kinh doanh cho cá nhân không cư trú)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
   <table class="tkhai_table"  > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>ĐVT</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						    <td class="align-c"><b>I</b></td>
						   <td><b>Thu nhập từ đầu tư vốn:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng thu nhập tính thuế:</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauVon/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế đã khấu trừ (5%)</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauVon/ct22)"/></td>
						 </tr>  
	 <tr>
						    <td class="align-c"><b>II</b></td>
						   <td><b>Thu nhập từ chuyển nhượng chứng khoán:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng giá trị chứng khoán chuyển nhượng </td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuChuyenNhuongCKhoan/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế đã khấu trừ (0,1%)</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuChuyenNhuongCKhoan/ct24)"/></td>
						 </tr>  

	 <tr>
						    <td class="align-c"><b>III</b></td>
						   <td><b>Thu nhập từ bản quyền, nhượng quyền thương mại::</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng thu nhập tính thuế:</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế đã khấu trừ (5%)</td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct26)"/></td>
						 </tr>  

	                                     <tr>
	 					    <td class="align-c"><b>IV</b></td>
						   <td><b>Thu nhập từ trúng thưởng:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng thu nhập tính thuế</td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế đã khấu trừ (10%)</td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct28)"/></td>
						 </tr>  

	                                     <tr>
						    <td class="align-c"><b>V</b></td>
						   <td><b>Thu nhập từ kinh doanh trả cho cá nhân không cư trú:</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng số cá nhân nhận thu nhập chịu thuế</td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCTru/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng thu nhập chịu thuế trả cho cá nhân</td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCTru/ct30)"/></td>
						 </tr>  
                                    <tr>
						   <td class="align-c">3</td>
						   <td>Tổng số thuế đã khấu trừ</td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCTru/ct31)"/></td>
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