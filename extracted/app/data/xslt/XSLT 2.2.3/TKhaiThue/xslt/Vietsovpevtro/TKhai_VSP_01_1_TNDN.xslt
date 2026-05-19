<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 36/2016/TT-BTC  ngày 26/02/2016 của  Bộ Tài chính)
'" />
	<xsl:variable name="ghiChuPL" select=""/>
		 <xsl:call-template name="tkhaiHeader-01TK_VSP">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-DK '"/>
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
							<td class="align-c">I</td>
							<td class="align-l"><b>Số ngày khai thác dầu khí trong kỳ tính thuế</b></td>
							<td class="align-c">[30]</td>
							<td class="align-c">Thùng; m3</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c"></td>
							<td class="align-l"><i>Sản lượng dầu thô, khí thiên nhiên xuất bán quy đổi</i></td>
							<td class="align-c">[31]</td>
							<td class="align-c">Tấn/BTU/GJ</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Doanh thu [32]=[30]x[31]</td>
							<td class="align-c">[32]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Tỷ lệ thuế tài nguyên tạm tính </td>
							<td class="align-c">[33]</td>
							<td class="align-c">%</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số tiền thuế tài nguyên tạm tính phải nộp [34]=[32]x[33]</td>
							<td class="align-c">[34]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[35]</td>
							<td class="align-c">VND/USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
   						  </tr>					
   					</table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [04]: Kỳ tính thuế là ngày, tháng, năm là ngày xuất bán đối với dầu thô; Kỳ tính thuế là tháng, năm là tháng xuất bán đối với khí thiên nhiên.       </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -  Chỉ tiêu [11]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh hoặc công ty điều hành chung được các bên nhà thầu tham gia trong HĐDK ủy quyền thực hiện kê khai các khoản thuế phát sinh theo quy định.      </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -  Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.    </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; -  USD: Đô la Mỹ; VND: Đồng Việt Nam.       </i></div> 
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>