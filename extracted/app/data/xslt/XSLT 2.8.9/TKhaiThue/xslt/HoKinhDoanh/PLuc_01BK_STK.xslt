<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_STK' />
		<xsl:call-template name="tkhaiHeader_pluc_01BK_STK">
		<xsl:with-param name="mauTKhai"   select="'01/BK-STK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
	  
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[01] Người nộp thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
		</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[02] </b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
		</div>

		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thông báo về số tài khoản ngân hàng/số hiệu ví điện tử liên quan đến sản xuất, kinh doanh của hộ kinh doanh, cá nhân kinh doanh như sau:</div>
		
		<div style="padding-top: 10pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Tên địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Mã địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Số tài khoản ngân hàng/Số hiệu ví điện tử</b></td>
				<td class="align-c"><b>Tên chủ tài khoản</b></td>
				<td class="align-c"><b>Mở tại tổ chức cung ứng dịch vụ thanh toán/Tổ chức cung ứng dịch vụ trung gian thanh toán</b></td>
				<td class="align-c"><b>Trạng thái tài khoản (đóng/khai lần đầu/thay đổi thông tin)</b></td>
				
			</tr>
			<tr>
				<td class="align-c"><b>[03]</b></td>
				<td class="align-c"><b>[04]</b></td>
				<td class="align-c"><b>[05]</b></td>
				<td class="align-c"><b>[06]</b></td>
				<td class="align-c"><b>[07]</b></td>
				<td class="align-c"><b>[08]</b></td>
				<td class="align-c"><b>[09]</b></td>
			</tr>
			<xsl:for-each select="$pl01/CTietSTK">
			<xsl:variable name="currentRows" select='position()' />
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows"/></td>
				<td class="align-l"><xsl:value-of select="ct04_ten"/></td>
				<td class="align-c"><xsl:value-of select="ct05_ma"/></td>
				<td class="align-c"><xsl:value-of select="ct06"/></td>
				<td class="align-l"><xsl:value-of select="ct07"/></td>
				<td class="align-l"><xsl:value-of select="ct08_ten"/></td>
				<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</div>
		<br/>
		<xsl:call-template name="tkhaiFooter_01_BK_STK"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>