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
		 <xsl:call-template name="tkhaiHeader-VSP2">
		<xsl:with-param name="mauTKhai"   select="'01_1/PTHU-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Đối với dầu lãi từ tiền kết dư của phần dầu để lại)'"/>
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
							<td class="align-l">Số tiền kết dư của phần dầu để lại</td>
							<td class="align-c">[24]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá bình quân gia quyền của kỳ kết dư</td>
							<td class="align-c">[25]</td>
							<td class="align-c">USD/thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Sản lượng dầu lãi từ tiền kết dư của phần dầu để lại [26] = [24]/[25]</td>
							<td class="align-c">[26]</td>
							<td class="align-c">Thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
   						  </tr>						  
					     <tr>
							<td class="align-c">4</td>					     
            				<td class="align-l">Giá dầu thô cơ sở</td>
							<td class="align-c">[27]</td>
							<td class="align-c">USD/thùng</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>						  
					     <tr>
							<td class="align-c">5</td>					     
            				<td class="align-l">Số phụ thu tạm tính phải nộp [28]=[29] hoặc [30]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD</td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c">5.1</td>					     					    
							<td class="align-l">Trường hợp {1,2x[27]} &lt; [25] &#8804; {1,5x[27]}: [29] = 50%x{[25]–1,2x[27]}x[26]</td>
							<td class="align-c">[29]</td>
							<td class="align-c">USD</td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">5.1</td>					     					    
							<td class="align-l">Trường hợp [25] &gt; {1,5x[27]}: [30]=[31] + [32]</td>
							<td class="align-c">[30]</td>
							<td class="align-c">USD</td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c">a.</td>					     					    
							<td class="align-l">- Phụ thu theo mức 50%  [31] = 50%x{1,5x[27]–1,2x[27]}x[26]</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD</td>																																			
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">b.</td>
							<td class="align-l"> - Phụ thu theo mức 60%  [32] = 60%x{[25]–1,5x[27]}x[26]</td>
							<td class="align-c">[32]</td>
							<td class="align-c">USD</td>																																										
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">	
		<div><i><u><b>Ghi chú:</b></u> - Chỉ tiêu số [01]- Kỳ tính thuế là ngày, tháng, năm Hội đồng Liên doanh ra quyết nghị khoản tiền sử dụng không hết. </i></div><br/>
        <div><i> - Chỉ tiêu số [02]- Kỳ kết dư là khoảng thời gian Vietsovpetro xác định khoản tiền sử dụng không hết để báo cáo Hội đồng Liên doanh quyết nghị.</i></div>		<br/>
       <div><i> Hạch toán mục 3700, tiểu mục 3706</i></div>	
       </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	   
	</xsl:template>		
</xsl:stylesheet>