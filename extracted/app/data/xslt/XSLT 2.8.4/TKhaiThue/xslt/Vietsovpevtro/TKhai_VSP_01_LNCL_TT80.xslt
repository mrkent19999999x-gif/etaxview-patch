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
		 <xsl:call-template name="tkhaiHeader-01-LNCL-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/LNCN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Liên doanh Việt - Nga “Vietsovpetro”)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		      
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
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
							<td class="align-c"><b>I</b></td>
							<td class="align-l"><b>Tiền lãi dầu khí đối với dầu khí xuất bán</b></td>
							<td/>
							<td/>
							<td/>
						  </tr> 
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Sản lượng dầu, khí xuất bán</td>
							<td class="align-c">[29]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT29/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29/giaTri)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Sản lượng dầu thô, khí thiên nhiên xuất bán quy đổi </td>
							<td class="align-c">[30]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT30/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT30/giaTri)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Hệ số quy đổi </td>
							<td class="align-c">[31]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT31/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT31/giaTri)"/></td>
   						  </tr>						  
					     <tr>
							<td class="align-c">4</td>					     
            				<td class="align-l">Giá bán</td>
							<td class="align-c">[32]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT32/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT32/giaTri)"/></td>
						  </tr>						  
					     <tr>
							<td class="align-c">5</td>					     
            				<td class="align-l">Doanh thu thực hiện</td>
							<td class="align-c">[33]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>													
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c">6</td>					     					    
							<td class="align-l">Thuế tài nguyên tạm tính phải nộp</td>
							<td class="align-c">[34]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																			
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">7</td>					     					    
							<td class="align-l">Thuế xuất khẩu/ Thuế đặc biệt tạm tính phải nộp</td>
							<td class="align-c">[35]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c">8</td>					     					    
							<td class="align-l">Số phụ thu tạm tính phải nộp</td>
							<td class="align-c">[36]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																																	
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">9</td>
							<td class="align-l"> Các loại thuế khác (nếu có)</td>
							<td class="align-c">[37]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>		
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>																															
						  </tr>
						  <tr>
						    <td class="align-c">10</td>					     					    
							<td class="align-l">Chi phí để lại theo kế hoạch</td>
							<td class="align-c">[38]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">11</td>
							<td class="align-l"> Chi phí khác</td>
							<td class="align-c">[39]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">12</td>
							<td class="align-l"> Lợi nhuận trước thuế [40]=[33]-[34]-…-[39]</td>
							<td class="align-c">[40]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">13</td>
							<td class="align-l"> Thuế suất thuế TNDN tạm nộp</td>
							<td class="align-c">[41]</td>
							<td class="align-c">%</td>													
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">14</td>
							<td class="align-l">Thuế TNDN tạm nộp [42]=[40]x[41]</td>
							<td class="align-c">[42]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
						  </tr>
						   <tr>
							<td class="align-c">15</td>
							<td class="align-l">Lợi nhuận sau thuế [43]=[40]-[42]</td>
							<td class="align-c">[43]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">16</td>
							<td class="align-l">Tỷ lệ chia cho nước chủ nhà</td>
							<td class="align-c">[44]</td>
						    <td class="align-c">%</td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">17</td>
							<td class="align-l">Tiền lãi dầu, khí và các khoản khác được chia của nước chủ nhà [45]=[43]x[44]</td>
							<td class="align-c">[45]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>17.1</i></td>
							<td class="align-l"><i>Tỷ lệ (%) nộp ngân sách</i></td>
							<td class="align-c"><i>[46]</i></td>
						      <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>17.2</i></td>
							<td class="align-l"><i>Tỷ lệ (%) để lại Công ty mẹ - PVN</i></td>
							<td class="align-c"><i>[47]</i></td>
						      <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>17.3</i></td>
							<td class="align-l"><i>Số tiền nộp trực tiếp vào ngân sách [48] = [45] x [46]</i></td>
							<td class="align-c"><i>[48]</i></td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>17.4</i></td>
							<td class="align-l"><i>Số tiền nộp về Công ty mẹ - PVN [49] = [45] x [47]</i></td>
							<td class="align-c"><i>[49]</i></td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct49)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c">18</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[50]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct50)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><b>II</b></td>
							<td class="align-l"><b>Tiền lãi dầu khí đối với tiền kết dư</b></td>
							<td/>
							<td/>
							<td/>
						  </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Số tiền kết dư của phần dầu khí để lại</td>
							<td class="align-c">[51]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct51)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>1.1</i></td>
							<td class="align-l"><i>Tiền kết dư phần dầu khí để lại theo giá kế hoạch không sử dụng hết</i></td>
							<td class="align-c"><i>[51a]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>												
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct51a)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>1.2</i></td>
							<td class="align-l"><i>Tiền kết dư phần chênh lệch giá dầu khí thực tế cao hơn giá kế hoạch </i></td>
							<td class="align-c"><i>[51b]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>										
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct51b)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Số phụ thu tạm tính phải nộp</td>
							<td class="align-c">[52]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct52)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Thuế TNDN tạm nộp</td>
							<td class="align-c">[53]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct53)"/></td>
						  </tr>
						   <tr>
							<td class="align-c">4</td>
							<td class="align-l">Lợi nhuận sau thuế [54]=[51]-[52]-[53]</td>
							<td class="align-c">[54]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct54)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Tỷ lệ chia cho nước chủ nhà</td>
							<td class="align-c">[55]</td>
						    <td class="align-c">%</td>											
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct55)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Tiền lãi dầu, khí được chia của nước chủ nhà [56]=[54]x[55]</td>
							<td class="align-c">[56]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct56)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.1</i></td>
							<td class="align-l"><i>Tỷ lệ (%) nộp ngân sách</i></td>
							<td class="align-c"><i>[57]</i></td>
						    <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct57)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.2</i></td>
							<td class="align-l"><i>Tỷ lệ (%) để lại Công ty mẹ - PVN </i></td>
							<td class="align-c"><i>[58]</i></td>
						     <td class="align-c"><i>%</i></td>										
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct58)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.3</i></td>
							<td class="align-l"><i>Số tiền nộp trực tiếp vào ngân sách [59] = [56] x [57]</i></td>
							<td class="align-c"><i>[59]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct59)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.4</i></td>
							<td class="align-l"><i>Số tiền nộp về Công ty mẹ - PVN [60] = [56] x [58]</i></td>
							<td class="align-c"><i>[60]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct60)"/></i></td>
						  </tr>
						 <tr>
							<td class="align-c">7</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[61]</td>
						    <td class="align-c">VND/USD</td>											
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct61)"/></td>
						  </tr>
 			 </table>																																
				
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [07]: Kỳ tính thuế đối với dầu thô, condensate là ngày xuất bán dầu thô, condensate; Kỳ tính thuế đối với khí thiên nhiên là tháng xuất bán; Kỳ tính thuế với trường hợp kết dư là ngày, tháng, năm Hội đồng Liên doanh ra quyết nghị khoản tiền sử dụng không hết. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [10]: Tên người nộp thuế là Tập đoàn Dầu khí Việt Nam (Lô 09.1). </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp dầu thô, condensate, khí thiên nhiên và kết dư bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.  </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate, khí thiên nhiên và phát sinh số kết dư của cả 3 sản phẩm thì kê khai thành từng tờ khai riêng biệt. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam. </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	   
	</xsl:template>		
</xsl:stylesheet>