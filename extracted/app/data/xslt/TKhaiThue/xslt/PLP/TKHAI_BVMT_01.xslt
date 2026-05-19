<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeaderBVMT_01">
		<xsl:with-param name="mauTKhai"   select="'01/BVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table>		
			<tr>
				<td class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</td>
			</tr>
			<tr>
				<td>
					<table class="tkhai_table"  >
							<thead>
							 <tr class="tkhaiheader">     
							  <td rowspan="2">STT</td>
							  <td rowspan="2">Loại khoáng sản</td>
							  <td colspan="2" >Số lượng khoáng sản</td>
							  <td rowspan="2">Mức phí</td> 
							  <td  rowspan="2">Số phí phải nộp trong kỳ</td>
							</tr>
							<tr class="tkhaiheader">     
							  <td  class="align-c" height="30">Đơn vị tính</td>
							  <td  class="align-c" >Số lượng</td>
							</tr>
							 <tr class="tkhaiheader">  
							  <td class="align-c">(1)</td>          
							  <td class="align-c">(2)</td>
							  <td class="align-c">(3)</td>
							  <td class="align-c">(4)</td>
							  <td class="align-c">(5)</td>
							  <td class="align-c">(6)=(4)x(5)</td>
							 </tr>
							 </thead>     
							 <tr>  
							  <td class="align-l" colspan="5">         <div>
									 <i><b>I. Khoáng sản do cơ sở tự khai thác:</b></i>
								 </div>      </td>
							 </tr>     
							
							<xsl:for-each select="$tkchinh/PhiBVMT/KSCSoTuKhaiThac/TTinKhoangSan/KhoangSan">
							<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c" width="40px"><xsl:value-of select="$currentRows" /></td>
							   <td class="align-l" ><xsl:value-of select="tenKhoangSan"/></td>
							   <td class="align-c" width="100px"><xsl:value-of select="donViTinh"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(mucPhi)"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(soPhiPNop)"/></td>
							  </tr>
							 </xsl:for-each>
							 <tr>  
							  <td class="align-l" colspan="5">         <div>
									 <i><b>II. Khoáng sản do cơ sở thu mua nộp thay người khai thác:</b></i>
								 </div>      </td>
							 </tr>     
							<xsl:for-each select="$tkchinh/PhiBVMT/KSanCoSoThuMuaNopThay/TTinKhoangSan/KhoangSan">
							<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c" width="40px"><xsl:value-of select="$currentRows" /></td>
							   <td class="align-l" ><xsl:value-of select="tenKhoangSan"/></td>
							   <td class="align-c" width="100px"><xsl:value-of select="donViTinh"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(mucPhi)"/></td>
							   <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(soPhiPNop)"/></td>
							  </tr>
							 </xsl:for-each>						 
							  <tr>
								<td colspan="5" class="align-r"><b>Tổng cộng:</b></td>  
								<td class="align-r" width="120px"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhiBVMT/tongPhiPNop)"/></b></td>
							  </tr>							 
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