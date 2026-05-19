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
			<xsl:with-param name="mauTBao"   select="'03/ĐK-T-VAN-ĐLT'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="ngayTBao"   select="$tTinDKyThue/ngayDKy" />
			<xsl:with-param name="noiTBao"   select="$nDungDKy/diaDiemTB" />
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
			Chúng tôi đăng ký với cơ quan thuế được ngừng sử dụng dịch vụ T-VAN để thực hiện thủ tục:
			<br/>
			+ Đăng ký thuế điện tử 
			<!--<xsl:value-of select="$nDungDKy/dkyTDT"/> -->
			<xsl:if test="$nDungDKy/dkyTDT='true'">  <!-- checked -->
			   <input name="box1" type="checkbox" align="center" checked="Y" value="Y"/>
		   </xsl:if>
		   <xsl:if test="not($nDungDKy/dkyTDT='true')">  <!-- not checked -->
			   <input name="box1" type="checkbox" align="center" value="Y"/>
		   </xsl:if>
		   <br/>
			+ Kê khai thuế điện tử 
			<!--<xsl:value-of select="$nDungDKy/kkTDT"/> -->
			<xsl:if test="$nDungDKy/kkTDT='true'">  <!-- checked -->
			   <input name="box1" type="checkbox" align="center" checked="Y" value="Y"/>
		   </xsl:if>
		   <xsl:if test="not($nDungDKy/kkTDT='true')">  <!-- not checked -->
			   <input name="box1" type="checkbox" align="center" value="Y"/>
		   </xsl:if>
			<br/>
			Cụ thể như sau:<br/>
			- Thời điểm ngừng: từ ngày <xsl:value-of select="$nDungDKy/ngayNgung"/><br/>
			- Lý do ngừng : <xsl:value-of select="$nDungDKy/lyDoNgung"/><br/>
			Chúng tôi cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên./.<br/>
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