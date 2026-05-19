<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_01_DK_TDKTT">
			<xsl:with-param name="mauTKhai"   select="'01/ĐK-TĐKTT'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người nộp thuế:  <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,
						<xsl:value-of select="$ttkthue/NNT/phuongXa"/>,
						<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>, 
						<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nghề nghiệp/Lĩnh vực hoạt động/Ngành nghề kinh doanh chính: 
						<xsl:value-of select="$tkchinh/ten_NganhNghe"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hiện nay, cơ sở chúng tôi đang thực hiện khai thuế 
						<xsl:if test="$tkchinh/thue_GTGT= '1'"> Giá trị gia tăng, </xsl:if>
						<xsl:if test="$tkchinh/thue_GTGT= 'true'">Giá trị gia tăng, </xsl:if>
						<xsl:if test="$tkchinh/thue_TNCN= '1'"> Thu nhập cá nhân </xsl:if>
						<xsl:if test="$tkchinh/thue_TNCN= 'true'"> Thu nhập cá nhân </xsl:if>
						 theo kỳ tính thuế Tháng, đủ điều kiện khai thuế theo kỳ tính thuế Quý và lựa chọn khai thuế theo kỳ tính thuế Quý: 
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ sở chúng tôi đề nghị được <b>áp dụng kỳ tính thuế
						<xsl:if test="$tkchinh/thue_GTGT= '1'"> Giá trị gia tăng, </xsl:if>
						<xsl:if test="$tkchinh/thue_GTGT= 'true'">Giá trị gia tăng, </xsl:if>
						<xsl:if test="$tkchinh/thue_TNCN= '1'"> Thu nhập cá nhân </xsl:if>
						<xsl:if test="$tkchinh/thue_TNCN= 'true'"> Thu nhập cá nhân </xsl:if>
						 theo Quý kể từ kỳ tính thuế Quý I năm <xsl:value-of select="$tkchinh/nam"/></b>.
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ sở chúng tôi xin cam kết thực hiện tính thuế, khai thuế và nộp thuế theo đúng quy định của Luật Quản lý thuế, các văn bản quy phạm pháp luật thuế có liên quan (bao gồm cả các văn bản quy phạm pháp luật sửa đổi, bổ sung cũng như quy định chi tiết) hiện hành.
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu vi phạm luật thuế và các chế độ quy định, chúng tôi xin chịu xử lý theo pháp luật./.
					</td>
				</tr>
			</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_01_DK_TDKTT_TT80"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
