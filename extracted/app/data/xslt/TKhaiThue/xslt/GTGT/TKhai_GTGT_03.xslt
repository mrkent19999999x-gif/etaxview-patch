<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/TT-BTC ngày 6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'03/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho người nộp thuế mua bán, chế tác vàng bạc, đá quý)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Giá trị</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>

			 </tr>
			 
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Giá trị gia tăng âm được kết chuyển kỳ trước</td>
				<td class="align-c">[21]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td> 
			</tr>
                <tr>
				<td class="align-c">2</td>
				<td class="align-l">Tổng doanh thu hàng hoá, dịch vụ bán ra</td>
				<td class="align-c">[22]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td> 
			</tr>


                <tr>
				<td class="align-c">3</td>
				<td class="align-l">Giá vốn của hàng hoá, dịch vụ mua vào   </td>
				<td class="align-c">[23]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td> 
			</tr>

             <tr>
				<td class="align-c">4</td>
				<td class="align-l">Điều chỉnh tăng giá trị gia tăng âm của các kỳ trước </td>
				<td class="align-c">[24]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td> 
			</tr>
			
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Điều chỉnh giảm giá trị gia tăng âm của các kỳ trước</td>
				<td class="align-c">[25]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td> 
			</tr>
			<tr>
				<td class="align-c">6</td>
				<td class="align-l">Giá trị gia tăng (GTGT) chịu thuế trong kỳ: [26]=[22]-[23]-[21]-[24]+[25];</td>
				<td class="align-c">[26]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td> 
			</tr>
			
				<tr>
				<td class="align-c">7</td>
				<td class="align-l">Thuế GTGT phải nộp: [27]=[26]x10%  </td>
				<td class="align-c">[27]</td>
				<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td> 
			</tr>
		</table>
		
	   </div>
       </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 

	</xsl:template>		
</xsl:stylesheet>