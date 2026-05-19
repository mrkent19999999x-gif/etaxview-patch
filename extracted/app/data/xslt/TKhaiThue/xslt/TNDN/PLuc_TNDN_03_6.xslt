<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
<!--start phu luc PL03_6_TNDN-->
	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_6_TNDN">	
	<xsl:variable name="pl03-6_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_6_TNDN' />
	<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-6/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO TRÍCH, SỬ DỤNG QUỸ KHOA HỌC VÀ CÔNG NGHỆ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế TNDN số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
					<div class="content">
							<div class="align-l"><b>I. Xác định số trích lập Quỹ phát triển khoa học và công nghệ trong kỳ tính thuế:</b></div>          
							<div class="align-l">1. Mức trích lập: <xsl:value-of select="$pl03-6_tndn/mucTrichLap"/></div>
							<div class="align-l">2. Số tiền trích lập: <span class="number"><xsl:value-of select="$pl03-6_tndn/soTienTrichLap"/></span></div>
						    <div class="align-l"><b>II. Theo dõi việc sử dụng Quỹ phát triển khoa học và công nghệ các kỳ tính thuế trước và kỳ này: </b></div>          
						<table class="tkhai_table">
						    <tr>
						       <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Năm trích lập</b></td>
							   <td class="align-c"><b>Mức trích lập trong kỳ tính thuế này</b></td>
							   <td class="align-c"><b>Số tiền trích lập trong kỳ tính thuế này</b></td>
							   <td class="align-c"><b>Số tiền đã sử dụng trong kỳ tính thuế này</b></td>
							   <td class="align-c"><b>Số tiền đã trích lập được chuyển từ các kỳ tính thuế trước</b></td>     
							   <td class="align-c"><b>Số tiền đã trích lập được chuyển sang các kỳ tính thuế sau</b></td>     
						   </tr>
						   <tr>
						      <td class="align-c">(1)</td>
						      <td class="align-c">(2)</td>
						      <td class="align-c">(3)</td>
						      <td class="align-c">(4)</td>
						      <td class="align-c">(5)</td>
						      <td class="align-c">(6)</td>
   						      <td class="align-c">(7)=(6)+(4)–(5)</td>
						   </tr>
						   <xsl:for-each select="$pl03-6_tndn/TTinNoiDung_PL036TNDN/NoiDungPL036TNDN">
						   	    <xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-c"><xsl:value-of select="namTrLap"/></td>
							 <td class="number align-r"><xsl:value-of select="mucTrLapKyNay"/></td>
							 <td class="number align-r"><xsl:value-of select="soTienTrLapKyNay"/></td>
							 <td class="number align-r"><xsl:value-of select="soTienSDungKyNay"/></td>
							 <td class="number align-r"><xsl:value-of select="soTienTrLapKyTruoc"/></td>
							 <td class="number align-r"><xsl:value-of select="soTienTrLapKySau"/></td>
							</tr>
							</xsl:for-each >
						<tr >
							 <td colspan="2" class="align-c"><b>Tổng cộng</b></td>
							 <td></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6_tndn/tongTienTrLapKyNay"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6_tndn/tongTienSDungKyNay"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6_tndn/tongTienTrLapKyTruoc"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6_tndn/tongTienTrLapKySau"/></b></td>
							</tr>
						   </table><br/>
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
<!--end phu luc PL03_6_TNDN-->
	</xsl:template>		
</xsl:stylesheet>