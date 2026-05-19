<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="cQT" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="nNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="gDich" select='TBaoThueDTu/TBaoThue/NDungTBao/GDich' />
		<xsl:variable name="cTietGDich" select='TBaoThueDTu/TBaoThue/NDungTBao/CTietGDich' />
		<xsl:call-template name="tbaoHeaderTVan">
			<xsl:with-param name="mauTBao"   select="'07-GD/T-VAN'"/>
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="tenTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		<br/>
		<div>
			<table width="100%">
				<tr>
					<td>Mã giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/maGDich" /></td>
				</tr>
				<tr>
					<td>Mã loại giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/maLoaiGDich" /></td>
				</tr>
				<tr>
					<td>Nội dung giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/ndungGDich" /></td>
				</tr>		
				<tr>
					<td>Mã kết quả giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/maKQuaGDich" /></td>
				</tr>
				<tr>
					<td>Kết quả giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/kquaGDich" /></td>
				</tr>
				<tr>
					<td>Mã lỗi giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/maLoiGDich" /></td>
				</tr>
				<tr>
					<td>Mô tả lỗi giao dịch:</td>
					<td style="background-color: #DDE4FF;"><xsl:value-of select="$gDich/mtaLoiGDich" /></td>
				</tr>
				<tr>
					<td colspan="2">Chi tiết kết quả giao dịch:</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<table width="100%">
							<tr>
								<td>Mã số thuế:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/tinCTietGDich" /></td>
							</tr>
							<tr>
								<td>Tên NNT:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/tenNNT" /></td>
							</tr>
							<tr>
								<td>Mã hồ sơ:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/maHSo" /></td>
							</tr>
							<tr>
								<td>Tên hồ sơ:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/tenHSo" /></td>
							</tr>
							<tr>
								<td>Mã loại hồ sơ:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/maLoaiHSo" /></td>
							</tr>
							<tr>
								<td>Loại hồ sơ:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/tenLoaiHSo" /></td>
							</tr>
							<tr>
								<td>Kỳ tính thuế:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/kyKKhaiHThi" /></td>
							</tr>
							<tr>
								<td>Lần nộp::</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/lanNop" /></td>
							</tr>
							<tr>
								<td>Cơ quan Thuế:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/tenCQTNoiNop" /></td>
							</tr>
							<tr>
								<td>Mã kết quả:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/makquaCTietGDich" /></td>
							</tr>
							<tr>
								<td>Kết quả:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/mtaKquaCTietGDich" /></td>
							</tr>
							<tr>
								<td>Mã lỗi:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/maLoiCTietGDich" /></td>
							</tr>
							<tr>
								<td>Mô tả lỗi:</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/mtaLoiCTietGDich" /></td>
							</tr>
							<tr>
								<td>MGD</td>
								<td style="background-color: #DDE4FF;"><xsl:value-of select="$cTietGDich/maGDC" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
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