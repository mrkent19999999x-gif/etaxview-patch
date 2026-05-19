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
		 <xsl:call-template name="tkhaiHeader13KK-TNCN">
		<xsl:with-param name="mauTKhai"   select="'13/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cá nhân có thu nhập từ chuyển nhượng chứng khoán)'"/>
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
								   <td class="align-c"><b>A</b></td>
								   <td class="align-l" colspan="5"><b>XÁC ĐỊNH THU NHẬP TÍNH THUẾ</b> </td>
								 </tr>  
								
							 <tr>
								   <td class="align-c">1</td>
								   <td class="align-l" colspan="3">Tổng giá trị chứng khoán bán ra </td>
								   <td class="align-c">[22]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhTNhapTThue/ct22"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l" colspan="3">Tổng giá trị chứng khoán mua vào</td>
								   <td class="align-c">[23]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhTNhapTThue/ct23"/></td>
								 </tr>	
								 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l" colspan="3">Các chi phí liên quan</td>
								   <td class="align-c">[24]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhTNhapTThue/ct24"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">4</td>
								   <td class="align-l" colspan="3">Thu nhập chịu thuế [25]=[22]-[23]-[24]</td>
								   <td class="align-c">[25]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhTNhapTThue/ct25"/></td>
								 </tr> 
								 <tr>
								   <td class="align-c"><b>B</b></td>
								   <td class="align-l" colspan="5"><b>XÁC ĐỊNH SỐ THUẾ PHẢI NỘP CẢ NĂM</b> </td>
								 </tr>  
								<tr>
								   <td class="align-c">1</td>
								   <td class="align-l" colspan="3">Số thuế phải nộp trong kỳ</td>
								   <td class="align-c">[26]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/ct26"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l" colspan="3">Số thuế đã khấu trừ theo thuế suất 0,1% trong kỳ</td>
								   <td class="align-c">[27]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/ct27"/></td>
								 </tr>	
								 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l" colspan="3">Số thuế còn phải nộp [28]=[26]-[27] &gt; 0</td>
								   <td class="align-c">[28]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/ct28"/></td>
								 </tr>
								 <tr>
								   <td class="align-c" rowspan="4">4</td>
								   <td class="align-l" colspan="3">Số thuế nộp thừa ([29]=[26]-[27] &lt; 0) </td>
								   <td class="align-c">[29]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/SoThueNopThua/ct29"/></td>
								 </tr> 
								 	 <tr>
								   <td class="align-c" rowspan="3">a</td>
								   <td class="align-l" colspan="2">Số thuế đề nghị hoàn trả [30]=[31]+[32]</td>
								   <td class="align-c">[30]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/SoThueNopThua/ct30"/></td>
								 </tr>		
								<tr>
								   <td class="align-l" rowspan="2">Trong đó</td>
								   <td>Số thuế hoàn trả vào tài khoản người nộp thuế</td>
								   <td class="align-c">[31]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/SoThueNopThua/ct31"/></td>
								 </tr>
								<tr>
								   <td>Số thuế bù trừ cho khoản phải nộp Ngân sách nhà nước khác</td>
								   <td class="align-c">[32]</td>
								   <td class="number align-r"><xsl:value-of select="$tkchinh/XDinhSThuePNopCaNam/SoThueNopThua/ct32"/></td>
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