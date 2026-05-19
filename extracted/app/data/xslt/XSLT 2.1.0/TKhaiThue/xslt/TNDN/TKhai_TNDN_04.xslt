<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'04/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' (Dùng cho đơn vị sự nghiệp tổ chức chính trị, tổ chức chính trị xã hội và tổ chức xã hội nghề nghiệp  tính thuế theo tỷ lệ % trên doanh thu)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						 <tr>
						   <td class="align-c" rowspan="3"><b>STT</b></td>
						   <td class="align-c" colspan="9"><b>Chỉ tiêu</b></td>
						   <td class="align-c" rowspan="3"><b>Tổng số thuế Thu nhập doanh nghiệp phải nộp</b></td>
						 </tr>
						 <tr>
						   <td class="align-c" colspan="3"><b>Đối với dịch vụ</b></td>
						   <td class="align-c" colspan="3"><b>Đối với kinh doanh hàng hoá</b></td>
						   <td class="align-c" colspan="3"><b>Đối với hoạt động khác</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>Doanh thu  tính thuế</b></td>
						   <td class="align-c"><b>Tỷ lệ (%)</b></td>
						   <td class="align-c"><b>Số thuế  phải nộp</b></td>
   						   <td class="align-c"><b>Doanh thu  tính thuế</b></td>
						   <td class="align-c"><b>Tỷ lệ (%)</b></td>
						   <td class="align-c"><b>Số thuế  phải nộp</b></td>
						   <td class="align-c"><b>Doanh thu  tính thuế</b></td>
						   <td class="align-c"><b>Tỷ lệ (%)</b></td>
						   <td class="align-c"><b>Số thuế  phải nộp</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td>
						   <td class="align-c">(9)</td>
						   <td class="align-c">(10)</td>
						   <td class="align-c">(11)=(4)+(7)+(10)</td>						   
						 </tr>						 
					<xsl:for-each select="$tkchinh/TTinThueTNDN/BangThueTNDN">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiDichVu/ct2)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiDichVu/ct3)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiDichVu/ct4)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHangHoa/ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHangHoa/ct6)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHangHoa/ct7)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHoatDongKhac/ct8)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHoatDongKhac/ct9)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DoiVoiHoatDongKhac/ct10)" /></td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  </tr>
							</xsl:for-each>
							<tr>
								<td class="align-c"><b>Tổng cộng</b></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongThueDVu)"/></b></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongThueHHoa)"/></b></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongThueKhac)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongThueTNDNPNop)"/></b></td>																
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