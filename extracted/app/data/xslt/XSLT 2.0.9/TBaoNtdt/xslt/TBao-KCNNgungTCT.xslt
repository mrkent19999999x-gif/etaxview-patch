<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeaderTCT.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBAO_NGUNG/TBAO_NGUNG_NT' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_TBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_TBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_TBAO" />
			<xsl:with-param name="motaTBao"   select="$tbThue/TEN_TBAO" />
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
			<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'ii')"/> giây
			, ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'yyyy')"/>, 
			Cơ quan thuế thông báo không chấp nhận ngừng sử dụng dịch vụ nộp thuế điện tử.
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