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
		<xsl:call-template name="tkhaiHeader_01_TTDB_TT80">
			<xsl:with-param name="mauTKhai"   select="'01/TTĐB'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="'(trừ hoạt động sản xuất, pha chế xăng sinh học)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Tên hàng hoá, dịch vụ</b></td>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Số lượng tiêu thụ trong kỳ</b></td>
						<td class="align-c"><b>Doanh thu bán (chưa có thuế GTGT)</b></td>
						<td class="align-c"><b>Giá tính thuế TTĐB</b></td>
						<td class="align-c"><b>Thuế suất (%)</b></td>
						<td class="align-c"><b>Thuế TTĐB được khấu trừ</b></td>
						<td class="align-c"><b>Thuế TTĐB phải nộp</b></td>
						<td class="align-c"><b>Bù trừ với thuế TTĐB chưa được khấu trừ của xăng khoáng nguyên liệu dùng để sản xuất, pha chế xăng sinh học (nếu có)</b></td>
						<td class="align-c"><b>Thuế TTĐB còn phải nộp</b></td>
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
						<td class="align-c">(9) = (6) x (7) - (8)</td>
						<td class="align-c">(10)</td>
						<td class="align-c">(11) = (9) - (10)</td>
					</tr>
					<tr>
						<td class="align-c"><b>I</b></td>
						<td class="align-l"><b>Hàng hoá chịu thuế TTĐB</b></td>
  						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot5)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot6)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot8)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot9)"/></b></td>	
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot10)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot11)"/></b></td>	
          			</tr>
					<tr>
						<td class="align-c"><b>1</b></td>
						<td><b>Hàng hóa sản xuất trong nước</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/HHoaSXTrongNuoc/NDungHHoaSXTrongNuoc">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td></td>
							<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
							<td class="align-c"><xsl:value-of select="ct3"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td class="align-c"><b>2</b></td>
						<td><b>Hàng hóa nhập khẩu bán ra trong nước</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/HHoaNKBanRaTrongNuoc/NDungHHoaNKBanRaTrongNuoc">
						<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td></td>
								<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
					</xsl:for-each>	
					<tr>
						<td class="align-c"><b>II</b></td>
						<td><b>Dịch vụ chịu thuế TTĐB</b></td>
						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot5)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot6)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot7)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot8)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot9)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot8)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/tongDongIIcot9)"/></b></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/DVuChiuThueTTDB/NDungDichVuChiuTheTTDB">
						<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
					</xsl:for-each>
					<tr>
						<td class="align-c"><b>III</b></td>
						<td><b>Hàng hoá thuộc trường hợp không phải chịu thuế TTĐB</b></td>
						<td></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTTDB/tongDongIIIcot5)"/></b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Hàng hoá xuất khẩu</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTTDB/HangHoaXuatKhau/NDungHangHoaXuatKhau">
						<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td></td>
								<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
					</xsl:for-each>
					<tr>
						<td class="align-c">2</td>
						<td>Hàng hoá bán để xuất khẩu</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTTDB/HangHoaBanDeXuatKhau/NDungHHBanDeXuatKhau">
						<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td></td>
								<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
					</xsl:for-each>
					<tr>
						<td class="align-c">3</td>
						<td>Hàng hoá gia công để xuất khẩu</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTTDB/HangHoaGiaCongDeXuatKhau/NDungHHGiaCongDeXuatKhau">
						<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td></td>
								<td class="align-l"><xsl:value-of select="ct2_tenHH"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
					</xsl:for-each>
					<tr>
						<td></td>
						<td class="align-l" colspan="3"><b>Tổng cộng: (I+II+III)</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongDoanhThuBanChuaThue)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongGiaTinhThue)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongThueKhauTru)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongThuePhaiNop)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongBuTru)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongThueConPhaiNop)"/></b></td>
					</tr>
				</table>
			</div>
			<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"/>
		<div><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<u><i>Ghi chú:</i></u></b></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Chỉ tiêu [09], [10], [11]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh có hoạt động sản xuất, gia công hàng hoá chịu thuế TTĐB hoặc cung ứng dịch vụ chịu thuế TTĐB (trừ hoạt động kinh doanh xổ số điện toán) tại địa phương khác tỉnh nơi đóng trụ sở chính theo quy định tại điểm d khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Tổng cộng cột (10) trên Tờ khai 01/TTĐB phải bằng tổng cộng cột (17) trên Tờ khai 02/TTĐB.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Tổng cộng cột (8) = Tổng cộng cột (13) Bảng I và cột (12) Bảng II trên bảng kê 01-2/TTĐB.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Nội dung nêu trong dấu ( ) chỉ là giải thích hoặc ví dụ.</i></div>			
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

