<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeaderNTNN1">
		<xsl:with-param name="mauTKhai"   select="'02/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho trường hợp Bên Việt nam khấu trừ và nộp thuế thay cho Nhà thầu nước ngoài)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam </i>	</div>
					<table class="tkhai_table"  >
							<tr class="tkhaiheader">
							    <td rowspan="2">STT</td>
							    <td rowspan="2">Chỉ tiêu</td>
							    <td colspan="3">Kê khai của bên Việt Nam ký hợp đồng</td>
							    <td rowspan="2">Ghi chú</td>
							 </tr>
							 <tr class="tkhaiheader">       
							    <td >Kê khai</td>
							    <td >Quyết toán</td>
							    <td >Chênh lệch</td>
							 </tr>     
							 <tr class="tkhaiheader">
							    <td >(1)</td>
							    <td >(2)</td>
							    <td >(3)</td>
							    <td >(4)</td>
							    <td >(5)=(4)-(3)</td>
							    <td >(6)</td>
							 </tr>     
							 <tr>
							   <td class="align-c">1</td>
							   <td>Giá trị hợp đồng</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriHDong/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/GiaTriHDong/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Doanh thu chưa bao gồm thuế giá trị gia tăng</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuChuaGomGTGT/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuChuaGomGTGT/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuChuaGomGTGT/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/DThuChuaGomGTGT/ghiChu"/></td>
							 </tr> 
							 <tr>
							   <td class="align-c">3</td>
							   <td>Doanh thu tính thuế phần việc được trừ của các Nhà thầu phụ (nếu có)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTPhu/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTPhu/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTPhu/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/DThuTinhThueNTNN/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">4</td>
							   <td>Doanh thu tính thuế của Nhà thầu nước ngoài (4=2-3)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTNN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTNN/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThueNTNN/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/DThuTinhThueNTNN/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">5</td>
							   <td>Số thuế phải nộp của Nhà thầu nước ngoài (5=5a+5b)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopNTNN/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopNTNN/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopNTNN/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/SoThuePhaiNopNTNN/ghiChu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">5a</td>
							   <td>a.Thuế giá trị gia tăng</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueGTGTPhaiNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">5b</td>
							   <td>b.Thuế thu nhập doanh nghiệp</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNPhaiNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueTNDNPhaiNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">6</td>
							   <td>Số thuế đã nộp</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/SoThueDaNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">6a</td>
							   <td>a. Thuế giá trị gia tăng</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueGTGTDaNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">6b</td>
							   <td>b. Thuế thu nhập doanh nghiệp</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNDaNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNDaNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNDaNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueTNDNDaNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">7</td>
							   <td>Số thuế còn phải nộp (7=5-6)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPhaiNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPhaiNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPhaiNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/SoThueConPhaiNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">7a</td>
							   <td>a. Thuế giá trị gia tăng (7a=5a-6a)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTConPNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTConPNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTConPNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueGTGTConPNop/ghiChu"/></td>
							 </tr>
							 <tr>
							   <td class="align-c">7b</td>
							   <td>b. Thuế thu nhập doanh nghiệp (7b=5b-6b)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNConPNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNConPNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNDNConPNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/ThueTNDNConPNop/ghiChu"/></td>
							 </tr>
					</table>
      </div>	
      </div>
<table style="page-break-inside: avoid;" width="100%" >
<tr>
<td>	  
		<xsl:call-template name="tkhaiFooter"/>
	  <div><b><i>Ghi chú:</i></b></div><br/>
	  <div><i>-	Trường hợp có nhiều nhà thầu phụ thì lập bảng kê chi tiết đối với từng nhà thầu phụ.</i></div><br/>
	  <div><i>-	Trường hợp có nhiều Nhà thầu nước ngoài thì lập bảng kê chi tiết đối với từng Nhà thầu nước ngoài.</i></div><br/>
	  <div id="sigDiv"></div>
</td>
</tr>
</table>	
	</xsl:template>		
</xsl:stylesheet>