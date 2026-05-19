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
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3_CCTT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3_CCTT' />
			<xsl:call-template name="tkhaiHeader-pluc02-TMDT">
		<xsl:with-param name="mauTKhai"   select="'01-3/CCTT-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'PHỤ LỤC TÀI KHOẢN NGÂN HÀNG'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="1"><b>STT</b></td>
					<td class="align-c" rowspan="1"><b>Mã quản lý trên sàn giao dịch TMĐT của nhà cung cấp</b></td>
				<td class="align-c" rowspan="1"><b>Số tài khoản</b></td>
				<td class="align-c" rowspan="1"><b>Chủ tài khoản</b></td>
				<td class="align-c" rowspan="1"><b>Mã ngân hàng</b></td>
				<td class="align-c" rowspan="1"><b>Tên ngân hàng</b></td>
				<td class="align-c" rowspan="1"><b>Trạng thái</b></td>
			</tr>
			<td class="align-l" colspan="7"><b>I. Thông tin tài khoản nhà cung cấp trong nước  </b></td>
			 <xsl:for-each select="$pl01/ThongTinTKNCCTrongNuoc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-c"><xsl:value-of select="maQuanLyTrenSan" /></td>
							  <td class="align-c"><xsl:value-of select="soTaiKhoan" /></td>
							  <td class="align-c"><xsl:value-of select="chuTaiKhoan" /></td>
							  <td class="align-c"><xsl:value-of select="ma_NganHang" /></td>
							  <td class="align-c"><xsl:value-of select="ten_NganHang" /></td>
							     <td class="align-c"><xsl:value-of select="ten_TrangThai" /></td>
							</tr>
							</xsl:for-each>	
			<td class="align-l" colspan="7"><b>II. Thông tin tài khoản nhà cung cấp nước ngoài  </b></td>
			 <xsl:for-each select="$pl01/ThongTinTKNCCNuocNgoai">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-c"><xsl:value-of select="maQuanLyTrenSan" /></td>
							  <td class="align-c"><xsl:value-of select="soTaiKhoan" /></td>
							  <td class="align-c"><xsl:value-of select="chuTaiKhoan" /></td>
							  <td class="align-c"><xsl:value-of select="ma_NganHang" /></td>
							  <td class="align-c"><xsl:value-of select="ten_NganHang" /></td>
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