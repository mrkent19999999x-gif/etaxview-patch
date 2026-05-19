<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01-1-PTHU-VSP">
		<xsl:with-param name="mauTKhai"   select="'01-1/PTHU-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Đối với dầu lãi từ tiền kết dư của phần dầu để lại)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		      
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Đơn vị</b></td>
						   <td class="align-c"><b>Số lượng</b></td>
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
							<td class="align-l">Số tiền kết dư của phần dầu thô, condensate, khí thiên nhiên (nếu có) để lại</td>
							<td class="align-c">[26]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Số tiền kết dư của phần khí thiên nhiên để lại (nếu có)</td>
							<td class="align-c">[27]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Số tiền kết dư của phần dầu thô, condensate để lại [28]=[26]-[27]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
   						  </tr>						  
					     <tr>
							<td class="align-c">4</td>					     
            				<td class="align-l">Giá bình quân gia quyền của các lô dầu thô, condensate xuất bán trong kỳ kết dư</td>
							<td class="align-c">[29]</td>
							<td class="align-c">USD/thùng</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>						  
					     <tr>
							<td class="align-c">5</td>					     
            				<td class="align-l">Sản lượng dầu lãi từ tiền kết dư của phần dầu để lại [30] = [28]/[29]</td>
							<td class="align-c">[30]</td>
							<td class="align-c">Thùng</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c">6</td>					     					    
							<td class="align-l">Giá dầu thô cơ sở</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD/thùng</td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">7</td>					     					    
							<td class="align-l">Số phụ thu tạm tính phải nộp [32]=[33] hoặc [34]</td>
							<td class="align-c">[32]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c">7.1</td>					     					    
							<td class="align-l">Trường hợp {1,2x[31]} 	&lt; [29] ≤ {1,5x[31]}: [33] = 50%x{[29]–1,2x[31]}x[30]</td>
							<td class="align-c">[33]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																																	
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">7.2</td>
							<td class="align-l"> Trường hợp [29] > {1,5x[31]}:[34]=[35] + [36]</td>
							<td class="align-c">[34]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>		
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>																															
						  </tr>
						  <tr>
						    <td class="align-c">a</td>					     					    
							<td class="align-l">- Phụ thu theo mức 50% [35] = 50%x{1,5x[31]–1,2x[31]}x[30]</td>
							<td class="align-c">[35]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">b</td>
							<td class="align-l"> - Phụ thu theo mức 60% [36] = 60%x{[29]–1,5x[31]}x[30]</td>
							<td class="align-c">[36]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>													
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">8</td>
							<td class="align-l"> Tỷ giá quy đổi</td>
							<td class="align-c">[37]</td>
							<td class="align-c">VND/USD</td>											
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
						  </tr>
 			 </table>																																
				
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu số [03]- Kỳ tính thuế là ngày, tháng, năm Hội đồng Liên doanh ra quyết nghị khoản tiền sử dụng không hết. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu số [04]- Kỳ kết dư là khoảng thời gian Vietsovpetro xác định khoản tiền sử dụng không hết để báo cáo Hội đồng Liên doanh quyết nghị. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.   </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	   
	</xsl:template>		
</xsl:stylesheet>