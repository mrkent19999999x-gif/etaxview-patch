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
	  <!-- Phụ lục KHBS01 tờ khai 02/SDDPNN -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS"/>	
		<xsl:variable name="KHBS01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS' />
			<xsl:call-template name="tkhaiHeader-KHBS01">
		<xsl:with-param name="mauTKhai"   select="'01/KHBS'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:with-param name="tenPL"   select="'TỜ KHAI BỔ SUNG'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế sử dụng đất phi nông nghiệp mẫu số 02/TK-SDDPNN)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-l"><b>A. Xác định tăng/giảm số thuế phải nộp và tiền chậm nộp, tăng/giảm số thuế được khấu trừ, tăng/giảm số thuế đề nghị hoàn:</b></div>
				<div  class="align-l"><b>I. Xác định tăng/giảm số thuế phải nộp và tiền chậm nộp:</b></div>
				<div  class="align-l">1. Số thuế phải nộp trên tờ khai điều chỉnh tăng/giảm:</div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên Tiểu mục</b></td>
							<td class="align-c"><b>Tăng/giảm số thuế phải nộp (tăng ghi (+), giảm ghi (-))</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
						</tr>
						<xsl:for-each select="$KHBS01/Muc_A/Muc_I/Muc_1/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l">(<xsl:value-of select="ct2_ma"/>) <xsl:value-of select="ct2_ten"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
	         				</tr>
					</xsl:for-each>
					        <tr>
								<td></td>
								<td class="align-c"><b>Tổng cộng: </b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_A/Muc_I/Muc_1/tongCong_ct10)"/></b></td>
	         		        </tr>
					</table>
				</div>
				<div  class="align-l">2. Số thuế phải nộp trên Phụ lục phân bổ điều chỉnh tăng/giảm:</div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên (đơn vị phụ thuộc, địa điểm kinh doanh/tên mặt hàng/tỉnh nơi không có đơn vị phụ thuộc/địa điểm kinh doanh/đơn vị tiêu thụ/cơ sở khai thác)</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/mã số địa điểm kinh doanh (nếu có)</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền thuế phải nộp điều chỉnh tăng/ giảm (tăng ghi (+), giảm ghi (-))</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Huyện</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
						</tr>
						<xsl:for-each select="$KHBS01/Muc_A/Muc_I/Muc_2/DSachPLuc/BKePLuc">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_PLuc"/></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
								<td class="align-l"></td>
	         				</tr>
								<xsl:for-each select="CTietPLuc/ChiTiet">
									<tr>
										<td class="align-l"></td>
										<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
										<td class="align-l"><xsl:value-of select="ct3"/></td>
										<td class="align-l"><xsl:value-of select="ct04_ten"/></td>
										<td class="align-l"><xsl:value-of select="ct05_ten"/></td>
										<td class="align-l"><xsl:value-of select="ct06_ten"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
									</tr>
								</xsl:for-each>
					</xsl:for-each>
					        <tr>
								<td class="align-c" colspan="6"><b>Tổng cộng: </b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_A/Muc_I/Muc_2/DSachPLuc/tongCong_ct11)"/></b></td>
	         		        </tr>
					</table>
					<br/>
					<div  class="align-l">3. Xác định số tiền chậm nộp điều chỉnh tăng/giảm (tăng ghi (+), giảm ghi (-)):</div>
                    
							<div  class="align-l">a) Số ngày chậm nộp tính đến ngày: <xsl:value-of select="ihtkk:stringDatetime($KHBS01/Muc_A/Muc_I/Muc_3/ct3a_1,'dd/mm/yyyy')"/>: <xsl:value-of select="$KHBS01/Muc_A/Muc_I/Muc_3/ct3a_2"/></div>
					
					<div  class="align-l">b) Số tiền chậm nộp tăng/giảm: <xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_A/Muc_I/Muc_3/ct3b)"/></div>
				
				<div  class="align-l"><b>II. Số thuế được khấu trừ điều chỉnh tăng/giảm:</b></div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên Tiểu mục</b></td>
							<td class="align-c"><b>Tăng/giảm số thuế khấu trừ (tăng ghi (+), giảm ghi (-))</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
						</tr>
						<xsl:for-each select="$KHBS01/Muc_A/Muc_II/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
	         				</tr>
					</xsl:for-each>
					        <tr>
								<td></td>
								<td class="align-c"><b>Tổng cộng: </b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_A/Muc_I/Muc_II/ChiTiet/tongCong_ct12)"/></b></td>
	         		        </tr>
					</table>
					<div  class="align-l"><b>III. Số thuế đề nghị hoàn điều chỉnh tăng/giảm:</b></div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam </i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên Tiểu mục</b></td>
							<td class="align-c"><b>Tăng/giảm số thuế khấu trừ (tăng ghi (+), giảm ghi (-))</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
						</tr>
						<xsl:for-each select="$KHBS01/Muc_A/Muc_III/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
	         				</tr>
					</xsl:for-each>
					        <tr>
								<td></td>
								<td class="align-c"><b>Tổng cộng: </b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_A/Muc_III/tongCong_ct13)"/></b></td>
	         		        </tr>
					</table>
					<div  class="align-l"><b>B. Số thuế thu hồi hoàn và tiền chậm nộp (nếu có):</b></div>
					<div  class="align-l"><b>I. Số thuế thu hồi hoàn:</b></div>
                        <div  class="align-l">1. Số tiền thu hồi hoàn: <xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_B/Muc_I/ct_1)"/>: Đồng Việt Nam.</div>
						
						<div  class="align-l">2. Quyết định hoàn thuế: Số <xsl:value-of select="$KHBS01/Muc_B/Muc_I/ct_2_so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($KHBS01/Muc_B/Muc_I/ct_2_ngay,'dd/mm/yyyy')"/> cơ quan thuế ban hành quyết định <xsl:value-of select="$KHBS01/Muc_B/Muc_I/ct_2_CQT_ten"/></div>
						<div  class="align-l">3. Lệnh hoàn thuế: Số <xsl:value-of select="$KHBS01/Muc_B/Muc_I/ct_3_so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($KHBS01/Muc_B/Muc_I/ct_3_ngay,'dd/mm/yyyy')"/></div>
					<div  class="align-l"><b>II. Tiền chậm nộp:</b></div>
                        <div  class="align-l">1. Số ngày nhận được tiền hoàn thuế: <xsl:value-of select="$KHBS01/Muc_B/Muc_II/ct_1"/></div>
						<div  class="align-l">2. Số tiền chậm nộp (= số tiền đã được hoàn phải nộp trả NSNN x số ngày nhận được tiền hoàn thuế x mức chậm nộp): <xsl:value-of select="ihtkk:formatNumber($KHBS01/Muc_B/Muc_II/ct_2)"/></div>
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

