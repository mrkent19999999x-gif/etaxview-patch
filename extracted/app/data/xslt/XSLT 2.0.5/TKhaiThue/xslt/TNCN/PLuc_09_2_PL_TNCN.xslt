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
			
	<!--start phu luc 09_2/PL-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL09-2_TNCN">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL09-2_TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'09-2/PL-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THU NHẬP TỪ KINH DOANH'"/>
		<xsl:with-param name="ghiChuPL"   select="'(theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 09/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
          <table class="tkhai_table" > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Doanh thu bán hàng hoá và cung cấp dịch vụ</td>
						   <td class="align-c"><b>[06]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct06)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Các khoản giảm trừ doanh thu</td>
						   <td class="align-c"><b>[07]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct07)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td>Chi phí sản xuất, kinh doanh hàng hoá, dịch vụ</td>
						   <td class="align-c"><b>[08]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct08)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td><b>Thu nhập chịu thuế từ hoạt động kinh doanh [09]=[06]-[07]-[08]</b></td>
						   <td class="align-c"><b>[09]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct09)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td>Doanh thu hoạt động tài chính</td>
						   <td class="align-c"><b>[10]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct10)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6</td>
						   <td>Chi phí tài chính</td>
						   <td class="align-c"><b>[11]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct11)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>7</b></td>
						   <td><b>Thu nhập chịu thuế từ hoạt động tài chính [12]=[10]-[11]</b></td>
						   <td class="align-c"><b>[12]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct12)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">8</td>
						   <td>Thu nhập khác</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct13)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">9</td>
						   <td>Chi phí khác</td>
						   <td class="align-c"> <b>[14] </b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct14)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>10</b></td>
						   <td><b>Thu nhập chịu thuế khác [15]=[13]-[14]</b></td>
						   <td class="align-c"> <b>[15] </b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct15)"/></td>
						 </tr>  
                           <tr>
						   <td class="align-c">11</td>
						   <td>Tổng thu nhập chịu thuế phát sinh trong kỳ [16]=[09]+[12]+[15] &gt; 0</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct16)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">12</td>
						   <td>Thu nhập làm căn cứ tính giảm thuế</td>
						   <td class="align-c"> <b>[17]</b> </td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct17)"/></td>
						 </tr> 
						   <tr>
						  <td class="align-c">13</td>
						   <td>Tổng số thuế đã tạm nộp trong kỳ</td>
						   <td class="align-c"> <b>[18]</b> </td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct18)"/></td>
						 </tr>  
						  <tr>
						 <td class="align-c">14</td>
						   <td>Tổng thu nhập phát sinh ngoài Việt Nam</td>
						   <td class="align-c"> <b>[19]</b> </td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct19)"/></td>
						 </tr>  
						  <tr>
						 <td class="align-c">15</td>
						   <td>Tổng số thuế đã nộp ngoài Việt Nam</td>
						   <td class="align-c"> <b>[20]</b> </td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct20)"/></td>
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