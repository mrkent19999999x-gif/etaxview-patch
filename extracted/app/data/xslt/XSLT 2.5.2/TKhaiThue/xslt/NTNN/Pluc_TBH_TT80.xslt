<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
 xmlns:ihtkk="vn.com.seatech.ihtkk.core.nnt.utils.FunctionXSLT" exclude-result-prefixes="xsl xsi ihtkk">
<xsl:include href="data/xslt/XSLT 2.5.2/TKhaiThue/include/TKhaiHeader.xsl"/>
 <xsl:include href="data/xslt/XSLT 2.5.2/TKhaiThue/include/TKhaiFooter.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:variable name="ghiChuPL" select="''"/>
	  <!-- Phụ lục 01-1/TBH TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01-1_TBH_TB"/>	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01-1_TBH_TB' />
			<xsl:call-template name="tkhaiHeader-Pluc01-TBH-TT80">
		<xsl:with-param name="mauTKhai"   select="'01-1/TBH'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'DANH MỤC HỢP ĐỒNG TÁI BẢO HIỂM'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế mẫu: 01/TBH)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<table>
			<tr>
				<td>
					<table class="tkhai_table"  >
								 <thead>
								  <tr>
								   <td rowspan="3" class="align-c"><b>STT</b></td>
								   <td rowspan="3" class="align-c"><b>Loại Hợp đồng</b></td>
								   <td colspan="4" class="align-c"><b>Đại diện ký kết</b></td>
								   <td colspan="2" class="align-c"><b>Hợp đồng</b></td>
								   <td colspan="2" class="align-c"><b>Thời gian thực hiện hợp đồng</b></td>
								   <td rowspan="3" class="align-c"><b>Trách nhiệm pháp lý  và cam kết của các bên</b></td>
								   <td rowspan="3" class="align-c"><b>Đối tượng có thẩm quyền kết hợp đồng</b></td>
								   <td rowspan="3" class="align-c"><b>Các nội dung liên quan đến thuế trong hợp đồng</b></td>
								  </tr>
								  <tr>
								   <td colspan="2" class="align-c"><b>Bên Việt Nam</b></td>
								   <td colspan="2" class="align-c"><b>Bên nước ngoài</b></td>
								   <td rowspan="2" class="align-c"><b>Số</b></td>
								   <td rowspan="2" class="align-c"><b>Ngày</b></td>
								   <td rowspan="2" class="align-c"><b>Từ ngày</b></td>
								   <td rowspan="2" class="align-c"><b>Đến ngày</b></td>
								  </tr>
								  <tr>
								   <td class="align-c"><b>Tên</b></td>
								   <td class="align-c"><b>Mã số thuế</b></td>
								   <td class="align-c"><b>Tên</b></td>
								   <td class="align-c"><b>Mã số thuế (nếu có)</b></td>
								  </tr>
								  <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								   <td class="align-c">(5)</td>
								   <td class="align-c">(6)</td>
								   <td class="align-c">(7)</td>
								   <td class="align-c">(8)</td>
								   <td class="align-c">(9)</td>
								   <td class="align-c">(10)</td>
								   <td class="align-c">(11)</td>
								   <td class="align-c">(12)</td>
								   <td class="align-c">(13)</td>
								  </tr>
								 </thead>
								 <tr>
								 <td></td>
						   <td class="align-c">A: Hợp đồng TBH P&amp;I</td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						 </tr>
						<xsl:for-each select="$pl01/HopDongTBHPI/ChiTietHopDongTBHPI">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct8,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct9,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct10,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct11"/></td>
								<td class="align-l"><xsl:value-of select="ct12"/></td>
								<td class="align-l"><xsl:value-of select="ct13"/></td>
	         				</tr>	
					</xsl:for-each>
					<tr>
								 <td></td>
						   <td class="align-c">B: Hợp đồng TBH kỹ thuật</td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						   <td></td>
						 </tr>
						<xsl:for-each select="$pl01/HopDongTBHKyThuat/ChiTietHopDongTBHKyThuat">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct8,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct9,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct10,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct11"/></td>
								<td class="align-l"><xsl:value-of select="ct12"/></td>
								<td class="align-l"><xsl:value-of select="ct13"/></td>
	         				</tr>	
					</xsl:for-each>
								 </table>
					  </td>
				  </tr>
				  
				  </table>
      </div>	
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>