<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_koMauSo">
			<xsl:with-param name="mauTBao"   select="''"/>
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
						<td>Mã số thuế:<xsl:value-of select="$NNhanTBaoThue/maNNhan" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayThayDoi,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayThayDoi,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayThayDoi,'yyyy')"/>,  Cơ quan Thuế đã thay đổi thông tin tài khoản của người nộp thuế như sau:<br/>
			 Điện thoại:<b> <xsl:value-of select="$ndungTBao/dienThoai"/></b><br/>
	         Địa chỉ thư điện tử:<b> <xsl:value-of select="$ndungTBao/email"/></b><br/>			
			 Số chứng thư số: <b> <xsl:value-of select="$ndungTBao/serial"/></b><br/>
			 Tên nhà cung cấp:  <b><xsl:value-of select="$ndungTBao/issuer"/></b><br/>
			 Danh sách tờ khai đăng ký nộp qua mạng:<br/><br/>
		<table border="1" cellpadding="2" cellspacing="2" style="border-collapse:collapse">
			
				<tr>
					<td align="center"><b>STT</b></td>
					<td align="center"><b>Tờ khai</b></td>
					<td align="center"><b>Loại kỳ kê khai</b></td>
					<td align="center"><b>Kỳ bắt đầu</b></td>
					<td align="center"><b>Kỳ kết thúc</b></td>
			
				</tr>
				 <xsl:for-each select="$ndungTBao/DSachTKhaiDKy/SacThue">
					 <tr><td colspan="5"><b><xsl:value-of select="tenSacThue"/> </b></td></tr>
				      <xsl:for-each select="DangKyToKhai/ToKhai">
				           <tr>
							  <td align="center"><xsl:number level="any"/></td>
							  <td><xsl:value-of select="tenToKhai" /></td>
							  <td><xsl:value-of select="loaiKyKeKhai" /></td>
							  <td><xsl:value-of select="kyBatDau" /></td>
							  <td><xsl:value-of select="kyKetThuc" /></td>
							  </tr>
				        </xsl:for-each>	
				  </xsl:for-each>	
				
		</table><br/>
			<p>Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</p>
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