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
		<xsl:with-param name="mauTKhai"   select="'02/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tr¬ường hợp Bên Việt nam khấu trừ và nộp thuế thay cho Nhà thầu nước ngoài)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam </i>	</div>
					<table class="tkhai_table"  >
							<tr class="tkhaiheader">
							   <td rowspan="2">STT</td>
							   <td rowspan="2">Nội dung công việc</td>
							   <td rowspan="2">Đơn vị tính</td>
							   <td colspan="2">Kê khai của bên Việt Nam ký hợp đồng</td>
							   <td rowspan="2">Ghi chú</td>
							 </tr>
							 <tr class="tkhaiheader">       
							 <td >Kê khai</td>
							   <td >Quyết toán</td>
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
							   <td class="align-c"><xsl:value-of select="$tkchinh/GiaTriHDong/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/quyetToan)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/GiaTriHDong/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Giá trị phần việc nhà thầu phụ Việt Nam thực hiện được trừ (nếu có)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/GiaTriPViecNThauPhuVN/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriPViecNThauPhuVN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriPViecNThauPhuVN/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/GiaTriPViecNThauPhuVN/ghiChu"/></td>
							 </tr> 
							 <tr>
							  <td class="align-c"  rowspan="3">3</td>
							   <td>Doanh thu chịu thuế của Nhà thầu nước ngoài  (a+b)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/DThuTinhThueNTNN/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTNN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTNN/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/DThuTinhThueNTNN/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td>a.Thuế GTGT</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/DoanhThuChiuThueGTGT/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuChiuThueGTGT/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuChiuThueGTGT/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/DoanhThuChiuThueGTGT/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>b.Thuế TNDN</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/DoanhThuChiuThueTNDN/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuChiuThueTNDN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuChiuThueTNDN/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/DoanhThuChiuThueTNDN/ghiChu"/></td>
							 </tr>  

							   
							 <tr>
							   <td class="align-c" rowspan="3">4</td>
							   <td>Số thuế phải nộp của Nhà thầu nước ngoài (a+b)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/SoThuePhaiNopNTNN/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopNTNN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopNTNN/quyetToan)"/></td>
  						        <td><xsl:value-of select="$tkchinh/SoThuePhaiNopNTNN/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>a.Thuế GTGT</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueGTGTPhaiNop/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueGTGTPhaiNop/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>b.Thuế TNDN</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueTNDNPhaiNop/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueTNDNPhaiNop/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c" rowspan="3">5</td>
							   <td>Số thuế đã nộp của nhà thầu nước ngoài</td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/SoThueDaNopNTNN/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNopNTNN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNopNTNN/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/SoThueDaNopNTNN/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>a.Thuế GTGT</td>
							    <td class="align-c"><xsl:value-of select="$tkchinh/ThueGTGTDaNop/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaNop/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueGTGTDaNop/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>b.Thuế TNDN</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueTNDNDaNop/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNDaNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNDaNop/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueTNDNDaNop/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c" rowspan="3">6</td>
							   <td>Số thuế Nhà thầu nước ngoài nộp thừa/thiếu (6 = 4 – 5)</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/SoThueNopThuaThieu/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueNopThuaThieu/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueNopThuaThieu/quyetToan)"/></td>
						   <td><xsl:value-of select="$tkchinh/SoThueNopThuaThieu/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>a.Thuế GTGT</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueGTGTThuaThieu/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTThuaThieu/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTThuaThieu/quyetToan)"/></td>
								   <td><xsl:value-of select="$tkchinh/ThueGTGTThuaThieu/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td>b.Thuế TNDN</td>
							   <td class="align-c"><xsl:value-of select="$tkchinh/ThueTNDNThuaThieu/donViTinh"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNThuaThieu/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNThuaThieu/quyetToan)"/></td>
							   <td><xsl:value-of select="$tkchinh/ThueTNDNThuaThieu/ghiChu"/></td>
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