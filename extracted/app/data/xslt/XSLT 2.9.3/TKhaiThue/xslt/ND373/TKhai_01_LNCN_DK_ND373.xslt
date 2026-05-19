<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo nghị định 373/2025/NĐ-CP'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01-LNCL-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/LNCN-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<!-- <xsl:with-param name="ghuchuTK"   select="'(Liên doanh Việt - Nga “Vietsovpetro”)'"/> -->
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
							<td class="align-l">Thuế xuất khẩu</td>
							<td class="align-c">[35]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						  </tr>      
						  <tr>
						    <td class="align-c">8</td>					     					    
							<td class="align-l">Thuế đặc biệt tạm tính phải nộp</td>
							<td class="align-c">[36]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																																	
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">9</td>
							<td class="align-l"> Số phụ thu tạm tính phải nộp</td>
							<td class="align-c">[37]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>		
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>																															
						  </tr>
						  <tr>
						    <td class="align-c">10</td>					     					    
							<td class="align-l">Các loại thuế khác (nếu có)</td>
							<td class="align-c">[38]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>																						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">11</td>
							<td class="align-l">Dầu, khí thu hồi chi phí</td>
							<td class="align-c">[39]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">12</td>
							<td class="align-l">Chi phí để lại theo kế hoạch</td>
							<td class="align-c">[40]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">13</td>
							<td class="align-l">Chi phí được trừ khác</td>
							<td class="align-c">[41]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">14</td>
							<td class="align-l">Lợi nhuận trước thuế [42 VSP]=[33]-[34]-[35]-[36]-[37]-[38]-[40]-[41] hoặc [42 PSC]=[33]-[34]-[35]-[38]-[39]-[41] </td>
							<td class="align-c">[42]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">15</td>
							<td class="align-l"> Thuế suất thuế TNDN tạm nộp</td>
							<td class="align-c">[43]</td>
							<td class="align-c">%</td>													
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">16</td>
							<td class="align-l">Thuế TNDN tạm nộp [44] = [42 ] x [43]</td>
							<td class="align-c">[44]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></td>
						  </tr>
						   <tr>
							<td class="align-c">17</td>
							<td class="align-l">Lãi dầu, khí sau thuế/Lợi nhuận sau thuế [45] = [42] - [44]</td>
							<td class="align-c">[45]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">18</td>
							<td class="align-l">Tỷ lệ chia cho nước chủ nhà</td>
							<td class="align-c">[46]</td>
						    <td class="align-c">%</td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">19</td>
							<td class="align-l">Tiền lãi dầu khí sau thuế của nước chủ nhà  [47] = [45] x [46]</td>
							<td class="align-c">[47]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">20</td>
							<td class="align-l">Thu nhập khác/các khoản chia khác của nước chủ nhà</td>
							<td class="align-c">[48]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">21</td>
							<td class="align-l">1,5% phí quản lý, giám sát các Hợp đồng dầu khí [49] = [47] x 1,5%</td>
							<td class="align-c">[49]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct49)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">22</td>
							<td class="align-l">Lãi dầu, khí nước chủ nhà còn lại của Hợp đồng dầu khí [50]=[47] +[48]-[49]</td>
							<td class="align-c">[50]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct50)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>22.1</i></td>
							<td class="align-l"><i>Tỷ lệ (%) nộp ngân sách</i></td>
							<td class="align-c"><i>[51]</i></td>
						      <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct51)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>22.2</i></td>
							<td class="align-l"><i>Tỷ lệ (%) để lại Công ty mẹ - PVN</i></td>
							<td class="align-c"><i>[52]</i></td>
						      <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct52)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>22.3</i></td>
							<td class="align-l"><i>Số tiền nộp trực tiếp vào ngân sách [53 VSP] = ([51] x [47])+[48] hoặc [53 PSC] = [51]x([47]- [49])+ [48]</i></td>
							<td class="align-c"><i>[53]</i></td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct53)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>22.4</i></td>
							<td class="align-l"><i>Số tiền nộp về Công ty mẹ - PVN[54 VSP] = [52] x [47] hoặc [54 PSC] = [52] x ([47]- [49])</i></td>
							<td class="align-c"><i>[54]</i></td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct54)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c">23</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[55]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct55)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><b>II</b></td>
							<td class="align-l"><b>Tiền lãi dầu khí đối với tiền kết dư (áp dụng cho Liên doanh Vietsoveptro)</b></td>
							<td/>
							<td/>
							<td/>
						  </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Số tiền kết dư của phần dầu khí để lại</td>
							<td class="align-c">[56]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct56)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>1.1</i></td>
							<td class="align-l"><i>Tiền kết dư phần dầu khí để lại theo giá kế hoạch không sử dụng hết</i></td>
							<td class="align-c"><i>[57]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>												
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct57)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>1.2</i></td>
							<td class="align-l"><i>Tiền kết dư phần chênh lệch giá dầu khí thực tế cao hơn giá kế hoạch </i></td>
							<td class="align-c"><i>[58]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>										
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct58)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Số phụ thu tạm tính phải nộp</td>
							<td class="align-c">[59]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct59)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Thuế TNDN tạm nộp</td>
							<td class="align-c">[60]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct60)"/></td>
						  </tr>
						   <tr>
							<td class="align-c">4</td>
							<td class="align-l">Lợi nhuận sau thuế [61]=[56]-[59]-[60]</td>
							<td class="align-c">[61]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct61)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Tỷ lệ chia cho nước chủ nhà</td>
							<td class="align-c">[62]</td>
						    <td class="align-c">%</td>											
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct62)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Tiền lãi dầu, khí được chia của nước chủ nhà  [63]=[61]x[62]</td>
							<td class="align-c">[63]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>												
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct63)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.1</i></td>
							<td class="align-l"><i>Tỷ lệ (%) nộp ngân sách</i></td>
							<td class="align-c"><i>[64]</i></td>
						    <td class="align-c"><i>%</i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct64)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.2</i></td>
							<td class="align-l"><i>Tỷ lệ (%) để lại Công ty mẹ - PVN </i></td>
							<td class="align-c"><i>[65]</i></td>
						     <td class="align-c"><i>%</i></td>										
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct65)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.3</i></td>
							<td class="align-l"><i>Số tiền nộp trực tiếp vào ngân sách [66] = [63] x [64]</i></td>
							<td class="align-c"><i>[66]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct66)"/></i></td>
						  </tr>
						  <tr>
							<td class="align-c"><i>6.4</i></td>
							<td class="align-l"><i>Số tiền nộp về Công ty mẹ - PVN [67] = [63] x [65]</i></td>
							<td class="align-c"><i>[67]</i></td>
						    <td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>											
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct67)"/></i></td>
						  </tr>
						 <tr>
							<td class="align-c">7</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[68]</td>
						    <td class="align-c">VND/USD</td>											
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct68)"/></td>
						  </tr>
 			 </table>																																
				
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_TT80"/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [10]: Tên người nộp thuế là Tập đoàn Công nghiệp - Năng lượng Quốc gia Việt Nam (Lô…), Liên doanh Việt -Nga “Vietsovpetro” </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Trường hợp NNT khai thác đồng thời dầu thô, condensate, khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - USD: đô la Mỹ; VND: đồng Việt Nam, VSP: Liên doanh Việt - Nga “Vietsovpetro”; PSC: Hợp đồng dầu khí.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	   
	</xsl:template>		
</xsl:stylesheet>