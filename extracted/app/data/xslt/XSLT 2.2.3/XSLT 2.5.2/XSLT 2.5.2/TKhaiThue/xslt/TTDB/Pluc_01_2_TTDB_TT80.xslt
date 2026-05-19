<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'Kèm theo tờ khai thuế tài nguyên mẫu số 01/TAIN hoặc tờ khai quyết toán thuế tài nguyên mẫu số 02/TAIN'"/>
	  <!-- Phụ lục 01-2/TTDB TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_TTDB"/>	
		<xsl:variable name="pl01_2" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_2_TTDB'/>
		<xsl:call-template name="tkhaiHeader_PL_01_2_TTDB_TT80">
			<xsl:with-param name="mauTKhai"   select="'01-2/TTDB'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG XÁC ĐỊNH SỐ THUẾ TIÊU THỤ ĐẶC BIỆT (TTĐB) ĐƯỢC KHẤU TRỪ CỦA NGUYÊN LIỆU MUA VÀO, HÀNG HÓA NHẬP KHẨU'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai Thuế tiêu thụ đặc biệt mẫu số 01/TTĐB)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<tr>
					<td><b>I. Bảng tính thuế tiêu thụ đặc biệt (TTĐB) được khấu trừ của nguyên liệu mua vào, nhập khẩu sản xuất hàng chịu thuế TTĐB:</b></td>
				</tr>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Chứng từ hoặc biên lai nộp thuế TTĐB</b></td>
							<td class="align-c" rowspan="2"><b>Tên hàng hóa</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng nguyên vật liệu mua vào, nhập khẩu</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đã nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng tiêu thụ trong kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Lượng nguyên liệu trên 1 đơn vị sản phẩm tiêu thụ</b></td>
							<td class="align-c" rowspan="2"><b>Thuế TTĐB trên 1 đơn vị nguyên liệu đầu vào</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đầu vào chưa được khấu trừ kỳ trước chuyển sang</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đầu vào được khấu trừ trong kỳ tương ứng hàng hóa bán ra trong kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Thuế TTĐB chưa được khấu trừ chuyển kỳ sau</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)</b></td>
							<td class="align-c"><b>(13)=(9)x(10)x(11) và (13)≤ (8)+(12)</b></td>
							<td class="align-c"><b>(14)=(8)+(12)-(13)>0</b></td>
						</tr>
						<xsl:for-each select="$pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/NDungThueTTDBKhauTruCuaNVL">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct2"/></td>
							  <td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct3"/></td>
							  <td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct4"/></td>
							  <td class="align-l"><xsl:value-of select="ct5"/></td>
							  <td class="align-l"><xsl:value-of select="ct6"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td></td>
							<td class="align-l" colspan="5"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct15)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct18)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct19)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct20)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct21)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaNVL/ct22)"/></b></td>
  						</tr>
					</table>
					<br></br>
					<tr>
							<td><b>II. Bảng tính thuế TTĐB được khấu trừ của hàng hóa nhập khẩu:</b></td>
					</tr>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Chứng từ hoặc biên lai nộp thuế TTĐB</b></td>
							<td class="align-c" rowspan="2"><b>Tên hàng hóa nhập khẩu đã nộp thuế TTĐB</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng đơn vị hàng hóa nhập khẩu</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB ở khâu nhập khẩu đã nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng tiêu thụ trong kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đã nộp trên 1 đơn vị hàng hóa nhập khẩu</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đầu vào chưa được khấu trừ kỳ trước chuyển sang</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đầu vào được khấu trừ trong kỳ tương ứng hàng hóa bán ra trong kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Thuế TTĐB chưa được khấu trừ chuyển kỳ sau</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)=(8)/(7)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)=(9)x(10) và (12)≤(8)+(11) </b></td>
							<td class="align-c"><b>(13)=(8)+(11)-(12) >0</b></td>
						</tr>
						<xsl:for-each select="$pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/NDungThueTTDBKhauTruCuaHHNK">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct2"/></td>
								<td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct3"/></td>
								<td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td></td>
							<td class="align-l" colspan="5"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct14)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct15)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct18)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct19)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_2/PLucXDinhThueTTDBKhauTru/ThueTTDBKhauTruCuaHHNK/ct20)"/></b></td>
  						</tr>
					</table>
			</div>
		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
					<xsl:call-template name="tkhaiFooter"/>
					</div>
					<div><b><u><i>Ghi chú:</i></u></b></div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cột (12) mục II: Người nộp thuế chỉ được khấu trừ số thuế tiêu thụ đặc biệt đã nộp ở khâu nhập khẩu tương ứng với số thuế tiêu thụ đặc biệt của hàng hóa nhập khẩu chịu thuế tiêu thụ đặc biệt bán ra và chỉ được khấu trừ tối đa bằng tương ứng số thuế tiêu thụ đặc biệt tính được ở khâu bán ra trong nước. Phần chênh lệch không được khấu trừ giữa số thuế tiêu thụ đặc biệt đã nộp ở khâu nhập khẩu với số thuế tiêu thụ đặc biệt bán ra trong nước, người nộp thuế được hạch toán vào chi phí để tính thuế thu nhập doanh nghiệp.</i></div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

