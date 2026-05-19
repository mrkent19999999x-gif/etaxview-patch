<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBAO_TKHOAN_NH' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_TBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_TBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_TBAO" />
			<xsl:with-param name="motaTBao"   select="'V/v Không chấp nhận đăng ký sử dụng dịch vụ nộp thuế điện tử qua NHTM'" />
			<xsl:with-param name="ma_nhang"   select="$tbThue/MA_NHANG" />
		</xsl:call-template>
		<div align="center" style="margin:0; padding:0;">
		_________________________________
		</div>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$tbThue/TEN_NNT" /></td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế: <xsl:value-of select="$tbThue/MST" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Ngân hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> không chấp thuận đăng ký sử dụng dịch vụ Nộp thuế điện tử thông qua tài khoản của Ngân hàng: <xsl:value-of select="$tbThue/TEN_NHANG" />
			<br/>
			<br/>
			Lý do: <xsl:value-of select="$tbThue/LDO_TCHOI" />
			<br/>
			<br/>
			Ngân hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> thông báo để NNT biết, thực hiện./.

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