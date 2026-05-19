<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_HKD_CNKD">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_HKD_CNKD' />
			<xsl:call-template name="tkhaiHeader_pluc_TCKT">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT HỘ KINH DOANH, CÁ NHÂN KINH DOANH'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai 01/TCKT áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho cá nhân hợp tác kinh doanh với tổ chức)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Họ và tên hộ kinh doanh, cá nhân kinh doanh</b></td>
				<td class="align-c"><b>Mã số thuế/Số định danh cá nhân của hộ kinh doanh, cá nhân kinh doanh</b></td>
				<td class="align-c"><b>Doanh thu</b></td>
				<td class="align-c"><b>Số thuế TNCN phải nộp</b></td>
				
			</tr>
			<tr>
				<td class="align-c">[03]</td>
				<td class="align-c">[04]</td>
				<td class="align-c">[05]</td>
				<td class="align-c">[06]</td>
				<td class="align-c">[07]</td>
				
			</tr>
			
				<xsl:for-each select="$pl01/CTietBKeHKD_CNKD">
					<xsl:variable name="currentRows" select='position()' />
						<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct04"/></td>
							  <td class="align-c"><xsl:value-of select="ct05"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct06)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>
						</tr>
				</xsl:for-each>
							
							<tr>
							    <td></td>
								<td colspan="2" class="align-c"><b>Tổng cộng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct08)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct09)"/></b></td>
							</tr>
		
						
						
		</table>
</div>
</div>
<xsl:call-template name="tkhaiFooter_PL_01TCKT_HKD">
	</xsl:call-template>
	</xsl:if><table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>