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
		 <xsl:call-template name="tkhaiHeader-06TNDN-TT80">
		<xsl:with-param name="mauTKhai"   select="'06/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hoạt động bán toàn bộ doanh nghiệp dưới hình thức chuyển nhượng vốn có gắn với bất động sản)'"/>
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
						   <td class="align-l">Doanh thu của hoạt động bán toàn bộ doanh nghiệp có gắn với chuyển nhượng bất động sản</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chi phí của hoạt động bán toàn bộ doanh nghiệp có gắn với chuyển nhượng bất động sản</td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14)"/></td>
						 </tr>  
						<tr>
						   <td></td>
						   <td class="align-l">Trong đó:</td>
						   <td></td>
						   <td></td>
						 </tr>  					 
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Giá vốn của đất chuyển nhượng</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về đất</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về hoa màu</td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Chi phí cải tạo san lấp mặt bằng</td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">- Chi phí khác (bao gồm cả giá mua của phần vốn chuyển nhượng)</td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thu nhập từ hoạt động bán toàn bộ doanh nghiệp có gắn với chuyển nhượng bất động sản <b>([21]=[13]-[14])</b></td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Số lỗ từ hoạt động chuyển nhượng bất động sản được chuyển kỳ này</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Thu nhập tính thuế thu nhập doanh nghiệp (TNDN) từ hoạt động  bán toàn bộ doanh nghiệp có gắn với chuyển nhượng bất động sản <b>([23]=[21]-[22])</b></td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6</td>
						   <td class="align-l">Thuế suất thuế TNDN (%)</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7</td>
						   <td class="align-l">Thuế TNDN phải nộp <b>([25]=[23] x [24])</b></td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>  
					 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_06TNDN_TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>