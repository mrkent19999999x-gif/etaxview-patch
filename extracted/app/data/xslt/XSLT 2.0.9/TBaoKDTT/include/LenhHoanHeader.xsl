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
	<xsl:param name="KY_HIEU_HS" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="motaTBao_1" />
	<xsl:param name="motaTBao_2" />
	<xsl:param name="coquanthuecaptren" />
	<xsl:param name="coquanthue" />
	<xsl:param name="kieuTBao" />
	<xsl:param name="diaDanh" />
	<xsl:param name="CQT_LINE1" />
	<xsl:param name="CQT_LINE2" />
	<xsl:param name="CQT_LINE3" />
	<br/>
	<!--<div class="box_chuyen_doi" >Văn bản chuyển đổi từ <br/>Văn bản điện tử</div>-->
	<br/>
	
						<br/>
						<div style="margin-left:30px;">
						<table cellpadding="0" cellspacing="0" width="100%">
						
						<tr  >
						<td width="10%" style="text-align:center;margin-left:100px;  border: 1px solid #000;">Không ghi vào khu vực này</td>
						<td width="60%" style="text-align:center; ">
					<div align="left" style="margin-left:50px; padding:0;">
						<span style="text-transform:uppercase;font-size:12px;"><xsl:value-of select="$coquanthuecaptren"/></span> <br/>
						<span style="font-weight:bold;text-transform:uppercase;font-size:12px;">
                                <xsl:if test="$CQT_LINE1 !=''">
                                                  <xsl:value-of select="$CQT_LINE1" />
                                 </xsl:if>
                                 <xsl:if test="$CQT_LINE2 !=''">
                                                   <br/> <xsl:value-of select="$CQT_LINE2" />
                                 </xsl:if>
                                 <xsl:if test="$CQT_LINE3 !=''">
                                                    <br/><xsl:value-of select="$CQT_LINE3" />
                                 </xsl:if>
                                <!--<xsl:apply-templates select="$TTinChung/CQT/coQuanCapDuoi"/>--> 
						</span>
					</div>
				</td>
						<td  style="float:left;font-size:13px; margin-top:14px;">
						
							<span >
							Số: <xsl:value-of select="$soTBao" />/LH-<xsl:value-of select="$KY_HIEU_HS" /></span>
						
						</td>
						</tr>
						</table>
						</div>
						<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			
			<tr>
				<td colspan="2" align="center">
				<br/>
					<p style="font-weight:bold;font-size:14px;"><xsl:value-of select="$kieuTBao" /></p>
					<div style="font-weight:bold;">
					<xsl:value-of select="$motaTBao" />
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	
</xsl:template>  
</xsl:stylesheet>