<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-01TNDN-DK">
		<xsl:with-param name="mauTKhai"   select="'01/TNDN-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã chỉ tiêu</b></td>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Giá trị</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Sản lượng dầu khí xuất bán</td>
						<td class="align-c">[29]</td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/CT29/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td><i>Sản lượng dầu thô, khí thiên nhiên xuất bán quy đổi</i></td>
						<td class="align-c"><i>[29a]</i></td>
					    <td class="align-c"><xsl:value-of select="($tkchinh/CT29a/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29a/giaTri)"/></td>
					</tr>
						<tr>
						<td class="align-c"></td>
						<td><i>Hệ số quy đổi</i></td>
						<td class="align-c"><i>[29b]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT29b/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29b/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Giá bán</td>
						<td class="align-c">[30]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT30/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Doanh thu </td>
						<td class="align-c">[31]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tỷ lệ thuế TNDN tạm tính </td>
						<td class="align-c">[32]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Thu nhập khác liên quan trực tiếp đến hoạt động dầu khí</td>
						<td class="align-c">[33]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Thuế suất thuế TNDN hoạt động dầu khí</td>
						<td class="align-c">[34]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Số thuế TNDN tạm tính phải nộp [35]=[31]x[32]+[33]x[34]</td>
						<td class="align-c">[35]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Số thuế TNDN được miễn hoặc giảm (nếu có)</td>
						<td class="align-c">[36]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Số thuế TNDN tạm tính phải nộp sau khi miễn hoặc giảm (nếu có) [37]= [35]-[36]</td>
						<td class="align-c">[37]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c">[38]</td>
						<td class="align-c">VND/USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên.  </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.  </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.  </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam. </i></div>
				<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

				</div>

		</div>
	</xsl:template>		
</xsl:stylesheet>