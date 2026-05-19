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
		<xsl:call-template name="tbaoHeader_koMauSo">
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
			<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'ii')"/> giây
			, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'yyyy')"/>, đơn vị đã được Cơ quan Thuế cấp tài khoản sử dụng hình thức khai thuế điện tử với các thông tin tài khoản như sau:<br/>
		  
		  <b>- Định danh : <xsl:value-of select="$ndungTBao/dinhDanh"/> </b><br/>
		 <b>- Mật khẩu: <xsl:value-of select="$ndungTBao/matKhau"/> </b><br/>
		
		
			Để tra cứu thông tin đã kê khai, xin vui lòng truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn<br/><br/>
			<i>Ghi chú: Thông báo được gửi tự động từ hệ thống khai thuế điện tử của Tổng cục Thuế.</i><br/><br/>
			Đồng thời, Cơ quan Thuế xác nhận đơn vị đã đăng ký khai thuế điện tử qua tổ chức cung cấp dịch vụ
giá trị gia tăng về giao dịch điện tử trong lĩnh vực thuế - T-VAN: <xsl:value-of select="$ndungTBao/tenVan"/>. Để sử dụng dịch vụ của tổ
chức  <xsl:value-of select="$ndungTBao/tenVan"/>, đơn vị truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/urlVan"/> với định danh và mật khẩu do tổ
chức  <xsl:value-of select="$ndungTBao/tenVan"/> cung cấp.
			<hr/><br/>
			<font color="gray">"Nộp hồ sơ khai thuế qua mạng là sự lựa chọn thông minh của bạn!"</font>
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