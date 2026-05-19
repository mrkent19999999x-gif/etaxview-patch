<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaictdt" select="TBao/DLTBao/DSCTu" />
		<xsl:variable name="loai" select="TBao/DLTBao/Loai" />
		<xsl:variable name="loaict" select="TBao/DLTBao/DSCTu/CTu/LCTDT"/>
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_04_SS_CTDT">
			<xsl:with-param name="MSo"   select="'04/SS-CTDT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
									
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>						  
						   <td class="align-c"><b>Ký hiệu mẫu chứng từ</b></td>
						   <td class="align-c"><b>Ký hiệu chứng từ</b></td>
						   <td class="align-c"><b>Số chứng từ điện tử</b></td>
						   <td class="align-c"><b>Ngày lập chứng từ</b></td>
						   <td class="align-c"><b>Loại chứng từ điện tử</b></td>		
						   <td class="align-c"><b>Thông báo/Giải trình</b></td>	
						   <td class="align-c"><b>Lý do</b></td>						   
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
						 									   
						 </tr>	
						 						 						 
						 <xsl:for-each select="$ndtkhaictdt/CTu">
								 <xsl:variable name="currentRows" select="position()"/>																	
								<tr>
							<td class="align-c"><xsl:value-of select="STT"/></td>							
							<td class="align-l"><xsl:value-of select="KHMSCTu"/></td>
							<td class="align-l"><xsl:value-of select="KHCTu"/></td>
							<td class="align-l"><xsl:value-of select="SCTu"/></td>
							<td class="align-l"><xsl:value-of select="NLap"/></td>														
							<td class="align-l">
								<xsl:if test="$loaict='1'">
									Chứng từ điện tử khấu trừ thuế TNCN theo Nghị định 70
								</xsl:if>
								<xsl:if test="$loaict='2'">
									Chứng từ điện tử khấu trừ thuế đối với hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số
								</xsl:if>
								<xsl:if test="$loaict='3'">
									Biên lai thu thuế, phí, lệ phí không in sẵn mệnh giá theo Nghị định 70
								</xsl:if>
								<xsl:if test="$loaict='4'">
									Biên lai thu thuế, phí, lệ phí không in sẵn mệnh giá theo Nghị định 70
								</xsl:if>
								<xsl:if test="$loaict='5'">
									CTT50 - Biên lai thu thuế, phí, lệ phí của cơ quan thuế sử dụng khi thu thuế, phí, lệ phí của cá nhân
								</xsl:if>
								<xsl:if test="$loaict='6'">
									Biên lai thu thuế, phí, lệ phí đặt in, tự in, điện tử theo Thông tư 303/2016/TT-BTC, Nghị định 51/2010/NĐ- CP
								</xsl:if>
							</td>

							<td class="align-l">
								<xsl:if test="$loai ='1'">
									Thông báo của NNT
								</xsl:if>
								<xsl:if test="$loai ='2'">
									Giải trình của NNT theo thông báo của CQT
								</xsl:if>
							</td>
							<td class="align-l"><xsl:value-of select="LDo"/></td>

						</tr>
																					 
						 </xsl:for-each>					 
																		
 			 </table>
			 			 
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_04_SS_CTDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>