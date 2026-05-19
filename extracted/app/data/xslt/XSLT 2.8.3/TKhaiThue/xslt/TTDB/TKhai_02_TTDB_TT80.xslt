<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader_02_TTDB_TT80_283">
			<xsl:with-param name="mauTKhai"   select="'02/TTĐB'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cơ sở sản xuất, pha chế xăng sinh học)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Tên hàng hoá, dịch vụ</b></td>
						<td class="align-c" rowspan="2"><b>ĐVT</b></td>
						<td class="align-c" rowspan="2"><b>Số lượng tiêu thụ trong kỳ</b></td>
						<td class="align-c" colspan="3"><b>Lượng nguyên liệu mua vào của kỳ khai thuế trước liền kề</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB đã nộp của nguyên liệu mua vào</b></td>
						<td class="align-c" rowspan="2"><b>Tỷ lệ xăng khoáng trong xăng sinh học (%)</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB còn được khấu trừ kỳ trước chuyển sang</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB đầu vào được khấu trừ tương ứng hàng hóa bán ra</b></td>
						<td class="align-c" rowspan="2"><b>Doanh thu bán (chưa có thuế GTGT)</b></td>
						<td class="align-c" rowspan="2"><b>Giá tính thuế TTĐB</b></td>
						<td class="align-c" rowspan="2"><b>Thuế suất (%)</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB phải nộp</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB chưa được khấu trừ trong kỳ</b></td>
						<td class="align-c" rowspan="2"><b>Bù trừ với số thuế TTĐB phải nộp của hàng hóa, dịch vụ khác </b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB của xăng khoáng đề nghị hoàn</b></td>
						<td class="align-c" rowspan="2"><b>Thuế TTĐB của xăng khoáng còn được khấu trừ chuyển kỳ sau</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Tên</b></td>
						<td class="align-c"><b>Lượng</b></td>
						<td class="align-c"><b>ĐVT</b></td>
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
						<td class="align-c">(10)</td>
						<td class="align-c">(11) =(8)/(6)x(9)x(4)</td>
						<td class="align-c">(12)</td>
						<td class="align-c">(13)</td>
						<td class="align-c">(14)</td>
						<td class="align-c">(15)=(13)x(14)-(11)-(10) >0</td>
						<td class="align-c">(16)=(13)x(14)-(11)-(10) ≤0</td>
						<td class="align-c">(17)</td>
						<td class="align-c">(18)</td>
						<td class="align-c">(19)=(16)-(17)-(18)</td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/NoiDungXangSinhHoc">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
							<td class="align-c"><xsl:value-of select="ct3"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							<td class="align-l"><xsl:value-of select="LuongNVLMuaVaoKyTruoc/ct5_tenNVL"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(LuongNVLMuaVaoKyTruoc/ct6)"/></td>
							<td class="align-c"><xsl:value-of select="LuongNVLMuaVaoKyTruoc/ct7"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td></td>
						<td class="align-l" colspan="2"><b>Tổng cộng: </b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct20)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct21)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct22)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct23)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct24)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct25)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct26)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct27)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct28)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct29)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct30)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/ct31)"/></b></td>
					</tr>
				</table>
			</div>
				<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"/>
			<div><b><u><i>Ghi chú:</i></u></b></div>
			<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Trường hợp trong kỳ tính thuế NNT có hoạt động sản xuất kinh doanh khác ngoài xăng sinh học thì kê khai thuế TTĐB đồng thời cả Tờ khai 01/TTĐB.</i></div>
			<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Chỉ tiêu [09], [10], [11]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh có hoạt động sản xuất, pha chế xăng sinh học tại địa phương khác tỉnh nơi đóng trụ sở chính theo quy định tại điểm d khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này. </i></div>
			<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Tổng cộng cột (17) trên Tờ khai 02/TTĐB phải bằng tổng cộng cột (10) trên Tờ khai 01/TTĐB.</i></div>
			<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Nội dung nêu trong dấu &lt;  > chỉ là giải thích hoặc ví dụ.</i></div>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

