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
		<xsl:with-param name="mauTKhai"   select="'05/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Tạm nộp trên doanh số đối với kinh doanh ngoại tỉnh)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c" colspan="2"><b>Hàng hóa, dịch vụ chịu thuế 5%</b></td>
				<td class="align-c" colspan="2"><b>Hàng hoá, dịch vụ chịu thuế 10%</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c" colspan="2"><b>(3)</b></td>
				<td class="align-c" colspan="2"><b>(4)</b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Doanh số của hàng hoá dịch vụ chịu thuế</td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td> 
				<td class="align-c"><b>[22]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td> 
			</tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Tỷ lệ % tạm nộp tính trên doanh thu</td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-r">1%</td> 
				<td class="align-c"><b>[24]</b></td>
				<td class="align-r">2%</td> 
			</tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Số thuế tạm tính phải nộp kỳ này [25] = [21] x 1%; [26] = [22] x 2%</td>
				<td class="align-c"><b>[25]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td> 
				<td class="align-c"><b>[26]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td> 
			</tr>
     	</table>
 <div class="ghichu">	    	
                <div><b>Tổng số thuế phải nộp [27] = [25] + [26]:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></b></div>
  </div>               
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