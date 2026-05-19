<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính
'" />
		 <xsl:call-template name="tkhaiHeader_PHLP">
		<xsl:with-param name="mauTKhai"   select="'02/PHLPNG'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table>		
			
			<tr>
				<td>
					<table class="tkhai_table"  >
							<thead>
							 <tr class="tkhaiheader"> 
							  <td class="align-c" >STT</td>
							  <td class="align-c" >Loại phí, lệ phí và các khoản thu khác</td>							  
							  <td class="align-c" >Đơn vị tiền</td>
							  <td class="align-c" >Số tiền thu được</td>
							  <td class="align-c" >Tỷ lệ trích để lại theo chế độ (%)</td>
							  <td class="align-c" >Số tiền trích để lại theo chế độ</td>
							  <td class="align-c" >Số tiền phải nộp NSNN</td>
							  <td class="align-c" >Số tiền đã kê khai trong kỳ</td>
							  <td class="align-c" >Chênh lệch giữa số quyết toán và số đã kê khai</td>
							</tr>
							 
							  <td class="align-c" >(1)</td>          
							  <td class="align-c" >(2)</td>							  
							  <td class="align-c" >(3)</td>
							  <td class="align-c" >(4)</td>
							  <td class="align-c" >(5)</td>
							  <td class="align-c" >(6)</td>
							  <td class="align-c" >(7)=(4)–(6)</td>
							  <td class="align-c" >(8)</td>
							  <td class="align-c" >(9)=(7)-(8)</td>
							 
							</thead>
							 <xsl:for-each select="$tkchinh/NoiDung02PLPNG/ChiTietPhiLePhiKhoanThuKhac">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							   <td class="align-l"><xsl:value-of select="ten_LoaiPLPKhoanThuKhac"/></td>							   
							   <td class="align-c"><xsl:value-of select="ma_DonViTien"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThuDuoc)"/></td>
							   <td class="align-c"><xsl:value-of select="tyLe"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienPHTrichTheoCheDo)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienPHPhaiNop)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienDaKKTrongKy)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chenhLech)"/></td>
							  </tr>
							  </xsl:for-each>
							  

							  
							  <xsl:for-each select="$tkchinh/TongCong02PLPNG/ChiTietTongCongTheoLoaiTien">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td colspan="2">
							   <b>Tổng cộng &#160;</b></td>
							   <td class="align-c"><b><xsl:value-of select="ma_DonViTien"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTThuDuoc)"/></b></td>
							   <td></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTTrichTheoCheDo)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTPhaiNop)"/></b></td>
								<td></td>
								<td></td>
							  </tr>
							  </xsl:for-each>	
							  
							 </table>
</td>
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