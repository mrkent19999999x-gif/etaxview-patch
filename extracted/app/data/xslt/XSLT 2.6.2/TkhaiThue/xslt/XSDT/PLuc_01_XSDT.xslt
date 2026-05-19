<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo công văn số 4311/TCT-DNL ngày 3/10/2014 của Tổng cục Thuế'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 01-PL_XSDT-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_XSDT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_XSDT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01/PL-XSĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ TIỀN THUẾ/LỢI NHUẬN CÒN LẠI THEO ĐỊA BÀN TỈNH, THÀNH PHỐ TỪ HOẠT ĐỘNG KINH DOANH XỔ SỐ '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai GTGT/TTĐB/TNDN tạm tính/Lợi nhuận còn lại phải nộp NSNN. Áp dụng cho Công ty TNHH MTV xổ số điện toán Việt Nam
)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
			<div class="align-l">[06] Tổng số thuế phải nộp/Lợi nhuận còn lại phải nộp NSNN trên tờ khai: <xsl:value-of select="ihtkk:formatNumber($pl01/ct06)"/> đồng</div>
			<div class="align-l">[07] Tổng doanh thu thực tế:  <xsl:value-of select="ihtkk:formatNumber($pl01/ct07)"/> đồng</div>			
							<table class="tkhai_table">
						   <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Doanh thu thực tế theo địa bàn</b></td>
						   <td class="align-c"><b>Tỷ lệ doanh thu tiêu thụ trên địa bàn (%)</b></td>
						   <td class="align-c"><b>Số thuế/Lợi nhuận còn lại phân bổ</b></td>
						 </tr>
							<tr class="tkhaiheader">
							<td class="align-c">[08]</td>
							<td class="align-c">[09]</td>
							<td class="align-c">[10]</td>
							<td class="align-c">[11]=[10]/[07]*100%</td>
							<td class="align-c">[12]=[06]*[11]</td>
						</tr>
						<xsl:for-each select="$pl01/BangPhanBoLoiNhuanConLai/ChiTietBangPBoLNhuanConLai">
									<xsl:variable name="currentRows" select='position()' />
					      	<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							<td class="align-l"><xsl:value-of select="ct09_Ten"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							</tr>
						</xsl:for-each>
					<tr>
							 <td colspan="2" class="align-c"><b>Tổng cộng</b></td>
							 <td></td>
							 <td></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/BangPhanBoLoiNhuanConLai/tongCot12)"/></b></td>
					</tr>		 	
						   </table>
			</div>
			</div>
		</xsl:if>
	 <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>			
		<div>* Mẫu này chỉ Áp dụng phân bổ thuế TNCN đối với hoa hồng trả cho đại lý xổ số.</div>
	<div id="sigDiv"></div>
</td>
</tr>
</table>
	<!--end phu luc -->	
	</xsl:template>		
</xsl:stylesheet>