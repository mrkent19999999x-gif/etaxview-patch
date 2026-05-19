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
		 <xsl:call-template name="tkhaiHeader-03TNS">
		<xsl:with-param name="mauTKhai"   select="'03A/TNS'"/>
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
						<td class="align-c"><b>Năm trước chuyển sang</b></td>
						<td class="align-c"><b>Phát sinh năm nay</b></td>
						<td class="align-c"><b>Số đã nộp năm nay</b></td>
						<td class="align-c"><b>Số còn phải nộp</b></td>
					</tr>
					<tr>
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>
						<td class="align-c">(6)</td>
						<td class="align-c">(7)</td>
						<td class="align-c">(8)</td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Sản lượng dầu khí xuất bán trong năm</td>
						<td class="align-c">[27]</td>
						<td>Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct31)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct31)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct31)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Giá bán</td>
						<td class="align-c">[28]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct32)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct32)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct32)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Doanh thu thực hiện </td>
						<td class="align-c">[29]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct33)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct33)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct33)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế Tài nguyên</td>
						<td class="align-c">[30]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct34)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct34)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct34)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Thuế Xuất nhập khẩu và các loại thuế khác (nếu có)</td>
						<td class="align-c">[31]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct35)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct35)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct35)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Chi phí để lại VSP</td>
						<td class="align-c">[32]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct36)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct36)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct36)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Lợi nhuận trước thuế </td>
						<td class="align-c">[33]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct37)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct37)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct37)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ lệ thuế TNDN tạm nộp</td>
						<td class="align-c">[34]</td>
						<td>%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct38)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct38)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct38)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c">9</td>
						<td>Thuế TNDN tạm nộp </td>
						<td class="align-c">[35]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct39)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct39)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct39)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">10</td>
						<td>Lợi nhuận sau thuế </td>
						<td class="align-c">[36]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct40)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct40)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct40)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c">11</td>
						<td>Lợi nhuận khác sau thuế (nếu có)</td>
						<td class="align-c">[37]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct41)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct41)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct41)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c">12</td>
						<td>Tổng lợi nhuận sau thuế </td>
						<td class="align-c">[38]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct42)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct42)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct42)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">13</td>
						<td>Lợi nhuận sau thuế của phía Việt Nam được chia</td>
						<td class="align-c">[39]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct43)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct43)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct43)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct43)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>Trong đó:</td>
						<td class="align-c"></td>
						<td></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"><i>14</i></td>
						<td><i>Nộp trực tiếp vào NSNN</i></td>
						<td class="align-c"><i>[39a]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct43a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct43a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct43a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct43a)"/></i></td>
					</tr>
					<tr>
						<td class="align-c"><i>15</i></td>
						<td><i>Nộp tập trung về công ty mẹ (Tập đoàn DKVN )</i></td>
						<td class="align-c"><i>[39b]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct43b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct43b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct43b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct43b)"/></i></td>
					</tr>
					<tr>
						<td class="align-c">16</td>
						<td>Các khoản thu khác (Khoản thu về hoa hồng dầu khí các loại, thu về đọc và sử dụng tài liệu dầu khí)</td>
						<td class="align-c">[40]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct44)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct44)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct44)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct44)"/></td>
					</tr>
					<tr>
						<td class="align-c"><i>17</i></td>
						<td><i>Trong đó: - Khoản thu về hoa hồng dầu khí các loại.</i></td>
						<td class="align-c"><i>[40a]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct44a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct44a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct44a)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct44a)"/></i></td>
					</tr>
					<tr>
						<td class="align-c"><i>18</i></td>
						<td><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Khoản thu về đọc và sử dụng tài liệu dầu khí</i></td>
						<td class="align-c"><i>[40b]</i></td>
						<td><i>USD</i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/NamTruocChuyenSang/ct44b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhatSinhNamNay/ct44b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDaNopNamNay/ct44b)"/></i></td>
						<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoConPhaiNop/ct44b)"/></i></td>
					</tr>
				
				</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
								<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu[04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên.      </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp một NNT khai thác đồng thời dầu thô,       condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - TNDN: thu nhập doanh nghiệp; USD: Đô la Mỹ; VND: Đồng Việt Nam.     </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Số thuế TNDN dự kiến được miễn, giảm, người nộp thuế tự xác định theo các điều kiện ưu đãi được hưởng. Nếu trong cùng một lô xuất khẩu hoặc trong kỳ xuất bán cả dầu, khí, condensate thì kê khai riêng số liệu của các chỉ tiêu. Chỉ tiêu “Lô” đối với khí ghi theo tháng .</i></div>
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

