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
		 <xsl:call-template name="tkhaiHeader-03tain">
		<xsl:with-param name="mauTKhai"   select="'03/TĐ-TAIN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cơ sở sản xuất thuỷ điện)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
		 <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Nhà máy thủy điện</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Sản lượng  điện xuất tuyến (KWh)</b></td>
							<td class="align-c"><b>Giá tính thuế đơn vị tài nguyên</b></td>
							<td class="align-c"><b>Thuế tài nguyên phát sinh trong kỳ</b></td>
							<td class="align-c"><b>Thuế tài nguyên dự kiến được miễn giảm trong kỳ</b></td>
							<td class="align-c"><b>Thuế tài nguyên phát sinh phải nộp trong kỳ</b></td>
						</tr>
						<tr>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24] </b></td>
							<td class="align-c"><b>[25] </b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c"><b>[27]= [25]x[26]x[22]</b></td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-c"><b>[29] = [27] - [28]</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/BKeThueTN/ChiTietBKeThueTN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="ct23"/></td>
								<td class="align-c"><xsl:value-of select="ct24"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct29)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c" colspan="5"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct27)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct28)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct29)"/></b></td>
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