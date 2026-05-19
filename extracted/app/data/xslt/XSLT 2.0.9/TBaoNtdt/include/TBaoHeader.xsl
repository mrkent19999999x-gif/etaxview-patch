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
	<xsl:param name="ma_nhang" />
	<xsl:variable name="NNhanTBaoThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET' />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						NGÂN HÀNG <xsl:value-of select="$ma_nhang"/> <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />/TB-NHTM
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>  
</xsl:stylesheet>