<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-02PTHU-DK">
		<xsl:with-param name="mauTKhai"   select="'03/PTHU-DK'"/>
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
						<td class="align-c">1</td>
						<td>Giá cơ sở của kỳ tính thuế</td>
						<td class="align-c"><b>[23]</b></td>
					    <td class="align-c">USD/thùng</td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Sản lượng dầu lãi được chia theo quý trong kỳ tính thuế</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
					    <td class="align-c"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Quý I:</td>
						<td class="align-c"><b>[24]</b></td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Quý II:</td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>c) Quý III:</td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>d) Quý IV:</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-c">Thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Giá bán dầu thô trung bình quý trong kỳ tính thuế</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-c"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Quý I:</td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Quý II:</td>
						<td class="align-c"><b>[29]</b></td>
						<td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>c) Quý III:</td>
						<td class="align-c"><b>[30]</b></td>
						<td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>d) Quý IV:</td>
						<td class="align-c"><b>[31]</b></td>
						<td class="align-c">USD/thùng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Số phụ thu phải nộp trong kỳ tính thuế:<br/>
						[32] = [33]+[38]+[43]+[48]</td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c">4.1</td>
						<td>Quý I: [33] = [34] hoặc [37]</td>
						<td class="align-c"><b>[33]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Trường hợp &#10100;1,2*[23]&#10101; &#60; [28] &#8804; &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"><b>[34]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>[34] = 50%*&#10100;[28]–1,2*[23]}*[24]</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Trường hợp [28] > &#10100;1,5*[23]}:</td>
						<td class="align-c"><b></b></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 50% <br/> [35] = 50%*&#10100;1,5*[23]–1,2*[23]}*[24]</td>
						<td class="align-c"><b>[35]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 60% <br/>[36] = 60%*&#10100;[28]–1,5*[23]}*[24]</td>
						<td class="align-c"><b>[36]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Cả quý: [37] = [35]+[36] </td>
						<td class="align-c"><b>[37]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c">4.2</td>
						<td>Quý II: [38] = [39] hoặc [42]</td>
						<td class="align-c"><b>[38]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Trường hợp &#10100;1,2*[23]&#10101; &#60; [29] &#8804; &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"><b>[39]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>[39] = 50%*&#10100;[29]–1,2*[23]}*[25]</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Trường hợp [29] > &#10100;1,5*[23]}:</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 50% <br/> [40] = 50%*&#10100;1,5*[23]–1,2*[23]}*[25]</td>
						<td class="align-c"><b>[40]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 60% <br/>[41] = 60%*&#10100;[29]–1,5*[23]}*[25]</td>
						<td class="align-c"><b>[41]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Cả quý:[42] = [40]+[41]</td>
						<td class="align-c"><b>[42]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">4.3</td>
						<td>Quý III: [43] = [44] hoặc [47]</td>
						<td class="align-c"><b>[43]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Trường hợp &#10100;1,2*[23]&#10101; &#60; [30] &#8804; &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"><b>[44]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Trường hợp [30] > &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 50% <br/>[45] = 50%*&#10100;1,5*[23]–1,2*[23]&#10101;*[26]</td>
						<td class="align-c"><b>[45]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 60% <br/>[46] = 60%*&#10100;[30]–1,5*[23]&#10101;*[26]</td>
						<td class="align-c"><b>[46]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Cả quý: [47] = [45]+[46]</td>
						<td class="align-c"><b>[47]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)"/></td>
					</tr>
					<tr>
						<td class="align-c">4.4</td>
						<td>Quý IV: [48] = [49] hoặc [52]</td>
						<td class="align-c"><b>[48]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Trường hợp &#10100;1,2*[23]&#10101; &#60; [31] &#8804; &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"><b>[49]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct49)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>[49] = 50%*&#10100;[31]–1,2*[23]&#10101;*[27]</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Trường hợp [31] > &#10100;1,5*[23]&#10101;:</td>
						<td class="align-c"></td>
						<td class="align-c"></td>
						<td class="align-r"></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 50% <br/>[50] = 50%*&#10100;1,5*[23]–1,2*[23]&#10101;*[27]</td>
						<td class="align-c"><b>[50]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct50)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Phụ thu theo mức 60%<br/>[51] = 60%*&#10100;[31]–1,5*[23]&#10101;*[27]</td>
						<td class="align-c"><b>[51]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct51)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>- Cả quý: [52] = [50]+[51]</td>
						<td class="align-c"><b>[52]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct52)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Số phụ thu tạm tính đã kê khai trong kỳ tính thuế:<br/>[53]=[54]+[55]+[56]+[57]</td>
						<td class="align-c"><b>[53]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct53)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Quý I</td>
						<td class="align-c"><b>[54]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct54)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Quý II</td>
						<td class="align-c"><b>[55]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct55)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>c) Quý III</td>
						<td class="align-c"><b>[56]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct56)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>d) Quý IV</td>
						<td class="align-c"><b>[57]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct57)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Số phụ thu nộp thừa của kỳ tính thuế trước (nếu có)</td>
						<td class="align-c"><b>[58]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct58)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>Chênh lệch giữa số tiền thuế phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [58a]=[32]-[53]</td>
						<td class="align-c"><b>[58a]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct58a)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Số phụ thu nộp thiếu (hoặc thừa) trong kỳ tính thuế: [59] = [32]-[53]-[58]</td>
						<td class="align-c"><b>[59]</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonVi"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct59)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c"><b>[60]</b></td>
						<td class="align-c">USD/VND</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct60)"/></td>
					</tr>
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp một NNT khai thác đồng thời dầu thô, condensate thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp dầu thô, condensate bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam.</i></div>
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