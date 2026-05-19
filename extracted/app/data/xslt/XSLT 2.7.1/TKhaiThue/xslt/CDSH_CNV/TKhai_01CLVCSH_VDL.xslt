<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform file:///C:/Users/DUNGBN/Desktop/111.xml">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 57/2022/TT-BTC ngày 16 tháng 9 năm 2022 của Bộ trưởng Bộ Tài chính'" />
		<xsl:call-template name="tkhaiHeader_01CLVCSH_VDL">
			<xsl:with-param name="mauTKhai" select="'01CLVCSH-VDL'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="''"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="content">
				<br/>
				<div class="align-r">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c">
							<b>STT</b>
						</td>
						<td class="align-c" colspan="4">
							<b>Chỉ tiêu</b>
						</td>
						<td class="align-c">
							<b>Mã chỉ tiêu</b>
						</td>
						<td class="align-c">
							<b>Số tiền</b>
						</td>
					</tr>
					<tr>
						<td class="align-c">(1)</td>
						<td class="align-c" colspan="4">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
					</tr>
					
				 <tr>
				<td class="align-c">1</td>
				<td class="align-l" colspan="4">Vốn chủ sở hữu</td>
				<td class="align-c"><b>[09]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct09)"/></td>
			    </tr>
				 <tr>
				<td class="align-c">2</td>
				<td class="align-l" colspan="4">Vốn điều lệ</td>
				<td class="align-c"><b>[10]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10)"/></td>
			    </tr>
			    	 <tr>
				<td class="align-c">3</td>
				<td class="align-l" colspan="4">Chênh lệch vốn chủ sở hữu lớn hơn vốn điều lệ tại doanh nghiệp phải nộp ngân sách nhà nước</td>
				<td class="align-c"><b>[11]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11)"/></td>
			    </tr>
				</table>
				<br/>
				<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01HT"/>
	<!--<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- “Trường hợp đề nghị hoàn thuế”: Ghi rõ đề nghị hoàn trả theo quy định tại điểm, khoản, Điều của văn bản quy phạm pháp luật có liên quan; </i></div>
	 <div>  <i>- “Ghi chú” tại mục bù trừ: Ghi rõ phải nộp theo văn bản của Kiểm toán nhà nước, Thanh tra tài chính, Thanh tra chính phủ, cơ quan có thẩm quyền khác (nếu có);</i></div>  	 
	</div>-->
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
