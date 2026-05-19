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
			
	<!--start phu luc 13-1/BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc-13BK-TNCN">	
		<xsl:variable name="pl13" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc-13BK-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'13-1/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'CHỨNG KHOÁN ĐÃ CHUYỂN NHƯỢNG TRONG NĂM '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 13/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 			<table class="tkhai_table">
						<tr class="tkhaiheader">
							 <td class="align-c" rowspan="2">STT</td>
							 <td class="align-c" rowspan="2">Mã chứng khoán</td>
							 <td class="align-c" rowspan="2">Giá bán</td>
							 <td class="align-c" rowspan="2">Giá mua</td>
							 <td class="align-c" rowspan="2">Chi phí</td>
							  <td class="align-c" rowspan="2">Thu nhập chịu thuế</td>
							 <td class="align-c" colspan="3">Chứng từ</td>
							</tr>
							<tr class="tkhaiheader">
							  <td class="align-c">Số thuế đã khấu trừ</td>
							 <td class="align-c">Số, kí hiệu chứng từ</td>
							 <td class="align-c">Ngày, tháng , năm chứng từ</td>
							</tr>
							<tr class="tkhaiheader">
	  	                    <td class="align-c">[06]</td>
							<td class="align-c">[07]</td>
							<td class="align-c">[08]</td>
							<td class="align-c">[09]</td>
							<td class="align-c">[10]</td>
							<td class="align-c">[11]=[08]-[09]-[10]</td>
							<td class="align-c">[12]</td>
							<td class="align-c">[13]</td>
							<td class="align-c">[14]</td>
							</tr>
						   <xsl:for-each select="$pl13/BKeCKhoanCN/CTietBKeCKhoanCN">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct07"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct08)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChungTu/ct12)"/></td>
							 <td class="align-l"><xsl:value-of select="ChungTu/ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ChungTu/ct14, 'dd/mm/yyyy')"/></td>
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="2" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl13/ct15)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl13/ct16)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl13/ct17)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl13/ct18)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl13/ct19)"/></b></td>
							</tr>
						   </table>
			</div>
			</div>
	<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>		
			<xsl:call-template name="tkhaiFooter"/>
	<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
	<!--end phu luc 05-2/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>