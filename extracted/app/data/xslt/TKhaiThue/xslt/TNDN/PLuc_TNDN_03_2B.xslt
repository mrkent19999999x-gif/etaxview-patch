<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
<!--start phu luc PL03_2B_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_2B_TNDN">	
			<xsl:variable name="pl03-2B_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_2B_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-2B/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'CHUYỂN LỖ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
						<div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							   <tr>
   								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c"><b>Năm phát sinh lỗ</b></td>
								   <td class="align-c"><b>Số lỗ phát sinh</b></td>
								   <td class="align-c"><b>Số lỗ đã chuyển trong các kỳ tính thuế trước</b></td>
								   <td class="align-c"><b>Số lỗ được chuyển trong kỳ tính thuế này</b></td>
								   <td class="align-c"><b>Số lỗ còn được chuyển sang các kỳ tính thuế sau</b></td>
							   </tr>
							   <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								   <td class="align-c">(5)</td>
								   <td class="align-c">(6)</td>								   
							   </tr>
						      <tr>
						         <td class="align-c">1</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam1/namPSinhLo"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam1/soLoPSinh"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam1/soLoDaChuyen"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam1/soLoKyNay"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam1/soLoChuyenSau"/></b></td>							        							     
							   </tr>
						      <tr>
						         <td class="align-c">2</td>						      
							     <td class="align-c"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam2/namPSinhLo"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam2/soLoPSinh"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam2/soLoDaChuyen"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam2/soLoKyNay"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam2/soLoChuyenSau"/></b></td>							        							     
							   </tr>
						      <tr>
   						         <td class="align-c">3</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam3/namPSinhLo"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam3/soLoPSinh"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam3/soLoDaChuyen"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam3/soLoKyNay"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam3/soLoChuyenSau"/></b></td>							        							     
							   </tr>
						      <tr>
   						         <td class="align-c">4</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam4/namPSinhLo"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam4/soLoPSinh"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam4/soLoDaChuyen"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam4/soLoKyNay"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam4/soLoChuyenSau"/></b></td>							        							     
							   </tr>
						      <tr>
						         <td class="align-c">5</td>						      
							     <td class="align-c"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam5/namPSinhLo"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam5/soLoPSinh"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam5/soLoDaChuyen"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam5/soLoKyNay"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2B_tndn/BangChiTietSoLoTrongKy/noiDungNam5/soLoChuyenSau"/></b></td>							        							     
							   </tr>
							   <tr>
								   <td class="align-c" colspan="2"><b>Tổng cộng</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-2B_tndn/tongSoLoPSinh" /></b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-2B_tndn/tongSoLoDaChuyen" /></b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-2B_tndn/tongSoLoKyNay" /></b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-2B_tndn/tongSoLoChuyenSau" /></b></td>
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
		</xsl:if>
<!--end phu luc PL03_2B_TNDN-->		
	
	   
	</xsl:template>		
</xsl:stylesheet>