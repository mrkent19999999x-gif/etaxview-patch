<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 36/2016/TT-BTC  ngày 26/02/2016 của  Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="' '"/>
		<xsl:call-template name="tkhaiHeader-DK_02TNDN">
			<xsl:with-param name="mauTKhai" select="'02/TNDN-DK'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="''"/>
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
						<td class="align-c"><b>A</b></td>
						<td><b>Xác định thu nhập chịu thuế theo thuế suất hợp đồng dầu khí</b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td class="align-l">Tổng doanh thu chịu thuế TNDN trong kỳ tính thuế</td>
						<td class="align-c">[25]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct25"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td class="align-l">Tổng chi phí được phép thu hồi lũy kế</td>
						<td class="align-c">[26]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct26"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td class="align-l">Chi phí được trừ khi xác định thu nhập chịu thuế: [27] = [27a]+[27b]</td>
						<td class="align-c">[27]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct27"/>
						</td>
					</tr>
					<tr><i>
						<td class="align-c">3.1</td>
						<td class="align-l">  + Chi phí được phép thu hồi trong năm quyết toán</td>
						<td class="align-c">[27a]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct27a"/>
						</td></i>
					</tr>
					<tr><i>
						<td class="align-c">3.2</td>
						<td class="align-l"> + Chi phí được trừ khác</td>
						<td class="align-c">[27b]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct27b"/>
						</td></i>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td class="align-l">Tổng chi phí đã thu hồi luỹ kế đến hết năm quyết toán</td>
						<td class="align-c">[28]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct28"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td class="align-l">Tổng chi phí còn được phép thu hồi chuyển sang kỳ sau [29]=[26]-[28]</td>
						<td class="align-c">[29]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct29"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td class="align-l">Thu nhập từ hoạt động dầu khí [30]=[25]-[27]</td>
						<td class="align-c">[30]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct30"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td class="align-l">Thu nhập khác liên quan trực tiếp đến hoạt động dầu khí</td>
						<td class="align-c">[31]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct31"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td class="align-l">Tổng thu nhập chịu thuế [32]=[30]+[31]</td>
						<td class="align-c">[32]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct32"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td class="align-l">Thuế suất thuế TNDN hoạt động dầu khí </td>
						<td class="align-c">[33]</td>
						<td class="align-c">%</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct33"/>
						</td>
					</tr>
					<tr>
						<td class="align-c"><b>B</b></td>
						<td><b>Xác định thu nhập chịu thuế hoạt động khác</b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
					</tr>
					<tr>
						<td class="align-c">10</td>
						<td class="align-l">Thu nhập chịu thuế hoạt động khác</td>
						<td class="align-c">[34]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct34"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td class="align-l">Thuế suất thuế TNDN hoạt động khác </td>
						<td class="align-c">[35]</td>
						<td class="align-c">%</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct35"/>
						</td>
					</tr>
					<tr>
						<td class="align-c"><b>C</b></td>
						<td><b>Xác định thuế TNDN phải nộp</b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
						<td class="align-c"><b></b></td>
					</tr>
					<tr>
						<td class="align-c">12</td>
						<td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp [36]=[32]x[33]+[34]x[35]</td>
						<td class="align-c">[36]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct36"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">13</td>
						<td class="align-l">Số thuế thu nhập doanh nghiệp được miễn hoặc giảm </td>
						<td class="align-c">[37]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct37"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">14</td>
						<td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp theo quyết toán [38]=[36]-[37]</td>
						<td class="align-c">[38]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct38"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">15</td>
						<td class="align-l">Số thuế thu nhập doanh nghiệp tạm tính đã kê khai trong kỳ</td>
						<td class="align-c">[39]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct39"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">16</td>
						<td class="align-l">Chênh lệch giữa số thuế thu nhập doanh nghiệp nộp theo quyết toán đã kê khai  [40]=[38]-[39]</td>
						<td class="align-c">[40]</td>
						<td class="align-c">USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct40"/>
						</td>
					</tr>
					<tr>
						<td class="align-c">17</td>
						<td class="align-l">Tỷ giá quy đổi</td>
						<td class="align-c">[41]</td>
						<td class="align-c">VND/USD</td>
						<td class="number align-r">
							<xsl:value-of select="$tkchinh/ct41"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<table style="page-break-inside: avoid;" width="100%">
			<tr>
				<td>
					<xsl:call-template name="tkhaiFooter"/>
					<div class="ghichu">
						<div><i><b><u>Ghi chú:</u></b></i></div><br/>
						<div>
							<i>- Chỉ tiêu [07]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định.   </i><br/>
							<i>- Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i><br/>
							<i>- TNDN: Thu nhập doanh nghiệp; USD: Đô la Mỹ; VND: Đồng Việt Nam.               </i><br/>
						</div>
					</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
