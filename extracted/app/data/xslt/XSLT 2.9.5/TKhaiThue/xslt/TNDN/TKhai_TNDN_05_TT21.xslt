<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  21/2026/TT-BTC ngày 17 tháng 3 năm 2026  của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-05TNDN-TT21">
		<xsl:with-param name="mauTKhai"   select="'05/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hoạt động chuyển nhượng vốn của doanh nghiệp nước ngoài)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
			   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>(1)</i></td>
						   <td class="align-c"><i>(2)</i></td>
						   <td class="align-c"><i>(3)</i></td>
						   <td class="align-c"><i>(4)</i></td>
						 </tr>
					     <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu tính thuế thu nhập doanh nghiệp từ hoạt động chuyển nhượng vốn phát sinh tại Việt Nam</td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tỷ lệ tính thuế TNDN (%)</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp <b> [19]=[17]x[18] </b></td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Số thuế thu nhập doanh nghiệp miễn giảm theo Hiệp định </td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp </td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_05TNDN_TT21"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>