<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_04_DTV_TNCN">
			<xsl:with-param name="mauTKhai"   select="'04/DTV-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân nhận cổ tức bằng chứng khoán, lợi tức ghi tăng vốn, chứng khoán thưởng cho cổ đông hiện hữu khi chuyển nhượng và tổ chức, cá nhân khai thuế thay, nộp thuế thay cho cá nhân)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                <table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" colspan="2"><b>Tổ chức phát hành</b></td>
						<td class="align-c" rowspan="2"><b>Mã chứng khoán</b></td>
						<td class="align-c" rowspan="2"><b>Số lượng chứng khoán</b></td>
						<td class="align-c" rowspan="2"><b>Mệnh giá chứng khoán</b></td>
						<td class="align-c" rowspan="2"><b>Tổng giá trị cổ tức (hoặc lợi tức) được chia theo mệnh giá</b></td>
						<td class="align-c" rowspan="2"><b>Tổng giá trị theo giá sổ sách kế toán (hoặc theo giá thị trường)</b></td>
						<td class="align-c" rowspan="2"><b>Thuế phải nộp</b></td>	
					</tr>
					<tr>
						<td class="align-c"><b>Tên tổ chức phát hành</b></td>
						<td class="align-c"><b>Mã tổ chức phát hành</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>[23]</b></td>
						<td class="align-c"><b>[24a]</b></td>
						<td class="align-c"><b>[24b]</b></td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-c"><b>[29]</b></td>
						<td class="align-c"><b>[30]</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>I</b></td>
						<td class="align-l" colspan="5"><b>Chứng khoán trả thay cổ tức</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanTraThayCoTuc/ct31)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanTraThayCoTuc/ct32)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanTraThayCoTuc/ct33)"/></b></td>
					</tr>
					<xsl:for-each select="$tkchinh/ChungKhoanTraThayCoTuc/NDungCKhoanTraThayCTuc">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct24_ten"/></td>
							<td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct24_ma"/></td>
							<td class="align-c"><xsl:value-of select="ct25_maChungKhoan"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct30)"/></td>
						</tr>
					</xsl:for-each>					 											
						<tr>
							<td class="align-c"><b>II</b></td>
							<td class="align-l" colspan="5"><b>Chứng khoán thưởng cho cổ đông hiện hữu</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanThuongChoCoDong/ct34)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanThuongChoCoDong/ct35)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungKhoanThuongChoCoDong/ct36)"/></b></td>
						</tr>
					<xsl:for-each select="$tkchinh/ChungKhoanThuongChoCoDong/NDungCKhoanThuongChoCoDong">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct24_ten"/></td>
							<td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct24_ma"/></td>
							<td class="align-c"><xsl:value-of select="ct25_maChungKhoan"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct30)"/></td>
						</tr>
					</xsl:for-each>	
						<tr>
							<td class="align-c"><b>III</b></td>
							<td class="align-l" colspan="5"><b>Lợi tức ghi tăng vốn </b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/LoiTucGhiTangVon/ct37)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/LoiTucGhiTangVon/ct38)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/LoiTucGhiTangVon/ct39)"/></b></td>
						</tr>
					<xsl:for-each select="$tkchinh/LoiTucGhiTangVon/NDungLoiTucGhiTangVon">
						<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ToChucPhatHanh/ct24_ten"/></td>
							  <td class="align-c"><xsl:value-of select="ToChucPhatHanh/ct24_ma"/></td>
							  <td class="align-c">\</td>
							  <td class="align-c">\</td>
							  <td class="align-c">\</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct29)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct30)"/></td>
							</tr>
					</xsl:for-each>	
						<tr>
							<td></td>
							<td class="align-c" colspan="5	"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></b></td>
						</tr>
				</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"></xsl:call-template>
		<div><b><u><i>Ghi chú:</i></u></b>
		&#160;&#160;&#160;&#160;(*) Trường hợp cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần thì nộp hồ sơ khai thuế của lần khai thuế đầu tiên cùng với Hồ sơ thông báo miễn, giảm thuế theo Hiệp định theo quy định.	</div>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
