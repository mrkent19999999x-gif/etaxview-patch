<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_XSBHDC' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/BK-XSBHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CÓ PHÁT SINH DOANH THU TỪ HOẠT ĐỘNG ĐẠI LÝ XỔ SỔ, ĐẠI LÝ BẢO HIỂM, BÁN HÀNG ĐA CẤP'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai 01/XSBHĐC của kỳ tháng/quý cuối cùng trong năm)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Họ và tên NNT</b></td>
				<td class="align-c"><b>Mã số thuế</b></td>
				<td class="align-c"><b>Số CMND/ Hộ chiếu</b></td>
				<td class="align-c"><b>Doanh thu trong năm</b></td>
				<td class="align-c"><b>Doanh thu thuộc diện khấu trừ thuế trong năm</b></td>
				<td class="align-c"><b>Số thuế phát sinh trong năm</b></td>
				<td class="align-c"><b>Số thuế được giảm trong năm</b></td>
				<td class="align-c"><b>Số thuế đã khấu trừ trong năm</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>[06]</b></td>
				<td class="align-c"><b>[07]</b></td>
				<td class="align-c"><b>[08]</b></td>
				<td class="align-c"><b>[09]</b></td>
				<td class="align-c"><b>[10]</b></td>
				<td class="align-c"><b>[11]</b></td>
				<td class="align-c"><b>[12] </b></td>
				<td class="align-c"><b>[13]</b></td>
				<td class="align-c"><b>[14] </b></td>
			</tr>
			<tr>
				<td class="align-c"><b>I</b></td>
				<td colspan="8"><b>Đối với hoạt động đại lý xổ số</b></td>
			</tr>
			 <xsl:for-each select="$pl01/XoSo/CTietXoSo">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td><xsl:value-of select="ct09" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
							</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct15)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct16)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct17)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct18)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/XoSo/ct19)"/></b></td>
							</tr>
			<tr>
				<td class="align-c"><b>II</b></td>
				<td colspan="8"><b>Đối với hoạt động đại lý bảo hiểm</b></td>
			</tr>
			<xsl:for-each select="$pl01/BaoHiem/CTietBaoHiem">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td><xsl:value-of select="ct09" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
							</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct20)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct21)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct22)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct23)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BaoHiem/ct24)"/></b></td>
							</tr>
			
			<tr>
				<td class="align-c"><b>III</b></td>
				<td colspan="8"><b>Đối với hoạt động bán hàng đa cấp</b></td>
			</tr>
			<xsl:for-each select="$pl01/BanHangDC/CTietBanHangDC">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td><xsl:value-of select="ct09" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
							</xsl:for-each>
							<tr>
								<td colspan="4" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct25)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct26)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct27)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct28)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BanHangDC/ct29)"/></b></td>
							</tr>
			
		</table>
</div>
</div>
	</xsl:if><table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>