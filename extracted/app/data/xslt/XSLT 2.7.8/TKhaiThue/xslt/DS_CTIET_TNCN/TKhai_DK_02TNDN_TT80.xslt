<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-02TAIN-DK">
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
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>
					</tr>
					<tr>
						<td class="align-c"><b> A </b></td>
						<td><b>Xác định thu nhập chịu thuế theo thuế suất hợp đồng dầu khí</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu chịu thuế TNDN trong kỳ tính thuế</td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng chi phí được phép thu hồi lũy kế</td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
					</tr>
						<tr>
						<td class="align-c">3</td>
						<td>Chi phí được trừ khi xác định thu nhập chịu thuế: [27] = [27a]+[27b]</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c"><i>3.1</i></td>
						<td><i> + Chi phí được phép thu hồi trong năm quyết toán</i></td>
						<td class="align-c"><b>[27a]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27a)"/></td>
					</tr>
					<tr>
						<td class="align-c"><i>3.2</i></td>
						<td><i>+ Chi phí được trừ khác</i></td>
						<td class="align-c"><b>[27b]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27b)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng chi phí đã thu hồi luỹ kế đến hết năm quyết toán</td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Tổng chi phí còn được phép thu hồi chuyển sang kỳ sau [29]=[26]-[28]</td>
						<td class="align-c"><b>[29]</b></td>
		                <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Thu nhập từ hoạt động dầu khí [30]=[25]-[27]</td>
						<td class="align-c"><b>[30]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Thu nhập khác liên quan trực tiếp đến hoạt động dầu khí</td>
						<td class="align-c"><b>[31]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tổng thu nhập chịu thuế [32]=[30]+[31]</td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Thuế suất thuế TNDN hoạt động dầu khí</td>
						<td class="align-c"><b>[33]</b></td>
						<td class="align-c">%</td>
					      <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>B</b></td>
						<td><b>Xác định thu nhập chịu thuế hoạt động khác</b></td>
					</tr>
					<tr>
						<td class="align-c">10</td>
						<td>Thu nhập chịu thuế hoạt động khác</td>
						<td class="align-c"><b>[34]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td>Thuế suất thuế TNDN hoạt động khác</td>
						<td class="align-c"><b>[35]</b></td>
						 <td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>C</b></td>
						<td><b>Xác định thuế TNDN phải nộp</b></td>
					</tr>
					<tr>
						<td class="align-c">12</td>
						<td>Số thuế TNDN phải nộp [36]=[32]x[33]+[34]x[35]</td>
						<td class="align-c"><b>[36]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">13</td>
						<td>Số thuế TNDN được miễn hoặc giảm </td>
						<td class="align-c"><b>[37]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
						<tr>
						<td class="align-c">14</td>
						<td>Số thuế TNDN phải nộp theo quyết toán [38]=[36]-[37] </td>
						<td class="align-c"><b>[38]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
						<tr>
						<td class="align-c">15</td>
						<td>Số thuế TNDN tạm tính đã kê khai trong kỳ </td>
						<td class="align-c"><b>[39]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
						<tr>
						<td class="align-c">16</td>
						<td>Chênh lệch giữa số thuế TNDN phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [40]=[38]-[39] </td>
						<td class="align-c"><b>[40]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
						<tr>
						<td class="align-c">17</td>
						<td>Tỷ giá quy đổi </td>
						<td class="align-c"><b>[41]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [07]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung.   </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt..</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam. </i></div>
				<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

				</div>

		</div>
	</xsl:template>		
</xsl:stylesheet>