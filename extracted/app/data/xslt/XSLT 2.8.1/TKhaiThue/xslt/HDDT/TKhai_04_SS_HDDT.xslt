<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="TBao/DLTBao/DSHDon" />
		<xsl:variable name="loai" select="TBao/DLTBao/Loai"/>
		<xsl:variable name="loaihd" select="TBao/DLTBao/DSHDon/HDon/LADHDDT"/>
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_04_SS_HDDT">
			<xsl:with-param name="MSo"   select="'04/SS-HDDT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
									
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Mã CQT cấp</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu hóa đơn</b></td>
						   <td class="align-c"><b>Ký hiệu hóa đơn</b></td>
						   <td class="align-c"><b>Số hóa đơn điện tử</b></td>
						   <td class="align-c"><b>Ngày lập hóa đơn</b></td>
						   <td class="align-c"><b>Loại hóa đơn điện tử</b></td>		
						   <td class="align-c"><b>Thông báo/Giải trình</b></td>	
						   <td class="align-c">
							<xsl:if test="$loai='1'">
									<b>Lý do</b>
								</xsl:if>
								<xsl:if test="$loai ='2'">
									<b>Lý do/Thông báo của CQT</b>
								</xsl:if>
						   
						   </td>						   
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
						 						 						 
						 <xsl:for-each select="$ndtkhaihddt/HDon">
								 <xsl:variable name="currentRows" select="position()"/>					
         												
								<tr>
<!--							<td class="align-c"><xsl:value-of select="$currentRows" /></td>-->
							<td class="align-c"><xsl:value-of select="STT"/></td>
							<td class="align-l"><xsl:value-of select="MCCQT"/></td>
							<td class="align-l"><xsl:value-of select="KHMSHDon"/></td>
							<td class="align-l"><xsl:value-of select="KHHDon"/></td>
							<td class="align-l"><xsl:value-of select="SHDon"/></td>
							<td class="align-l"><xsl:value-of select="Ngay"/></td>							
							<td class="align-l">
								<xsl:if test="$loaihd='1'">
									Hóa đơn điện tử theo Nghị định 123/2020/NĐ-CP, Nghị định 70/2025/NĐ-CP
								</xsl:if>
								<xsl:if test="$loaihd='2'">
									Hóa đơn điện tử có mã xác thực của cơ quan thuế theo Quyết định số 1209/QĐ-BTC ngày 23 tháng 6 năm 2015 và Quyết định số 2660/QĐ-BTC ngày 14 tháng 12 năm 2016 của Bộ Tài chính (Hóa đơn có mã xác thực của CQT theo Nghị định số 51/2010/NĐ-CP và Nghị định số 04/2014/NĐ-CP)
								</xsl:if>
								<xsl:if test="$loaihd='3'">
									Các loại hóa đơn theo Nghị định số 51/2010/NĐ-CP và Nghị định số 04/2014/NĐ-CP (Trừ hóa đơn điện tử có mã xác thực của cơ quan thuế theo Quyết định số 1209/QĐ-BTC và Quyết định số 2660/QĐ-BTC)
								</xsl:if>
							</td>
							
							<td class="align-l">
							
								<xsl:if test="$loai='1'">
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
		<xsl:call-template name="tkhaiFooter_04_SS_HDDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>