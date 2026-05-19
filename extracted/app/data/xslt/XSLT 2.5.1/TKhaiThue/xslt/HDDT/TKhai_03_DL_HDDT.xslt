<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="TKhai/DLTKhai/NDTKhai" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	  <xsl:call-template name="tkhaiHeader_03_DL_HDDT">
		<xsl:with-param name="MSo"   select="'03/DL-HDDT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c" rowspan="2"><b>STT</b></td>
						   <td class="align-c" colspan="5"><b>Hóa đơn, chứng từ bán ra</b></td>
						   <td class="align-c" rowspan="2"><b>Tên người mua</b></td>
						   <td class="align-c" rowspan="2"><b>Mã số thuế người mua</b></td>
						   <td class="align-c" rowspan="2"><b>Doanh thu chưa có thuế GTGT</b></td>
						   <td class="align-c" rowspan="2"><b>Thuế GTGT</b></td>
						   <td class="align-c" rowspan="2"><b>Ghi chú</b></td>						   						   						   						   						   
						 </tr>
						 <tr>
						   <td class="align-c"><b>Tên loại hóa đơn</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu số hóa đơn</b></td>
						   <td class="align-c"><b>Ký hiệu hóa đơn</b></td>
						   <td class="align-c"><b>Số hóa đơn</b></td>
						   <td class="align-c"><b>Ngày, tháng, năm lập hóa đơn </b></td>
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
						   <td class="align-c">(10)</td>
						   <td class="align-c">(11)</td>						   
						 </tr>	
						 
						 <xsl:for-each select="$ndtkhaihddt/TTSuat">
						 <xsl:variable name="currentRows" select="position()"/>
						      <tr>
							     <td class="align-l"><xsl:value-of select="$currentRows"/>.</td>							     
							    <xsl:if test="TSuat = 'KCT'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ không chịu thuế giá trị gia tăng (GTGT):</td>
							    </xsl:if>
							     <xsl:if test="TSuat = '0%'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ chịu thuế suất GTGT 0%:</td>
							    </xsl:if>
							     <xsl:if test="TSuat = '5%'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 5%:</td>
							    </xsl:if>
								<xsl:if test="TSuat = '8%'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 8%:</td>
							    </xsl:if>
							     <xsl:if test="TSuat = '10%'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 10%:</td>
							    </xsl:if>
							     <xsl:if test="TSuat = 'KKKNT'" >
							    	<td class="align-l" colspan="10">Hàng hóa, dịch vụ không kê khai, tính nộp thuế GTGT:</td>
							    </xsl:if>
							     <xsl:if test="substring-before(TSuat,':') = 'KHAC'">
                                <td class="align-l" colspan="10">Thuế suất khác: <xsl:value-of select="substring-after(TSuat,':')"/></td>
                            </xsl:if>
	          				 </tr>
	          				 <xsl:for-each select="DSHDon/HDon">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-l"><xsl:value-of select="TenLoaiHDon"/></td>
								  <td class="align-l"><xsl:value-of select="KyHieuMau"/></td>
								  <td class="align-l"><xsl:value-of select="KyHieu"/></td>
								  <td class="align-l"><xsl:value-of select="SoHoaDon"/></td>
	      						  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(NgayLap,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="TenNguoiMua"/></td>
								  <td class="align-l"><xsl:value-of select="MSTNguoiMua"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoanhThu)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueGTGT)"/></td>
	      						  <td class="align-l"><xsl:value-of select="GhiChu"/></td>			
								 </tr>
							</xsl:for-each>	
							<tr>
								<td colspan="8" class="align-l"><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(TgDTCThue)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(TgTGTGT)"/></b></td>
								<td class="align-c"></td>
							</tr>			 
	          				 
	          				 
						 </xsl:for-each>					 
												
						<tr>
						    <td class="align-l" colspan="11">&#160;&#160;<b>Tổng doanh thu hàng hóa, dịch vụ bán ra chịu thuế GTGT (*) </b>: <b><xsl:value-of select="ihtkk:formatNumber($ndtkhaihddt/TgDThu)"/></b></td>

						</tr>
						<tr>
						    <td class="align-l" colspan="11">&#160;&#160;<b>Tổng số thuế GTGT của hàng hóa, dịch vụ bán ra (**)</b>: <b><xsl:value-of select="ihtkk:formatNumber($ndtkhaihddt/TgThue)"/></b></td>
						</tr> 
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_03_DL_HDDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>