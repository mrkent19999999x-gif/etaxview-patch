<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    	
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttchungdk" select='DKyThue/TTinChung' />	
		<xsl:variable name="ndungdk" select='DKyThue/NDungDKy' />	
		<xsl:call-template name="tkhaiHeaderDKThue">
			<xsl:with-param name="mauTKhai" select="'01/ĐK-T-VAN'"/>
		</xsl:call-template>
     <div style="padding-left:100px"> Kính gửi:  <xsl:value-of select="$ttchungdk/CQT/tenCQT"/></div>
	<div style="padding-left:100px"> Tên người nộp thuế:  <xsl:value-of select="$ttchungdk/TTinDKyThue/tenNNT"/></div>		
	<div style="padding-left:100px;"> Mã số thuế: <xsl:value-of select="$ttchungdk/TTinDKyThue/tIN"/></div><br/>
		<div>Qua xem xét và nhận thấy chúng tôi có đủ các điều kiện sử dụng dịch vụ T-VAN, chúng tôi đăng ký với cơ quan thuế được sử dụng dịch vụ T-VAN, cụ thể như sau:</div><br/>
		<div class="ndungtkhai_div">
			<div class="content">            
				 <div><b>1. Thông tin về người nộp thuế</b></div><br/>
				 <div>- Số chứng minh thư số: <xsl:value-of select="$ndungdk/serial"/></div>
				 <div>- Tên tổ chức chứng thực chữ ký số công cộng: <xsl:value-of select="$ndungdk/issuer"/></div>
				 <div>- Thời hạn sử dụng chứng thư số: từ ngày <xsl:value-of select="$ndungdk/fromDateCA"/> đến ngày <xsl:value-of select="$ndungdk/toDateCA"/></div>
				 <div>- Địa chỉ thư điện tử: <xsl:value-of select="$ndungdk/email"/></div>
				 <div>- Điện thoại: <xsl:value-of select="$ndungdk/tel"/></div>
				 <div>- Sử dụng  dịch vụ T-VAN để thực hiện thủ tục:</div>
				 <table>
					<tr>
						<td>+ Đăng ký thuế điện tử [<xsl:if test="$ndungdk/dkyTDT='true' ">x</xsl:if>]</td>
					</tr>
					<tr>
						<td>+ Kê khai thuế điện tử [<xsl:if test="$ndungdk/kkTDT='true' ">x</xsl:if>]</td>
					</tr>
					</table>
				 <div><b>2. Thông tin về tổ chức cung cấp dịch vụ T-VAN:</b></div><br/>
				 <div>- Tên tổ chức : <xsl:value-of select="$ndungdk/tenToChuc"/></div>
				 <div>- Số Giấy công nhận tổ chức cung cấp dịch vụ T-VAN : <xsl:value-of select="$ndungdk/soGiayCNhan"/></div><br></br>
				 <div>Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên và thực hiện tính thuế, khai thuế và nộp thuế theo đúng quy định của pháp luật về quản lý thuế và pháp luật thuế có liên quan./.</div>
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