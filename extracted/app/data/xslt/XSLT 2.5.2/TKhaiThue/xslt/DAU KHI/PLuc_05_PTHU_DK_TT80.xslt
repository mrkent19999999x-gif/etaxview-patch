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

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_PTHU_DK">	
			<xsl:variable name="pl05-pthu-dk" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_PTHU_DK' />
			<xsl:call-template name="tkhaiHeader-pl05-pthu-dk">
		<xsl:with-param name="mauTKhai"   select="'05/PTHU-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ SỐ PHỤ THU TẠM TÍNH ĐÃ NỘP'"/>
<xsl:with-param name="tenPL1"   select="''"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán phụ thu mẫu số 02/PTHU-DK, 03/PTHU-DK)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
						<table class="tkhai_table">
							 <tr>
							   <td rowspan="2" class="align-c"><b>STT</b></td>
							   <td rowspan="2" class="align-c"><b>Tờ khai phụ thu tạm tính</b></td>
							   <td colspan="2" class="align-c"><b>Số phụ thu tạm tính đã nộp</b></td>
							   <td rowspan="2" class="align-c"><b>Ghi chú</b></td>
							 </tr>
							 <tr>
								<td class="align-c"><b>USD</b></td>
								<td class="align-c"><b>VND</b></td>
							</tr>
							<xsl:for-each select="$pl05-pthu-dk/ChiTiet_Pluc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tKhai_tamTinh"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(usd_soDaNop)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(vnd_soDaNop)"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>				  
							  </tr>
							</xsl:for-each>
							<tr>
								<td></td>
								<td class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-pthu-dk/tongCong_usd)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-pthu-dk/tongCong_vnd)"/></b></td>
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
			 <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i> - Chỉ tiêu [05]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung.  </i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>