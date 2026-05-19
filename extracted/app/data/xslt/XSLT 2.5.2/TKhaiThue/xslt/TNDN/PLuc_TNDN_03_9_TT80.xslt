<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_8_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_9_TNDN">	
			<xsl:variable name="pl03-9" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_9_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-9/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHỨNG TỪ NỘP TIỀN THUẾ THU NHẬP DOANH NGHIỆP TẠM NỘP CỦA HOẠT ĐỘNG CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN THU TIỀN THEO TIẾN ĐỘ CHƯA BÀN GIAO TRONG NĂM'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">
					<div class="content">
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Tên dự án bất động sản</b></td>
							   <td class="align-c" rowspan="2"><b>Số chứng từ</b></td>
							   <td class="align-c" rowspan="2"><b>Ngày chứng từ</b></td>
							   <td class="align-c" colspan="2"><b>Địa bàn hoạt động kinh doanh bất động sản</b></td>
							   <td class="align-c" rowspan="2"><b>Tên cơ quan thu</b></td>
							   <td class="align-c" rowspan="2"><b>Số tiền thu theo tiến độ</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN đã tạm nộp</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN đã tạm nộp bù trừ với số thuế phải nộp theo quyết toán kỳ này</b></td>
							   <td class="align-c" rowspan="2"><b>Số tiền thuế đã tạm nộp chưa quyết toán chuyển kỳ sau</b></td>
							</tr>
							<tr>
                               <td class="align-c"><b>Huyện</b></td>
                               <td class="align-c"><b>Tỉnh</b></td>
							</tr>
                            <tr>
								<td class="align-c"><i>(1)</i></td>
								<td class="align-c"><i>(2)</i></td>
								<td class="align-c"><i>(3)</i></td>
								<td class="align-c"><i>(3)</i></td>
								<td class="align-c"><i>(4)</i></td>
								<td class="align-c"><i>(5)</i></td>
								<td class="align-c"><i>(6)</i></td>
								<td class="align-c"><i>(7)</i></td>
								<td class="align-c"><i>(8)</i></td>
								<td class="align-c"><i>(9)</i></td>
								<td class="align-c"><i>(10)</i></td>
							</tr>
							<tr>
								<td class="align-c">1.</td>
								<td class="align-l" colspan='3'>Thuế TNDN đã tạm nộp của hoạt động chuyển nhượng BĐS chưa quyết toán trong các kỳ trước</td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyTruoc/ct04)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyTruoc/ct05)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyTruoc/ct06)"/></b></td>
							</tr>
							<xsl:for-each select="$pl03-9/ThueTNDN_KyTruoc/chiTiet_ThueTNDN">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"></td>
									<td class="align-l"><xsl:value-of select="ct2"/></td>
									<td class="align-c"></td>
									<td class="align-c"></td>
									<td class="align-l"><xsl:value-of select="ct4_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>	
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								</tr>
							</xsl:for-each>
							<tr>
								<td class="align-c">2.</td>
								<td class="align-l" colspan='3'>Thuế TNDN đã tạm nộp theo tiến độ trong kỳ này</td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyNay/ct06)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyNay/ct07)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/ThueTNDN_KyNay/ct08)"/></b></td>
							</tr>
							<xsl:for-each select="$pl03-9/ThueTNDN_KyNay/chiTiet_DuanBDS">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"></td>
									<td class="align-l"><xsl:value-of select="ct2"/></td>
									<td class="align-l"><xsl:value-of select="ct3_so"/></td>
									<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ct3_ngay,'dd/mm/yyyy')"/></td>
									<td class="align-l"><xsl:value-of select="ct4_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>	
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								</tr>
							</xsl:for-each>
							<tr>
								<td class="align-c">3.</td>
								<td class="align-l" colspan='3'>Tổng số thuế TNDN đã tạm nộp của hoạt động chuyển nhượng BĐS chưa quyết toán chuyển các kỳ sau</td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-c"></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/TongThueTNDN/ct09)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-9/TongThueTNDN/ct10)"/></b></td>
							</tr>
							<xsl:for-each select="$pl03-9/TongThueTNDN/chiTiet_ThueTNDN">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"></td>
									<td class="align-l"><xsl:value-of select="ct2"/></td>
									<td class="align-c"></td>
									<td class="align-c"></td>
									<td class="align-l"><xsl:value-of select="ct4_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>	
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								</tr>
							</xsl:for-each>
						</table>
					</div>
				</div>
				<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter-03TNDN-TT80"/>
			<div><b>_________________</b></div>
			<div><b><u><i>Ghi chú</i></u></b></div>
			<div><i>- TNDN: Thu nhập doanh nghiệp;</i></div>
			<div>- Số liệu chỉ tiêu [05] được tổng hợp vào chỉ tiêu G3 của tờ khai 03/TNDN;</div>
			<div>- Số liệu chỉ tiêu [07] được tổng hợp vào chỉ tiêu G4 của tờ khai 03/TNDN.</div>
			<div>- Thông tin tại cột (4) và (5): Kê khai địa bàn cấp huyện, tỉnh nơi có hoạt động chuyển nhượng bất động sản khác tỉnh với nơi người nộp thuế đóng trụ sở chính</div>
								<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>