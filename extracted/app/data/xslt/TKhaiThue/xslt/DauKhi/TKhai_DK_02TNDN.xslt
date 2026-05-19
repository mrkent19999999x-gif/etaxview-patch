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
		 <xsl:call-template name="tkhaiHeader-DK3">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN-DK'"/>
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
				<td class="align-l">Tổng doanh thu chịu thuế TNDN trong kỳ tính thuế</td>
				<td class="align-c">[25]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct25"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Tổng chi phí được phép thu hồi</td>
				<td class="align-c">[26]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct26"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Chi phí được trừ khi xác định thu nhập chịu thuế:[27] = [27a]+[27b]</td>
				<td class="align-c">[27]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct27"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3.1</td>
				<td class="align-l"> + Chi phí được phép thu hồi phát sinh trong năm quyết toán</td>
				<td class="align-c">[27a]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct27a"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3.2</td>
				<td class="align-l"> + Chi phí được trừ khác</td>
				<td class="align-c">[27b]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct27b"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Tổng chi phí đã thu hồi luỹ kế đến hết năm quyết toán</td>
				<td class="align-c">[28]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct28"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Tổng chi phí còn được phép thu hồi [29]=[26]-[28]</td>
				<td class="align-c">[29]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct29"/></td>
			 </tr>
			 <tr>
				<td class="align-c">6</td>
				<td class="align-l">Thu nhập từ hoạt động dầu khí [30]=[25]-[27]</td>
				<td class="align-c">[30]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct30"/></td>
			 </tr>
			 <tr>
				<td class="align-c">7</td>
				<td class="align-l">Thu nhập khác</td>
				<td class="align-c">[31]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct31"/></td>
			 </tr>
			 <tr>
				<td class="align-c">8</td>
				<td class="align-l">Tổng thu nhập chịu thuế [32]=[30]+[31]</td>
				<td class="align-c">[32]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct32"/></td>
			 </tr>
			 <tr>
				<td class="align-c">9</td>
				<td class="align-l">Thuế suất thuế TNDN </td>
				<td class="align-c">[33]</td>
				<td class="align-c">%</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct33"/></td>
			 </tr>
			 <tr>
				<td class="align-c">10</td>
				<td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp [34]=[32]x[33]</td>
				<td class="align-c">[34]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct34"/></td>
			 </tr>
			 <tr>
				<td class="align-c">11</td>
				<td class="align-l">Số thuế thu nhập doanh nghiệp được miễn hoặc giảm </td>
				<td class="align-c">[35]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct35"/></td>
			 </tr>
			 <tr>
				<td class="align-c">12</td>
				<td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp theo quyết toán [36]=[34]-[35]</td>
				<td class="align-c">[36]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct36"/></td>
			 </tr>
			 <tr>
				<td class="align-c">13</td>
				<td class="align-l">Số thuế thu nhập doanh nghiệp tạm tính đã kê khai trong kỳ</td>
				<td class="align-c">[37]</td>
				<td class="align-c"></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct37"/></td>
			 </tr>
			 <tr>
				<td class="align-c">14</td>
				<td class="align-l">Chênh lệch giữa số thuế thu nhập doanh nghiệp nộp theo quyết toán đã kê khai  [38]=[36]-[37]</td>
				<td class="align-c">[38]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct38"/></td>
			 </tr>
		</table>	
	   </div>
       </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
	 <div class="ghichu">
	 <div><i><b><u>Ghi chú:</u></b></i></div><br/>
	 <div><i>- Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div><br/>
	 <div><i>- TNDN: Thu nhập doanh nghiệp</i></div><br/>
	 </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 
	</xsl:template>		
</xsl:stylesheet>