<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    	
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttchungdk" select='DKyThue/TTinChung' />	
		<xsl:variable name="ndungdk" select='DKyThue/NDungDKy' />	
		<xsl:call-template name="tkhaiHeaderDKThue">
			<xsl:with-param name="mauTKhai" select="'03/ĐK-T-VAN-ĐLT'"/>
		</xsl:call-template>
     <div style="padding-left:100px"> Kính gửi:  <xsl:value-of select="$ttchungdk/CQT/tenCQT"/></div>
	<div style="padding-left:100px"> Tên đại lý thuế:  <xsl:value-of select="$ttchungdk/TTinDKyThue/tenNNT"/></div>		
	<div style="padding-left:100px;"> Mã số thuế: <xsl:value-of select="$ttchungdk/TTinDKyThue/tIN"/></div><br/>
    <div>Chúng tôi đăng ký với cơ quan thuế được ngừng sử dụng dịch vụ T-VAN để thực hiện thủ tục:</div><br/>
		<div class="ndungtkhai_div">
			<div class="content">            
				 <table>
					<tr>
						<td>+ Đăng ký thuế điện tử [<xsl:if test="$ndungdk/dkyTDT='true' ">x</xsl:if>]</td>
					</tr>
					<tr>
						<td>+ Kê khai thuế điện tử [<xsl:if test="$ndungdk/kkTDT='true' ">x</xsl:if>]</td>
					    <tr></tr>
			             <tr></tr>
					</tr>
					</table>
		<div class="align-left"> Cụ thể như sau:</div><br/>
				 <div>- Thời điểm ngừng: <xsl:value-of select="$ndungdk/ngayNgung"/></div>
				 <div>- Lý do ngừng: <xsl:value-of select="$ndungdk/lyDoNgung"/></div><br></br>
				 <div>Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên./.</div>
	  </div>
		</div>
		   <xsl:call-template name="tkhaiFooter_DK_TVAN"/>
		   <table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>