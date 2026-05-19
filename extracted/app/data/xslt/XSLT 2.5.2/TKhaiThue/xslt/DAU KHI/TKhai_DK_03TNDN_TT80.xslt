<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'"/>
		<xsl:variable name="ghiChuPL" select="' '"/>
		<xsl:call-template name="tkhaiHeader-DK_03TNDN">
			<xsl:with-param name="mauTKhai" select="'03/TNDN-DK'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="'(Áp dụng đối với thu nhập từ chuyển nhượng quyền lợi tham gia Hợp đồng dầu khí của tổ chức tiến hành hoạt động dầu khí theo quy định của Luật Dầu khí)'"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="content">
				<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>						   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Giá chuyển nhượng</td>
							<td class="align-c">[27]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonViTinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá mua của phần quyền lợi chuyển nhượng</td>
							<td class="align-c">[28]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonViTinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Chi phí chuyển nhượng</td>
							<td class="align-c">[29]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonViTinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Thu nhập từ hoạt động chuyển nhượng quyền lợi [30]=[27]-[28]-[29]</td>
							<td class="align-c">[30]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonViTinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Thuế suất</td>
							<td class="align-c">[31]</td>
							<td class="align-c">%</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Số thuế thu nhập doanh nghiệp phải nộp [32]=[30]x[31]</td>
							<td class="align-c">[32]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonViTinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
   						  </tr>					
   					</table>
			</div>
		</div>
		<table style="page-break-inside: avoid;" width="100%">
			<tr>
				<td>
					<xsl:call-template name="tkhaiFooter"/>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
