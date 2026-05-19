<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156 /2013/TT-BTC ngày 06/11/2013 của Bộ Tài chính
'"/>
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
									<td rowspan="2">Chênh lệch giữa số quyết toán và kê khai</td>
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
         							<td class="align-c">(8)= (6) - (7)</td>
                                </tr>
						     	<tr>
							       <td class="align-c"><b>I</b></td>
								   <td class="align-l" colspan="7"><i><b>Khoáng sản do cơ sở tự khai thác:</b></i></td>
							    </tr>
							<xsl:for-each select="$tkchinh/KSCSTuKhaiThac/CTietKSCSTuKhaiThac">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="ct2"/></td>
									<td class="align-c"><xsl:value-of select="ct3"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								</tr>
							</xsl:for-each>
							<tr>
         						<td class="align-c"><b>II</b></td>
								<td class="align-l" colspan="7"><i><b>Khoáng sản do cơ sở thu mua nộp thay người khai thác</b></i></td>
							</tr>
							<xsl:for-each select="$tkchinh/KSCSThuMua/CTietKSCSThuMua">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="ct2"/></td>
									<td class="align-c"><xsl:value-of select="ct3"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								</tr>
                            </xsl:for-each>
							    <tr>
								    <td colspan="5" class="align-c"><b>Tổng cộng:</b></td>
						            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct6)"/></b></td>
					                <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct7)"/></b></td>
					                <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct8)"/></b></td>
						     	</tr>
						</table>
		</div>			
		</div>
<table style="page-break-inside: avoid;"  width="100%">
<tr>
<td>		
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
	</xsl:template>
</xsl:stylesheet>
