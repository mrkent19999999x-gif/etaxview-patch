<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 36/2016/TT-BTC  ngày 26/02/2016 của  Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-DK_02TAIN">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-DK'"/>
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
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>

					</tr>
					<tr>
						<td class="align-c"><b>I</b></td>
						<td><b>Số ngày khai thác dầu khí trong kỳ tính thuế</b></td>
						<td class="align-c">[25]</td>
						<td class="align-c">Ngày</td>
			            <td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>II</b></td>
						<td><b>Sản lượng:</b></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"><b></b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên kỳ tính thuế trước chuyển sang</td>
						<td class="align-c">[26]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên trong kỳ tính thuế</td>
						<td class="align-c">[27]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên thực tế  bán trong kỳ tính thuế [28]=[28a]+[28b]</td>
						<td class="align-c">[28]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
					</tr>
					<tr>
						<td class="align-c">3.1</td>
						<td> - Xuất khẩu</td>
						<td class="align-c">[28a]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28a)"/></td>
					</tr>
					<tr>
						<td class="align-c">3.2</td>
						<td> - Tiêu thụ nội địa</td>
						<td class="align-c">[28b]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28b)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên chuyển sang kỳ tính thuế sau [29]=[26]+[27]-[28]</td>
						<td class="align-c">[29]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên bình quân/ngày trong kỳ tính thuế [30]=[27]/[25]</td>
						<td class="align-c">[30]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>III</b></td>
						<td><b>Tổng doanh thu xuất bán trong kỳ tính thuế</b></td>
						<td class="align-c">[31]</td>
						<td class="align-c">USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IV</b></td>
						<td><b>Tỷ lệ thuế tài nguyên bằng dầu khí trong kỳ tính thuế</b></td>
						<td class="align-c">[32]</td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>V</b></td>
						<td><b>Thuế tài nguyên tính bằng dầu khí</b></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Thuế tài nguyên bằng dầu khí chưa bán kỳ tính thuế trước chuyển sang</td>
						<td class="align-c">[33]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Thuế tài nguyên bằng dầu khí phải nộp trong kỳ tính thuế [34]=[27]x[32]</td>
						<td class="align-c">[34]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Thuế tài nguyên bằng dầu khí bán trong kỳ tính thuế [35]= [33]+([28]-[26])*[32]</td>
						<td class="align-c">[35]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế tài nguyên bằng dầu khí chưa bán chuyển sang kỳ tính thuế sau [36]=[33]+[34]-[35]</td>
						<td class="align-c">[36]</td>
						<td class="align-c">Thùng; m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>VI</b></td>
						<td><b>Giá tính thuế tài nguyên trong kỳ tính thuế [37]=[31]/[28]</b></td>
						<td class="align-c">[37]</td>
						<td class="align-c">USD/thùng; USD/m3</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>VII</b></td>
						<td><b>Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [38]=[39]+[40]</b></td>
						<td class="align-c">[38]</td>
						<td class="align-c">USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Số tiền thuế tài nguyên kỳ trước chuyển sang [39]=[33]x[37]</td>
						<td class="align-c">[39]</td>
						<td class="align-c">USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Số tiền thuế tài nguyên phát sinh trong kỳ tính thuế  [40]=([35]-[33])x[37]</td>
						<td class="align-c">[40]</td>
						<td class="align-c">USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>VIII</b></td>
						<td><b>Số tiền thuế tài nguyên tạm tính đã kê khai trong kỳ tính thuế</b></td>
						<td class="align-c">[41]</td>
						<td class="align-c">USD</td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IX</b></td>
						<td><b>Chênh lệch giữa số tiền phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [42]=[38]-[41] </b></td>
						<td class="align-c">[42]</td>
						<td class="align-c">USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>X</b></td>
						<td><b>Tỷ giá quy đổi</b></td>
						<td class="align-c">[43]</td>
						<td class="align-c">VND/USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>

					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu[04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên.        </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - TNDN: thu nhập doanh nghiệp; USD: Đô la Mỹ; VND: Đồng Việt Nam.                     </i></div>
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