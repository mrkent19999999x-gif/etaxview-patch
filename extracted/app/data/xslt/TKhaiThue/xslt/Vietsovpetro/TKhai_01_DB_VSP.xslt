<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP4">
		<xsl:with-param name="mauTKhai"   select="'01/ĐB-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table" >
						 <tr>
						   <td class="tkhaiheader">STT</td>
						   <td class="tkhaiheader">Chỉ tiêu</td>
						   <td class="tkhaiheader">Mã số</td>
						   <td class="tkhaiheader">Đơn vị</td>
						   <td class="tkhaiheader">Giá trị</td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>					   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Sản lượng dầu thô xuất bán tại Việt Nam</td>
							<td class="align-c">[26]</td>
							<td class="align-c">Thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá tính thuế đặc biệt</td>
							<td class="align-c">[27]</td>
							<td class="align-c">USD/thùng</td>						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Doanh thu [28]=[26]x[27]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Tỷ lệ thuế đặc biệt</td>
							<td class="align-c">[29]</td>
							<td class="align-c">%</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số thuế đặc biệt phải nộp [30]=[28]x[29]</td>
							<td class="align-c">[30]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>			
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
        <div><i>Hạch toán mục 3790, tiểu mục: 3799.</i></div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>