<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue">
	    <xsl:with-param name="mauTKhai"   select="'Mẫu số: 02/TB-KĐT'"/>
	  </xsl:call-template>
		  	<div class="NDungTBao_div">
            <div class="content">
                 <div>Ngày  <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'dd/mm/yyyy')"/>, đơn vị đã được Cơ quan Thuế cấp tài khoản sử dụng hình thức khai thuế điện tử với các thông tin tài khoản như sau:</div><br/>
    <div><b>Định danh: 0100231226</b></div><br></br>
    <div><b>Mật khẩu: 4EORq8I6</b></div><br></br>
    <div>Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</div><br/>
   <div><i><b><u>Ghi chú: </u></b>Thông báo được gửi tự động từ hệ thống khai thuế điện tử của Tổng cục Thuế.</i></div><br/>
   </div>	
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
