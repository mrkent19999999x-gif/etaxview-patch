<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader01KK_TTS">
			<xsl:with-param name="mauTKhai" select="'01/KK-TTS'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="'(Áp dụng cho hộ kinh doanh, cá nhân có hoạt động cho thuê tài sản)'"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
			<br/>
			<div class="content">
				<div class="b">A. Kê khai doanh thu từ hoạt động cho thuê tài sản: </div>
				<div>
					<b>[22]</b> Số, ngày Hợp đồng cho thuê tài sản (nếu có): <xsl:value-of select="$tkchinh/ct22"/>
				</div>
				<div>
					<b>[23]</b> Tổng số doanh thu phát sinh: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/> đồng. Trong đó: </div>
				<div style="padding-left:20px">
					<b>[23a]</b> Doanh thu phát sinh cho thuê bất động sản: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23a)"/> đồng. </div>
				<div style="padding-left:20px">
					<b>[23b]</b> Doanh thu phát sinh cho thuê các tài sản khác: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23b)"/> đồng. </div>
				<div>
					<b>[24]</b> Tỷ lệ GTGT ấn định: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/> %</div>
				<div>
					<b>[25]</b> Số thuế GTGT phải nộp: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/> đồng. </div>
				<div>
					<b>[26]</b> Tỷ lệ thu nhập chịu thuế TNCN ấn định: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/> %</div>
				<div>
					<b>[27]</b> Thu nhập chịu thuế TNCN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/> đồng. </div>
				<div>
					<b>[28]</b> Tổng thu nhập làm căn cứ tính giảm thuế: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/> đồng. </div>
				<div>
					<b>[29]</b> Số người tham gia kinh doanh: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/> người. </div>
				<div>
					<b>[30]</b> Số thuế phải nộp: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/> đồng.</div>
				<br/>
				<table class="tkhai_table">
					<tr class="tkhaiheader">
						<td rowspan="2">STT</td>
						<td rowspan="2">Họ và tên</td>
						<td rowspan="2">Mã số thuế</td>
						<td rowspan="2">Tỷ lệ chia TNCT</td>
						<td rowspan="2">Thuế GTGT phải nộp</td>
						<td colspan="2">Thu nhập chịu thuế</td>
						<td rowspan="2">Các khoản giảm trừ gia cảnh</td>
						<td rowspan="2">Thu nhập tính thuế</td>
						<td rowspan="2">Thuế TNCN tạm tính</td>
						<td rowspan="2">Thuế TNCN được giảm</td>
						<td rowspan="2">Thuế TNCN phải nộp</td>
					</tr>
					<tr class="tkhaiheader">
						<td>Tổng số</td>
						<td>Trong đó: thu nhập làm căn cứ tính giảm thuế</td>
					</tr>
					<tr class="tkhaiheader">
						<td>[31]</td>
						<td>[32]</td>
						<td>[33]</td>
						<td>[34]</td>
						<td>[35]</td>
						<td>[36]</td>
						<td>[37]</td>
						<td>[38]</td>
						<td>[39]</td>
						<td>[40]</td>
						<td>[41]</td>
						<td>[42]</td>
					</tr>
					<xsl:for-each select="$tkchinh/ChiTietSoThuePhaiNop/BKeSoThuePhaiNop/SoThuePhaiNop">
						<xsl:variable name="currentRows" select="position()"/>
						<tr>
							<td class="align-c">
								<xsl:value-of select="$currentRows"/>
							</td>
							<td class="align-c">
								<xsl:value-of select="ct32"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ct33"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct34)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct35)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct36)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct37)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct38)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct39)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct40)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct41)"/>
							</td>
							<td class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(ct42)"/>
							</td>
						</tr>
					</xsl:for-each>
					<tr class="b">
						<td colspan="3" class="tkhaiheader">Tổng cộng</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct43)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct44)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct45)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct46)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct47)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct48)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct49)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct50)"/>
						</td>
						<td class="align-r">
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietSoThuePhaiNop/ct51)"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>
</xsl:stylesheet>
