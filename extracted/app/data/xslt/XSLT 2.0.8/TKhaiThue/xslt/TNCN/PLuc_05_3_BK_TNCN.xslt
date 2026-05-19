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
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 05-3/BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK">	
		<xsl:variable name="pl05-3" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05-3/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THÔNG TIN NGƯỜI PHỤ THUỘC GIẢM TRỪ GIA CẢNH '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
							<table class="tkhai_table">
							<tr class="tkhaiheader">
							 <td rowspan="3" class="align-c">STT</td>
							 <td rowspan="3" class="align-c">Họ và tên người nộp thuế</td>
							 <td rowspan="3" class="align-c">MST của người nộp thuế</td>
							 <td rowspan="3" class="align-c">Họ và tên người phụ thuộc</td>
							 <td rowspan="3" class="align-c">Ngày sinh người phụ thuộc</td>
							 <td rowspan="3" class="align-c">MST của người phụ thuộc</td>
							 <td rowspan="3" class="align-c">Quốc tịch người phụ thuộc</td>
							 <td rowspan="3" class="align-c">CMND/ Hộ chiếu của người phụ thuộc </td>
							 <td rowspan="3" class="align-c">Quan hệ với người nộp thuế</td>
							 <td colspan="6" class="align-c">Thông tin trên giấy khai sinh của người phụ thuộc
(Nếu người phụ thuộc không có MST, CMND và Hộ chiếu)</td>
							 <td colspan="2" class="align-c">Thời gian tính giảm trừ </td>
							</tr>
							<tr class="tkhaiheader">
							  <td rowspan="2" class="align-c">Số</td>
							  <td rowspan="2"  class="align-c">Quyển số</td>
							   <td colspan="4"  class="align-c">Nơi đăng ký</td>
							  <td rowspan="2" class="align-c">Từ tháng</td>
							  <td rowspan="2"  class="align-c">Đến tháng</td>
							</tr>
							 <tr class="tkhaiheader">
							     <td class="align-c">Quốc gia</td>
							    <td class="align-c">Tỉnh/ Thành phố</td>
							    <td class="align-c">Quận/ Huyện</td>
							    <td class="align-c">Phường / Xã</td>
							</tr>
							<tr class="tkhaiheader">
							<td class="align-c">[06]</td>
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
							<td class="align-c">[19]</td>
							<td class="align-c">[20]</td>
							<td class="align-c">[21]</td>
							<td class="align-c">[22]</td>
							</tr>
						<xsl:for-each select="$pl05-3/BKeNPTGTruGCanh/ChiTietBKe">
									<xsl:variable name="currentRows" select='position()' />
					      	<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct07"/></td>
							 <td class="align-c"><xsl:value-of select="ct08"/></td>
							 <td class="align-l"><xsl:value-of select="ct09"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct10, 'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct11"/></td>
							 <td class="align-l"><xsl:value-of select="ct12"/></td>
							 <td class="align-c"><xsl:value-of select="ct13"/></td>
							 <td class="align-l"><xsl:value-of select="ct14"/></td>
							 <td class="align-c"><xsl:value-of select="ct15"/></td>
						     <td class="align-c"><xsl:value-of select="ct16"/></td>
							 <td class="align-l"><xsl:value-of select="ct17"/></td>
							 <td class="align-l"><xsl:value-of select="ct18"/></td>
							 <td class="align-l"><xsl:value-of select="ct19"/></td>
							 <td class="align-l"><xsl:value-of select="ct20"/></td>
							<td class="align-l"><xsl:value-of select="ct21"/></td>
							 <td class="align-l"><xsl:value-of select="ct22"/></td>
							</tr>
						</xsl:for-each>
						   </table>
			</div>
			</div>
		</xsl:if>
	 <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>			
		<div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân)</i></div>
	<div id="sigDiv"></div>
</td>
</tr>
</table>
	<!--end phu luc 05-3/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>