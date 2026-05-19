<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-01TK-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/TK-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Liên doanh Việt - Nga Vietsovpetro)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã số</b></td>
						<td class="align-c"><b>Đơn vị</b></td>
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
						<td>Sản lượng dầu khí xuất bán</td>
						<td class="align-c">[30]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c">1.1</td>
						<td><i>Sản lượng dầu khí xuất bán quy đổi </i></td>
						<td class="align-c"><i>[30a]</i></td>
						<td class="align-c">Tấn/BTU/GJ</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30a)"/></td>
					</tr>
						<tr>
						<td class="align-c">1.2</td>
						<td><i>Hệ số quy đổi</i></td>
						<td class="align-c"><i>[30b]</i></td>
						<td class="align-c">Thùng/tấn; m3/MMBTU; m3/GJ</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30b)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tỷ lệ dầu để lại theo kế hoạch </td>
						<td class="align-c">[31]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Sản lượng dầu lãi tạm tính</td>
						<td class="align-c">[32]</td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Giá tính thuế</td>
						<td class="align-c">[33]</td>
						<td class="align-c">USD/thùng; USD/m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Giá dầu thô cơ sở </td>
						<td class="align-c">[34]</td>
					    <td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Doanh thu</td>
						<td class="align-c">[35]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Số tiền thuế tài nguyên tạm tính phải nộp</td>
						<td class="align-c">[36]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Số tiền thuế đặc biệt tạm tính phải nộp </td>
						<td class="align-c">[37]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Số phụ thu tạm tính phải nộp [38]=[39] hoặc [40]</td>
						<td class="align-c">[38]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
						<tr>
						<td class="align-c">9.1</td>
						<td>Trường hợp {1,2x[34]} &lt;[33] ≤ {1,5x[34]}:[39] = 50%x{[33]–1,2x[34]}x[32]</td>
						<td class="align-c">[39]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">9.2</td>
						<td>Trường hợp [33] >{1,5x[34]}:[40]=[41] + [42]</td>
						<td class="align-c">[40]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c">a.</td>
						<td>Phụ thu theo mức 50% [41] = 50%x{1,5x[34]–1,2x[34]}x[32] </td>
						<td class="align-c">[41]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c">b.</td>
						<td>Phụ thu theo mức 60% [42] = 60%x{[33]–1,5x[34]}x[32] </td>
						<td class="align-c">[42]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">10</td>
						<td>Số thuế TNDN tạm tính phải nộp</td>
						<td class="align-c">[43]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c">[44]</td>
						<td class="align-c">VND/USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
					</tr>
					
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.   </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.  </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam.   </i></div>
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