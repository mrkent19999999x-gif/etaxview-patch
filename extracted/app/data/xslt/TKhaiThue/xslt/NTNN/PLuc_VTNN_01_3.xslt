<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
        <xsl:variable name="ghiChuPL1"   select="'(Dành cho trường hợp doanh nghiệp khai thác tàu, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL2"   select="'(Dành cho trường hợp hoán đổi/chia chỗ, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL3"   select="'(Kèm theo Tờ khai 01/VTNN)'"/>
		 
	
	<!--start phu luc 01-3/VTNN - BẢNG KÊ DOANH THU LƯU CÔNG-TEN-NƠ  -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN' />	
	<xsl:call-template name="tkhaiHeaderPL01-3_VTNN">
		<xsl:with-param name="mauTKhai"   select="'01-3/VTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ DOANH THU LƯU CÔNG-TEN-NƠ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL3"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>Chứng từ vận chuyển</b></td>
							<td class="align-c" colspan="2"><b>Hoá đơn</b></td>
							<td class="align-c" rowspan="2"><b>Cảng đến</b></td>
							<td class="align-c" rowspan="2"><b>Thông tin khách hàng </b><br/>(tên, địa chỉ hoặc mã số thuế)</td>
							<td class="align-c" rowspan="2"><b>Doanh thu lưu công- ten-nơ </b> <br/>(không bao gồm thuế GTGT )</td>
							<td class="align-c" rowspan="2"><b>Số thuế thu nhập doanh nghiệp phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế thu nhập doanh nghiệp miễn, giảm theo Hiệp định</b></td>
						</tr>
						<tr>
							<td class="align-c">Số</td>
							<td class="align-c">Ngày, tháng, năm phát hành</td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2a)</b></td>
							<td class="align-c"><b>(2b)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
						</tr>
				        <xsl:for-each select="$pluc03/BKeDoanhThuLuu/ChiTietBKeDoanhThuLuu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="ct1"/></td>
								<td class="align-c"><xsl:value-of select="ct2a"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct2b,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							    <td colspan="5" class="tkhaiheader">Tổng cộng</td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/tongCot5)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/tongCot6)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/tongCot7)"/></b></td>
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
	<!--end phu luc 01-3/VTNN-->
	</xsl:template>		
</xsl:stylesheet>