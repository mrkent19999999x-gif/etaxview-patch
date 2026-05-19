<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	<!--start phu luc 03_1A_TNDN TT80-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1A_TNDN">	
			<xsl:variable name="pl03-1a_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1A_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-1A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH'"/>
<xsl:with-param name="tenPL1"   select="'Áp dụng đối với ngành sản xuất, thương mại, dịch vụ (trừ công ty an ninh, quốc phòng)'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Mã chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
							 </tr>
							 <tr>
							   <td class="align-c"><i>(1)</i></td>
							   <td class="align-c"><i>(2)</i></td>
							   <td class="align-c"><i>(3)</i></td>
							   <td class="align-c"><i>(4)</i></td>
							 </tr>
							 <tr>
							   <td></td>
							   <td class="align-l"><b>Kết quả kinh doanh ghi nhận theo báo cáo tài chính:</b></td>
							   <td></td>
							   <td></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>1</b></td>
							   <td class="align-l"><b>Doanh thu bán hàng và cung cấp dịch vụ</b></td>
							   <td class="align-c"><b>[04]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct04"/></b></td>
							 </tr>  
							 <tr>
							   <td></td>
							   <td class="align-l">Trong đó: - Doanh thu bán hàng hoá, dịch vụ xuất khẩu</td>
							   <td class="align-c">[05]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct05"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2</b></td>
							   <td class="align-l"><b>Các khoản giảm trừ doanh thu ([06]=[07]+[08]+[09])</b></td>
							   <td class="align-c"><b>[06]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct06"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c">a</td>
							   <td class="align-l">Chiết khấu thương mại</td>
							   <td class="align-c">[07]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct07"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Giảm giá hàng bán</td>
							   <td class="align-c">[08]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct08"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">c</td>
							   <td class="align-l">Giá trị hàng bán bị trả lại</td>
							   <td class="align-c">[09]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct09"/></td>
							 </tr>   
							 <tr>
							   <td class="align-c"><b>3</b></td>
							   <td class="align-l"><b>Doanh thu hoạt động tài chính</b></td>
							   <td class="align-c"><b>[10]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct10"/></b></td>
							 </tr>  
							 <tr>
							   <td></td>
							   <td class="align-l">Trong đó: Doanh thu từ lãi tiền gửi</td>
							   <td class="align-c">[11]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct11"/></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>4</b></td>
							   <td class="align-l"><b>Chi phí sản xuất, kinh doanh hàng hoá, dịch vụ ([12]=[13]+[14]+[15])</b></td>
							   <td class="align-c"><b>[12]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct12"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c">a</td>
								<td class="align-l">Giá vốn hàng bán</td>
							   <td class="align-c">[13]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct13"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Chi phí bán hàng</td>
							   <td class="align-c">[14]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct14"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">c</td>
							   <td class="align-l">Chi phí quản lý doanh nghiệp</td>
							   <td class="align-c">[15]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct15"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>5</b></td>
							   <td class="align-l"><b>Chi phí tài chính</b></td>
							   <td class="align-c"><b>[16]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct16"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"></td>
							   <td class="align-l">Trong đó: Chi phí lãi tiền vay</td>
							   <td class="align-c">[17]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct17"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>6</b></td>
							   <td class="align-l"><b>Lợi nhuận thuần từ hoạt động kinh doanh([18]=[04]-[06]+[10]-[12]-[16])</b></td>
							   <td class="align-c"><b>[18]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct18"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>7</b></td>
							   <td class="align-l"><b>Thu nhập khác</b></td>
							   <td class="align-c"><b>[19]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct19"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>8</b></td>
							   <td class="align-l"><b>Chi phí khác</b></td>
							   <td class="align-c"><b>[20]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct20"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>9</b></td>
							   <td class="align-l"><b>Lợi nhuận khác ([21]=[19]-[20])</b></td>
							   <td class="align-c"><b>[21]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct21"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>10</b></td>
							   <td class="align-l"><b>Tổng lợi nhuận kế toán trước thuế thu nhập doanh nghiệp ([22]=[18]+[21])</b></td>
							   <td class="align-c"><b>[22]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct22"/></b></td>
							 </tr>  
						   </table>
					  </div>
					</div>
	<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
			<div>_____________________</div>
			<div><i><b><u>Ghi chú:</u></b> Số liệu chỉ tiêu [22] được tổng hợp vào chỉ tiêu A1 của Tờ khai 03/TNDN</i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</xsl:if>
<!--end phu luc 03_1A_TNDN-->	

	   
	</xsl:template>		
</xsl:stylesheet>