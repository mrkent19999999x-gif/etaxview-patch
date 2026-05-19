<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-02TNDN-VSP">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã số</b></td>
						<td class="align-c"><b>Đơn vị</b></td>
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
						<td class="align-c"><b>I</b></td>
						<td><b>Thuế TNDN đối với dầu khí xuất bán</b></td>
						<td class="align-c"></td>
					    <td class="align-c"></td>
						<td class="align-c"></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu chịu thuế TNDN trong kỳ tính thuế</td>
						<td class="align-c"><b>[26]</b></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng chi phí được trừ khi xác định thu nhập chịu thuế trong kỳ tính thuế</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng thu nhập chịu thuế trong kỳ tính thuế [28]=[26]-[27]</td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế suất thuế TNDN (50%)</td>
						<td class="align-c"><b>[29]</b></td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Số tiền thuế thu nhập doanh nghiệp từ hoạt động dầu khí [30]=[28]x[29]</td>
						<td class="align-c"><b>[30]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>II</b></td>
						<td><b>Thuế TNDN đối với thu nhập từ tiền kết dư của phần dầu để lại</b></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Thu nhập chịu thuế trong kỳ tính thuế</td>
						<td class="align-c"><b>[31]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Thuế suất thuế TNDN <i>(50%)</i></td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Số tiền thuế thu nhập doanh nghiệp đối với thu nhập từ tiền kết dư của phần dầu để lại [33]=[31]x[32]</td>
						<td class="align-c"><b>[33]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>III</b></td>
						<td><b>Số tiền thuế TNDN phải nộp trong kỳ tính thuế [34]=[30]+[33]</b></td>
						<td class="align-c"><b>[34]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IV</b></td>
						<td><b>Số tiền thuế TNDN tạm tính đã kê khai trong kỳ tính thuế</b></td>
						<td class="align-c"><b>[35]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>V</b></td>
						<td><b>Chênh lệch giữa số tiền phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [36]=[34]-[35]</b></td>
						<td class="align-c"><b>[36]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>Tỷ giá quy đổi </td>
						<td class="align-c"><b>[37]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate, khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - USD: đô la Mỹ; VND: đồng Việt Nam.</i></div>
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