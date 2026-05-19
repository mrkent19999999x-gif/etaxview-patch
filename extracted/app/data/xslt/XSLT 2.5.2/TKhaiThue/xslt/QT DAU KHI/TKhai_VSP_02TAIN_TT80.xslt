<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-02TAIN-VSP_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã số</b></td>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Giá trị</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên trong kỳ tính thuế[26]=[26a]+[26b]</td>
						<td class="align-c">[26]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT26/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT26/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">1.1</td>
						<td><i>Sản lượng xuất khẩu</i></td>
						<td class="align-c"><i>[26a]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT26a/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT26a/giaTri)"/></td>
					</tr>
						<tr>
						<td class="align-c">1.2</td>
						<td><i>Sản lượng xuất bán tại Việt Nam</i></td>
						<td class="align-c"><i>[26b]</i></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT26b/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT26b/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu xuất bán trong kỳ tính thuế</td>
						<td class="align-c">[27]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Giá tính thuế tài nguyên trong kỳ tính thuế [28]=[27]/[26]</td>
						<td class="align-c">[28]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT28/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT28/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế tài nguyên bằng dầu khí phải nộp trong kỳ tính thuế </td>
						<td class="align-c">[29]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT29/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [30]=[28]x[29]</td>
						<td class="align-c">[30]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Số tiền thuế tài nguyên tạm tính đã kê khai trong kỳ tính thuế</td>
						<td class="align-c">[31]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Chênh lệch giữa số tiền thuế phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [32]=[30]-[31]</td>
						<td class="align-c">[32]</td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c">[33]</td>
						<td class="align-c">VND/USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.</i></div>
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