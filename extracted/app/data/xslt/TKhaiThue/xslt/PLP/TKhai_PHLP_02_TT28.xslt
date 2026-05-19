<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2010/TT-BTC ngày 28/02/2010 của  Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/PHLP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dùng cho tổ chức, cá nhân thu phí, lệ phí thuộc Ngân sách nhà nước)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam </i></div>
					<table class="tkhai_table"  >
							 <tr class="tkhaiheader"> 
							  <td>STT</td>
							  <td>Loại phí, lệ phí</td>
							  <td>Chưong</td>
         						  <td>Tiểu mục</td>      
							  <td>Số tiền phí, lệ phí thu được</td>
							  <td>Tỷ lệ trích sử dụng theo chế độ (%)</td>
							  <td>Số tiền phí, lệ phí trích sử dụng theo chế độ</td>
							  <td>Số tiền phí, lệ phí phải nộp NSNN</td>
							  <td>Số tiền phí, lệ phí đã khai trong kỳ</td>
							</tr>
							 <tr class="tkhaiheader">  
							  <td class="align-c" >(1)</td>          
							  <td class="align-c" >(2)</td>
							  <td class="align-c" >(3)</td>
							  <td class="align-c" >(4)</td>
							  <td class="align-c" >(5)</td>
							  <td class="align-c" >(6)</td>
							  <td class="align-c" >(7)</td>
							  <td class="align-c" >(8) = (5) – (7)</td>
							  <td class="align-c" >(9)</td>
							 </tr>     
							 <xsl:for-each select="$tkchinh/TTinPhiLePhi/PhiLePhi">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							   <td align="left"><xsl:value-of select="ct2"/></td>
							   <td class="align-c"><xsl:value-of select="ct3"/></td>
							   <td class="align-c"><xsl:value-of select="ct4"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							  </tr>
							  </xsl:for-each>
							  <tr>
							 <td colspan="2" class="align-c"><b>Tổng cộng</b></td>  
							 <td></td>
							 <td></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongTienThuDuoc)"/></b></td>
							 <td></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongTienTrichSD)"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongTienNopNSNN)"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongTienPLPDaKhaiTrongKy)"/></b></td>
							  </tr>							 
							 </table>
							 <div class="align-l"> Số tiền phí, lệ phí phải nộp vào NSNN (ghi bằng chữ): <xsl:value-of select="$tkchinh/tongTienBangChu"/></div>
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