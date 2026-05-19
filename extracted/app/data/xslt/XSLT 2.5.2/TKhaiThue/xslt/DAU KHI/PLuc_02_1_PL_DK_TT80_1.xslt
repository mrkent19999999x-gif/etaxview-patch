<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_PL_DK">	
			<xsl:variable name="pl02-1-dk" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_PL_DK' />
			<xsl:call-template name="tkhaiHeader-pl02-1-dk">
		<xsl:with-param name="mauTKhai"   select="'02-1/PL-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'SẢN LƯỢNG VÀ DOANH THU XUẤT BÁN DẦU KHÍ'"/>
<xsl:with-param name="tenPL1"   select="''"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế tài nguyên đối với dầu khí mẫu số 02/TAIN-DK)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
						<table class="tkhai_table">
							 <tr>
							   <td rowspan="2" class="align-c"><b>STT</b></td>
							   <td rowspan="2" class="align-c"><b>Đơn vị tính sản lượng (thùng, m3)</b></td>
							   <td colspan="2" class="align-c"><b>Khai thác dầu khí</b></td>
							   <td colspan="4" class="align-c"><b>Xuất bán dầu khí</b></td>
							   <td rowspan="2" class="align-c"><b>Ghi chú</b></td>
							 </tr>
							 <tr>
								<td class="align-c"><b>Ngày, tháng, năm</b></td>
								<td class="align-c"><b>Sản lượng</b></td>
								<td class="align-c"><b>Ngày, tháng, năm</b></td>
								<td class="align-c"><b>Sản lượng</b></td>
								<td class="align-c"><b>Giá tính thuế tài nguyên tạm tính (USD)</b></td>
								<td class="align-c"><b>Doanh thu (USD; VND)</b></td>
							</tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							 </tr>
							<xsl:for-each select="$pl02-1-dk/BangSLuongVaDThu/ChiTiet">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="ct2_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							   <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ct5,'dd/mm/yyyy')"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>			  
							  </tr>
							</xsl:for-each>
							<tr>
								<td colspan="5" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02-1-dk/tongCot6)"/></td>
								<td></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02-1-dk/tongCot8)"/></td>
								<td></td>
							</tr>
						   </table>
					  </div>
					</div>
	<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
			 <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i>- Chỉ tiêu [05]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung. </i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>