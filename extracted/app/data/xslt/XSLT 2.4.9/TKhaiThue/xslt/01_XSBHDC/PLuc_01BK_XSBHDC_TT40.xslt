<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC' />
			<xsl:call-template name="tkhaiHeader_pluc_01_1_BK_XSBHĐC">
		<xsl:with-param name="mauTKhai"   select="'01-1/BK-XSBHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CÓ PHÁT SINH DOANH THU TỪ HOẠT ĐỘNG ĐẠI LÝ XỔ SỔ, ĐẠI LÝ BẢO HIỂM, BÁN HÀNG ĐA CẤP'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai 01/XSBHĐC kê khai vào hồ sơ khai thuế của kỳ tháng/quý cuối cùng trong năm tính thuế)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Họ tên cá nhân</b></td>
				<td class="align-c"><b>Mã số thuế cá nhân (MST)</b></td>
				<td class="align-c"><b>Số CMND/ CCCD/ Hộ chiếu (trường hợp cá nhân chưa có MST)</b></td>
				<td class="align-c"><b>Doanh thu trong năm</b></td>
				<td class="align-c"><b>Doanh thu thuộc diện khấu trừ thuế trong năm</b></td>
				<td class="align-c"><b>Số thuế đã khấu trừ trong năm</b></td>
			</tr>
			<tr>
				<td class="align-c">[06]</td>
				<td class="align-c">[07]</td>
				<td class="align-c">[08]</td>
				<td class="align-c">[09]</td>
				<td class="align-c">[10]</td>
				<td class="align-c">[11]</td>
				<td class="align-c">[12]</td>
			</tr>
			<tr>
				<td class="align-c"><b>I</b></td>
				<td colspan="8"><b>Đối với hoạt động đại lý xổ số</b></td>
			</tr>
				<xsl:for-each select="$pl01/XoSo/CTietXoSo">
					<xsl:variable name="currentRows" select='position()' />
						<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td><xsl:value-of select="ct09"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
						</tr>
				</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct13)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct14)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct15)"/></b></td>
							</tr>
			<tr>
				<td class="align-c"><b>II</b></td>
				<td colspan="8"><b>Đối với hoạt động đại lý bảo hiểm</b></td>
			</tr>
			<xsl:for-each select="$pl01/BaoHiem/CTietBaoHiem">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td><xsl:value-of select="ct09"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct16)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct17)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct18)"/></b></td>
							</tr>
		
			<tr>
				<td class="align-c"><b>III</b></td>
				<td colspan="8"><b>Đối với hoạt động trả phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác</b></td>
			</tr>
			<xsl:for-each select="$pl01/BHiemNThoBHiemKhongBatBuoc/CTietBaoHiem">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td><xsl:value-of select="ct09"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct19)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct20)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct21)"/></b></td>
							</tr>
			
			<tr>
				<td class="align-c"><b>IV</b></td>
				<td colspan="8"><b>Đối với hoạt động bán hàng đa cấp</b></td>
			</tr>
			<xsl:for-each select="$pl01/BanHangDC/CTietBanHangDC">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td><xsl:value-of select="ct09"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct22)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct23)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct24)"/></b></td>
							</tr>
			
		</table>
</div>
</div>
<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	</xsl:if><table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>