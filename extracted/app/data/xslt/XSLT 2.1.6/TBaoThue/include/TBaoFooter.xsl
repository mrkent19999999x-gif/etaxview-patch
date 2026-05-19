<?xml version='1.0' encoding='UTF-8' ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    
<xsl:template name="tbaoFooter">	
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

<table cellpadding="0" cellspacing="0" width="100%">
	<tbody>
			<tr>
				<td width="50%" class="align-c"><b>NGƯỜI NHẬN THÔNG BÁO THUẾ</b></td>				
				<td width="50%" class="align-c"><b>THỦ TRƯỞNG CƠ QUAN THUẾ</b></td>
			</tr>
			<tr>
				<td width="50%" class="align-c"><i>, ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i></td>
				<td width="50%" class="align-c">(Ký, ghi rõ họ tên, đóng dấu)</td>
			</tr>
			<tr>
				<td width="50%" class="align-c">(Ký, ghi rõ họ tên) </td>
				<td></td>
			</tr>
			<tr>
				<td><xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</xsl:template>
 
 
	
</xsl:stylesheet>
