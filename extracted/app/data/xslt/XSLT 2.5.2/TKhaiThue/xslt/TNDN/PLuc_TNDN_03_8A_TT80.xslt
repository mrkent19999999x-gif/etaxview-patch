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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8A_TNDN">	
			<xsl:variable name="pl03-8a" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8A_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-8A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ THU NHẬP DOANH NGHIỆP PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
								
					<div class="ndungtkhai_div">
					<div class="content">
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" rowspan="2"><b>Mã số thuế/ Mã địa điểm kinh doanh (nếu có)</b></td>
							   <td class="align-c" colspan="2"><b>Địa bàn hoạt động kinh doanh bất động sản</b></td>
							   <td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							   <td class="align-c" colspan="6"><b>Hoạt động chuyển nhượng BĐS đã quyết toán trong kỳ</b></td>
							   <td class="align-c" colspan="4"><b>Hoạt động chuyển nhượng BĐS của dự án đầu tư cơ sở hạ tầng, nhà có thu tiền theo tiến độ chưa quyết toán trong kỳ</b></td>
							</tr>
							<tr>
                               <td class="align-c"><b>Huyện</b></td>
                               <td class="align-c"><b>Tỉnh</b></td>
                               <td class="align-c"><b>Doanh thu tính thuế theo từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế TNDN phải nộp cho từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế đã nộp các kỳ trước cho từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế TNDN đã nộp kỳ này cho từng tỉnh</b></td>
							   <td class="align-c"><b>Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm </b></td>
							   <td class="align-c"><b>Số thuế TNDN còn phải nộp cho từng tỉnh</b></td>
							   <td class="align-c"><b>Số tiền thu theo tiến độ theo từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế TNDN phải nộp cho từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế TNDN đã nộp cho từng tỉnh</b></td>
							   <td class="align-c"><b>Số thuế TNDN còn phải nộp cho từng tỉnh</b></td>
							</tr>
                            <tr>
								<td class="align-c"><i>(1)</i></td>
								<td class="align-c"><i>(2)</i></td>
								<td class="align-c"><i>(3)</i></td>
								<td class="align-c"><i>(4)</i></td>
								<td class="align-c"><i>(5)</i></td>
								<td class="align-c"><i>(6)</i></td>
								<td class="align-c"><i>(7)</i></td>
								<td class="align-c"><i>(8)</i></td>
								<td class="align-c"><i>(9)</i></td>
								<td class="align-c"><i>(10)</i></td>
								<td class="align-c"><i>(11)=(8)-(10)</i></td>
								<td class="align-c"><i>(12)=(8)-(9)-(10)</i></td>
								<td class="align-c"><i>(13)</i></td>
								<td class="align-c"><i>(14)= (13)x 1%</i></td>
								<td class="align-c"><i>(15)</i></td>
								<td class="align-c"><i>(16)= (14)-(15)</i></td>
							</tr>
								<xsl:for-each select="$pl03-8a/PhanBoThueTNDN/NoiDungBangPhanBo">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-l"><xsl:value-of select="ct3"/></td>
							  <td class="align-l"><xsl:value-of select="ct4_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct5_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							  </tr>
						</xsl:for-each>	
						<tr>
							<td></td>
							<td class="align-l"><b>Tổng cộng </b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-8a/PhanBoThueTNDN/tong04)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-8a/PhanBoThueTNDN/tong05)"/></b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					</div>
				</div>
									<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter-03TNDN-TT80"/>
			<div><b>_________________</b></div>
			<div><b><u><i>Ghi chú</i></u></b></div>
			<div><i>1. TNDN: Thu nhập doanh nghiệp; BĐS: Bất động sản;</i></div>
			<div><i>2. Cột (10), (15): NNT kê khai số thuế TNDN đã tạm nộp trong năm tính đến thời hạn nộp hồ sơ khai quyết toán;</i></div>
			<div><i>3. Số liệu chỉ tiêu [04] được tổng hợp vào chỉ tiêu G3 của tờ khai 03/TNDN;</i></div>
			<div><i>4. Số liệu chỉ tiêu [05] được tổng hợp vào chỉ tiêu G4 của tờ khai 03/TNDN;</i></div>
			<div><i>5. NNT không kê khai vào phụ lục này đối với phần thu nhập từ thực hiện dự án đầu tư - kinh doanh nhà ở xã hội để bán, cho thuê, cho thuê mua được hưởng ưu đãi thuế TNDN.</i></div>
			<div><i>6. Cột (4) và (5): Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động chuyển nhượng BĐS khác tỉnh với nơi người nộp thuế đóng trụ sở chính. Trường hợp có hoạt động chuyển nhượng BĐS trên nhiều huyện thuộc 1 cơ quan thuế quản lý địa bàn nhận phân bổ là Chi cục Thuế khu vực thì chọn 1 huyện trong các huyện đó có hoạt động chuyển nhượng BĐS để kê khai vào chỉ tiêu này.</i></div>
								<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>