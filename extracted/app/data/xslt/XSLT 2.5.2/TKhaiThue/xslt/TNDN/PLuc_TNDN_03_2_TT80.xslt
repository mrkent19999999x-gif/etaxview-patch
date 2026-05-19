<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_2_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_2_TNDN">	
			<xsl:variable name="pl03-2-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_2_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-2/TNDN'"/>
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
						         <td class="align-c"><b>I</b></td>
							     <td colspan='5' class="align-l"><b>Lỗ của hoạt động sản xuất kinh doanh được chuyển trong kỳ</b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">1</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu1/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu1/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu1/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu1/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu1/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">2</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu2/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu2/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu2/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu2/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu2/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">3</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu3/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu3/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu3/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu3/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu3/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">4</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu4/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu4/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu4/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu4/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu4/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">5</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu5/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu5/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu5/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu5/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_HDSXKD/BangChiTietSoLo/noiDungNamThu5/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
									<td></td>
									<td class="align-c" colspan="3"><b>Tổng cộng</b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-2-tndn/Lo_HDSXKD/tongCong)"/></b></td>
									<td></td>
								</tr>
							   <tr>
						         <td class="align-c"><b>II</b></td>
							     <td colspan='5' class="align-l"><b>Lỗ của hoạt động chuyển nhượng bất động sản được chuyển trong kỳ</b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">1</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu1/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu1/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu1/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu1/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu1/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">2</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu2/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu2/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu2/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu2/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu2/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">3</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu3/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu3/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu3/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu3/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu3/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">4</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu4/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu4/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu4/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu4/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu4/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
						         <td class="align-c">5</td>
							     <td class="align-c"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu5/ct2"/></b></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu5/ct3"/></td>
   							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu5/ct4"/></td>
							     <td class="number align-r"><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu5/ct5"/></td>
							     <td class="number align-r"><b><xsl:value-of select="$pl03-2-tndn/Lo_CNBDS/BangChiTietSoLo/noiDungNamThu5/ct6"/></b></td>							        							     
							   </tr>
							   <tr>
									<td></td>
									<td class="align-c" colspan="3"><b>Tổng cộng</b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-2-tndn/Lo_CNBDS/tongCong)"/></b></td>
									<td></td>
								</tr>
							   </table>
					   	</div>
					</div>
		<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>							
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><u><b>Ghi chú:</b></u></i></div>
			<div><i>- Số liệu chỉ tiêu [04] được tổng hợp vào chỉ tiêu C3a của Tờ khai 03/TNDN;</i></div>
			<div><i>- Số liệu chỉ tiêu [05] được tổng hợp vào chỉ tiêu D2 của Tờ khai 03/TNDN.</i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_2_TNDN-->
	</xsl:template>		
</xsl:stylesheet>