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

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_04_PTHU_DK">	
			<xsl:variable name="pl04-pthu-dk" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_04_PTHU_DK' />
			<xsl:call-template name="tkhaiHeader-pl04-pthu-dk">
		<xsl:with-param name="mauTKhai"   select="'04/PTHU-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ SẢN LƯỢNG VÀ GIÁ BÁN DẦU THÔ KHAI THÁC'"/>
<xsl:with-param name="tenPL1"   select="''"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán phụ thu mẫu số 02/PTHU-DK, 03/PTHU-DK)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
						<table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Ngày tháng</b></td>
							   <td class="align-c"><b>Sản lượng dầu thô khai thác (thùng)</b></td>
							   <td class="align-c"><b>Sản lượng dầu thô bán (thùng)</b></td>
							   <td class="align-c"><b>Giá bán (USD/thùng)</b></td>
							   <td class="align-c"><b>Ghi chú</b></td>
							 </tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)</td>
							 </tr>
							<xsl:for-each select="$pl04-pthu-dk/ChiTiet_Pluc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayThang,'dd/mm/yyyy')" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sanLuong_khaiThac)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sanLuong_ban)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaBan)"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>				  
							  </tr>
							</xsl:for-each>
							<tr>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04-pthu-dk/tongCong_khaiThac)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04-pthu-dk/tongCong_ban)"/></b></td>
								<td></td>
								<td></td>
							</tr>
						   </table>
					  </div>
					</div>
	<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
</td>
</tr>
</table>		
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>