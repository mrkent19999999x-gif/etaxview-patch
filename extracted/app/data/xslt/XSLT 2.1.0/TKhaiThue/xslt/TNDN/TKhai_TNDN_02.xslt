<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 151/2014/TT-BTC  ngày 10/10/2014 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-02TNDN">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dùng cho doanh nghiệp kê khai thuế  thu nhập doanh nghiệp từ chuyển nhượng bất động sản theo từng lần phát sinh)'"/>
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
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						 </tr>
					 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">[25]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">[26]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">- Giá vốn của đất chuyển nhượng</td>
						   <td class="align-c">[27]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về đất</td>
						   <td class="align-c">[28]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về hoa màu</td>
						   <td class="align-c">[29]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.4</td>
						   <td class="align-l">- Chi phí cải tạo san lấp mặt bằng</td>
						   <td class="align-c">[30]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.5</td>
						   <td class="align-l">- Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
						   <td class="align-c">[31]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.6</td>
						   <td class="align-l">- Chi phí khác</td>
						   <td class="align-c">[32]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thu nhập từ hoạt động chuyển nhượng bất động sản ([33]=[25]-[26])</td>
						   <td class="align-c">[33]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Thuế suất thuế TNDN  (%)</td>
						   <td class="align-c">[34]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Thuế TNDN phải nộp ([35]=[33] x [34])</td>
						   <td class="align-c">[35]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						 </tr>  
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>

      	</xsl:template>		
</xsl:stylesheet>