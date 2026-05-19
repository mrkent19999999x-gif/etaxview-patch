<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="cQT" select='DKyThueDTu/DKyThue/TTinChung/CQT' />
		<xsl:variable name="tTinDKyThue" select='DKyThueDTu/DKyThue/TTinChung/TTinDKyThue' />
		<xsl:variable name="tTinDKyKhaiThueDTu" select='DKyThueDTu/DKyThue/NDungDKy/TTinDKyKhaiThueDTu' />
		<xsl:call-template name="hsoDkyHeader">
			<xsl:with-param name="mauTBao"   select="'01/ĐK-KĐT'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="ngayTBao"   select="$tTinDKyThue/ngayDKy" />
		</xsl:call-template>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$cQT/tenCQT" /></td>
					</tr>
					<tr>
						<td>Tên người nộp thuế :</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/tenNNT" /></td>
					</tr>
					<tr>
						<td>Mã số thuế :</td>
						<td><xsl:value-of select="$tTinDKyThue/tIN" /></td>
					</tr>
				</tbody>
			</table>
			<p>Qua xem xét và nhận thấy chúng tôi có đủ các điều kiện sử dụng hình thức khai thuế điện tử, chúng tôi đăng ký với cơ quan thuế được áp dụng hình thức khai thuế điện tử, cụ thể như sau:</p>
			<table>
				<tbody>
					<tr>
						<td>1. Số điện thoại :</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/dienThoai" /></td>
					</tr>
					<tr>
						<td>2. Địa chỉ thư điện tử:</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/eMail" /></td>
					</tr>
					<tr>
						<td>3. Số xê-ri chứng thư số:</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/seriCTS" /></td>
					</tr>
					<tr>
						<td>4. Chủ thể chứng thư số:</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/chuThueCTS" /></td>
					</tr>
					<tr>
						<td>5. Tên tổ chức cung cấp chứng thư số:</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/tenToChucCapCTS" /></td>
					</tr>
					<tr>
						<td>6. Tổ chức T-VAN:</td>
						<td><xsl:value-of select="$tTinDKyKhaiThueDTu/toChucTVAN" /></td>
					</tr>
				</tbody>
			</table>
			<p>Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên và thực hiện tính thuế, khai thuế và nộp thuế theo đúng quy định của pháp luật về quản lý thuế và pháp luật thuế có liên quan./.</p>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>
	</xsl:template>		
</xsl:stylesheet>