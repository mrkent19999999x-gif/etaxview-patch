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
			<xsl:with-param name="mauTBao"   select="'02/TB-ĐLT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		<br/>
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
			<p><xsl:value-of select="ihtkk:timeToString($ndungTBao/ngayCapTK,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'ii')"/> giây
			, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'yyyy')"/>, đơn vị đã được Cơ quan Thuế cấp tài khoản sử dụng hình thức khai thuế điện tử với các thông tin tài khoản như sau:</p>
			<p>
			<b>Định danh:<xsl:value-of select="$ndungTBao/dinhDanh" /></b><br/>
			<b>Mật khẩu:<xsl:value-of select="$ndungTBao/matKhau" /></b></p>
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