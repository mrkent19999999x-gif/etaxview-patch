<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư 
số 28/2011/TT-BTC ngày 28/2/2011 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'04/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho nhà thầu nước ngoài trực tiếp nộp thuế TNDN theo tỷ lệ %  trên doanh thu tính thuế)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam </i>	</div>
					<table class="tkhai_table"  >
							<tr class="tkhaiheader">
							   <td>STT</td>
							   <td>Nội dung</td>
							   <td>Đơn vị tính</td>
							   <td>Kê khai</td>
							   <td>Quyết toán</td>							   
							   <td>Ghi chú</td>
							 </tr>
							 <tr class="tkhaiheader">
							   <td >(1)</td>
							   <td >(2)</td>
							   <td >(3)</td>
							   <td >(4)</td>
							   <td >(5)</td>
							   <td >(6)</td>
							   </tr>     
							   <tr>
							   <td class="align-c">1</td>
							   <td>Giá trị hợp đồng</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/GiaTriHDong/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/chiTietThue/quyetToan)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/GiaTriHDong/chiTietThue/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Giá trị phần việc nhà thầu phụ Việt Nam thực hiện được trừ (nếu có)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/giaTriPViecNThauPhuVN/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/giaTriPViecNThauPhuVN/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/giaTriPViecNThauPhuVN/chiTietThue/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/giaTriPViecNThauPhuVN/chiTietThue/ghiChu"/></td>
							 </tr> 
							 <tr>
							  <td class="align-c">3</td>
							   <td>Doanh thu tính thuế (3)=(1)-(2)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/DThuTinhThue/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThue/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThue/chiTietThue/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/DThuTinhThue/chiTietThue/ghiChu"/></td>
							 </tr>
											   
							 <tr>
							   <td class="align-c">4</td>
							   <td>Số thuế TNDN phải nộp</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueTNDNPhaiNop/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/chiTietThue/quyetToan)"/></td>
  						        <td><xsl:value-of select="$tkchinh/ThueTNDNPhaiNop/chiTietThue/ghiChu"/></td>
							 </tr>  
							  <tr>
							   <td class="align-c">5</td>
							   <td>Số thuế đã nộp của nhà thầu nước ngoài</td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/ThueDaNopNTNN/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaNopNTNN/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaNopNTNN/chiTietThue/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueDaNopNTNN/chiTietThue/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">6</td>
							   <td>Số thuế nhà thầu nước ngoài nộp thừa/thiếu (6)=(4)-(5)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueNTNNNopThuaThieu/chiTietThue/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueNTNNNopThuaThieu/chiTietThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueNTNNNopThuaThieu/chiTietThue/quyetToan)"/></td>
						   <td><xsl:value-of select="$tkchinh/ThueNTNNNopThuaThieu/chiTietThue/ghiChu"/></td>
							 </tr>  
							 </table>
      </div>	
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>