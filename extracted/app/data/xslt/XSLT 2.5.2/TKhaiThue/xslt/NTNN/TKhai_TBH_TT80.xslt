<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01TBH-TT80">
		<xsl:with-param name="mauTKhai"   select="'01/TBH'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số phát sinh quý này</b></td>
						   <td class="align-c"><b>Số luỹ kế năm</b></td>
						 </tr>
					 <tr>
						   <td class="align-c">I</td>
						   <td class="align-l">Tổng doanh thu [12]=[13]+[14]</td>
						   <td class="align-c"><b>[12]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu từ hoạt động tái bảo hiểm</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Doanh thu khác</td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">II</td>
						   <td class="align-l">Các khoản giảm trừ doanh thu [15]=[16]+[17]</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Các khoản thu hộ</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Các khoản chi khác </td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">III</td>
						   <td class="align-l">Doanh thu chịu thuế thu nhập doanh nghiệp [18]=[12]-[15]</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">IV</td>
						   <td class="align-l">Tỷ lệ (%) thuế thu nhập doanh nghiệp tính trên doanh thu chịu thuế</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">V</td>
						   <td class="align-l">Thuế thu nhập doanh nghiệp phát sinh trong kỳ [20]=[18]x[19]</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">VI</td>
						   <td class="align-l">Số thuế miễn, giảm trong kỳ [21]=[22]+[23]</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Số thuế miễn, giảm theo Hiệp định tránh đánh thuế hai lần</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22_luyKe)"/></td>
						 </tr> 
						<tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Số thuế miễn, giảm khác</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23_luyKe)"/></td>
						 </tr>
						<tr>
						   <td class="align-c">VII</td>
						   <td class="align-l">Số thuế phải nộp trong kỳ [24]=[20]-[21]</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24_luyKe)"/></td>
						 </tr>						 
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_02TNDN_TT80"/>
		<!-- <div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/> -->
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>