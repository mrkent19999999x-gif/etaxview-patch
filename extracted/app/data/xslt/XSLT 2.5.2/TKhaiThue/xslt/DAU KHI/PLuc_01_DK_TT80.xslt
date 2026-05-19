<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_DK">	
			<xsl:variable name="pl01-dk" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_DK' />
			<xsl:call-template name="tkhaiHeader-pl01-dk">
		<xsl:with-param name="mauTKhai"   select="'01/PL-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'CHI TIẾT NGHĨA VỤ THUẾ CỦA CÁC NHÀ THẦU DẦU KHÍ'"/>
<xsl:with-param name="tenPL1"   select="''"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo các tờ khai thuế đối với dầu khí mẫu số 01/TAIN-DK, 02/TAIN-DK,
01/TNDN-DK, 02/TNDN-DK)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
						<table class="tkhai_table">
							 <tr>
							   <td rowspan="2" class="align-c"><b>STT</b></td>
							   <td colspan="2" class="align-c"><b>Nhà thầu dầu khí</b></td>
							   <td rowspan="2" class="align-c"><b>Tỷ lệ phân bổ</b></td>
							   <td rowspan="2" class="align-c"><b>Số thuế phát sinh phải nộp (USD; VND)</b></td>
							   <td rowspan="2" class="align-c"><b>Ghi chú</b></td>
							 </tr>
							 <tr>
								<td class="align-c"><b>Mã số thuế</b></td>
								<td class="align-c"><b>Tên nhà thầu </b></td>
							</tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5) = [09]*(4)</td>
							   <td class="align-c">(6)</td>
							 </tr>
							<xsl:for-each select="$pl01-dk/NghiaVuThue/ChiTietNghiaVuThue">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="mstNThau"/></td>
							  <td class="align-l"><xsl:value-of select="tenNThau"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLePBoNThau)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThuePSinhPNopNThau)"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChuNThau"/></td>				  
							  </tr>
							</xsl:for-each>
							<tr>
								<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
								<td></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01-dk/tongCong)"/></td>
								<td></td>
							</tr>
						   </table>
					  </div>
					</div>
	<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
			 <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i> - Chỉ tiêu [05]: Tên người nộp thuế là tên người điều hành, doanh nghiệp liên doanh, công ty điều hành chung.  </i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>