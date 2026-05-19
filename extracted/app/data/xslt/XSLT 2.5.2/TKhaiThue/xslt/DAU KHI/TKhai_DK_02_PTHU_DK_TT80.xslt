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
		<xsl:with-param name="mauTKhai"   select="'02/PTHU-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với dự án dầu khí khuyến khích đầu tư)'"/>
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
						<td>Giá bán dầu thô trung bình theo quý trong kỳ tính thuế</td>
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
						<td>Số phụ thu phải nộp trong kỳ tính thuế: <br/>
						[32] = [33]+[34]+[35]+[36]</td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Quý I: [33] = 30%*{[28]–1,2*[23]}*[24]</td>
						<td class="align-c"><b>[33]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Quý II: [34] = 30%*{[29]–1,2*[23]}*[25]</td>
						<td class="align-c"><b>[34]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>c) Quý III: [35] = 30%*{[30]–1,2*[23]}*[26]</td>
						<td class="align-c"><b>[35]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>d) Quý IV: [36] = 30%*{[31]–1,2*[23]}*[27]</td>
						<td class="align-c"><b>[36]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Số phụ thu tạm tính đã kê khai tạm tính theo quý trong kỳ tính thuế: <br/>
						[37] = [38]+[39]+[40]+[41]</td>
						<td class="align-c"><b>[37]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>a) Quý I</td>
						<td class="align-c"><b>[38]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>b) Quý II</td>
						<td class="align-c"><b>[39]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>c) Quý III</td>
						<td class="align-c"><b>[40]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>d) Quý IV</td>
						<td class="align-c"><b>[41]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					<tr>
						<td class="align-c"></td>
						<td>Chênh lệch giữa số tiền thuế phải nộp theo <br/>
						quyết toán với số đã kê khai trong kỳ tính thuế <br/>
						[41a]=[32]-[37]</td>
						<td class="align-c"><b>[41a]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41a)"/></td>
					</tr>
					<tr>
						<td class="align-c">6</td>
						<td>Số phụ thu nộp thừa của kỳ tính thuế trước (nếu có)</td>
						<td class="align-c"><b>[42]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c">7</td>
						<td>Số phụ thu nộp thiếu (hoặc thừa) trong kỳ tính thuế: [43] = [32] - [37] - [42]</td>
						<td class="align-c"><b>[43]</b></td>
						<td class="align-c">
						<xsl:if test="$tkchinh/ma_DonVi='USD'">USD</xsl:if>
						<xsl:if test="$tkchinh/ma_DonVi='VND'">VND</xsl:if>
						</td> 
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>
					<tr>
						<td class="align-c">8</td>
						<td>Tỷ giá quy đổi</td>
						<td class="align-c"><b>[44]</b></td>
						<td class="align-c">USD/VND</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
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