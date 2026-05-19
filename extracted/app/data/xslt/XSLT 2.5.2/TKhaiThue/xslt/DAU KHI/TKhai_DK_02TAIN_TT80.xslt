<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
 <xsl:call-template name="tkhaiHeader-02TAIN-DK">
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
						<td class="align-c"><b> I </b></td>
						<td><b>Số ngày khai thác dầu khí trong kỳ tính thuế</b></td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-c">Ngày</td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT25/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>II</b></td>
						<td><b>Sản lượng</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên kỳ tính thuế trước chuyển sang</td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT26/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT26/giaTri)"/></td>
					</tr>
						<tr>
						<td class="align-c">2</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên trong kỳ tính thuế</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT27/ten_donvitinh)"/></td>
					    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT27/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên thực tế  bán trong kỳ tính thuế [28]=[28a]+[28b]</td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT28/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT28/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">3.1</td>
						<td> - Xuất khẩu</td>
						<td class="align-c"><b>[28a]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT28a/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT28a/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">3.2</td>
						<td> - Tiêu thụ nội địa</td>
						<td class="align-c"><b>[28b]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT28b/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT28b/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên chuyển sang kỳ tính thuế sau [29]=[26]+[27]-[28]</td>
						<td class="align-c"><b>[29]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/CT29/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">5</td>
						<td>Sản lượng dầu khí chịu thuế tài nguyên bình quân/ngày trong kỳ tính thuế [30]=[27]/[25]</td>
						<td class="align-c"><b>[30]</b></td>
		                <td class="align-c"><xsl:value-of select="($tkchinh/CT30/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>III </b></td>
						<td><b>Tổng doanh thu xuất bán trong kỳ tính thuế</b></td>
						<td class="align-c"><b>[31]</b></td>
						<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IV</b></td>
						<td><b>Tỷ lệ thuế tài nguyên bằng dầu khí trong kỳ tính thuế</b></td>
						<td class="align-c"><b>[32]</b></td>
						<td class="align-c">%</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>V</b></td>
						<td><b>Thuế tài nguyên tính bằng dầu khí</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Thuế tài nguyên bằng dầu khí chưa bán kỳ tính thuế trước chuyển sang</td>
						<td class="align-c"><b>[33]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/CT33/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT33/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Thuế tài nguyên bằng dầu khí phải nộp trong kỳ tính thuế [34]=[27]x[32]</td>
						<td class="align-c"><b>[34]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/CT34/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT34/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Thuế tài nguyên bằng dầu khí bán trong kỳ tính thuế [35]=[33]+([28]-[26])x[32]</td>
						<td class="align-c"><b>[35]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/CT35/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT35/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Thuế tài nguyên bằng dầu khí chưa bán chuyển sang kỳ tính thuế sau [36]=[33]+[34]-[35]</td>
						<td class="align-c"><b>[36]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/CT36/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT36/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>VI</b></td>
						<td><b>Giá tính thuế tài nguyên trong kỳ tính thuế [37]=[31]/[28]</b></td>
						<td class="align-c"><b>[37]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/CT37/ten_donvitinh)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT37/giaTri)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>VII</b></td>
						<td><b>Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [38]=[39]+[40]</b></td>
						<td class="align-c"><b>[38]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Số tiền thuế tài nguyên kỳ trước chuyển sang [39]=[33]x[37]</td>
						<td class="align-c"><b>[39]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
					</tr>
                    <tr>
						<td class="align-c">2</td>
						<td>Số tiền thuế tài nguyên phát sinh trong kỳ tính thuế [40]=([35]-[33])x [37]</td>
						<td class="align-c"><b>[40]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
					</tr>
					 <tr>
						<td class="align-c"><b>VIII</b></td>
						<td><b>Số tiền thuế tài nguyên tạm tính đã kê khai trong kỳ tính thuế</b></td>
						<td class="align-c"><b>[41]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
					</tr>
					 <tr>
						<td class="align-c"><b>IX</b></td>
						<td><b>Chênh lệch giữa số tiền phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [42]=[38]-[41] </b></td>
						<td class="align-c"><b>[42]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>X</b></td>
						<td><b>Tỷ giá quy đổi</b></td>
						<td class="align-c"><b>[43]</b></td>
						 <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
					</tr>
				
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [07]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung.   </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt..</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán. </i></div>
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