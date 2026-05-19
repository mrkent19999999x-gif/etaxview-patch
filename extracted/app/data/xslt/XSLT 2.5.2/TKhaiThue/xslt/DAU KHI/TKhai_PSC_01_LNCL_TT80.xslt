<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)
'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_01_LNCL_PSC_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/LNCN-PSC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
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
							<td class="align-c">1</td>
							<td class="align-l">Sản lượng dầu, khí xuất bán trong kỳ tính thuế</td>
							<td class="align-c">[26]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT26/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT26/giaTri)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Sản lượng dầu thô, khí thiên nhiên xuất bán quy đổi</td>
							<td class="align-c">[27]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT27/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT27/giaTri)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Hệ số quy đổi</td>
							<td class="align-c">[28]</td>
						   <td class="align-c"><xsl:value-of select="($tkchinh/CT28/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT28/giaTri)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Giá bán</td>
							<td class="align-c">[29]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/CT29/ten_donvitinh)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT29/giaTri)"/></td>
   						  </tr>		
   						    <tr>
							<td class="align-c">5</td>
							<td class="align-l">Doanh thu xuất bán trong kỳ tính thuế</td>
							<td class="align-c">[30]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>		
   						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Thuế tài nguyên phải nộp trong kỳ tính thuế</td>
							<td class="align-c">[31]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
   						  </tr>
   						   <tr>
							<td class="align-c">7</td>
							<td class="align-l">Thuế xuất khẩu trong kỳ tính thuế</td>
							<td class="align-c">[32]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">8</td>
							<td class="align-l">Các loại thuế khác (nếu có)</td>
							<td class="align-c">[33]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
   						  </tr>
   						   <tr>
							<td class="align-c">9</td>
							<td class="align-l">Dầu thu hồi chi phí</td>
							<td class="align-c">[34]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
   						  </tr>
   						    <tr>
							<td class="align-c">10</td>
							<td class="align-l">Chi phí được trừ khác</td>
							<td class="align-c">[35]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
   						  </tr>
   						   <tr>
							<td class="align-c">11</td>
							<td class="align-l">Lợi nhuận trước thuế [36]=[30]-[31]-…-[35]</td>
							<td class="align-c">[36]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
   						  </tr>	
   						   <tr>
							<td class="align-c">12</td>
							<td class="align-l">Thuế suất thuế TNDN</td>
							<td class="align-c">[37]</td>
							<td class="align-c">%</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
   						  </tr>	
   						     <tr>
							<td class="align-c">13</td>
							<td class="align-l">Thuế TNDN tạm nộp [38]=[36]x[37]</td>
							<td class="align-c">[38]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
   						  </tr>	
   						     <tr>
							<td class="align-c">14</td>
							<td class="align-l">Lãi dầu, khí sau thuế theo quyết toán [39]=[36]-[38]</td>
							<td class="align-c">[39]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
   						  </tr>
   						     <tr>
							<td class="align-c">15</td>
							<td class="align-l">Tỷ lệ chia cho nước chủ nhà</td>
							<td class="align-c">[40]</td>
							<td class="align-c">%</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
   						  </tr>
   						    <tr>
							<td class="align-c">16</td>
							<td class="align-l">Lãi dầu, khí sau thuế của nước chủ nhà theo quyết toán [41]=[39]x[40]</td>
							<td class="align-c">[41]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
   						  </tr>	
   						    <tr>
							<td class="align-c">17</td>
							<td class="align-l">1,5% phí quản lý, giám sát các Hợp đồng dầu khí [42] = [41] x 1,5%</td>
							<td class="align-c">[42]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
   						  </tr>
   						   <tr>
							<td class="align-c">18</td>
							<td class="align-l">Lãi dầu, khí nước chủ nhà còn lại [43]= [41] - [42]</td>
							<td class="align-c">[43]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
   						  </tr>
   						  <tr>
							 
							<td class="align-c"><i>18.1</i></td>
							<td class="align-l"><i>Tỷ lệ (%) nộp ngân sách</i></td>
							<td class="align-c"><i>[44]</i></td>
							<td class="align-c"><i>%</i></td>
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)"/></i></td>
   						  </tr>
   						  <tr>
							<td class="align-c"><i>18.2</i></td>
							<td class="align-l"><i>Tỷ lệ (%) để lại Công ty mẹ - PVN</i></td>
							<td class="align-c"><i>[45]</i></td>
							<td class="align-c"><i>%</i></td>
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)"/></i></td>
   						  </tr>
   						   <tr>
							<td class="align-c"><i>18.3</i></td>
							<td class="align-l"><i>Số tiền nộp trực tiếp vào ngân sách [46] = [43] x [44]</i></td>
							<td class="align-c"><i>[46]</i></td>
							<td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)"/></i></td>
   						  </tr>
   						    <tr>
							<td class="align-c"><i>18.4</i></td>
							<td class="align-l"><i>Số tiền nộp về Công ty mẹ - PVN [47] = [43] x [45]</i></td>
							<td class="align-c"><i>[47]</i></td>
							<td class="align-c"><i><xsl:value-of select="($tkchinh/ten_DonVi)"/></i></td>
							<td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)"/></i></td>
   						  </tr>
   						    <tr>
							<td class="align-c">19</td>
							<td class="align-l">Tỷ giá quy đổi (nếu có)</td>
							<td class="align-c">[48]</td>
							<td class="align-c">VND/USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)"/></td>
   						  </tr>																					
   					</table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên. </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Chỉ tiêu [07]: Tên người nộp thuế là Tập đoàn Dầu khí Việt Nam (Lô...). </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.   </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Trường hợp dầu thô, condensate, khí thiên nhiên bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp thuế là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.    </i></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- USD: đô la Mỹ; VND: đồng Việt Nam.   </i></div> 
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>