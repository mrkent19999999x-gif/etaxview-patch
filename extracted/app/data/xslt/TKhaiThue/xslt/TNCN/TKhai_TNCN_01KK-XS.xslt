<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		  <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/KK-XS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho công ty xổ số kiến thiết trả thu nhập cho đại lý xổ số)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">	
			<div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
			<tr>
				<td>
					<table class="tkhai_table"  >
					     <colgroup>
						   <col width="30px"/>
						   <col width="650px"/>
						   <col width="30px"/>
						   <col width="120px"/>
						 </colgroup>
						 <tr class="tkhaiheader">
						   <td >STT</td>
						   <td  colspan="2"> Chỉ tiêu</td>
						   <td>Số tiền</td>
						 </tr>
						 <tr  class="tkhaiheader">
						   <td> (1)</td>
						   <td colspan="2">(2)</td>
						   <td>(3)</td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập trả cho đại lý xổ số trong kỳ</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng thu nhập trả cho đại lý xổ số thuộc diện khấu trừ </td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td>Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>  
					   </table>
				</td>
			</tr>
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