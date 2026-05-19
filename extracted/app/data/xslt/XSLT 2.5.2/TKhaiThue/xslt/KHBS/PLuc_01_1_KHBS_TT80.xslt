<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:variable name="ghiChuPL" select="''"/>
		 
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS"/>	
		<xsl:variable name="KHBS01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS' />
			<xsl:call-template name="tkhaiHeader-KHBS01_1">
		<xsl:with-param name="mauTKhai"   select="'01-1/KHBS'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:with-param name="tenPL"   select="'BẢN GIẢI TRÌNH KHAI BỔ SUNG'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai bổ sung mẫu số 01/KHBS)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-l"><b>A. Thông tin khai bổ sung:</b></div>
				<div  class="align-r"><i>Đơn vị tiền: 
				<xsl:if test="$tkchinh/ma_DonVi = 'VND'" >
				Đồng Việt Nam
				</xsl:if>
				<xsl:if test="$tkchinh/ma_DonVi = 'USD'" >
				Đô la Mỹ
				</xsl:if>
				</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên chỉ tiêu điều chỉnh/ Tên hàng hóa, dịch vụ</b></td>
							<td class="align-c"><b>Mã số chỉ tiêu</b></td>
							<td class="align-c"><b>Số đã kê khai</b></td>
							<td class="align-c"><b>Số điều chỉnh</b></td>
							<td class="align-c"><b>Chênh lệch/thay đổi giữa số điều chỉnh với số đã kê khai</b></td>
							<td class="align-c"><b>Điều chỉnh tăng/giảm nghĩa vụ thuế</b></td>
							<td class="align-c"><b>Lý do</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)=(5)-(4)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8)</td>
						</tr>
						<xsl:for-each select="$KHBS01_1/Muc_A/DSachHSo/BKeHSo">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><b><xsl:value-of select="$currentRows"/></b></td>
								<td class="align-l"><b><xsl:value-of select="ten_HSo"/></b></td>
	         					<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
	         				</tr>
							<xsl:for-each select="CTietHSo/ChiTiet">
									<tr>
										<td class="align-l"></td>
										<td class="align-l">
										<xsl:if test="ct2_ten = ''" >
											<xsl:value-of select="ct3_ten"/>
										</xsl:if>
										<xsl:value-of select="ct2_ten"/>
										<xsl:if test="ct3_1_ten != ''" >
											- <xsl:value-of select="ct3_1_ten"/>
										</xsl:if>
										<xsl:if test="ct3_2_ten != ''" >
											- <xsl:value-of select="ct3_2_ten"/>
										</xsl:if>
										
										</td>
										<td class="align-l">
										<xsl:value-of select="ct3_ma"/>
										<xsl:if test="ct2_ten != ''" >
											 - <xsl:value-of select="ct3_ten"/>
										</xsl:if>
																			
										</td>
										<td class="align-r"><xsl:value-of select="ct04"/></td>
										<td class="align-r"><xsl:value-of select="ct05"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct06)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
										<td class="align-l"><xsl:value-of select="ct8"/></td>
									</tr>
								</xsl:for-each>
					</xsl:for-each>
					        <tr>
								<td></td>
								<td class="align-l" colspan="4"><b>Tổng cộng (tăng +, giảm -) phải nộp: </b></td>
								<td class="align-c"><b>[07]</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01_1/Muc_A/DSachHSo/TongCong/tongCong_7)"/></b></td>
								<td class="align-c">\</td>
	         		        </tr>
							<tr>
								<td></td>
								<td class="align-l" colspan="4"><b>Tổng cộng (tăng +, giảm -) khấu trừ: </b></td>
								<td class="align-c"><b>[08]</b></td>
								<td class="align-r"><b> <xsl:value-of select="ihtkk:formatNumber($KHBS01_1/Muc_A/DSachHSo/TongCong/tongCong_8)"/></b></td>
								<td class="align-c">\</td>
	         		        </tr>
							<tr>
								<td></td>
								<td class="align-l" colspan="4"><b>Tổng cộng (tăng +, giảm -) đề nghị hoàn:</b></td>
								<td class="align-c"><b>[09]</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01_1/Muc_A/DSachHSo/TongCong/tongCong_9)"/></b></td>
								<td class="align-c">\</td>
	         		        </tr>
					</table>
				</div>
				<div  class="align-l"><b>B. Tài liệu kèm theo (nếu có):</b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Tên chỉ tiêu điều chỉnh/ Tên hàng hóa, dịch vụ</b></td>
					</tr>
					<xsl:for-each select="$KHBS01_1/Muc_B/CTietTaiLieu">
					<xsl:variable name="currentRows" select="position()"/>
						<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_TLieu"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

