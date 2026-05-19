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
			
	<!--start phu luc 09_1/PL-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL09-1_TNCN">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL09-1_TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'09-1/PL-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 09/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">

							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							    <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c" colspan="3"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu </b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c" colspan="3">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								 </tr>
								 <tr>
								   <td class="align-c" rowspan="5">1</td>
								   <td class="align-l" colspan="3">Tổng thu nhập chịu thuế phát sinh trong kỳ [06]=[07]+[10]</td>
								   <td class="align-c">[06]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/TNhapCThueTrongKy/ct06"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c" rowspan="3">a</td>
								   <td class="align-l" colspan="2">Thu nhập phát sinh tại Việt Nam:</td>
								   <td class="align-c">[07]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/TNhapCThueTrongKy/ct07"/></td>
								 </tr>		
								<tr>
								   <td class="align-l" rowspan="2">Trong đó</td>
								   <td>Thu nhập làm căn cứ tính giảm thuế do làm việc tại khu kinh tế</td>
								   <td class="align-c">[08]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/TNhapCThueTrongKy/ct08"/></td>
								 </tr>
								<tr>
								   <td>Thu nhập được miễn giảm theo Hiệp định</td>
								   <td class="align-c">[09]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/TNhapCThueTrongKy/ct09"/></td>
								 </tr>
								<tr>
								   <td class="align-c">b</td>
								   <td colspan="2">Thu nhập phát sinh ngoài Việt Nam</td>
								   <td class="align-c">[10]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/TNhapCThueTrongKy/ct10"/></td>
								 </tr>	
								<tr>
								   <td class="align-c" rowspan="3">2</td>
								   <td class="align-l" colspan="3">Tổng số thuế đơn vị trả thu nhập đã khấu trừ trong kỳ [11]=[12]+[13]</td>
								   <td class="align-c">[11]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/SoKTruTrongKy/ct11"/></td>
								 </tr>  							 
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l" colspan="2">Tổng số thuế đã khấu trừ theo biểu luỹ tiến từng phần</td>
								   <td class="align-c">[12]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/SoKTruTrongKy/ct12"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l" colspan="2">Tổng số thuế đã khấu trừ theo mức 10% </td>
								   <td class="align-c">[13]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/SoKTruTrongKy/ct13"/></td>
								 </tr>	
							 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l" colspan="3">Tổng số thuế đã tạm nộp tại Việt Nam</td>
								   <td class="align-c">[14]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/ct14"/></td>
								 </tr>	
								 <tr>
								   <td class="align-c">4</td>
								   <td class="align-l" colspan="3">Tổng số thuế đã nộp ngoài Việt Nam</td>
								   <td class="align-c">[15]</td>
								   <td class="number align-r"><xsl:value-of select="$pl01/ct15"/></td>
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
	</xsl:template>		
</xsl:stylesheet>