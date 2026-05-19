<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC' />
			<xsl:call-template name="tkhaiHeader_pluc_01_1_BK_XSBHĐC">
		<xsl:with-param name="mauTKhai"   select="'01/BK-XSBHĐC'"/>
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
				<td class="align-c"><b>Mã số thuế/Số định danh cá nhân </b></td>
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
				
			</tr>
			<tr>
				<td class="align-c"><b>I</b></td>
				<td colspan="5"><b>Đối với hoạt động đại lý xổ số</b></td>
			</tr>
				<xsl:for-each select="$pl01/XoSo/CTietXoSo">
					<xsl:variable name="currentRows" select='position()' />
						<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							 
						</tr>
				</xsl:for-each>
							<tr>
							    <td></td>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b>[09.1]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct09_1)"/></b></td>
								<td class="align-r"><b>[10.1]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct10_1)"/></b></td>
								<td class="align-r"><b>[11.1]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct11_1)"/></b></td>
							</tr>
			<tr>
				<td class="align-c"><b>II</b></td>
				<td colspan="5"><b>Đối với hoạt động đại lý bảo hiểm</b></td>
			</tr>
			<xsl:for-each select="$pl01/BaoHiem/CTietBaoHiem">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
							    <td></td>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b>[09.2]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct09_2)"/></b></td>
								<td class="align-r"><b>[10.2]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct10_2)"/></b></td>
								<td class="align-r"><b>[11.2]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct11_2)"/></b></td>
							</tr>
		
			<tr>
				<td class="align-c"><b>III</b></td>
				<td colspan="5"><b>Đối với hoạt động trả phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác</b></td>
			</tr>
			<xsl:for-each select="$pl01/BHiemNThoBHiemKhongBatBuoc/CTietBaoHiem">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
							    <td></td>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b>[09.3]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct09_3)"/></b></td>
								<td class="align-r"><b>[10.3]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct10_3)"/></b></td>
								<td class="align-r"><b>[11.3]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BHiemNThoBHiemKhongBatBuoc/ct11_3)"/></b></td>
							</tr>
			
			<tr>
				<td class="align-c"><b>IV</b></td>
				<td colspan="5"><b>Đối với hoạt động bán hàng đa cấp</b></td>
			</tr>
			<xsl:for-each select="$pl01/BanHangDC/CTietBanHangDC">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct07"/></td>
							  <td class="align-c"><xsl:value-of select="ct08"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
			</xsl:for-each>
							<tr>
							    <td></td>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b>[09.4]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct09_4)"/></b></td>
								<td class="align-r"><b>[10.4]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct10_4)"/></b></td>
								<td class="align-r"><b>[11.4]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct11_4)"/></b></td>
							</tr>
							<tr>
				<td class="align-c"><b>V</b></td>
				<td colspan="2" class="align-c"><b>TỔNG CỘNG</b></td>
				                <td class="align-r"><b>[12]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/ct12)"/></b></td>
								<td class="align-r"><b>[13]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/ct13)"/></b></td>
								<td class="align-r"><b>[14]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($pl01/ct14)"/></b></td>
			               </tr>
							
			
		</table>
</div>
</div>
<xsl:call-template name="tkhaiFooter_TT80_HKD_BK_XSBHDC">
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