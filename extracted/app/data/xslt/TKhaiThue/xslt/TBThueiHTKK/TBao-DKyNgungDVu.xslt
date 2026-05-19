<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue">
	    <xsl:with-param name="mauTKhai"   select="'08/TB-KĐT'"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                 <div><xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'ii')"/> giây, ngày  <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'dd/mm/yyyy')"/>, Cơ quan Thuế xác nhận đơn vị đã đăng ký ngừng sử dụng dịch vụ khai thuế điện tử.</div><br/>
                 <div>Bắt đầu kể từ thời điểm chấm dứt dịch vụ khai thuế điện tử, đơn vị phải thực hiện nộp hồ sơ khai thuế bằng giấy qua bưu chính hoặc nộp trực tiếp tại cơ quan thuế. Trường hợp do chấm dứt hoạt động, đơn vị phải thực hiện các thủ tục chấm dứt mã số thuế theo quy định.</div><br/>
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
