<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 176/2014/TT-BTC ngày 17/11/2014 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01TK_VSP">
		<xsl:with-param name="mauTKhai"   select="'01/TK-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Liên doanh Việt - Nga Vietsovpetro)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
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
							<td class="align-l">Sản lượng dầu khí xuất bán</td>
							<td class="align-c">[30]</td>
							<td class="align-c">Thùng; m3</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Tỷ lệ dầu để lại theo kế hoạch</td>
							<td class="align-c">[31]</td>
							<td class="align-c">%</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Sản lượng dầu lãi tạm tính</td>
							<td class="align-c">[32]</td>
							<td class="align-c">Thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Giá tính thuế </td>
							<td class="align-c">[33]</td>
							<td class="align-c">USD/thùng; USD/m3</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Giá dầu thô cơ sở</td>
							<td class="align-c">[34]</td>
							<td class="align-c">USD/thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Doanh thu [35]=[30]x[33]</td>
							<td class="align-c">[35]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">7</td>
							<td class="align-l">Số tiền thuế tài nguyên tạm tính phải nộp </td>
							<td class="align-c">[36]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
   						  </tr>
   						  <tr>
   						  <td class="align-c">8</td>
							<td class="align-l">Số tiền thuế đặc biệt tạm tính phải nộp  </td>
							<td class="align-c">[37]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
   						  </tr>
   						 <tr>
   						  <td class="align-c">9</td>
							<td class="align-l">Số phụ thu tạm tính phải nộp [38]=[39] hoặc [40] </td>
							<td class="align-c">[38]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
   						  </tr>
   						  <tr>
   						  <td class="align-c">9.1</td>
							<td class="align-l">Trường hợp {1,2x[34]} &lt; [33] ≤ {1,5x[34]}:[39] = 50%x{[33]–1,2x[34]}x[32]</td>
							<td class="align-c">[39]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
   						  </tr>
   						  <tr>
   						  <td class="align-c">9.2</td>
							<td class="align-l">Trường hợp [33] >{1,5x[34]}:[40]=[41] + [42]</td>
							<td class="align-c">[40]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
   						  </tr>
   						  <tr>
   						  <td class="align-c">a</td>
							<td class="align-l"> - Phụ thu theo mức 50% [41] = 50%x{1,5x[34]–1,2x[34]}x[32] </td>
							<td class="align-c">[41]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
   						  </tr>
   						   <tr>
   						  <td class="align-c">b</td>
							<td class="align-l">  - Phụ thu theo mức 60% [42] = 60%x{[33]–1,5x[34]}x[32] </td>
							<td class="align-c">[42]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
   						  </tr>
   						  <tr>
   						  <td class="align-c">10</td>
							<td class="align-l"> Số thuế TNDN tạm tính phải nộp </td>
							<td class="align-c">[43]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
   						  </tr>
   						   <tr>
   						  <td class="align-c">11</td>
							<td class="align-l"> Tỷ giá quy đổi</td>
							<td class="align-c">[44]</td>
							<td class="align-c">VND/USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
   						  </tr>						
   					</table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [04]: Kỳ tính thuế đối với dầu thô, condensate là ngày xuất bán dầu thô, condensate; Kỳ tính thuế đối với khí thiên nhiên là tháng xuất bán.      </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -  Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate, khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.      </i></div>

        
<div id="sigDiv"></div>
</td></tr>
</table>		

        

	</xsl:template>		
</xsl:stylesheet>