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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8_TNDN">	
			<xsl:variable name="pl03-8" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-8/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ THU NHẬP DOANH NGHIỆP PHẢI NỘP ĐỐI VỚI CƠ SỞ SẢN XUẤT'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
								
					<div class="ndungtkhai_div">
					<div class="content">
						<table>
							<tr>
								<td class="align-l"><b>[04]</b> Tổng số thuế TNDN phải nộp được phân bổ: <xsl:value-of select="ihtkk:formatNumber($pl03-8/ct04)"/> đồng</td>
							</tr>
							<tr>
								<td class="align-l"><b>[05]</b> Tổng chi phí được phân bổ: <xsl:value-of select="ihtkk:formatNumber($pl03-8/ct05)"/> đồng</td>
							</tr>
						</table>
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" rowspan="2"><b>Mã số thuế/ Mã địa điểm kinh doanh</b></td>
							   <td class="align-c" colspan="3"><b>Địa bàn hoạt động sản xuất, kinh doanh</b></td>
							   <td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							   <td class="align-c" colspan="2"><b>Xác định tỷ lệ phân bổ </b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN phải nộp</b></td>
   							   <td class="align-c" rowspan="2"><b>Số thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN đã tạm nộp</b></td>
							   <td class="align-c" rowspan="2"><b>Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm </b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN còn phải nộp</b></td>
							</tr>
							<tr>
								<td class="align-c"><b>Xã/phường/đặc khu</b></td>
                               <td class="align-c"><b>Huyện</b></td>
                               <td class="align-c"><b>Tỉnh</b></td>
                               <td class="align-c"><b>Chi phí của cơ sở sản xuất </b></td>
							   <td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
							</tr>
                            <tr>
								<td class="align-c"><i>(1)</i></td>
								<td class="align-c"><i>(2)</i></td>
								<td class="align-c"><i>(3)</i></td>
								<td class="align-c"><i>(4.1)</i></td>
								<td class="align-c"><i>(4)</i></td>
								<td class="align-c"><i>(5)</i></td>
								<td class="align-c"><i>(6)</i></td>
								<td class="align-c"><i>(7)</i></td>
								<td class="align-c"><i>(8)= (7)/ <b>[05]</b></i></td>
								<td class="align-c"><i>(9)= (8)x <b>[04]</b></i></td>
								<td class="align-c"><i>(10)</i></td>
								<td class="align-c"><i>(11)</i></td>
								<td class="align-c"><i>(12)</i></td>
								<td class="align-c"><i>(13)</i></td>
							</tr>
								<xsl:for-each select="$pl03-8/PhanBoThueTNDN/NoiDungBangPhanBo">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-l"><xsl:value-of select="ct3"/></td>
							  <td class="align-l"><xsl:value-of select="ten_xa"/></td>
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
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-8/PhanBoThueTNDN/tong06)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-8/PhanBoThueTNDN/tong07)"/></b></td>
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
			<div><i>1. TNDN: Thu nhập doanh nghiệp;</i></div>
			<div><i>2. Cột (4) và (5): Khai tên huyện, tỉnh nơi có văn phòng điều hành nhà máy thủy điện. </i></div>
			<div><i>3. Cột (10): NNT kê khai số thuế TNDN nộp thừa kỳ trước chuyển sang bù trừ với số thuế TNDN phải nộp kỳ này</i></div>
			<div><i>4. Cột (11): NNT kê khai số thuế TNDN đã tạm nộp trong năm tính đến thời hạn nộp hồ sơ khai quyết toán.</i></div>
			<div><i>5. Chỉ tiêu [06] được tổng hợp vào chỉ tiêu G1 của tờ khai 03/TNDN.</i></div>
			<div><i>6. Chỉ tiêu [07] được tổng hợp vào chỉ tiêu G2 của tờ khai 03/TNDN.</i></div>
			<div><i>7. NNT có cơ sở sản xuất khác tỉnh là nhà máy thủy điện nằm trên nhiều tỉnh kê khai số thuế TNDN phân bổ cho nhà máy tại Phụ lục này, đồng thời kê khai số thuế TNDN phân bổ cho từng tỉnh tại Phụ lục 03-8B/TNDN.</i></div>
								<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>