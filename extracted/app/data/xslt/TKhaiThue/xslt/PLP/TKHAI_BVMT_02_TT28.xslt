<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của  Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader">
			<xsl:with-param name="mauTKhai" select="'02/BVMT'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="''"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam </i></div>

						<table class="tkhai_table">
  							<tr class="tkhaiheader">
									<td rowspan="2">STT</td>
									<td rowspan="2">Loại khoáng sản</td>
									<td colspan="2">Sản lượng khoáng sản tính phí trong kỳ</td>
									<td rowspan="2">Mức phí</td>
									<td rowspan="2">Số phí phải nộp trong kỳ</td>
									<td rowspan="2">Số phí đã kê khai trong kỳ</td>
								</tr>
								<tr class="tkhaiheader">
									<td class="align-c">Đơn vị tính</td>
									<td class="align-c">Sản lượng</td>
								</tr>
								<tr class="tkhaiheader">
									<td class="align-c">(1)</td>
									<td class="align-c">(2)</td>
									<td class="align-c">(3)</td>
									<td class="align-c">(4)</td>
									<td class="align-c">(5)</td>
									<td class="align-c">(6)</td>
         								<td class="align-c">(7)</td>

								</tr>
							<tr>
							       <td class="align-c"><b>I</b></td>
								<td class="align-l" colspan="6"><i><b>I. Khoáng sản do cơ sở tự khai thác:</b></i></td>
							</tr>
							<xsl:for-each select="$tkchinh/KhoangSan/KSCSTuKhaiThac/TTinKhoangSan/NoiDungKS">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenKSan"/></td>
									<td class="align-c"><xsl:value-of select="donViTinh"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhi)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phiPhaiNopTrongKy)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phiDaKeKhaiTrongKy)"/></td>
								</tr>
							</xsl:for-each>
							<tr>
         							<td class="align-c"><b>II</b></td>
								<td class="align-l" colspan="6"><i><b>II. Khoáng sản do cơ sở thu mua nộp thay người khai thác:</b></i></td>
							</tr>
							<xsl:for-each select="$tkchinh/KhoangSan/KSCSThuMua/TTinKhoangSan/NoiDungKS">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenKSan"/></td>
									<td class="align-c"><xsl:value-of select="donViTinh"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhi)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phiPhaiNopTrongKy)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phiDaKeKhaiTrongKy)"/></td>
								</tr>

							</xsl:for-each>
							<tr>
								<td colspan="5" class="align-c"><b>Tổng cộng:</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongPhiPhaiNopTrongKy)"/></b></td>
					<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongPhiDaKeKhaiTrongKy)"/></b></td>
							</tr>
						</table>
				<div class="align-l">Số tiền phí bảo vệ môi trường đối với khai thác khoáng sản còn phải nộp vào NSNN của kỳ quyết toán là (ghi bằng chữ): <xsl:value-of select="$tkchinh/tongTienBangChu"/> </div>		
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
