<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 36/2016/TT-BTC  ngày 26/02/2016 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		
<!--start phu luc 02-1/PL-DK-->

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_02_1DK">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_02_1DK' />
			<xsl:call-template name="tkhaiHeader-pluc02_1DK">
		<xsl:with-param name="mauTKhai"   select="'02-1/PL-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="' SẢN LƯỢNG VÀ DOANH THU XUẤT BÁN DẦU KHÍ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế tài nguyên đối với dầu khí mẫu số 02/TAIN-DK)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
						<table class="tkhai_table"  >
							<tr>
							    <td class="align-c" rowspan="2"><b>STT</b></td>
							    <td class="align-c" rowspan="2"><b>Đơn vị tính sản lượng <br/> (thùng, m3)</b></td>
							    <td class="align-c" colspan="2"><b>Khai thác dầu khí</b></td>
							    <td class="align-c" colspan="4"><b>Xuất bán dầu khí</b></td>
							    <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							    <td class="align-c"><b>Ngày, tháng, năm</b></td>
							    <td class="align-c"><b>Sản lượng</b></td>
							    <td class="align-c"><b>Ngày, tháng, năm</b></td>
							    <td class="align-c"><b>Sản lượng</b></td>
							    <td class="align-c"><b>Giá tính thuế tài nguyên tạm tính <br/> (USD)</b></td>
							    <td class="align-c"><b>Doanh thu <br/>(USD)</b></td>
							</tr>
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
								<td class="align-c">(8)=(6)x(7)</td>
								<td class="align-c">(9)</td>
							</tr>
						   <xsl:for-each select="$pl01/SLuongDThu/CTietSLuongDThu">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="ct2" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct5,'dd/mm/yyyy')" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)" /></td>
							  <td class="align-l"><xsl:value-of select="ct9" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-c"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/SLuongDThu/tong_ct6)"/></b></td>
							  <td></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/SLuongDThu/tong_ct8)"/></b></td>
							  <td></td>
							</tr>    
                        </table>  
			</div>
			</div>
			<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>
			<xsl:call-template name="tkhaiFooter"/>	    
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
			 <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i>- Chỉ tiêu [05]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định. </i></div>
			<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - USD: Đô la Mỹ.      </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
		
	<!--end phu luc 01/PL-DK-->	
	</xsl:template>		
</xsl:stylesheet>