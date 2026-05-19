<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TKhaiHeader.xsl"/>
<xsl:include href="../include/TKhaiFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'05-1/BK-TNCN'"/>
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
			<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'ii')"/> giây
			, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayXacNhan,'yyyy')"/>, Cơ quan Thuế đã nhận được hồ sơ khai thuế của đơn vị, gồm có:<br/><br/>
			<table cellpadding="0" cellspacing="0">
				<tbody>
					<tr bgcolor="#f0f0f0" style="font-weight: bold;">
						<th align="center">STT</th>
						<th align="center">Tờ khai/Phụ lục</th>
						<th align="center">Loại tờ khai</th>
						<th align="center">Kỳ tính thuế</th>
						<th align="center">Lần nộp</th>
						<th align="center">Nơi nộp</th>
					</tr>
					<xsl:for-each select="$ndungTBao/DSachHSoNop/NDungDSach">
					<tr>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/id"/></td>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/tokhai-phuluc"/></td>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/loaiToKhai"/></td>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/kyTinhThue"/></td>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/lanNop"/></td>
						<td><xsl:value-of select="$ndungTBao/DSachHSoNop/NDungDSach/noiNop"/></td>
					</tr>
					</xsl:for-each>
				</tbody>
			</table>
			<br/>
			Để tra cứu thông tin đã kê khai, xin vui lòng truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn<br/><br/>
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