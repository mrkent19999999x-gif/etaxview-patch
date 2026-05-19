<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader09KK-TNCN">
		<xsl:with-param name="mauTKhai"   select="'09/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cá nhân có thu nhập từ tiền lương, tiền công và cá nhân có thu nhập từ kinh doanh)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							    <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c" colspan="3"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu </b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c" colspan="3">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								 </tr>
								 <tr>
								   <td class="align-c" rowspan="5">1</td>
								   <td class="align-l" colspan="3">Tổng thu nhập chịu thuế (TNCT) trong kỳ [22]=[23]+[26]</td>
								   <td class="align-c">[22]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/TongTNCTTrongKy/ct22"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c" rowspan="3">a</td>
								   <td class="align-l" colspan="2">Tổng TNCT phát sinh tại Việt Nam </td>
								   <td class="align-c">[23]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/TongTNCTTrongKy/ct23"/></td>
								 </tr>		
								<tr>
								   <td class="align-l" rowspan="2">Trong đó</td>
								   <td>Tổng TNCT làm căn cứ tính giảm thuế</td>
								   <td class="align-c">[24]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/TongTNCTTrongKy/ct24"/></td>
								 </tr>
								<tr>
								   <td>Tổng TNCT được miễn giảm theo Hiệp định</td>
								   <td class="align-c">[25]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/TongTNCTTrongKy/ct25"/></td>
								 </tr>
								<tr>
								   <td class="align-c">b</td>
								   <td colspan="2">Tổng TNCT phát sinh ngoài Việt Nam</td>
								   <td class="align-c">[26]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/TongTNCTTrongKy/ct26"/></td>
								 </tr>	
								<tr>
								   <td class="align-c" rowspan="6">2</td>
								   <td class="align-l" colspan="3">Các khoản giảm trừ [27]=[28]+[29]+[30]+[31]+[32]</td>
								   <td class="align-c">[27]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct27"/></td>
								 </tr>  							 
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l" colspan="2">Cho bản thân cá nhân</td>
								   <td class="align-c">[28]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct28"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l" colspan="2">Cho những người phụ thuộc được giảm trừ</td>
								   <td class="align-c">[29]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct29"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">c</td>
								   <td class="align-l" colspan="2">Từ thiện, nhân đạo, khuyến học</td>
								   <td class="align-c">[30]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct30"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">d</td>
								   <td class="align-l" colspan="2">Các khoản đóng bảo hiểm được trừ</td>
								   <td class="align-c">[31]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct31"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">e</td>
								   <td class="align-l" colspan="2">Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
								   <td class="align-c">[32]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/CacKhoanGiamTru/ct32"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l" colspan="3">Tổng thu nhập tính thuế [33]=[22]-[25]-[27]</td>
								   <td class="align-c">[33]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/ct33"/></td>
								 </tr>	
								 <tr>
								   <td class="align-c">4</td>
								   <td class="align-l" colspan="3">Tổng số thuế thu nhập cá nhân (TNCN) phát sinh trong kỳ</td>
								   <td class="align-c">[34]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/ct34"/></td>
								 </tr>								
								 <tr>
								   <td class="align-c" rowspan="4">5</td>
								   <td class="align-l" colspan="3">Tổng số thuế đã tạm nộp, đã khấu trừ, đã nộp trong kỳ  [35]=[36]+[37]+[38]</td>
								   <td class="align-c">[35]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopTrongKy/ct35"/></td>
								 </tr>  							 
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l" colspan="2">Đã khấu trừ</td>
								   <td class="align-c">[36]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopTrongKy/ct36"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l" colspan="2">Đã tạm nộp</td>
								   <td class="align-c">[37]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopTrongKy/ct37"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">c</td>
								   <td class="align-l" colspan="2">Đã nộp ở nước ngoài được giảm trừ (nếu có)</td>
								   <td class="align-c">[38]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopTrongKy/ct38"/></td>
								 </tr>	
                                  <tr>
								   <td class="align-c" rowspan="3">6</td>
								   <td class="align-l" colspan="3">Tổng số thuế TNCN được giảm trong kỳ [39]=[40]+[41]</td>
								   <td class="align-c">[39]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoGiamTrongKy/ct39"/></td>
								 </tr>  							 
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l" colspan="2">Tổng số thuế TNCN được giảm do làm việc trong khu kinh tế</td>
								   <td class="align-c">[40]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoGiamTrongKy/ct40"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l" colspan="2">Tổng số thuế TNCN được giảm khác </td>
								   <td class="align-c">[41]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoGiamTrongKy/ct41"/></td>
								 </tr>									 
								 <tr>
								   <td class="align-c">7</td>
								   <td class="align-l" colspan="3">Tổng số thuế còn phải nộp trong kỳ [42]=[34]-[35]-[39] &gt;= 0</td>
								   <td class="align-c">[42]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/ct42"/></td>
								 </tr>	
								  <tr>
								   <td class="align-c" rowspan="5">8</td>
								   <td class="align-l" colspan="3">Tổng số thuế nộp thừa trong kỳ [43] = [34]-[35]-[39] &lt; 0</td>
								   <td class="align-c">[43]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopThuaTrongKy/ct43"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c" rowspan="3">a</td>
								   <td class="align-l" colspan="2">Tổng số thuế đề nghị hoàn trả [44]=[45]+[46]</td>
								   <td class="align-c">[44]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopThuaTrongKy/ct44"/></td>
								 </tr>		
								 <tr>
								   <td class="align-l" rowspan="2">Trong đó</td>
								   <td>Số thuế hoàn trả vào tài khoản người nộp thuế</td>
								   <td class="align-c">[45]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopThuaTrongKy/ct45"/></td>
								 </tr>
								<tr>
								   <td>Số thuế bù trừ cho khoản phải nộp Ngân sách nhà nước khác</td>
								   <td class="align-c">[46]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopThuaTrongKy/ct46"/></td>
								 </tr>
								<tr>
								   <td class="align-c">c</td>
								   <td colspan="2">Tổng số thuế bù trừ cho các phát sinh của kỳ sau [47]=[43]-[44]</td>
								   <td class="align-c">[47]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/SoNopThuaTrongKy/ct47"/></td>
								 </tr>							 								 						 							 							 								 				 	 					 					 
							   </table>
                        </div>
					</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>				
					   
	</xsl:template>		
</xsl:stylesheet>