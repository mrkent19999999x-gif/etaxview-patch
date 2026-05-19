<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP1">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>					   
						 </tr>
						 <tr>
						<td class="tkhaiheader">I</td>
						<td class="b">Thuế TNDN theo từng lần xuất bán dầu thô</td>
						<td></td>
						<td></td>
					</tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Tổng doanh thu chịu thuế TNDN theo từng lần xuất bán dầu thô trong kỳ tính thuế</td>
							<td class="align-c">[23]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Tổng chi phí được trừ khi xác định thu nhập chịu thuế trong kỳ tính thuế</td>
							<td class="align-c">[24]</td>						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Tổng thu nhập chịu thuế trong kỳ tính thuế [25]=[23]-[24]</td>
							<td class="align-c">[25]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[26]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số tiền thuế thu nhập doanh nghiệp của hoạt động khai thác dầu thô [27]=[25]x[26]</td>
							<td class="align-c">[27]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
   						  </tr>			
   					<tr>
						<td class="tkhaiheader">II</td>
						<td class="b">Thuế TNDN theo từng lần xuất bán dầu thô</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
							<td class="align-c">1</td>
							<td class="align-l">Thu nhập chịu thuế trong kỳ tính thuế</td>
							<td class="align-c">[28]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[29]</td>						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Số tiền thuế thu nhập doanh nghiệp đối với thu nhập từ tiền kết dư của phần dầu để lại [30]=[28]x[29]</td>
							<td class="align-c">[30]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>
   						  <tr>
						<td class="tkhaiheader">III</td>
						<td class="b">Thuế TNDN phải nộp trong kỳ tính thuế [31]=[27]+[30]</td>
						<td class="align-c">[31]</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
					</tr>				  
					    
 			 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
        <div><i>Hạch toán mục 3750, tiểu mục: 3752.</i></div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>