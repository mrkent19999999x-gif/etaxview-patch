<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài Chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
		<!-- Phụ lục 01-2/BK_HDKD -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_BK_HDKD">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_BK_HDKD' />
			<xsl:call-template name="tkhaiHeader_pluc_01_2_CNKD_TT40">
		<xsl:with-param name="mauTKhai"   select="'01-2/BK-HĐKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOẠT ĐỘNG KINH DOANH TRONG KỲ CỦA HỘ KINH DOANH, CÁ NHÂN KINH DOANH'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai 01/CNKD áp dụng đối với hộ kinh doanh, cá nhân kinh doanh nộp thuế theo phương pháp kê khai)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<br></br>
				<div> <b>I. VẬT LIỆU, DỤNG CỤ, SẢN PHẨM, HÀNG HOÁ</b> </div>	
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div> 
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>Vật liệu, dụng cụ, sản phẩm, hàng hóa/ Nhóm hàng hóa</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính của vật liệu, dụng cụ, sản phẩm, hàng hoá</b></td>
							<td class="align-c" colspan="2"><b>Số dư đầu kỳ</b></td>
							<td class="align-c" colspan="2"><b>Nhập trong kỳ</b></td>
							<td class="align-c" colspan="2"><b>Xuất trong kỳ</b></td>
							<td class="align-c" colspan="2"><b>Tồn cuối kỳ</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Thành tiền</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Thành tiền</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Thành tiền</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Thành tiền</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
						</tr>
						<xsl:for-each select="$pl02/VlieuDcuSPHH/BKeVLDCSPHH/CTietHKDCNKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<!--<td class="align-c"><xsl:value-of select="$currentRows"/></td>-->
								<td><xsl:value-of select="ct06"/></td>
								<td class="align-c"><xsl:value-of select="ct07"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct08)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct16)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct17)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct18)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct19)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct20)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct21)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct22)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/VlieuDcuSPHH/BKeVLDCSPHH/ct23)"/></b></td>
					</tr>
					<br></br>
					</table>
					<div> <b>II. CHI PHÍ QUẢN LÝ</b> </div>	
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div> 
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="1"><b>Chỉ tiêu</b></td>
							<td class="align-c" rowspan="1"><b>Mã chỉ tiêu</b></td>
							<td class="align-c" colspan="1"><b>Số tiền</b></td>
						</tr>
						<xsl:for-each select="$pl02/ChiPhiQL">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<!--<td class="align-c"><xsl:value-of select="$currentRows"/></td>-->
								<td class="align-l" colspan="1"><b>Chi phí nhân công</b></td>
								<td class="align-c" colspan="1"><b>[24]</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct24)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí điện</b></td>
								<td class="align-c" colspan="1"><b>[25]</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí nước</b></td>
								<td class="align-c" colspan="1"><b>[26]</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí viễn thông</b></td>
								<td class="align-c" colspan="1"><b>[27]</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí thuê  kho bãi, mặt bằng kinh doanh</b></td>
								<td class="align-c" colspan="1"><b>[28]</b></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí quản lý (chi phí văn phòng phẩm, công cụ, dụng cụ,…)</b></td>
								<td class="align-c" colspan="1"><b>[29]</b></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct29)"/></td>
							</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Chi phí khác (hội nghị, công tác phí, thanh lý, nhượng bán tài sản cố định, thuê ngoài khác,…)</b></td>
								<td class="align-c" colspan="1"><b>[30]</b></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct30)"/></td>
	         				</tr>
							<tr>
								<td class="align-l" colspan="1"><b>Tổng cộng</b></td>
								<td class="align-c" colspan="1"><b>[31]</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ChiPhiQL/ct31)"/></b></td>
							</tr>
	         		</xsl:for-each>	
					<xsl:call-template name="tkhaiFooter"/>
					</table>
	</div>		
			</div>

</xsl:if>
		<!-- Kết thúc PL 01-2/BK-HDKD -->
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>