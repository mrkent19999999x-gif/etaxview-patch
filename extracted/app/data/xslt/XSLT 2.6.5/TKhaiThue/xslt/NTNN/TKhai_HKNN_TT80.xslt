<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01HKNN-TT80">
		<xsl:with-param name="mauTKhai"   select="'01/HKNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 <div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số phát sinh quý này</b></td>
						   <td class="align-c"><b>Số luỹ kế năm</b></td>
						 </tr>
					 <tr>
						   <td class="align-c">I</td>
						   <td class="align-l">Tổng doanh thu [12]=[13]+[14]+[15]</td>
						   <td class="align-c"><b>[12]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu bán vé hành khách</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Doanh thu bán vận đơn hàng không</td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Doanh thu khác</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">II</td>
						   <td class="align-l">Các khoản giảm trừ doanh thu [16]=[17]+[18]</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Các khoản thu hộ</td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chi hoàn do khách hàng trả lại vé</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">III</td>
						   <td class="align-l">Doanh thu chịu thuế TNDN [19]=[12]-[16]</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">IV</td>
						   <td class="align-l">Tỷ lệ (%) thuế TNDN tính trên doanh thu chịu thuế</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">V</td>
						   <td class="align-l">Thuế TNDN phát sinh trong kỳ [21]=[19]x[20]</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21_luyKe)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">VI</td>
						   <td class="align-l">Số thuế TNDN miễn, giảm theo Hiệp định trong kỳ</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22_luyKe)"/></td>
						 </tr> 
						<tr>
						   <td class="align-c">VII</td>
						   <td class="align-l">Số thuế TNDN phải nộp trong kỳ [23]=[21]-[22]</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23_phatSinh)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23_luyKe)"/></td>
						 </tr>						 
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_02TNDN_TT80"/>
		<!-- <div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/> -->
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>