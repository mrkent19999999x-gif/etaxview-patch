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
		        
    	<!--start phu luc 02-1/TBH-TB -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_02-1_TBH_TB">	
	<xsl:variable name="pluc02" select="HSoThueDTu/HSoKhaiThue/PLuc/PL_02-1_TBH_TB" />
	<xsl:variable name="ghiChuPL" select="concat('(Kèm theo Thông báo (chính thức) ngày  ', $pluc02/ngayTBaoChinhThuc,')')"/>	
	<xsl:call-template name="tkhaiHeader-pluc-01-1-TBH-TB">
		<xsl:with-param name="mauTKhai"   select="'02-1/TBH-TB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'DANH MỤC HỢP ĐỒNG TÁ I BẢO HIỂM '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
<table >
	<tr>
		<td>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Loại Hợp đồng</b></td>
							<td class="align-c" colspan="2"><b>Đại diện ký kết</b></td>
							<td class="align-c" rowspan="2"><b>Thời gian thực hiện hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Trách nhiệm pháp lý  và cam kết của các bên </b></td>
							<td class="align-c" rowspan="2"><b>Đối tượng có thẩm quyền kết hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Các nội dung liên quan đến thuế trong hợp đồng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Bên Việt Nam</b><br/><i>(ghi rõ tên, mã số thuế)</i></td>
							<td class="align-c"><b>Bên nước ngoài </b></td>
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
						<tr>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>A:  Hợp đồng TBH P$I </b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
						</tr>
				        <xsl:for-each select="$pluc02/HopDongTBHPI/ChiTietHopDongTBHPI">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							    <td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="ct2"/></td>
								<td><xsl:value-of select="ct3"/></td>
								<td><xsl:value-of select="ct4"/></td>
								<td><xsl:value-of select="ct5"/></td>
								<td><xsl:value-of select="ct6"/></td>
								<td><xsl:value-of select="ct7"/></td>
								<td><xsl:value-of select="ct8"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>B: Hợp đồng TBH kỹ thuật</b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b></b></td>
						</tr>
				        <xsl:for-each select="$pluc02/HopDongTBHKyThuat/ChiTietHopDongTBHKyThuat">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							    <td><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="ct2"/></td>
								<td><xsl:value-of select="ct3"/></td>
								<td><xsl:value-of select="ct4"/></td>
								<td><xsl:value-of select="ct5"/></td>
								<td><xsl:value-of select="ct6"/></td>
								<td><xsl:value-of select="ct7"/></td>
								<td><xsl:value-of select="ct8"/></td>
							</tr>
						</xsl:for-each>
				</table>	
		</td>
	</tr>
</table>
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
	<!--end phu luc 02-1/TBH-TB-->
	</xsl:template>		
</xsl:stylesheet>
