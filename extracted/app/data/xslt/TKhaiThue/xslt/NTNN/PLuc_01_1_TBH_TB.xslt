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
		        
    	<!--start phu luc 01-1/TBH-TB -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_TBH_TB">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_TBH_TB' />	
	<xsl:variable name="ghiChuPL" select="concat('(Kèm theo Thông báo (dự kiến) ngày  ', $pluc01/ngayTBaoDuKien,')')"/>
	<xsl:call-template name="tkhaiHeader-pluc-01-1-TBH-TB">
		<xsl:with-param name="mauTKhai"   select="'01-1/TBH-TB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CÁC HỢP ĐỒNG TÁI BẢO HIỂM ĐÃ HOẶC DỰ KIẾN KÝ KẾT'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên Hợp đồng</b></td>
							<td class="align-c" colspan="2"><b>Đại diện ký kết</b></td>
							<td class="align-c" rowspan="2"><b>Ngày ký Hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Giá trị Hợp đồng thực hiện (nếu có) </b></td>
							<td class="align-c" colspan="2"><b>Hiệu lực Hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Thuế nhà thầu phải nộp (nếu không được miễn theo Hiệp định)</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Bên Việt Nam</b><br/><i>(ghi rõ tên, mã số thuế)</i></td>
							<td class="align-c"><b>Bên nước ngoài </b></td>
							<td class="align-c"><b>Ngày bắt đầu</b></td>
							<td class="align-c"><b>Ngày kết thúc</b></td>
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
							<td class="align-c"><b>(9)</b></td>
						</tr>
				        <xsl:for-each select="$pluc01/BKeHDongTBH/ChiTietBKeHDongTBH">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							    <td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct5, 'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct7, 'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct8, 'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							</tr>
						</xsl:for-each>
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
	<!--end phu luc 01-1/TBH-TB-->
	</xsl:template>		
</xsl:stylesheet>
