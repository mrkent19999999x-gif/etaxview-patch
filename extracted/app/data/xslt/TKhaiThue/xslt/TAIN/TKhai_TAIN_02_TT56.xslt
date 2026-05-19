<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/ 2013/TT-BTC ngày  06/11/2013 của Bộ Tài chính '" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						 <tr>
						   <td class="align-c" rowspan="2"><b>STT</b></td>
						   <td class="align-c" rowspan="2"><b>Tên loại tài nguyên</b></td>
						   <td class="align-c" colspan="2"><b>Sản lượng tài nguyên tính thuế</b></td>
						   <td class="align-c" rowspan="2"><b>Giá tính thuế đơn vị tài nguyên</b></td>
						   <td class="align-c" rowspan="2"><b>Thuế suất (%)</b></td>
						   <td class="align-c" rowspan="2"><b>Mức thuế tài nguyên ấn định  trên 1 đơn vị tài nguyên</b></td>
						   <td class="align-c" rowspan="2"><b>Thuế tài nguyên phát sinh trong kỳ</b></td>
						   <td class="align-c" rowspan="2"><b>Thuế tài nguyên dự kiến được miễn giảm trong kỳ</b></td>						   						   						   						   
						   <td class="align-c" rowspan="2"><b>Thuế tài nguyên phát sinh phải nộp trong kỳ</b></td>	
						   <td class="align-c" rowspan="2"><b>Thuế tài nguyên đã kê khai trong kỳ</b></td>						   						   						   						   
						   <td class="align-c" rowspan="2"><b>Chênh lệch giữa số quyết toán với kê khai</b></td>	 					   						   						   						   						   
						 </tr>
						 <tr>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Sản lượng</b></td>						    
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8) = (4) x (5) x (6) hoặc (8) = (4) x (7)</td>						   
						   <td class="align-c">(9)</td>
						   <td class="align-c">(10) = (8) - (9)</td>
						   <td class="align-c">(11)</td>
						   <td class="align-c">(12) = (10) - (11)</td>						   						   
						 </tr>						 
						 <tr>
						    <td class="align-c"><b>I</b></td>
						    <td class="align-l" colspan="11"><b>Tài nguyên khai thác:</b></td>
						
          				 </tr>
							<xsl:for-each select="$tkchinh/TNKhaiThac/CTietTNKhaiThac">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-l"><xsl:value-of select="ct3"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>		
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>						
							  </tr>
							</xsl:for-each>									
					     <tr>
						    <td class="align-c"><b>II</b></td>
						    <td class="align-l"  colspan="11"><b>Tài nguyên thu mua gom:</b></td>
  						
          				 </tr>
							<xsl:for-each select="$tkchinh/TNThuMuaGom/CTietTNThuMuaGom">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-l"><xsl:value-of select="ct3"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
      						 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>		
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>						
							  </tr>
						</xsl:for-each>			
						
							<tr>
							    <td class="align-c"><b>III</b></td>
							    <td class="align-c" colspan="6"><b>Tổng cộng</b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct8)"/></b></td>
   							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct9)"/></b></td>
  							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct10)"/></b></td>
  							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct11)"/></b></td>
  							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct12)"/></b></td> 
							</tr>
 			 </table>
		 </div>		
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