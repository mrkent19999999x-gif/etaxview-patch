<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định số 373/2025/NĐ-CP ngày 31 tháng 12 năm 2025 của Chính phủ'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01TBH-ND373">
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
						   <td class="align-l">Tổng doanh thu [09]=[10]+[11]</td>
						   <td class="align-c"><b>[09]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct09_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct09_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu từ hoạt động tái bảo hiểm</td>
						   <td class="align-c"><b>[10]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Doanh thu khác</td>
						   <td class="align-c"><b>[11]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">II</td>
						   <td class="align-l">Các khoản giảm trừ doanh thu [12]=[13]+[14]</td>
						   <td class="align-c"><b>[12]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Các khoản thu hộ</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Các khoản chi khác</td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">III</td>
						   <td class="align-l">Doanh thu chịu thuế thu nhập doanh nghiệp [15]=[09]-[12]</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">IV</td>
						   <td class="align-l">Tỷ lệ (%) thuế thu nhập doanh nghiệp tính trên doanh thu chịu thuế</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">V</td>
						   <td class="align-l">Thuế thu nhập doanh nghiệp phát sinh trong kỳ [17]=[15]x[16]</td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">VI</td>
						   <td class="align-l">Số thuế miễn, giảm trong kỳ [18]=[19]+[20]</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_luyKe)"/></td>
						 </tr>
                         <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Số thuế miễn, giảm theo Hiệp định tránh đánh thuế hai lần</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_luyKe)"/></td>
						 </tr>
                         <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Số thuế miễn, giảm khác</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_luyKe)"/></td>
						 </tr>
                         <tr>
						   <td class="align-c">VII</td>
						   <td class="align-l">Số thuế phải nộp trong kỳ [21]=[17]-[18]</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_luyKe)"/></td>
						 </tr>  						 
						 
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter"/>
		<!-- <div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/> -->
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>