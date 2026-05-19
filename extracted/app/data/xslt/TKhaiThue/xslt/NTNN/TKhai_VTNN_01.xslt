<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL1" select="'(Dành cho trường hợp doanh nghiệp khai thác tàu, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL2" select="'(Dành cho trường hợp hoán đổi/chia chỗ, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL3" select="'(Kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:call-template name="tkhaiHeader-01VTNN">
			<xsl:with-param name="mauTKhai" select="'01/VTNN'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="''"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="content">
				<div class="align-r">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</div>
				<table class="tkhai_table">
					<thead class="tkhaiheader">
						<tr>
							<td rowspan="2" class="align-c">
								<b>Tên hãng vận tải nước ngoài</b>
							</td>
							<td rowspan="2" class="align-c">
								<b>Tên/ hô hiệu phương tiện vận tải</b>
							</td>
							<td colspan="2" class="align-c">
								<b>Ngày/tháng/năm</b>
							</td>
							<td rowspan="2" class="align-c">
								<b>Cảng đi</b>
							</td>
							<td rowspan="2" class="align-c">
								<b>Cảng đến</b>
							</td>
							<td colspan="4" class="align-c">
								<b>Thuế giá trị gia tăng</b>
							</td>
							<td colspan="4" class="align-c">
								<b>Thuế thu nhập doanh nghiệp</b>
							</td>
						</tr>
						<tr>
							<td class="align-c">Đến</td>
							<td class="align-c">Đi</td>
							<td class="align-c">Doanh thu tính thuế</td>
							<td class="align-c">Tỷ lệ giá trị gia tăng</td>
							<td class="align-c">Thuế suất thuế giá trị gia tăng </td>
							<td class="align-c">Thuế giá trị gia tăng phải nộp</td>
							<td class="align-c">Doanh thu tính thuế</td>
							<td class="align-c">Tỷ lệ  thuế thu nhập doanh nghiệp</td>
							<td class="align-c">Số thuế được miễn, giảm theo Hiệp định</td>
							<td class="align-c">Thuế thu nhập doanh nghiệp phải nộp</td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8)</td>
							<td class="align-c">(9)</td>
							<td class="align-c">(10=7x8x9)</td>
							<td class="align-c">(11)</td>
							<td class="align-c">(12)</td>
							<td class="align-c">(13)</td>
							<td class="align-c">(14=11x12-13)</td>
						</tr>
					</thead>
					<tbody id="tkhaitbody">
						<xsl:for-each select="$tkchinh/BKeThueVTNN/ChiTietBKeThueVTNN">
							<tr>
								<td class="align-l">
									<xsl:value-of select="ct1"/>
								</td>
								<td class="align-l">
									<xsl:value-of select="ct2"/>
								</td>
								<td class="align-c">
									<xsl:value-of select="ihtkk:stringDatetime(NgayThangNam/ct3,'dd/mm/yyyy')"/>
								</td>
								<td class="align-c">
									<xsl:value-of select="ihtkk:stringDatetime(NgayThangNam/ct4,'dd/mm/yyyy')"/>
								</td>
								<td class="align-l">
									<xsl:value-of select="ct5"/>
								</td>
								<td class="align-l">
									<xsl:value-of select="ct6"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct7)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct8)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct9)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct10)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct11)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct12)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct13)"/>
								</td>
								<td class="align-r">
									<xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct14)"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
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
