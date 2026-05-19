<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="BCTHSDBLai/DLBCTHSDBLai/NDBCTHSDBLai" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
	  <xsl:call-template name="tkhaiHeader_BC26_BLDT">
		<xsl:with-param name="MSo"   select="'BC26/BLĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<div  class="align-r"><i>Đơn vị tính: Việt Nam Đồng</i></div>				
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên loại biên lai</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu biên lai</b></td>
						   <td class="align-c"><b>Ký hiệu biên lai</b></td>
						   <td class="align-c"><b>Số biên lai sử dụng trong kỳ</b></td>
						   <td class="align-c"><b>Tổng tiền thuế, phí, lệ phí trong kỳ</b></td>						   
						 </tr>
						 
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>										   
						 </tr>	
						 						 						 
						 <xsl:for-each select="$ndtkhaihddt/DLieu">
								 <xsl:variable name="currentRows" select="position()"/>					
         												
								<tr>
								 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:variable name="loai" select="TLoai"/>
											<xsl:choose>    
											<xsl:when test="$loai = '1'">Biên lai thu phí, lệ phí không có mệnh giá</xsl:when>    
											<xsl:when test="$loai = '2'">Biên lai thu phí, lệ phí có mệnh giá</xsl:when>    
											<xsl:otherwise><xsl:value-of select="$loai"/></xsl:otherwise>
											</xsl:choose>																  								  
								  </td>									 
								  <td class="align-l"><xsl:value-of select="KHMCTu"/></td>
								  <td class="align-l"><xsl:value-of select="KHCTu"/></td>
								  <td class="align-l"><xsl:value-of select="ihtkk:formatNumber(SLuong)"/></td>
	      						  <td class="align-l"><xsl:value-of select="ihtkk:formatNumber(TgTien)"/></td>								 								
								 
								 </tr>
																					 
						 </xsl:for-each>					 
																		
 			 </table>
			 			 
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_BC26_BLDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>