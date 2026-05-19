<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    
<xsl:template name="tbaoHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="motaTBao_1" />
	<xsl:param name="motaTBao_2" />
	<xsl:param name="coquanthuecaptren" />
	<xsl:param name="coquanthue" />
	<xsl:param name="kieuTBao" />
	<xsl:param name="diaDanh" />
	<br/>
	<!--<div class="box_chuyen_doi" >Văn bản chuyển đổi từ <br/>Văn bản điện tử</div>-->
	<br/>
	
						<br/>
						<table cellpadding="0" cellspacing="0" width="100%">
						<tr style="float:right">
						<td style="float:right">
						<div class="box_mau_so">Mẫu số: <span style="font-weight:bold;">
								<xsl:value-of select="$mauTBao"/>
							</span>
							<br/>
							<span style="font-style: italic;">(Ban hành kèm theo thông tư)
							<br/>
							số 156/2013/TT-BTC ngày
							<br/>
							6/11/2013 của Bộ tài chính</span>
						</div>
						</td>
						</tr>
						</table>
						<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<span style="text-transform:uppercase"><xsl:value-of select="$coquanthuecaptren"/></span> <br/>
						<span style="font-weight:bold;text-transform:uppercase;font-size:14px;"><xsl:value-of select="$coquanthue"/></span><br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0; ">
					<span style="font-weight:bold;font-size:14px;">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</span><br/>
					<span style="font-weight:bold;font-size:14px;">Độc lập-Tự do-Hạnh phúc</span><br/>
					----------oOo----------<br/>
					<i><xsl:value-of select="$diaDanh" />, Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<p style="font-weight:bold;font-size:14px;"><xsl:value-of select="$kieuTBao" /></p>
					<div style="font-weight:bold;">
					<xsl:value-of select="$motaTBao" />
					<br/>
					<xsl:value-of select="$motaTBao_1" />
					<br/>
					<xsl:value-of select="$motaTBao_2" />
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	
</xsl:template>  
</xsl:stylesheet>