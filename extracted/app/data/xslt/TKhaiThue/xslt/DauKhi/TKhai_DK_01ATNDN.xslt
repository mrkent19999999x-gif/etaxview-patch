<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày  6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader-DK1">
		<xsl:with-param name="mauTKhai"   select="'01A/TNDN-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Đơn vị tính</b></td>
				<td class="align-c"><b>Giá trị</b></td>
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
				<td class="align-l">Sản lượng dầu khí xuất bán</td>
				<td class="align-c">[29]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Giá bán</td>
				<td class="align-c">[30]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Doanh thu [31]=[29]x[30]</td>
				<td class="align-c">[31]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Tỷ lệ thuế TNDN tạm tính</td>
				<td class="align-c">[32]</td>
				<td class="align-c"> %</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Số thuế TNDN tạm tính phải nộp [33]=[31]x[32]</td>
				<td class="align-c">[33]</td>
				<td class="align-c"> USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">6</td>
				<td class="align-l">Số thuế TNDN được miễn hoặc giảm (nếu có)</td>
				<td class="align-c">[34]</td>
				<td class="align-c"> USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">7</td>
				<td class="align-l">Số thuế TNDN tạm tính phải nộp sau khi miễn hoặc giảm (nếu có) [35]= [33]-[34]</td>
				<td class="align-c">[35]</td>
				<td class="align-c"> USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">8</td>
				<td class="align-l">Tỷ giá ngoại tệ liên ngân hàng tại thời điểm xuất hoá đơn dầu khí xuất bán tại Việt Nam</td>
				<td class="align-c">[36]</td>
				<td class="align-c">VND/USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
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