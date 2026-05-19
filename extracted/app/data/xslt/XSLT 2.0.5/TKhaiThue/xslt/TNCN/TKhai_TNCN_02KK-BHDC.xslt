<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		  <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/KK-BHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho doanh nghiệp bảo hiểm trả thu nhập đối với thu nhập của đại lý bảo hiểm, thu nhập từ tiền phí tích luỹ bảo hiểm nhân thọ; công ty quản lý quỹ hưu trí tự nguyện khấu trừ thuế thu nhập cá nhân đối với tiền tích lũy quỹ hưu trí tự nguyện; doanh nghiệp bán hàng đa cấp khấu trừ thuế thu nhập cá nhân đối với thu nhập của cá nhân tham gia mạng lưới bán hàng đa cấp)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">	
   		<div class="content">
			<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam (VNĐ)</i>	</div>
					<table class="tkhai_table">
						 <tr class="tkhaiheader">
						   <td >STT</td>
						   <td  colspan="2"> Chỉ tiêu</td>
						   <td>Đơn vị tính</td>
						   <td>Số lượng/ Số tiền</td>
						 </tr>
						 <tr  class="tkhaiheader">
						   <td> (1)</td>
						   <td colspan="2">(2)</td>
						   <td>(3)</td>
                           <td>(4)</td>
						 </tr>
						  <tr>
						   <td class="align-c"><b>I</b></td>
						   <td class="align-l" colspan="4"><b>Thu nhập của đại lý bảo hiểm</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Tổng số đại lý bảo hiểm trong kỳ</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tổng thu nhập trả cho đại lý bảo hiểm trong kỳ</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Tổng số đại lý bảo hiểm thuộc diện khấu trừ thuế trong kỳ</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Tổng thu nhập trả cho đại lý bảo hiểm thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>II</b></td>
						   <td class="align-l" colspan="4"><b>Thu nhập từ tiền phí tích lũy bảo hiểm nhân thọ</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Tổng số cá nhân thuộc diện khấu trừ thuế trong kỳ</td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						 </tr> 
							 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tổng thu nhập trả cho cá nhân thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						 </tr> 		
				        <tr>
						   <td class="align-c"><b>III</b></td>
						   <td class="align-l" colspan="4"><b>Thu nhập từ tiền tích lũy quỹ hưu trí tự nguyện</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Tổng số cá nhân thuộc diện khấu trừ thuế trong kỳ</td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						 </tr> 
							 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tổng thu nhập trả cho cá nhân thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						 </tr> 
					  <tr>
						   <td class="align-c"><b>IV</b></td>
						   <td class="align-l" colspan="4"><b>Thu nhập từ tham gia mạng lưới bán hàng đa cấp</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Tổng số cá nhân trong kỳ</td>
						   <td class="align-c"><b>[32]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						 </tr> 
							 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tổng thu nhập trả cho cá nhân trong kỳ</td>
						   <td class="align-c"><b>[33]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Tổng số cá nhân thuộc diện khấu trừ thuế trong kỳ</td>
						   <td class="align-c"><b>[34]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						 </tr> 	
				      <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Tổng thu nhập trả cho cá nhân thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[35]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						 </tr> 
							 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[36]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c"><b>V</b></td>
						   <td class="align-l"><b>Tổng số thuế TNCN đã khấu trừ [37]=[25]+[28]+[31]+[36]</b></td>
						   <td class="align-c"><b>[37]</b></td>
						   <td class="align-c"><b>VNĐ</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
						 </tr> 					 			 					 				 
					   </table>
                        </div>					   
		      </div>	
<table style="page-break-inside: avoid; " width="100%">
<tr>
<td>			  
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
	</xsl:template>		
</xsl:stylesheet>