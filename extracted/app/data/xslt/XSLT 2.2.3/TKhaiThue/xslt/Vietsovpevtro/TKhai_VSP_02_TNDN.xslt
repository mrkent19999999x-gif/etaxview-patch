<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 176/2014/TT-BTC ngày 17/11/2014 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-02TNDN_VSP">
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
						<td class="b">Thuế TNDN đối với dầu khí xuất bán </td>
						<td></td>
						<td></td>
					</tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Tổng doanh thu chịu thuế TNDN trong kỳ tính thuế.</td>
							<td class="align-c">[26]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Tổng chi phí được trừ khi xác định thu nhập chịu thuế trong kỳ tính thuế</td>
							<td class="align-c">[27]</td>						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Tổng thu nhập chịu thuế trong kỳ tính thuế [28]=[26]-[27]</td>
							<td class="align-c">[28]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[29]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số tiền thuế thu nhập doanh nghiệp từ hoạt động dầu khí [30]=[28]x[29]</td>
							<td class="align-c">[30]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>			
   					<tr>
						<td class="tkhaiheader">II</td>
						<td class="b">Thuế TNDN đối với thu nhập từ tiền kết dư của phần dầu để lại</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
							<td class="align-c">1</td>
							<td class="align-l">Thu nhập chịu thuế trong kỳ tính thuế</td>
							<td class="align-c">[31]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[32]</td>						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Số tiền thuế thu nhập doanh nghiệp đối với thu nhập từ tiền kết dư của phần dầu để lại [33]=[31]x[32]</td>
							<td class="align-c">[33]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
   						  </tr>
   						  <tr>
						<td class="tkhaiheader">III</td>
						<td class="b">Số tiền thuế TNDN phải nộp trong kỳ tính thuế [34]=[30]+[33]</td>
						<td class="align-c">[34]</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
					</tr>				  
					    
					 <tr>
						<td class="tkhaiheader">IV</td>
						<td class="b">Số tiền thuế TNDN tạm tính đã kê khai trong kỳ tính thuế</td>
						<td class="align-c">[35]</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
					</tr>	
					<tr>
						<td class="tkhaiheader">V</td>
						<td class="b">Chênh lệch giữa số tiền phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [36]=[34]-[35]</td>
						<td class="align-c">[36]</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
					</tr>	
 			 </table>
 			 		<xsl:call-template name="tkhaiFooter"/>
		 </div>		
      </div>	
      <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate, khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.      </i></div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  

        <div><i>Hạch toán mục 3750, tiểu mục: 3752.</i></div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>