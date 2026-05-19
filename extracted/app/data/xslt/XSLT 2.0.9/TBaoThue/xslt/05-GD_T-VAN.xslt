<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="gDich" select='TBaoThueDTu/TBaoThue/NDungTBao/GDich' />
		<xsl:variable name="cTietGDich" select='TBaoThueDTu/TBaoThue/NDungTBao/CTietGDich' />
		<xsl:variable name="noiDung05GDTVAN" select='TBaoThueDTu/TBaoThue/NDungTBao/CTietGDich/NoiDung05GD/NoiDung05GDTVAN' />
		<xsl:call-template name="tbaoHeaderTVan">
			<xsl:with-param name="mauTBao"   select="'05-GD/T-VAN'"/>
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="tenTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		<br/>
		<div>
			<table cellpadding="3" cellspacing="2" width="100%">
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
					<td colspan="2">
						<table width="100%" cellpadding="3" cellspacing="2" style="border-collapse: collapse; text-align: center;">
							<tr bgcolor="#f0f0f0" style="font-weight: bold;">
								<th style="border: 1px solid #000;">STT</th>
								<th style="border: 1px solid #000;">Mã hồ sơ</th>
								<th style="border: 1px solid #000;">Tên hồ sơ</th>
								<th style="border: 1px solid #000;">Kỳ kết thúc</th>
								<th style="border: 1px solid #000;">Mã kết quả</th>
								<th style="border: 1px solid #000;">Kết quả</th>
								<th style="border: 1px solid #000;">Mã lỗi</th>
								<th style="border: 1px solid #000;">Mô tả lỗi</th>
							</tr>
							<xsl:for-each select="$noiDung05GDTVAN">
							<tr>
								<td style="border: 1px solid #000;"><xsl:number level="any"/></td>
								<td style="border: 1px solid #000;"><xsl:value-of select="maHSo"/></td>
								<td style="border: 1px solid #000; text-align: left;"><xsl:value-of select="tenHSo"/></td>
								<td style="border: 1px solid #000;"><xsl:value-of select="kyNgung"/></td>
								<td style="border: 1px solid #000;"><xsl:value-of select="makquaCTietGDich"/></td>
								<td style="border: 1px solid #000;"><xsl:value-of select="mtaKquaCTietGDich"/></td>
								<td style="border: 1px solid #000;"><xsl:value-of select="maLoiCTietGDich"/></td>
								<td style="border: 1px solid #000; text-align: left;"><xsl:value-of select="mtaLoiCTietGDich"/></td>
							</tr>		
							</xsl:for-each>		
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