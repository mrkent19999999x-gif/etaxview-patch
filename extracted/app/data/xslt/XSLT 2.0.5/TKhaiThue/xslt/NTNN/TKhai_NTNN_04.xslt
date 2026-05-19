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
							   <td>Chỉ tiêu</td>
							   <td>Kê khai</td>
							   <td>Quyết toán</td>
							   <td>Chênh lệch</td>							   
							   <td>Ghi chú</td>
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
							   <td>Doanh thu phần việc nhà thầu phụ Việt Nam thực hiện được trừ (nếu có)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuNTPhu/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuNTPhu/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuNTPhu/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/DThuNTPhu/ghiChu"/></td>
							 </tr> 
							 <tr>
							   <td class="align-c">4</td>
							   <td>Doanh thu tính thuế (4=2-3)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThue/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThue/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DThuTinhThue/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/DThuTinhThue/ghiChu"/></td>
							 </tr> 
							 <tr>
							   <td class="align-c">5</td>
							   <td>Số thuế thu nhập doanh nghiệp phải nộp </td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueTNDNPNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueTNDNPNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueTNDNPNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/SoThueTNDNPNop/ghiChu"/></td>
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
							   <td class="align-c">7</td>
							   <td>Số thuế còn phải nộp (7=5-6)</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPNop/keKhai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPNop/quyetToan)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueConPNop/chenhLech)"/></td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/SoThueConPNop/ghiChu"/></td>
							 </tr>
							 
					</table>
      </div>	
      </div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>	  
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><b>Ghi chú:  </b> - Trường hợp có nhiều nhà thầu phụ thực hiện thì lập bảng kê chi tiết đối với từng nhà thầu phụ</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
	</xsl:template>		
</xsl:stylesheet>