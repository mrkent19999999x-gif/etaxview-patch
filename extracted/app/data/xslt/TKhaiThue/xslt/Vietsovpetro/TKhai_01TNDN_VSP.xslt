<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/TNDN-VSP'"/>
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
						   <td class="align-c"><b>Đơn vị</b></td>
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
							<td class="align-l">Sản lượng dầu thô xuất bán</td>
							<td class="align-c">[27]</td>
							<td class="align-c">thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá bán dầu thô</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD/thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Doanh thu [29]=[27]x[28]</td>
							<td class="align-c">[29]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>						  
					     <tr>
							<td class="align-c">4</td>					     
            				<td class="align-l">Chi phí được trừ: [30]=[30a]+[30b]+ [30c]+ [30d]+[30e]</td>
							<td class="align-c">[30]</td>
							<td class="align-c">USD</td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>						  
					     <tr>
							<td class="align-c"><i>4.1</i></td>					     
            				<td class="align-l"><i> - Thuế tài nguyên:</i></td>
							<td class="align-c"><i>[30a]</i></td>
							<td class="align-c"></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30a)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c"><i>4.2</i></td>					     					    
							<td class="align-l"> <i>- Thuế xuất khẩu:</i></td>
							<td class="align-c"><i>[30b]</i></td>
							<td></td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30b)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c"><i>4.3</i></td>					     					    
							<td class="align-l"><i> - Thuế đặc biệt:</i></td>
							<td class="align-c"><i>[30c]</i></td>
							<td></td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30c)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c"><i>4.4</i></td>					     					    
							<td class="align-l"><i> - Giá trị sản lượng dầu để lại:</i></td>
							<td class="align-c"><i>[30d]</i></td>
							<td></td>																																			
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30d)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c"><i>4.5</i></td>
							<td class="align-l"><i> - Phụ thu khi giá dầu thô biến động tăng:</i></td>
							<td class="align-c"><i>[30e]</i></td>
							<td></td>																																										
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30e)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Thu nhập chịu thuế tạm tính [31]=[29]-[30]</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Thuế suất thuế TNDN</td>
							<td class="align-c">[32]</td>
							<td class="align-c">%</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">7</td>
							<td class="align-l">Số thuế TNDN tạm tính phải nộp [33]=[31]x[32]</td>
							<td class="align-c">[33]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						  </tr>
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">
		<div><i><u><b>Ghi chú:</b></u> ngày, tháng, năm ở chỉ tiêu số [01] là ngày hoàn thành việc xuất dầu thô tại điểm giao nhận (đối với dầu thô bán tại Việt Nam); hoặc ngày làm xong thủ tục hải quan theo quy định của pháp luật về hải quan (đối với dầu thô xuất khẩu). </i></div><br/>
        <div><i>Hạch toán mục 3750: tiểu mục: 3752.</i></div>	
	    </div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>