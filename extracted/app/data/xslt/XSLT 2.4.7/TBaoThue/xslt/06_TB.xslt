<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/tbaoheader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tbaoHeader_06_TT19">
			<xsl:with-param name="mauTBao" select="'06/TB-TĐT'"/>
			<xsl:with-param name="soTBao" select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao" />
			<xsl:with-param name="moTaBieuMau"  select="$moTaBieuMau"/>
		</xsl:call-template>
		
		<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Tổng cục Thuế thông báo để <xsl:value-of select="$ndungTBao/tenNHTM" /> (MST: <xsl:value-of select="$ndungTBao/mst" />) được biết: Tính đến ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tbThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tbThue/ngayTBao,'yyyy')"/>, Tổng cục thuế chưa nhận được Danh sách số hiệu tài khoản thanh toán của người nộp thuế Định kỳ, <xsl:value-of select="$ndungTBao/kyGui"/></div>
				<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Đề nghị <xsl:value-of select="$ndungTBao/tenNHTM" /> thực hiện cung cấp Danh sách tài khoản thanh toán của người nộp thuế Định kỳ, <xsl:value-of select="$ndungTBao/kyGui"/> đến Tổng cục Thuế theo hướng dẫn tại công văn số 1912 ngày 02/06/2021 và theo các quy định của Luật Quản lý thuế và các văn bản hướng dẫn thi hành Luật Quản lý thuế.</div>
				<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Trường hợp ngân hàng không thực hiện cung cấp thông tin số hiệu tài khoản thanh toán của người nộp thuế, thì cơ quan thuế sẽ thực hiện xử phạt vi phạm hành chính về thuế đối với tổ chức, cá nhân liên quan theo quy định tại Nghị định số 125/2020/NĐ-CP ngày 19/10/2020 của Chính phủ quy định xử phạt vi phạm hành chính về thuế, hóa đơn.</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Tổng cục Thuế thông báo để <xsl:value-of select="$ndungTBao/tenNHTM" /> biết, thực hiện./. </div><br/>
				
	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>