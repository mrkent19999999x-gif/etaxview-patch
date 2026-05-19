<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP1">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 <div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>						   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Sản lượng dầu thô chịu thuế tài nguyên trong kỳ tính thuế  [23]=[23a]+[23b]</td>
							<td class="align-c">[23]</td>
							<td class="align-c">Thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr> 
					     <tr>
							<td class="align-c"><i>1.1</i></td>					     
            				<td class="align-l"><i>Sản lượng dầu thô xuất khẩu</i></td>
							<td class="align-c"><i>[23a]</i></td>
							<td class="align-c"><i>Thùng</i></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23a)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c"><i>1.2</i></td>					     					    
							<td class="align-l"> <i>Sản lượng dầu thô xuất bán tại Việt Nam</i></td>
							<td class="align-c"><i>[23b]</i></td>
							<td class="align-c"><i>Thùng</i></td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23b)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Doanh thu</td>
							<td class="align-c">[24]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Giá tính thuế tài nguyên trong kỳ tính thuế  [25]=[24]/[23]</td>
							<td class="align-c">[25]</td>
							<td class="align-c">USD/thùng</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Tỷ lệ thuế tài nguyên </td>
							<td class="align-c">[26]</td>
							<td class="align-c">%</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Thuế tài nguyên bằng dầu thô phải nộp trong kỳ tính thuế  [27]=[23]x[26]</td>
							<td class="align-c">[27]</td>
							<td class="align-c">Thùng</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [28]=[25]x[27]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
 			 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">
        <div><i>Hạch toán Dầu thô mục lục 3750, tiểu mục thu: 3751.</i></div>		
        	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>