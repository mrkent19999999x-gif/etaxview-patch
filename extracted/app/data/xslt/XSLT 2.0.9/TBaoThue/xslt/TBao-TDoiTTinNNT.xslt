<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'04/TB-KĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		
		<div>
			<table>
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$NNhanTBaoThue/tenNNhan" /></td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế:<xsl:value-of select="$NNhanTBaoThue/maNNhan" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'yyyy')"/>, đơn vị đã được Cơ quan Thuế cập nhật thay đổi thông tin tài khoản khai thuế điện tử, gồm có:<br/>
			- Địa chỉ thư điện tử: <xsl:value-of select="$ndungTBao/email"/><br/>
			- Điện thoại: <xsl:value-of select="$ndungTBao/dienThoai"/><br/>
			- Người liên hệ:  <xsl:value-of select="$ndungTBao/nguoiLienHe"/><br/>
			- Số chứng thư số:  <xsl:value-of select="$ndungTBao/serial"/><br/>
			- Tên tổ chức chứng thực chữ ký số công cộng:  <xsl:value-of select="$ndungTBao/issuer"/><br/>
			<p>Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</p>
			<i>Ghi chú: Thông báo được gửi tự động từ hệ thống khai thuế điện tử của Tổng cục Thuế.</i>
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