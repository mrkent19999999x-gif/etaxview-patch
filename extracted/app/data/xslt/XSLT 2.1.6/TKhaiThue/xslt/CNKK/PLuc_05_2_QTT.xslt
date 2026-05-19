<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK_QTT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="' 05-2/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN THUỘC DIỆN TÍNH THUẾ THEO THUẾ SUẤT TOÀN PHẦN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="3"><b>STT</b></td>
							<td class="align-c" rowspan="3"><b>Họ và tên</b></td>
							<td class="align-c" rowspan="3"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="3"><b>Số CMND/ Hộ chiếu</b></td>
							<td class="align-c" rowspan="3"><b>Cá nhân không cư trú</b></td>
							<td class="align-c" colspan="4"><b>Thu nhập chịu thuế (TNCT)</b></td>
							<td class="align-c" colspan="2"><b>Số thuế thu nhập cá nhân (TNCN) đã khấu trừ</b></td>
							<td class="align-c" rowspan="3"><b>Số thuế TNCN được giảm do làm việc tại KKT</b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="2">Tổng số</td>
							<td class="align-c" rowspan="2">Trong đó: TNCT từ phí mua BH nhân thọ, BH không bắt buộc khác của DN BH không thành lập tại Việt Nam cho người lao động </td>
							<td class="align-c" colspan="2">Trong đó: TNCT được giảm thuế </td>
							<td class="align-c" rowspan="2">Tổng số</td>
							<td class="align-c" rowspan="2">Trong đó: Số thuế từ phí mua BH nhân thọ, BH không bắt buộc khác của DN BH không thành lập tại Việt Nam cho người lao động</td>
						</tr>
						<tr>
							<td class="align-c">Làm việc tại KKT</td>
							<td class="align-c">Theo Hiệp định</td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
						</tr>
					
					<xsl:for-each select="$pl02/BKeCTietCNhan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td><xsl:value-of select="ct09" /></td>
							  <td class="align-c"> 
							      <xsl:if test="ct10 = 'true'"> [x] </xsl:if>
							      <xsl:if test="ct10 = 'false'"> [] </xsl:if>		
							      <xsl:if test="ct10 = '1'"> [x] </xsl:if>
							      <xsl:if test="ct10 = '0'"> [] </xsl:if>					
							 </td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)" /></td>
							</tr>
						</xsl:for-each>
							<tr>
								<td class="align-c" colspan="5"><b>Tổng</b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct18)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct19)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct20)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct21)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct22)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct23)" /></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct24)" /></b></td>
							</tr>
					</table>
					<div><i>(KKT: Khu kinh tế; BH: Bảo hiểm; DN: doanh nghiệp)</i></div>
				</div>
			</div>
		</xsl:if>
	<xsl:call-template name="tkhaiFooter"/>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>