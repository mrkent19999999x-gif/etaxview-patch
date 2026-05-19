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
	  <!-- Phụ lục 01-2/TBVMT TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_TBVMT"/>	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_TBVMT' />
			<xsl:call-template name="tkhaiHeader-Pluc02-TBVMT-TT80">
		<xsl:with-param name="mauTKhai"   select="'01-2/TBVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ BẢO VỆ MÔI TRƯỜNG PHẢI NỘP ĐỐI VỚI XĂNG DẦU'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế bảo vệ môi trường mẫu số 01/TBVMT)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên doanh nghiệp/đơn vị phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế </b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Tên mặt hàng xăng dầu</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
							<td class="align-c" rowspan="2"><b>Sản lượng xăng dầu do doanh nghiệp/ đơn vị phụ thuộc bán ra thuộc đối tượng phải kê khai, tính thuế BVMT</b></td>
							<td class="align-c" rowspan="2"><b>Tỷ lệ phân bổ (%)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế BVMT phải nộp tại từng tỉnh</b></td>
						</tr>
						 <tr>
						<td class="align-c"><b>Huyện</b></td>
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
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
						</tr>
						
						<xsl:for-each select="$pl02/DN_DVPT/CTiet_DN_DVPT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							   <td class="align-l"><b><xsl:value-of select="ct2"/></b></td>
							   <td class="align-l"><b><xsl:value-of select="ct3"/></b></td>
							   <td class="align-c"><b><xsl:value-of select="ct4_ten"/></b></td>
							   <td class="align-c"><b><xsl:value-of select="ct5_ten"/></b></td>
							   <td class="align-c"><b><xsl:value-of select="ct6_ten"/></b></td>
							   <td class="align-l"></td>
							   <td class="align-l"></td>
							   <td class="align-l"></td>
							   <td class="align-l"></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong)"/></b></td>
						    </tr>
								<xsl:for-each select="CTietHangHoa">
							      <tr>
									<td class="align-l"></td>
									<td class="align-l"></td>
									<td class="align-l"></td>
									<td class="align-l"></td>
									<td class="align-l"></td>
									<td class="align-l"></td>
									<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
									<td class="align-r"><xsl:value-of select="ct8"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         				      </tr>							
							    </xsl:for-each>	
						</xsl:for-each>
						
						<xsl:for-each select="$pl02/TongTheoTinh/CTietTheoTinh">
							<xsl:variable name="currentRows" select="position()"/>
						<tr>
							<td class="align-c"></td>
							<td class="align-c" colspan="6"><b>Tổng cộng theo <xsl:value-of select="ct5_ten"/></b></td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong)"/></b></td>
						</tr>
							<xsl:for-each select="CTietHangHoa">
							<xsl:variable name="currentRows1" select="position()"/>
							<tr>
								<td class="align-c"></td>
								<td class="align-c" colspan="6"><i><xsl:value-of select="ct7_ten"/></i></td>
								<td class="align-c">\</td>
								<td class="align-c">\</td>
								<td class="align-c">\</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong)"/></td>
	         				</tr>							
	         		</xsl:for-each>	
					</xsl:for-each>	
					<tr>
							<td class="align-c"></td>
							<td class="align-c" colspan="6"><b>TỔNG CỘNG</b></td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/TongCong/tong)"/></b></td>
						</tr>
						<xsl:for-each select="$pl02/TongCong/CTietHangHoa">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"></td>
								<td class="align-c" colspan="6"><i><xsl:value-of select="ct7_ten"/></i></td>
								<td class="align-c"><i><xsl:value-of select="ct8"/></i></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSanLuong)"/></td>
								<td class="align-c">100%</td>
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
		<xsl:call-template name="tkhaiFooter_Pluc02-TBVMT-TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

