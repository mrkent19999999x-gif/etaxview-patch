<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 195/2015/TT-BTC  ngày   24/11/2015 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_TTDB">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_TTDB' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/TTĐB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG XÁC ĐỊNH SỐ THUẾ TIÊU THỤ ĐẶC BIỆT ĐƯỢC KHẤU TRỪ (NẾU CÓ) CỦA NGUYÊN LIỆU MUA VÀO, HÀNG HÓA NHẬP KHẨU 
'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai Thuế tiêu thụ đặc biệt  mẫu số 01/TTĐB)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
			<div><b>I. Bảng tính thuế Thuế tiêu thụ đặc biệt (TTĐB) của nguyên liệu mua vào, hàng hóa nhập khẩu:</b></div>
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Chứng từ hoặc biên lai nộp thuế TTĐB</b></td>
							<td class="align-c" rowspan="2"><b>Tên nguyên liệu/hàng hóa nhập khẩu đã nộp thuế TTĐB</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng đơn vị nguyên liệu mua vào/hàng hóa nhập khẩu   </b></td>
							<td class="align-c" rowspan="2"><b>Thuế TTĐB đã  nộp</b></td>
							<td class="align-c" rowspan="2"><b>Thuế TTĐB trên 1 đơn vị nguyên liệu mua vào/hàng hóa nhập khẩu </b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB đã khấu trừ các kỳ trước</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB chưa được khấu trừ đến kỳ này</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8)=(7)/(6)</td>
							<td class="align-c">(9)</td>
							<td class="align-c">(10)</td>
						</tr>
						<xsl:for-each select="$pl01/TTinThueNLMVao/ChiTietThueTTDBNLMVao/ThueNLMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct2" /></td>
							  <td><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct3" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(BienLaiChungTuNopThueTTDB/ct4,'dd/mm/yyyy')" /></td>
							  <td><xsl:value-of select="ct5" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)" /></td>
							</tr>
						</xsl:for-each>
							<tr>
								<td></td>
								<td class="align-c" colspan="3"><b>Tổng cộng</b></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TTinThueNLMVao/tong_ct7)" /></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TTinThueNLMVao/tong_ct9)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TTinThueNLMVao/tong_ct10)" /></b></td>
							</tr>
					</table>
					<div><b>II. Bảng tính thuế TTĐB của nguyên liệu được khấu trừ:</b></div>
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên hàng hóa tiêu thụ</b></td>
							<td class="align-c"><b>Số lượng tiêu thụ</b></td>
							<td class="align-c"><b>Tên nguyên liệu chịu thuế TTĐB đầu vào</b></td>
							<td class="align-c"><b>Lượng nguyên liệu trên 1 đơn vị sản phẩm tiêu thụ </b></td>
							<td class="align-c"><b>Thuế TTĐB trên 1 đơn vị nguyên liệu đầu vào</b></td>
							<td class="align-c"><b>Tổng thuế TTĐB đầu vào được khấu trừ</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)=(3)x(5)x(6)</td>
						</tr>
						<xsl:for-each select="$pl01/TTinThueNLDuocKTru/ChiTietThueTTDBNLDuocKTru/ThueNLDuocKTru">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct2" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
							  <td><xsl:value-of select="ct4"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)" /></td>
							</tr>
						</xsl:for-each>
							<tr>
								<td></td>
								<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TTinThueNLDuocKTru/tong_ct7)" /></b></td>
							</tr>
					</table>
					<div><b>III. Bảng tính thuế TTĐB của hàng hóa nhập khẩu được khấu trừ: </b></div>
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên hàng hóa tiêu thụ</b></td>
							<td class="align-c"><b>Số lượng tiêu thụ</b></td>
							<td class="align-c"><b>Thuế TTĐB đã nộp trên 1 đơn vị hàng hóa nhập khẩu</b></td>
							<td class="align-c"><b>Tổng thuế TTĐB đầu vào được khấu trừ </b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)=(3)x(4)</td>
						</tr>
						<xsl:for-each select="$pl01/TTinThueHHNKDuocKTru/ChiTietThueTTDBHHNKDuocKTru/ThueHHNKDuocKTru">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct2" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)" /></td>
							</tr>
						</xsl:for-each>
							<tr>
								<td></td>
								<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TTinThueHHNKDuocKTru/tong_ct5)" /></b></td>
							</tr>
					</table>
					<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
				</div>
			</div>
		</xsl:if>
	<xsl:call-template name="tkhaiFooter"/>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>