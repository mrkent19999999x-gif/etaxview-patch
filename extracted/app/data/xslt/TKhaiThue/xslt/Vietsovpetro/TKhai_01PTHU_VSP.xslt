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
		 <xsl:call-template name="tkhaiHeader-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/PTHU-VSP'"/>
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
							<td class="align-l">Tỷ lệ dầu để lại theo kế hoạch</td>
							<td class="align-c">[28]</td>
							<td class="align-c">%</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Sản lượng dầu lãi tạm tính</td>
							<td class="align-c">[29]</td>
							<td class="align-c">thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>						  
					     <tr>
							<td class="align-c">4</td>					     
            				<td class="align-l">Giá dầu thô cơ sở</td>
							<td class="align-c">[30]</td>
							<td class="align-c">USD/thùng</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>						  
					     <tr>
							<td class="align-c">5</td>					     
            				<td class="align-l">Giá bán dầu thô</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD/thùng</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c">6</td>					     					    
							<td class="align-l">Số phụ thu tạm tính phải nộp [32]=[33] hoặc [34]</td>
							<td class="align-c">[32]</td>
							<td class="align-c">USD</td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">6.1</td>					     					    
							<td class="align-l">Trường hợp {1,2x[30]} &lt; [31] &#8804; {1,5x[30]}: [33] = 50%x{[31]–1,2x[30]}x[29]</td>
							<td class="align-c">[33]</td>
							<td class="align-c">USD</td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c">6.2</td>					     					    
							<td class="align-l">Trường hợp [31] &gt; {1,5x[30]}: [34]=[35] + [36]</td>
							<td class="align-c">[34]</td>
							<td class="align-c">USD</td>																																			
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">a.</td>
							<td class="align-l"> - Phụ thu theo mức 50%  [35] = 50%x{1,5x[30]–1,2x[30]}x[29]</td>
							<td class="align-c">[35]</td>
							<td class="align-c">USD</td>																																										
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">b.</td>
							<td class="align-l">- Phụ thu theo mức 60%  [36] = 60%x{[31]–1,5x[30]}x[29]</td>
							<td class="align-c">[36]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
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
        <div><i>Hạch toán mục 3700, tiểu mục 3706</i></div>	
        </div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>