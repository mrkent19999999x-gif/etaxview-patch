<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/TĐ-GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho các cơ sở sản xuất thủy điện hạch toán phụ thuộc EVN hoặc hạch toán phụ thuộc các Tổng công ty phát điện thuộc Tập đoàn Điện lực Việt Nam)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
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
				<td class="align-l">Sản lượng điện (Kwh)</td>
				<td class="align-c">[21]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Giá tính thuế </td>
				<td class="align-c">[22]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Tổng trị giá tính thuế [23]=[21]x[22] </td>
				<td class="align-c">[23]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Thuế suất (%)</td>
				<td class="align-c">[24]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Thuế GTGT đầu ra [25]=[23]x[24]</td>
				<td class="align-c">[25]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">6</td>
				<td class="align-l">Số thuế GTGT đầu vào được khấu trừ của hoạt động sản xuất điện</td>
				<td class="align-c">[26]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">7</td>
				<td class="align-l">Số thuế GTGT phải nộp [27]= [25]-[26]</td>
				<td class="align-c">[27]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
			 </tr>
		</table>	
	   </div>
       </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
	 <div class="ghichu">
	 <div> ____________________</div><br/>
	 <div><i><b>Ghi chú:</b>- GTGT: giá trị gia tăng</i></div><br/><br/><br/>
	 </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
		</xsl:template>		
</xsl:stylesheet>