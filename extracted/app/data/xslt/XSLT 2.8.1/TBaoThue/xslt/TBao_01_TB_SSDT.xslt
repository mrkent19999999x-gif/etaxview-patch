<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<!-- <xsl:include href="../include/TBaoFooter.xsl"/>    -->
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">	

<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_01_TB_SSDT">
			
		</xsl:call-template>  
		<br/>
		
			
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi xem xét Thông báo hóa đơn điện tử/chứng từ điện tử đã lập sai 
	ngày <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'dd')"/>  
	tháng <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'mm')"/> 
	năm <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'yyyy')"/> của:
					  </div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Người nộp thuế: <xsl:value-of select="TBTNhan/DLTBao/TNNT"/> </div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="TBTNhan/DLTBao/MST"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo tiếp nhận hóa đơn điện tử/chứng từ điện tử đã lập sai. </div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan Thuế đã tiếp nhận Thông báo hóa đơn điện tử/chứng từ điện tử đã lập sai 
						ngày <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'dd')"/>  
						tháng <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'mm')"/> 
						năm <xsl:value-of select="ihtkk:stringDatetime(TBTNhan/DLTBao/NTBNNT,'yyyy')"/> của quý công ty.
						</div>							
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo để người nộp thuế biết, thực hiện.</div> 
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã hồ sơ: <xsl:value-of select="TBTNhan/DLTBao/MHSo"/></div>
			
        
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>