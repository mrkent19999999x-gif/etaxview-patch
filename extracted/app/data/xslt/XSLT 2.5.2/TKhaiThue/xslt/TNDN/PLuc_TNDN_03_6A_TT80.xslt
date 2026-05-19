<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_6A_TNDN-->
	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_6A_TNDN">	
	<xsl:variable name="pl03-6a-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_6A_TNDN' />
	<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-6/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO TRÍCH LẬP, SỬ DỤNG QUỸ KHOA HỌC VÀ CÔNG NGHỆ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
					<div class="content">
							<div class="align-l"><b>I. Xác định số trích lập Quỹ phát triển khoa học và công nghệ trong kỳ tính thuế:</b></div>          
							<div class="align-l"><b>[04]</b> Mức trích lập: <xsl:value-of select="$pl03-6a-tndn/ct04"/></div>
							<div class="align-l"><b>[05]</b> Số tiền trích lập: <xsl:value-of select="ihtkk:formatNumber($pl03-6a-tndn/ct05)"/> Đồng Việt Nam</div>
						    <div class="align-l"><b>II. Theo dõi việc điều chuyển, sử dụng Quỹ phát triển khoa học và công nghệ các kỳ tính thuế trước và kỳ này:</b></div>          
  							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
						    <tr>
						       <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Năm trích lập</b></td>
							   <td class="align-c"><b>Mức trích lập trong kỳ tính thuế</b></td>
							   <td class="align-c"><b>Số tiền trích lập trong kỳ tính thuế</b></td>
							   <td class="align-c"><b>Số nhận điều chuyển trong kỳ tính thuế</b></td>
							   <td class="align-c"><b>Số điều chuyển trong kỳ tính thuế</b></td>     
							   <td class="align-c"><b>Số tiền đã sử dụng trong kỳ tính thuế trước</b></td>
							   <td class="align-c"><b>Số tiền đã sử dụng trong kỳ tính thuế này</b></td>
							   <td class="align-c"><b> Số tiền được chuyển sang các kỳ tính thuế sau</b></td>
						   </tr>
						   <tr>
						      <td class="align-c"><i>(1)</i></td>
						      <td class="align-c"><i>(2)</i></td>
						      <td class="align-c"><i>(3)</i></td>
						      <td class="align-c"><i>(4)</i></td>
						      <td class="align-c"><i>(5)</i></td>
						      <td class="align-c"><i>(6)</i></td>
   						      <td class="align-c"><i>(7)</i></td>
							  <td class="align-c"><i>(6)</i></td>
							  <td class="align-c"><i>(9)=(4)+(5)-(6)-(7)-(8)</i></td>
						   </tr>
						   <xsl:for-each select="$pl03-6a-tndn/theoDoiQuy">
						   	    <xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-c"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="number align-r"><xsl:value-of select="ct6"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							</tr>
							</xsl:for-each >
						<tr >
							 <td colspan="2" class="align-c"><b>Tổng cộng</b></td>
							 <td></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong4"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong5"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong6"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong7"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong8"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$pl03-6a-tndn/tong9"/></b></td>
							</tr>
						   </table>			
                       </div>
					</div>
							<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>								
			<xsl:call-template name="tkhaiFooter"/>	
			<div><b>_________________</b></div>
			<div><b><u><i>Ghi chú</i></u></b></div>
			<div><i>1. TNDN: Thu nhập doanh nghiệp;</i></div>
			<div><i>2. Số liệu chỉ tiêu [05] tổng hợp vào chỉ tiêu C5, D4 của tờ khai 03/TNDN;</i></div>
			<div><i>3. Số liệu chỉ tiêu [06] tổng hợp vào chỉ tiêu E6 của tờ khai 03/TNDN.</i></div>
							<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_6_TNDN-->
	</xsl:template>		
</xsl:stylesheet>