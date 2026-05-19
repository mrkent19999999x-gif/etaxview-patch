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
			<xsl:with-param name="mauTBao"   select="'01-ĐK/TVAN-ĐLT'"/>
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
						<td>Tên đại lý thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tenNNT"/></td>
					</tr>
					<tr>
						<td>Mã số thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tIN"/></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Qua xem xét và nhận thấy chúng tôi có đủ các điều kiện sử dụng dịch vụ T-VAN, chúng tôi đăng ký với cơ quan thuế được sử dụng dịch vụ T-VAN, cụ thể như sau:
			<p><b>1. Thông tin về Người nộp thuế:</b></p>
			<table>
				<tbody>
					<tr>
						<td>- Số chứng thư số:</td>
						<td><xsl:value-of select="$nDungDKy/serial"/></td>
					</tr>
					<tr>
						<td>- Tên tổ chức chứng thực chữ ký số công cộng:</td>
						<td><xsl:value-of select="$nDungDKy/issuer"/></td>
					</tr>
					<tr>
						<td>- Thời hạn sử dụng chứng thư số:</td>
						<td>từ ngày: <xsl:value-of select="$nDungDKy/fromDateCA"/> đến ngày <xsl:value-of select="$nDungDKy/toDateCA"/></td>
					</tr>
					<tr>
						<td>- Địa chỉ thư điện tử:</td>
						<td><xsl:value-of select="$nDungDKy/email"/></td>
					</tr>
					<tr>
						<td>- Điện thoại:</td>
						<td><xsl:value-of select="$nDungDKy/tel"/></td>
					</tr>
					<tr>
						<td colspan="2">- Sử dụng dịch vụ T-VAN để thực hiện thủ tục:</td>
					</tr>
					<tr>
						<td>+ Đăng ký thuế điện tử</td>
						<td>
							<xsl:if test="$nDungDKy/dkyTDT='true'">  <!-- checked -->
							   <input name="box1" type="checkbox" align="center" checked="Y" value="Y"/>
						   </xsl:if>
						   <xsl:if test="not($nDungDKy/dkyTDT='true')">  <!-- not checked -->
							   <input name="box1" type="checkbox" align="center" value="Y"/>
						   </xsl:if>
						</td>
					</tr>
					<tr>
						<td>+ Kê khai thuế điện tử</td>
						<td>
							<xsl:if test="$nDungDKy/kkTDT='true'">  <!-- checked -->
							   <input name="box2" type="checkbox" align="center" checked="Y" value="Y"/>
						   </xsl:if>
						   <xsl:if test="not($nDungDKy/kkTDT='true')">  <!-- not checked -->
							   <input name="box2" type="checkbox" align="center" value="Y"/>
						   </xsl:if>
						</td>
					</tr>
				</tbody>
			</table>
			<p><b>2. Thông tin về tổ chức cung cấp dịch vụ T-VAN:</b></p>
			<table>
				<tbody>
					<tr>
						<td>- Tên tổ chức :</td>
						<td><xsl:value-of select="$nDungDKy/tenToChuc"/></td>
					</tr>
					<tr>
						<td>- Số Giấy công nhận tổ chức cung cấp dịch vụ T-VAN :</td>
						<td><xsl:value-of select="$nDungDKy/soGiayCNhan"/></td>
					</tr>
				</tbody>
			</table>
			<p>Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên và thực hiện tính thuế, khai thuế và nộp thuế theo đúng quy định của pháp luật về quản lý thuế và pháp luật thuế có liên quan./.</p>
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