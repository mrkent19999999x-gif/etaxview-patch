<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="cQT" select='DKyThueDTu/DKyThue/TTinChung/CQT' />
		<xsl:variable name="tTinDKyThue" select='DKyThueDTu/DKyThue/TTinChung/TTinDKyThue' />
		<xsl:variable name="nDungDKy" select='DKyThueDTu/DKyThue/NDungDKy' />
		<xsl:call-template name="hsoHeaderTVan_Ngay">
			<xsl:with-param name="mauTBao"   select="'02-ĐK/T-VAN-ĐLT'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="ngayTBao"   select="$tTinDKyThue/ngayDKy" />
		</xsl:call-template>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
						<td>Kính gửi:</td>
						<td><xsl:value-of select="$cQT/tenCQT"/></td>
					</tr>
					<tr>
						<td>Tên người nộp thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tenNNT"/></td>
					</tr>
					<tr>
						<td>Mã số thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tIN"/></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Căn cứ Tờ khai đăng ký sử dụng dịch vụ T-VAN ngày 22/9/2011,chúng tôi đề nghị được thay đổi, bổ sung thông tin đã đăng ký cụ thể như sau:
			<table >
				<tbody>
					<tr>
						<td>- Số chứng thư số :</td>
						<td><xsl:value-of select="$nDungDKy/serial"/></td>
					</tr>
					<tr>
						<td>- Tên tổ chức chứng thực chữ ký số công cộng:</td>
						<td><xsl:value-of select="$nDungDKy/issuer"/></td>
					</tr>
					<tr>
						<td>- Thời hạn sử dụng chứng thư số: từ ngày</td>
						<td><xsl:value-of select="$nDungDKy/fromDateCA"/></td>
					</tr>
					<tr>
						<td>- Địa chỉ thư điện tử:</td>
						<td><xsl:value-of select="$nDungDKy/email"/></td>
					</tr>
				</tbody>
			</table>
			Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên./.
			<br/>
			<hr/>
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