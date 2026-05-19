<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
        <xsl:variable name="ghiChuPL1"   select="'(Kèm theo Tờ khai Quyết toán thuế Nhà thầu nước ngoài mẫu: 02/NTNN)'"/>
		<xsl:variable name="ghiChuPL2"   select="''"/>
		<xsl:variable name="ghiChuPL3"   select="''"/>
		
	<!--start phu luc 02-2/NTNN - BẢNG KÊ CÁC NHÀ THẦU NƯỚC NGOÀI  -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_2_NTNN">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_2_NTNN' />	
	<xsl:call-template name="tkhaiHeader-pluc-02-2-NTNN-TT80">
		<xsl:with-param name="mauTKhai"   select="'02-2/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CÁC NHÀ THẦU PHỤ THAM GIA HỢP ĐỒNG NHÀ THẦU '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai Quyết toán thuế Nhà thầu nước ngoài mẫu: 02/NTNN)'"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
			<div class="content">
                 <div></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
				            <td class="align-c" rowspan="2"><b>Tên nhà thầu phụ</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế của nhà thầu phụ tại Việt Nam (nếu có)</b></td>
							<td class="align-c" colspan="2"><b>Nhà thầu nước ngoài ký hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Loại hàng hóa, dịch vụ</b></td>
							<td class="align-c" rowspan="2"><b>Địa điểm thực hiện</b></td>
							<td class="align-c" colspan="2"><b>Thời hạn hợp đồng</b></td>
							
							<td class="align-c" rowspan="2"><b>Giá trị của Hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu chưa bao gồm thuế giá trị gia tăng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Tên Nhà thầu nước ngoài</b></td>
							<td class="align-c"><b>Mã số thuế của Nhà thầu nước ngoài tại Việt Nam (nếu có)</b></td>
		                    <td class="align-c"><b>Từ ngày</b></td>
							<td class="align-c"><b>Đến ngày</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8a)</b></td>
	                        <td class="align-c"><b>(8b)</b></td>
	     					<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
							
						</tr>
				        <xsl:for-each select="$pluc01/BKCacNTPhu/CTietBKCacNTPhu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							    <td class="align-c"><xsl:value-of select="$currentRows" /></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
								<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ct8a,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ct8b,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							</tr>
						</xsl:for-each>
						    <tr>
							    <td class="align-c" colspan="9"><b>Tổng cộng</b></td>
							    
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/tong_ct9)"/></b></td>
                                
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/tong_ct10)"/></b></td>
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
	</xsl:if>
	<!--end phu luc 02-2NTNN-->
	
	</xsl:template>		
</xsl:stylesheet>