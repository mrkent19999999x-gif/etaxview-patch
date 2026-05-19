<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_8_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_8_TNDN">	
			<xsl:variable name="pl03-8" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_8_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-8/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'TÍNH NỘP THUẾ THU NHẬP DOANH NGHIỆP CỦA DOANH NGHIỆP CÓ CÁC CƠ SỞ SẢN XUẤT HẠCH TOÁN PHỤ THUỘC'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
					     <div><b>[06]</b> Tổng số thuế phải nộp trên tờ khai quyết toán: <span class="number"> <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL03_8_TNDN/ct05"/></span> đồng </div>
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
									<tr>
									  <td class="align-c" rowspan="2"><b>STT</b></td>
									  <td class="align-c" rowspan="2"><b>Tên doanh nghiệp/cơ sở sản xuất</b></td>
									  <td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
									  <td class="align-c" colspan="4"><b>Cơ quan thuế trực tiếp quản lý</b></td>
									  <td class="align-c" rowspan="2"><b>Tỷ lệ phân bổ (%)</b></td>
									  <td class="align-c" colspan="4"><b>Số thuế đã tạm phân bổ từng quý</b></td>
									  <td class="align-c" rowspan="2"><b>Tổng số thuế đã tạm phân bổ cả năm</b></td>
									  <td class="align-c" rowspan="2"><b>Phân bổ tổng số thuế phải nộp cả năm theo quyết toán</b></td>
									  <td class="align-c" rowspan="2"><b>Phân bổ số thuế chênh lệch sau quyết toán</b></td>
									</tr>
									<tr>
									  <td class="align-c"><b>Mã Cục thuế</b></td>
									  <td class="align-c"><b>Tên Cục thuế</b></td>
									  <td class="align-c"><b>Mã CCT</b></td>
									  <td class="align-c"><b>Tên CCT</b></td>
									  <td class="align-c"><b>Quý I</b></td>
									  <td class="align-c"><b>Quý II</b></td>
									  <td class="align-c"><b>Quý III</b></td>
									  <td class="align-c"><b>Quý IV</b></td>
									</tr>    
									<tr>
										<td class="align-c">[07]</td>
										<td class="align-c">[08]</td>
										<td class="align-c">[09]</td>
										<td class="align-c">[10]</td>
										<td class="align-c">[11]</td>
										<td class="align-c">[12]</td>
										<td class="align-c">[13]</td>
										<td class="align-c">[14]</td>
										<td class="align-c">[15]</td>
										<td class="align-c">[16]</td>
										<td class="align-c">[17]</td>
										<td class="align-c">[18]</td>
										<td class="align-c">[19] = [15]+[16]+[17]+[18]</td>
										<td class="align-c">[20]</td>
										<td class="align-c">[21] = [20]-[19]</td>
									</tr>
									 <xsl:for-each select="$pl03-8/BKeThueTNDN/CTietBKeThueTNDN">
								       	<xsl:variable name="currentRows" select='position()' />
									<tr>
                                       <td class="align-c"><xsl:value-of select="$currentRows" /></td>
                                       <td class="align-l"><xsl:value-of select="ct07"/></td>
                                       <td class="align-c"><xsl:value-of select="ct08"/></td>
                                      <td class="align-c"><xsl:value-of select="ct09_maCT"/></td>
                                      <td class="align-l"><xsl:value-of select="ct09_tenCT"/></td>
                                      <td class="align-c"><xsl:value-of select="ct09_maCCT"/></td>
                                      <td class="align-l"><xsl:value-of select="ct09_tenCCT"/></td>
									  <td class="number align-r"><xsl:value-of select="ct10"/></td>
									  <td class="number align-r"><xsl:value-of select="ct11"/></td>
									  <td class="number align-r"><xsl:value-of select="ct12"/></td>
									  <td class="number align-r"><xsl:value-of select="ct13"/></td>
									  <td class="number align-r"><xsl:value-of select="ct14"/></td>
									  <td class="number align-r"><xsl:value-of select="ct15"/></td>
									  <td class="number align-r"><xsl:value-of select="ct16"/></td>
									  <td class="number align-r"><xsl:value-of select="ct17"/></td>
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
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>