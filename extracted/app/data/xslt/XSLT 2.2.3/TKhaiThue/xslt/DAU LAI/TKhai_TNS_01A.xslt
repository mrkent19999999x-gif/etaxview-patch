<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Căn cứ Thông tư số 56/TT-BTC ngày 23/6/2008 của BTC'" />
		 <xsl:call-template name="tkhaiHeader-DauLai">
		<xsl:with-param name="mauTKhai"   select="'01A/TNS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Xí nghiệp Liên doanh Dầu khí Vietsovpetro)'"/>
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
						<td class="align-c">[31]</td>
						<td>Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Giá bán</td>
						<td class="align-c">[32]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Doanh thu thực hiện</td>
						<td class="align-c">[33]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế Tài nguyên</td>
						<td class="align-c">[34]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Thuế Xuất nhập khẩu và các loại thuế khác ( nếu có)</td>
						<td class="align-c">[35]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Chi phí để lại VSP</td>
						<td class="align-c">[36]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Lợi nhuận trước thuế </td>
						<td class="align-c">[37]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ lệ thuế TNDN tạm nộp</td>
						<td class="align-c">[38]</td>
						<td>%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Thuế TNDN tạm nộp </td>
						<td class="align-c">[39]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td>Lợi nhuận sau thuế </td>
						<td class="align-c">[40]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c">12</td>
						<td>Lợi nhuận sau thuế của phía Việt Nam  được chia </td>
						<td class="align-c">[41]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td colspan="4">Trong đó</td>

					</tr>
					<tr>
						<td class="align-c">13</td>
						<td><i>Nộp trực tiếp vào NSNN</i> </td>
						<td class="align-c"><i>[41a]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41a)"/></i></td>
					</tr>
					<tr>
						<td class="align-c">14</td>
						<td><i>Nộp tập trung về công ty mẹ (Tập đoàn DKVN)</i></td>
						<td class="align-c"><i>[41b]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41b)"/></i></td>
					</tr>
					<tr>
						<td class="align-c">15</td>
						<td>Các khoản thu khác (Khoản thu về hoa hồng dầu khí các loại, thu về đọc và sử dụng tài liệu dầu khí)</td>
						<td class="align-c">[42]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">16</td>
						<td><i>Trong đó: - Khoản thu về hoa hồng dầu khí các loại</i></td>
						<td class="align-c"><i>[42a]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42a)"/></i></td>
					</tr>
                    <tr>
						<td class="align-c">17</td>
						<td><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Khoản thu về đọc và sử dụng tài liệu dầu khí</i></td>
						<td class="align-c"><i>[42b]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42b)"/></i></td>
					</tr>
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu[04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên.      </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp một NNT khai thác đồng thời dầu thô,       condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - TNDN: thu nhập doanh nghiệp; USD: Đô la Mỹ; VND: Đồng Việt Nam.     </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Số thuế TNDN dự kiến được miễn, giảm, người nộp thuế tự xác định theo các điều kiện ưu đãi được hưởng.</i></div>
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

