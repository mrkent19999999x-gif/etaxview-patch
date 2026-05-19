<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 179/2013/TT-BTC ngày 02/12/2013'" />
		<xsl:call-template name="tkhaiHeader_05_TT179">
			<xsl:with-param name="mauTKhai"   select="'05'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
	    
		<div style="width:90%;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>

		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 179/2013/TT-BTC ngày 02 tháng 12 năm 2013 của Bộ Tài chính hướng dẫn xóa nợ tiền thuế, 
		tiền phạt không có khả năng thu hồi phát sinh trước ngày 01 tháng 7 năm 2007, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		đề nghị <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> xóa nợ tiền thuế, tiền phạt không có khả năng thu hồi phát sinh trước ngày 01/7/2007 đến nay còn nợ. Cụ thể như sau:</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Đối tượng xóa nợ</div>
		<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> thuộc đối tượng xóa nợ 
		theo quy định tại Khoản 3 và Khoản 4 Điều 2 Thông tư số 179/2013/TT-BTC (nêu trên).</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Điều kiện xóa nợ</div>
		<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đủ điều kiện xóa nợ quy định tại 
		Khoản 3 và Khoản 4 Điều 3 Thông tư số 179/2013/TT-BTC gồm:</div>
		<div><xsl:for-each select="$tkchinh/DieuKienXoaNo/DieuKien">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- <xsl:value-of select="tenDieuKien"/></div>													 
			</xsl:for-each>
		</div>
		<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do: <xsl:value-of select="$tkchinh/ten_LyDoDeNghiXoaNo"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Số tiền thuế, tiền phạt đề nghị xóa nợ</div>
		<div style="padding-top: 4pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng số tiền thuế, tiền phạt <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		đề nghị xóa nợ là <xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_TienDeNghiXoaNo)"/> đồng.</div>


		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Tài liệu gửi kèm:</div>
		<div><xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="tenTaiLieu"/></div>													 
			</xsl:for-each>
		</div>
		
		
	<xsl:call-template name="tkhaiFooter_05_TT179"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
