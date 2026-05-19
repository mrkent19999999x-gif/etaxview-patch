<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    	
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttchungdk" select='DKyThue/TTinChung' />	
		<xsl:variable name="ndungdk" select='DKyThue/NDungDKy' />	
		<xsl:call-template name="tkhaiHeaderDKThue">
			<xsl:with-param name="mauTKhai" select="'02/ĐK-T-VAN-ĐLT'"/>
		</xsl:call-template>
     <div style="padding-left:100px"> Kính gửi:  <xsl:value-of select="$ttchungdk/CQT/tenCQT"/></div>
	<div style="padding-left:100px"> Tên đại lý thuế:  <xsl:value-of select="$ttchungdk/TTinDKyThue/tenNNT"/></div>		
	<div style="padding-left:100px;"> Mã số thuế: <xsl:value-of select="$ttchungdk/TTinDKyThue/tIN"/></div><br/>
	
		<div>Căn cứ Tờ khai đăng ký sử dụng dịch vụ T-VAN ngày  <xsl:value-of select="ihtkk:stringDatetime($ttchungdk/TTinDKyThue/ngayDKy,'dd/mm/yyyy')"/>, chúng tôi đề nghị được thay đổi, bổ sung thông tin đã đăng ký cụ thể như sau:</div><br/>
						<div class="ndungtkhai_div">
			<div class="content">            
				 <div><b>1. Thông tin về người nộp thuế</b></div><br/>
				 <div>- Số chứng minh thư số: <xsl:value-of select="$ndungdk/serial"/></div>
				 <div>- Tên tổ chức chứng thực chữ ký số công cộng: <xsl:value-of select="$ndungdk/issuer"/></div>
				 <div>- Thời hạn sử dụng chứng thư số: từ ngày <xsl:value-of select="$ndungdk/fromDateCA"/> đến ngày <xsl:value-of select="$ndungdk/toDateCA"/></div>
				 <div>- Địa chỉ thư điện tử: <xsl:value-of select="$ndungdk/email"/></div>
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