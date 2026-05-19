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
			<table >
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$NNhanTBaoThue/tenNNhan" /></td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, Cơ quan Thuế đã nhận được hồ sơ khai thuế của đơn vị, gồm có:<br/><br/>
			<table class="tkhai_table">
					<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c"><b>Loại tờ khai</b></td>
					<td class="align-c"><b>Kỳ tính thuế</b></td>
					<td class="align-c"><b>Lần nộp</b></td>
					<td class="align-c"><b>Nơi nộp</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
					<td class="align-c">(5)</td>
					<td class="align-c">(6)</td>
				</tr>
				
				 <xsl:for-each select="$ndungTBao/HoSoThue/CTietHoSoThue">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tokhai-phuluc"/></td>
							  <td class="align-c"><xsl:value-of select="loaiToKhai"/></td>
							  <td class="align-c"><xsl:value-of select="kyTinhThue"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
							   <td class="align-l"><xsl:value-of select="tenNoiNop"/></td>
							</tr>
					</xsl:for-each>
				
			</table> <br/>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
			<div>Để tra cứu thông tin đã kê khai, xin vui lòng truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</div><br/><br/>
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