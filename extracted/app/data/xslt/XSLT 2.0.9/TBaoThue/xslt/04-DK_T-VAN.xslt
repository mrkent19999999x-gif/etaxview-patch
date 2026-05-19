<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="cQT" select='DKyThueDTu/DKyThue/TTinChung/CQT' />
		<xsl:variable name="tTinDKyThue" select='DKyThueDTu/DKyThue/TTinChung/TTinDKyThue' />
		<xsl:variable name="nDungDKy" select='/DKyThueDTu/DKyThue/NDungDKy' />
		<xsl:call-template name="hsoHeaderTVan">
			<xsl:with-param name="mauTBao"   select="'04-ĐK/T-VAN'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="tenCQT"   select="$cQT/tenCQT" />
			<xsl:with-param name="tIN"   select="$tTinDKyThue/tIN" />
			<xsl:with-param name="tenNNT"   select="$tTinDKyThue/tenNNT" />
		</xsl:call-template>
		<br/>
		<div>
			Cơ sở chúng tôi xin đăng ký các loại hồ sơ khai thuế ngừng nộp qua tổ chức cung cấp dịch vụ giá trị gia tăng về giao dịch điện tử trong lĩnh vực thuế (T-VAN).
			<br/>
			<b>1. Tổ chức cung cấp dịch vụ T-VAN: <xsl:value-of select="$nDungDKy/ten_T_VAN"/></b><br/>
			<b>2. Danh sách hồ sơ khai thuế đăng ký ngừng nộp qua dịch vụ T-VAN:</b><br/>
			<table width="100%" cellpadding="3" cellspacing="2" style="border-collapse: collapse; text-align: center;">
					<tr bgcolor="#f0f0f0" style="font-weight: bold;">
						<th style="border: 1px solid #000;">Mã hồ sơ</th>
						<th style="border: 1px solid #000;">Tên hồ sơ</th>
						<th style="border: 1px solid #000;">Kỳ tính thuế bắt đầu ngừng nộp</th>
					</tr>
					<xsl:for-each select="$nDungDKy/DSachHSoNgungNop/NoiDungChiTiet">
					<tr>
						<td style="border: 1px solid #000;"><xsl:value-of select="maHSo"/></td>
						<td style="border: 1px solid #000; text-align: left;"><xsl:value-of select="tenHSo"/></td>
						<td style="border: 1px solid #000;"><xsl:value-of select="kyNgung"/></td>
					</tr>		
					</xsl:for-each>		
				</table>
				<br/>

			<hr/>
			<font color="gray">"Nộp hồ sơ khai thuế qua mạng là sự lựa chọn thông minh của bạn!"</font>
		</div>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>