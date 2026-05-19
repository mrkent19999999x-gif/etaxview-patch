<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader-DK2">
		<xsl:with-param name="mauTKhai"   select="'01B/TNDN-DK'"/>
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
				<td class="align-c">[22]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Giá bán</td>
				<td class="align-c">[23]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Doanh thu [24]=[22]x[23]</td>
				<td class="align-c">[24]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Chi phí được trừ </td>
				<td class="align-c">[25]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Thu nhập chịu thuế [26]=[24]-[25]</td>
				<td class="align-c">[26]</td>
				<td class="align-c"> USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">6</td>
				<td class="align-l">Thuế suất thuế TNDN </td>
				<td class="align-c">[27]</td>
				<td class="align-c">%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">7</td>
				<td class="align-l">Số thuế TNDN tạm tính phải nộp [28]=[26]x[27]</td>
				<td class="align-c">[28]</td>
				<td class="align-c"> USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">8</td>
				<td class="align-l">Số thuế TNDN tạm tính được miễn hoặc giảm (nếu có)</td>
				<td class="align-c">[29]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
			 </tr>
			  <tr>
				<td class="align-c">9</td>
				<td class="align-l">Số thuế TNDN tạm tính phải nộp sau khi miễn hoặc giảm (nếu có) [30]=[28]-[29]</td>
				<td class="align-c">[30]</td>
				<td class="align-c">USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
			 </tr>
			  <tr>
				<td class="align-c">10</td>
				<td class="align-l">Tỷ giá ngoại tệ bình quân gia quyền liên ngân hàng các lần xuất bán trong quý <i>(Tổng doanh thu VND chia cho tổng doanh thu USD)</i></td>
				<td class="align-c">[31]</td>
				<td class="align-c">VND/USD</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
			 </tr>
		</table>
		
	   </div>
       </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
	 <div><i><b><u>Ghi chú</u></b>: TNDN: Thu nhập doanh nghiệp; USD: Đô la Mỹ; VND: Đồng Việt Nam</i></div><br/><br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 

	</xsl:template>		
</xsl:stylesheet>