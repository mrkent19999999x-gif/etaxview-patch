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
		 <xsl:call-template name="tkhaiHeader-04TNDN-TT80">
		<xsl:with-param name="mauTKhai"   select="'04/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' (Áp dụng đối với phương pháp tỷ lệ trên doanh thu)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>(1)</i></td>
						   <td class="align-c"><i>(2)</i></td>
						   <td class="align-c"><i>(3)</i></td>
						   <td class="align-c"><i>(4)</i></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu tính thuế thu nhập doanh nghiệp</td>
						   <td class="align-c"><b>[11]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">1.1</td>
						   <td class="align-l"><i>Hoạt động dịch vụ</i></td>
						   <td class="align-c"><b>[12]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">1.2</td>
						   <td class="align-l"><i>Hoạt động kinh doanh hàng hóa</i></td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">1.3</td>
						   <td class="align-l"><i>Hoạt động khác</i></td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Tỷ lệ tính thuế TNDN</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l"><i>Hoạt động dịch vụ</i></td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l"><i>Hoạt động kinh doanh hàng hóa</i></td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l"><i>Hoạt động khác</i></td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Số thuế TNDN phải nộp [19]=[12]x[16]+[13]x[17]+[14]x[18])</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Số thuế TNDN được miễn, giảm</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Số thuế TNDN phải nộp sau miễn, giảm ([21]=[19]-[20])</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">6</td>
						   <td class="align-l">Số thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này (nếu có)</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">7</td>
						   <td class="align-l">Số thuế TNDN đã tạm nộp trong năm đến thời điểm quyết toán</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">8</td>
						   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm ([24]=[21]-[23])</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">9</td>
						   <td class="align-l">Số thuế TNDN còn phải nộp sau quyết toán ([25]=[21]-[22]-[23])</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_04TNDN_TT80"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 </xsl:template>		
</xsl:stylesheet>