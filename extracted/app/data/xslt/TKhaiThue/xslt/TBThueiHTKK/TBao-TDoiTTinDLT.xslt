<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue">
	    <xsl:with-param name="mauTKhai"   select="'04/TB-ĐLT'"/>
	  </xsl:call-template>
<div class="ndungtkhai_div">
            <div class="content">
            <div><xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'ii')"/> giây, ngày  <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'dd/mm/yyyy')"/>, đơn vị đã được Cơ quan Thuế cập nhật thay đổi thông tin tài khoản khai thuế điện tử, gồm có:.</div><br/>
    <div>- Địa chỉ thư điện tử: <xsl:value-of select="$noidungtb/email"/></div>
     <div>- Điện thoại: <xsl:value-of select="$noidungtb/dienThoai"/></div>
     <div>- Người liên hệ: <xsl:value-of select="$noidungtb/nguoiLienHe"/></div>
     <div>- Số chứng minh thư số: <xsl:value-of select="$noidungtb/serial"/></div>
     <div>- Tên tổ chức chứng thực chữ ký số công cộng: <xsl:value-of select="$noidungtb/issuer"/></div>
     <div>Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</div><br></br>
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