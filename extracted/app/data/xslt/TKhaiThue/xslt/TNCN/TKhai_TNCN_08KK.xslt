<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'08/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cá nhân kinh doanh thực hiện nộp thuế theo kê khai)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		
				    <div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				    </div>
					<table class="tkhai_table"  >
						<tr class="tkhaiheader">
							<td>STT</td>
							<td colspan="3">Chỉ tiêu</td>
							<td>Số tiền</td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td colspan="2">Tổng doanh thu phát sinh</td>
							<td class="tkhaiheader">[21] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td colspan="2">Tổng chi phí phát sinh</td>
							<td class="tkhaiheader">[22] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						</tr>	
						<tr>
							<td class="align-c">3</td>
							<td colspan="2">Tổng thu nhập chịu thuế</td>
							<td class="tkhaiheader">[23] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						</tr>
						<tr>
							<td rowspan="6" class="align-c">4</td>
							<td colspan="2">Các khoản giảm trừ</td>
							<td class="tkhaiheader">[24] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct24)"/></td>
						</tr>
						<tr>
							<td>a</td>
							<td>Cho bản thân</td>
							<td class="tkhaiheader">[25] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct25)"/></td>
						</tr>
						<tr>
							<td>b</td>
							<td>Cho người phụ thuộc</td>
							<td class="tkhaiheader">[26] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct26)"/></td>
						</tr>
						<tr>
							<td>c</td>
							<td>Cho từ thiện, nhân đạo, khuyến học</td>
							<td class="tkhaiheader">[27] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct27)"/></td>
						</tr>
						<tr>
							<td>d</td>
							<td>Các khoản đóng bảo hiểm được trừ</td>
							<td class="tkhaiheader">[28] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct28)"/></td>
						</tr>
						<tr>
							<td>e</td>
							<td>Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
							<td class="tkhaiheader">[29] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CacKhoanGiamTru/ct29)"/></td>
						</tr>
						<tr>
							<td class="align-c">5</td>
							<td colspan="2">Thu nhập tính thuế</td>
							<td class="tkhaiheader">[30] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						</tr>
						<tr>
							<td class="align-c">6</td>
							<td colspan="2">Thuế thu nhập cá nhân (TNCN) tạm tính</td>
							<td class="tkhaiheader">[31] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						</tr>
						<tr>
							<td class="align-c">7</td>
							<td colspan="2">Thu nhập chịu thuế làm căn cứ tính giảm thuế</td>
							<td class="tkhaiheader">[32] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						</tr>
						<tr>
							<td class="align-c">8</td>
							<td colspan="2">Thuế TNCN được giảm</td>
							<td class="tkhaiheader">[33] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						</tr><tr>
							<td class="align-c">9</td>
							<td colspan="2">Thuế TNCN tạm nộp </td>
							<td class="tkhaiheader">[34] </td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						</tr>
					</table>
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