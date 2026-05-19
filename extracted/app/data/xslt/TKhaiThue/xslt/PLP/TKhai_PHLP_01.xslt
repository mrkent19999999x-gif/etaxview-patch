<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/PHLP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân thu phí, lệ phí thuộc Ngân sách nhà nước)'"/>
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
							  <td>STT</td>
							  <td>Loại phí, lệ phí</td>
							  <td>Tiểu mục</td>      
							  <td>Số tiền phí, lệ phí thu được</td>
							  <td>Tỷ lệ trích sử dụng theo chế độ(%)</td>
							  <td>Số tiền phí, lệ phí trích sử dụng theo chế độ</td>
							  <td>Số tiền phí, lệ phí phải nộp NSNN</td>
							</tr>
							 <tr class="tkhaiheader">  
							  <td class="align-c" >(1)</td>          
							  <td class="align-c" >(2)</td>
							  <td class="align-c" >(3)</td>
							  <td class="align-c" >(4)</td>
							  <td class="align-c" >(5)</td>
							  <td class="align-c" >(6)</td>
							  <td class="align-c" >(7)=(4)-(6)</td>
							 </tr>     
							</thead>
							 <xsl:for-each select="$tkchinh/NoiDung01PHLP/ChiTietPhiLePhi">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							   <td align="left" width="300px" ><xsl:value-of select="ihtkk:getTenPLP(ct2)"/></td>
							   <td class="align-c"><xsl:value-of select="ct3"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							  </tr>
							  </xsl:for-each>
							  <tr>
							 <td colspan="2" class="align-c"><b>Tổng cộng</b></td>  
							 <td></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct4)"/></b></td>
							 <td></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct6)"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct7)"/></b></td>
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