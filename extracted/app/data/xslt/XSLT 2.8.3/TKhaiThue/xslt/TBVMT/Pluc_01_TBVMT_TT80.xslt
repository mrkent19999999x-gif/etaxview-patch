<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:variable name="ghiChuPL" select="''"/>
	  <!-- Phụ lục 01-1/TBVMT TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_TBVMT"/>	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_TBVMT' />
			<xsl:call-template name="tkhaiHeader-Pluc01-TBVMT-TT80">
		<xsl:with-param name="mauTKhai"   select="'01-1/TBVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG XÁC ĐỊNH SỐ THUẾ BẢO VỆ MÔI TRƯỜNG PHẢI NỘP ĐỐI VỚI THAN'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế bảo vệ môi trường mẫu số 01/TBVMT)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên đơn vị tiêu thụ/cơ sở khai thác</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế </b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Tên loại than</b></td>
							<td class="align-c" rowspan="2"><b>Sản lượng than tiêu thụ nội địa trong kỳ (tấn)</b></td>
							<td class="align-c" rowspan="2"><b>Tổng sản lượng than tiêu thụ trong kỳ (tấn)</b></td>
							<td class="align-c" rowspan="2"><b>Tỷ lệ % sản lượng than tiêu thụ nội địa trong kỳ (%)</b></td>
							<td class="align-c" rowspan="2"><b>Sản lượng than mua của các đơn vị tại tỉnh nơi có than khai thác trong kỳ (tấn)</b></td>
							<td class="align-c" rowspan="2"><b>Sản lượng tính thuế (tấn)</b></td>
							<td class="align-c" rowspan="2"><b>Mức thuế bảo vệ môi trường (đồng/tấn)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế BVMT phải nộp cho từng tỉnh</b></td>
						</tr>
						 <tr>
						<td class="align-c"><b>Xã/phường/đặc khu</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
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
							<td class="align-c"><b>(10)=(8)/(9)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)=(10)x(11)</b></td>
							<td class="align-c"><b>(13)</b></td>
							<td class="align-c"><b>(14)=(12)x(13)</b></td>
						</tr>
						<tr>
						   <td class="align-c"><b>I</b></td>
						   <td class="align-l"><b><xsl:value-of select="$pl01/DonViTieuThu/ct2"/></b></td>
						   <td class="align-l"><b><xsl:value-of select="$pl01/DonViTieuThu/ct3"/></b></td>
						   <td class="align-l"><b><xsl:value-of select="$pl01/DonViTieuThu/ct4_ten"/></b></td>
						   <td class="align-l"><b><xsl:value-of select="$pl01/DonViTieuThu/ct5_ten"/></b></td>
						   <td class="align-l"><b><xsl:value-of select="$pl01/DonViTieuThu/ct6_ten"/></b></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/DonViTieuThu/tong)"/></b></td>
						 </tr>
						<xsl:for-each select="$pl01/DonViTieuThu">
							<xsl:variable name="currentRows" select="position()"/>
						 <xsl:for-each select="CTietHangHoa">
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
	         				</tr>							
	         		</xsl:for-each>	
					</xsl:for-each>	
					<tr>
						   <td class="align-c"><b>II</b></td>
						   <td class="align-l" colspan="13"><b>Tên cơ sở khai thác than</b></td>
						 </tr>
						<xsl:for-each select="$pl01/CoSoKhaiThac/CTietCoSoKhaiThac">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
						   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
						   <td class="align-l"><i><xsl:value-of select="ct2"/></i></td>
						   <td class="align-l"><i><xsl:value-of select="ct3"/></i></td>
						   <td class="align-l"><i><xsl:value-of select="ten_xa"/></i></td>
						   <td class="align-l"><i><xsl:value-of select="ct5_ten"/></i></td>
						   <td class="align-l"><i><xsl:value-of select="ct6_ten"/></i></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-l"></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber(tong)"/></i></td>
						 </tr>
						 <xsl:for-each select="CTietHangHoa">
							<!-- <xsl:variable name="currentRows" select="position()"/> -->
							<tr>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
	         					<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
	         				</tr>							
	         		</xsl:for-each>	
					</xsl:for-each>	
						<xsl:for-each select="$pl01/TongTheoTinh/CTietTheoTinh">
							<xsl:variable name="currentRows" select="position()"/>
						<tr>
							<td class="align-c"></td>
							<td class="align-c" colspan="10"><b>Tổng cộng theo <xsl:value-of select="ct5_ten"/></b></td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong)"/></b></td>
						</tr>
							<xsl:for-each select="CTietHangHoa">
							<xsl:variable name="currentRows1" select="position()"/>
							<tr>
								<td class="align-c"></td>
								<td class="align-c" colspan="10"><i><xsl:value-of select="ct7_ten"/></i></td>
								<td class="align-c">\</td>
								<td class="align-c">\</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong)"/></td>
	         				</tr>							
	         		</xsl:for-each>	
					</xsl:for-each>	
					<tr>
							<td class="align-c"></td>
							<td class="align-c" colspan="10"><b>TỔNG CỘNG</b></td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tong)"/></b></td>
						</tr>
						<xsl:for-each select="$pl01/TongCong/CTietHangHoa">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"></td>
								<td class="align-c" colspan="10"><i><xsl:value-of select="ct7_ten"/></i></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoLuong)"/></td>
								<td class="align-c">\</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThue)"/></td>
	         				</tr>							
	         		</xsl:for-each>	
					</table>
				</div>

		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_Pluc01-TBVMT-TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

