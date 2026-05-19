<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo nghị định 373/2025/NĐ-CP'"/>
		<xsl:call-template name="tkhaiHeader_01_TTDB_TT80_283">
			<xsl:with-param name="mauTKhai"   select="'01/TTĐB'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<!-- <xsl:with-param name="ghuchuTK"   select="'(trừ hoạt động sản xuất, pha chế xăng sinh học)'"/> -->
		</xsl:call-template>
		<br></br>
		<div><b>A.	Đối với hoạt động sản xuất, kinh doanh hàng hóa, dịch vụ chịu thuế TTĐB (trừ hoạt động sản xuất, pha chế xăng sinh học)</b></div>
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
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot5)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot6)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot8)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot9)"/></b></td>	
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot10)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/tongDongIcot11)"/></b></td>	
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/HHoaSXTrongNuoc/NDungHHoaSXTrongNuoc">
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/HangHoaChiuThueTTDB/HHoaNKBanRaTrongNuoc/NDungHHoaNKBanRaTrongNuoc">
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
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot5)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot6)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot7)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot8)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot9)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot10)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/tongDongIIcot11)"/></b></td>
					</tr>
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/DVuChiuThueTTDB/NDungDichVuChiuTheTTDB">
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
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/HHoaKhongChiuThueTTDB/tongDongIIIcot5)"/></b></td>
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/HHoaKhongChiuThueTTDB/HangHoaXuatKhau/NDungHangHoaXuatKhau">
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/HHoaKhongChiuThueTTDB/HangHoaBanDeXuatKhau/NDungHHBanDeXuatKhau">
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_A/HHoaKhongChiuThueTTDB/HangHoaGiaCongDeXuatKhau/NDungHHGiaCongDeXuatKhau">
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
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongDoanhThuBanChuaThue)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongGiaTinhThue)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongThueKhauTru)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongThuePhaiNop)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongBuTru)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_A/tongThueConPhaiNop)"/></b></td>
					</tr>
				</table>
			</div>
		<br></br>
		<div><b>B.	Đối với cơ sở sản xuất, pha chế xăng sinh học</b></div>
		<br></br>
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
					<xsl:for-each select="$tkchinh/BangChiTietThueTTDB_B/NoiDungXangSinhHoc">
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
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct20)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct21)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct22)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct23)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct24)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct25)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct26)"/></b></td>
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct27)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct28)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct29)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct30)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB_B/ct31)"/></b></td>
					</tr>
		</table>
				
	</div>
	<br></br>
		<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
		
		<xsl:call-template name="tkhaiFooter_TT80"/>
		<div><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<u><i>Ghi chú:</i></u></b></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Chỉ tiêu [09], [10], [11]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh có hoạt động sản xuất, gia công hàng hoá chịu thuế TTĐB hoặc cung ứng dịch vụ chịu thuế TTĐB (trừ hoạt động kinh doanh xổ số điện toán) tại địa phương khác tỉnh nơi đóng trụ sở chính theo quy định tại điểm d khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Tổng cộng cột (10) tại mục A phải bằng tổng cộng cột (17) tại mục B</i></div>
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

