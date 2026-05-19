<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  21/2026/TT-BTC ngày 17 tháng 3 năm 2026  của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-02TNDN-TT21">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hoạt động chuyển nhượng bất động sản theo từng lần phát sinh)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
			   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table" >
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
						   <td class="align-l">Doanh thu từ hoạt động chuyển nhượng bất động sản, tài sản khác</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản, tài sản khác</td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">- Giá vốn của bất động sản, tài sản khác chuyển nhượng</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về đất</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về hoa màu</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.4</td>
						   <td class="align-l">- Chi phí cải tạo san lấp mặt bằng</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.5</td>
						   <td class="align-l">- Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.6</td>
						   <td class="align-l">- Chi phí khác</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thu nhập từ hoạt động chuyển nhượng bất động sản, tài sản khác ([24]=[16]-[17])</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Thuế suất thuế TNDN</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l"><b>Thuế TNDN phải nộp ([26]=[24] x [25])</b></td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
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