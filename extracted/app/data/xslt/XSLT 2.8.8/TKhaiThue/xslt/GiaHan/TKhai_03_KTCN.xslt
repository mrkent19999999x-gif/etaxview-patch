<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
			<xsl:call-template name="tkhaiHeader_03_KTCN">
				<xsl:with-param name="mauTKhai"   select="'03/KTCN'"/>
				<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			</xsl:call-template>
	    
		<div style="width:90%;padding-top: 6pt;text-align:center">
		<b>THÔNG BÁO<br/>Về việc nộp tiền thuế nợ vào NSNN</b>
		<br/>────────────<br/></div>
		<br/>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế;</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Điều 22 Thông tư số 80/2021/TT-BTC ngày 29 tháng 09 năm 2021 của Bộ trưởng Bộ Tài chính;</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/>, mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>, 
		địa chỉ nhận thông báo: <xsl:value-of select="$tkchinh/dia_ChiNhanTB"/> thông báo đến <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> như sau:</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		đã được đơn vị sử dụng vốn NSNN là <xsl:value-of select="$tkchinh/ten_DonViSuDungVonNSNN"/> thanh toán vào ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_DonViThanhToan,'dd')"/> 
		tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_DonViThanhToan,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_DonViThanhToan,'yyyy')"/>, 
		số tiền thanh toán là <xsl:value-of select="ihtkk:formatNumber($tkchinh/so_TienDonViThanhToan)"/> đồng.</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		đã nộp tiền thuế vào NSNN ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_NopTienNSNN,'dd')"/> 
		tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_NopTienNSNN,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_NopTienNSNN,'yyyy')"/>, 
		số tiền là <xsl:value-of select="ihtkk:formatNumber($tkchinh/so_TienNopNSNN)"/> đồng.</div>
	
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		thông báo để <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> biết./.</div>

	
	<xsl:call-template name="tkhaiFooter_03_KTCN"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
