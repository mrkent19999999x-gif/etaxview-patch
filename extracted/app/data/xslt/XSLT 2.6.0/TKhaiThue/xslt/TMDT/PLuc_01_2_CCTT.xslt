<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_CCTT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_2_CCTT' />
			<xsl:call-template name="tkhaiHeader-pluc02-TMDT">
		<xsl:with-param name="mauTKhai"   select="'01-2/CCTT-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'PHỤ LỤC NGÀNH HÀNG, DỊCH VỤ KINH DOANH '"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="1"><b>STT</b></td>
				<td class="align-c" rowspan="1"><b>Mã quản lý trên sàn giao dịch TMĐT của nhà cung cấp</b></td>
				<td class="align-c" rowspan="1"><b>Mã ngành hàng, dịch vụ kinh doanh theo Sàn</b></td>
				<td class="align-c" rowspan="1"><b>Loại hàng hóa tương ứng với mã ngành hàng, dịch vụ của Sàn</b></td>
				<td class="align-c" rowspan="1"><b>Trạng thái</b></td>
			</tr>
			
			 <xsl:for-each select="$pl02/CTietPLNganhHang">
									<xsl:variable name="currentRows" select='position()' />
							<tr>	
                              <td class="align-c"><xsl:value-of select="$currentRows"/></td>							
							  <td class="align-c"><xsl:value-of select="maQuanLyTrenSan" /></td>
							  <td class="align-c"><xsl:value-of select="ma_NganhHang" /></td>
							  <td class="align-c"><xsl:value-of select="loai_HangHoa" /></td>
							  <td class="align-c"><xsl:value-of select="ten_TrangThai" /></td>
							</tr>
							</xsl:for-each>	
			
		</table>
</div>
</div>
	</xsl:if>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>