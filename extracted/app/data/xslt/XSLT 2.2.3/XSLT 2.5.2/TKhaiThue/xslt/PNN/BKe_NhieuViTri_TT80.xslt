<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:variable name="ghiChuPL" select="''"/>
	  <!-- Phụ lục 01-02/SDDPNN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/BKe_NhieuViTri"/>	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/BKe_NhieuViTri' />
			<xsl:call-template name="tkhaiHeader-Pluc01-SDDPNN-TT80">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ NHIỀU VỊ TRÍ'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế sử dụng đất phi nông nghiệp mẫu số 02/TK-SDDPNN)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
					<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Vị trí</b></td>
							<td class="align-c"><b>Tên vị trí </b></td>
							<td class="align-c"><b>Diện tích từng vị trí</b></td>
							<td class="align-c"><b>Giá đất</b></td>
							<td class="align-c"><b>Hệ số đường/hẻm</b></td>
							<td class="align-c"><b>Giá 1m2 đất</b></td>
						</tr>
						<xsl:for-each select="$pl01/CTietBKe_NhieuViTri">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct06_ma"/></td>
	         					<td class="align-r"><xsl:value-of select="ct06_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct08)"/></td>
								<td class="align-r"><xsl:value-of select="ct09"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
	         				</tr>							
	         		<!-- </xsl:for-each> -->	
					</xsl:for-each>		
					</table>
				</div>

		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

