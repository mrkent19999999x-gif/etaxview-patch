<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>  
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
<xsl:variable name="ghiChuPL1" select="'(Dành cho vận tải hàng không quốc tế, kèm theo Tờ khai mẫu số 01/HKNN)'"/>
<xsl:variable name="ghiChuPL2" select="'(Dành cho trường hợp hoán đổi/ chia chỗ trong vận tải hàng không quốc tế, kèm theo Tờ khai mẫu số 01/HKNN)'"/>
		 	
	<!--start phu luc 01-2/HKNN -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN' />	
	<xsl:call-template name="tkhaiHeader-pluc-01-2-hknn">
		<xsl:with-param name="mauTKhai"   select="'01-2/HKNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP VẬN TẢI QUỐC TẾ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>Kỳ vận chuyển</b></td>
							<td class="align-c"><b>Cảng đi</b></td>
							<td class="align-c"><b>Cảng đến</b></td>
							<td class="align-c"><b>Số chỗ hoán đổi/chia<br/></b>(theo thoả thuận hoán đổi/chia chỗ)</td>
							<td class="align-c"><b>Số chỗ hoán đổi thực tế</b></td>
							<td class="align-c"><b>Doanh thu quy đổi</b></td>
							<td class="align-c"><b>Thuế Thu nhập doanh nghiệp phải nộp</b></td>
							<td class="align-c"><b>Thuế Thu nhập doanh nghiệp đề nghị miễn, giảm</b></td>
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
						</tr>
				        <xsl:for-each select="$pluc02/BKeThuNhapVTQTe/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-l"><xsl:value-of select="ct1"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							    <td colspan="3" class="tkhaiheader">Tổng cộng</td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/BKeThuNhapVTQTe/tongct4)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/BKeThuNhapVTQTe/tongct5)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/BKeThuNhapVTQTe/tongct6)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/BKeThuNhapVTQTe/tongct7)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/BKeThuNhapVTQTe/tongct8)"/></b></td>
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
	<!--end phu luc 01-2/HKNN-->

	</xsl:template>		
</xsl:stylesheet>