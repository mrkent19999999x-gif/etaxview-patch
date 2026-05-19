<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định số 373/2025/NĐ-CP 
ngày 31 tháng 12 năm 2025 của Chính phủ'" />
 <xsl:call-template name="tkhaiHeader-01TK-DK">
		<xsl:with-param name="mauTKhai"   select="'01/TK-DK'"/>
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
						<td class="align-c">[30]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT30/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td><i>Sản lượng dầu thô, khí thiên nhiên xuất bán quy đổi</i></td>
						<td class="align-c"><i>[30a]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT30a/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30a/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td><i>Hệ số quy đổi</i></td>
						<td class="align-c"><i>[30b]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT30b/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30b/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tỷ lệ dầu để lại theo kế hoạch</td>
						<td class="align-c">[31]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT31)"/></td>					   
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Sản lượng dầu lãi tạm tính </td>
						<td class="align-c">[32]</td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT32)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td><i>Giá tính thuế/ giá bán </i></td>
						<td class="align-c"><i>[33]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT33/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT33/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td><i>Giá dầu thô cơ sở </i></td>
						<td class="align-c"><i>[34]</i></td>
						<td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td><i>Doanh thu </i></td>
						<td class="align-c"><i>[35]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Tỷ lệ thuế tài nguyên tạm tính </td>
						<td class="align-c">[36]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Số tiền thuế tài nguyên tạm tính phải nộp [37]=[35]x[36] </td>
						<td class="align-c">[37]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Số tiền thuế đặc biệt tạm tính phải nộp </td>
						<td class="align-c">[38]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c">10</td>
						<td>Tỷ lệ thuế TNDN tạm tính </td>
						<td class="align-c">[39]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td>Thu nhập khác liên quan trực tiếp đến hoạt động dầu khí </td>
						<td class="align-c">[40]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c">12</td>
						<td>Thuế suất thuế TNDN hoạt động dầu khí </td>
						<td class="align-c">[41]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c">13</td>
						<td>Số thuế TNDN tạm tính phải nộp [42]=[39]x[35]+[40]x[41] </td>
						<td class="align-c">[42]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">14</td>
						<td>Số thuế TNDN được miễn hoặc giảm (nếu có) </td>
						<td class="align-c">[43]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>
					<tr>
						<td class="align-c">15</td>
						<td>Số thuế TNDN tạm tính phải nộp sau khi miễn hoặc giảm (nếu có) [44]= [42]-[43] </td>
						<td class="align-c">[44]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
					</tr>
					<tr>
						<td class="align-c">16</td>
						<td>Số phụ thu tạm tính phải nộp [45]=[46] hoặc [47] </td>
						<td class="align-c">[45]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)"/></td>
					</tr>
					<tr>
						<td class="align-c">16.1</td>
						<td>Trường hợp {1,2x[34]} &lt; [33] &lt;= {1,5x[34]}:[46] = 50%x{[33]-1,2x[34]}x[32]</td>
						<td class="align-c">[46]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)"/></td>
					</tr>
					<tr>
						<td class="align-c">16.2</td>
						<td>Trường hợp [33] >{1,5x[34]}:[47]=[48] + [49]</td>
						<td class="align-c">[47]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)"/></td>
					</tr>
					<tr>
						<td class="align-c">a</td>
						<td>Phụ thu theo mức 50% [48] = 50%x{1,5x[34]–1,2x[34]}x[32]</td>
						<td class="align-c">[48]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)"/></td>
					</tr>
					<tr>
						<td class="align-c">b</td>
						<td>Phụ thu theo mức 60% [49] = 60%x{[33]–1,5x[34]}x[32]</td>
						<td class="align-c">[49]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct49)"/></td>
					</tr>
					<tr>
						<td class="align-c">17</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c">[50]</td>
						<td class="align-c">VND/USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct50)"/></td>
					</tr>					
				</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung, Liên doanh Việt - Nga Vietsovpetro. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.  </i></div>
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