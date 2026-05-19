<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../include/TBaoHeader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue'/>
		<xsl:variable name="nnhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue'/>
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao'/>
		<xsl:call-template name="tbaoHeader_capLaiMK">
		
			<xsl:with-param name="soTBao" select="$tbThue/soTBao"/>
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao"/>
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao"/>
		</xsl:call-template>
		<div>
			<table>
				<tbody>
					<tr>
						<td>
							<b>
								<i>
									<u>Kính gửi </u> </i>: <xsl:value-of select="$nnhanTBaoThue/tenNNhan"/>
							</b>
						</td>
		
					</tr>
					<tr>
						
						<td><b> Mã số thuế</b>: <xsl:value-of select="$nnhanTBaoThue/maNNhan"/>
						</td>
					</tr>
				</tbody>
			</table>
			<br/>
			Ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapTK,'yyyy')"/>, Cơ quan Thuế đã cấp lại mật khẩu tài khoản sử dụng hệ thống nộp hồ sơ khai thuế
qua mạng với các thông tin tài khoản như sau:<br/>
			- Định danh: <xsl:value-of select="$ndungTBao/dinhDanh"/>
			<br/>
			- Mật khẩu: <xsl:value-of select="$ndungTBao/matKhau"/>
			<br/>
			
			Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn<br/>
			<br/>
			<i>Ghi chú: Thông báo được gửi tự động từ hệ thống khai thuế điện tử của Tổng cục Thuế.</i>
		</div>
		<div>
			<br/>
		</div>
		<table>
			<tr>
				<td style="border-top-style: solid; border-top-width: 1px; border-top-color: gray">
					<font color="gray">"Nộp hồ sơ khai thuế qua mạng là sự lựa chọn thông minh của bạn!"</font>
				</td>
			</tr>
		</table>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
