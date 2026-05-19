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
			<xsl:with-param name="mauTBao"   select="'08/TB-KĐT'"/>
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
			<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'yyyy')"/>,  Cơ quan Thuế xác nhận đơn vị đã đăng ký ngừng sử dụng dịch vụ khai thuế điện tử.<br/>
			Bắt đầu kể từ thời điểm chấm dứt dịch vụ khai thuế điện tử, đơn vị phải thực hiện nộp hồ sơ khai thuế bằng giấy qua bưu chính hoặc nộp trực tiếp tại cơ quan thuế. Trường hợp do chấm dứt hoạt động, đơn vị phải thực hiện các thủ tục chấm dứt mã số thuế theo quy định.<br/>
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