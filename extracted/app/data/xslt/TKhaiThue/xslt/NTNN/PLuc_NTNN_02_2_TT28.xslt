<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư 
số 28/2011/TT-BTC ngày 28/2/2011 của Bộ Tài chính'" />
        <xsl:variable name="ghiChuPL1"   select="'(Kèm theo Tờ khai Quyết toán thuế Nhà thầu nước ngoài)'"/>
		<xsl:variable name="ghiChuPL2"   select="''"/>
		<xsl:variable name="ghiChuPL3"   select="''"/>
		
	<!--start phu luc 02-2/NTNN - BẢNG KÊ CÁC NHÀ THẦU NƯỚC NGOÀI  -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_2_NTNN">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_2_NTNN' />	
	<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'02-2/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CÁC NHÀ THẦU PHỤ VIỆT NAM THAM GIA HỢP ĐỒNG NHÀ THẦU '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
			<div class="content">
                 <div></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
				
							<td class="align-c" rowspan="2"><b>Tên nhà thầu phụ Việt Nam</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="2"><b>Nhà thầu nước ngoài ký hợp đồng (Tên, mã số thuế)</b></td>
							<td class="align-c" rowspan="2"><b>Hợp đồng số, ngày</b></td>
							<td class="align-c" rowspan="2"><b>Nội dung hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Địa điểm thực hiện</b></td>
							<td class="align-c" rowspan="2"><b>Thời hạn hợp đồng</b></td>
							<td class="align-c" colspan="2"><b>Giá trị Hợp đồng</b></td>
							<td class="align-c" colspan="2"><b>Giá trị quyết toán Hợp đồng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Giá trị nguyên tệ</b></td>
							<td class="align-c"><b>Giá trị tiền VN quy đổi</b></td>
		                              <td class="align-c"><b>Giá trị nguyên tệ</b></td>
							<td class="align-c"><b>Giá trị tiền VN quy đổi</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
	                                     <td class="align-c"><b>(9a)</b></td>
	     					      <td class="align-c"><b>(9b)</b></td>
							<td class="align-c"><b>(10a)</b></td>
							<td class="align-c"><b>(10b)</b></td>
													
						</tr>
				        <xsl:for-each select="$pluc01/BKCacNTPhu/CacNTPhu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7"/></td>
								<td class="align-l"><xsl:value-of select="ct8"/></td>
								<td class="align-l"><xsl:value-of select="ct9a"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9b)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10a)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10b)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							    <td class="align-c" colspan="8"><b>Tổng cộng</b></td>
							    <td></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/tongct9b)"/></b></td>
                                              <td></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/tongct10b)"/></b></td>
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
	</xsl:if>
	<!--end phu luc 02-2NTNN-->
	
	</xsl:template>		
</xsl:stylesheet>