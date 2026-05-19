<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeaderTCT.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='THONGBAO' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'04/TB-TCT'"/>
			<xsl:with-param name="soTBao"   select="'04/TB-TCT'" />
			<xsl:with-param name="motaTBao"   select="'V/v Không chấp nhận sử dụng dịch vụ nộp thuế điện tử của TCT.'" />
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
						<td>Doanh Nghiệp với</td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế: <xsl:value-of select="$tbThue/MST" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Cơ quan thuế không chấp thuận đăng ký sử dụng dịch vụ Nộp thuế điện tử của NNT.
			<br/>
			Lý do: <xsl:value-of select="$tbThue/LYDO" /><br/>
			<br/>
			Cơ quan thuế thông báo để NNT được biết./.



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