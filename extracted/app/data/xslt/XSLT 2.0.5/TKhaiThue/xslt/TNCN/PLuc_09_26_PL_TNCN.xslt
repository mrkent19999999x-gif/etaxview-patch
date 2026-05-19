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
			
	<!--start phu luc 09_4/PL-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL26MGT-TNCN">	
		<xsl:variable name="pl05" select='HSoThueDTu/HSoKhaiThue/PLuc/PL26MGT-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'26/MT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'MIỄN THUẾ THU NHẬP CÁ NHÂN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập cá nhân mẫu số 09/KK-TNCN ban hành kèm theo thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài Chính)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">

							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							    <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c">1</td>
								   <td class="align-l">Số thuế phải nộp trước khi miễn</td>
								   <td class="align-l">[06]</td>
								   <td class="number align-r"><xsl:value-of select="$pl05/ct06"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l">Thuế được miễn đối với thu nhập từ tiền lương, tiền công; từ kinh doanh của cá nhân có thu nhập tính thuế ở bậc 1 Biểu thuế lũy tiến từng phần </td>
								   <td class="align-l">[07]</td>
								   <td class="number align-r"><xsl:value-of select="$pl05/ct07"/></td>
								 </tr>
								 <tr>
								 <td class="align-c">3</td>
								   <td class="align-l">Số thuế phải nộp sau khi miễn </td>
								   <td class="align-l">[08]</td>
								   <td class="number align-r"><xsl:value-of select="$pl05/ct08"/></td>
								 </tr>							
								</table>
                        </div>
					</div>
	<table style="page-break-inside: avoid;" width="100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>				
			</xsl:if>		   
	</xsl:template>		
</xsl:stylesheet>