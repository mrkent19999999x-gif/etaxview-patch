<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc 03_1B_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1B_TNDN">	
		<xsl:variable name="pl03-1b_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1B_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-1B/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH'"/>
<xsl:with-param name="tenPL1"   select="'Áp dụng đối với ngành ngân hàng, tín dụng'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
						<div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							    <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu </b></td>
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
								   <td class="align-c">1</td>
								   <td class="align-l">Thu nhập lãi và các khoản thu nhập tương tự</td>
								   <td class="align-c">[04]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct04"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l">Chi phí lãi và các chi phí tương tự</td>
								   <td class="align-c">[05]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct05"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>3</b></td>
								   <td class="align-l"><b>Thu nhập lãi thuần ([06]=[04]-[05])</b></td>
								   <td class="align-c"><b>[06]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct06"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c">4</td>
								   <td class="align-l">Thu nhập từ hoạt động dịch vụ</td>
								   <td class="align-c">[07]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct07"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">5</td>
								   <td class="align-l">Chi phí hoạt động dịch vụ</td>
								   <td class="align-c">[08]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct08"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>6</b></td>
								   <td class="align-l"><b>Lãi / lỗ thuần từ hoạt động dịch vụ ([09]=[07]-[08])</b></td>
								   <td class="align-c"><b>[09]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct09"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>7</b></td>
								   <td class="align-l"><b>Lãi / lỗ thuần từ hoạt động kinh doanh ngoại hối</b></td>
								   <td class="align-c"><b>[10]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct10"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>8</b></td>
								   <td class="align-l"><b>Lãi / lỗ thuần từ mua bán chứng khoán kinh doanh</b></td>
								   <td class="align-c"><b>[11]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct11"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>9</b></td>
								   <td class="align-l"><b>Lãi / lỗ thuần từ mua bán chứng khoán đầu tư</b></td>
								   <td class="align-c"><b>[12]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct12"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c">10</td>
								   <td class="align-l">Thu nhập từ hoạt động khác</td>
								   <td class="align-c">[13]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct13"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">11</td>
								   <td class="align-l">Chi phí hoạt động khác</td>
								   <td class="align-c">[14]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1b_tndn/ct14"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>12</b></td>
								   <td class="align-l"><b>Lãi / lỗ thuần từ hoạt động khác ([15]=[13]-[14])</b></td>
								   <td class="align-c"><b>[15]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct15"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>13</b></td>
								   <td class="align-l"><b>Thu nhập từ góp vốn, mua cổ phần</b></td>
								   <td class="align-c"><b>[16]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct16"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>14</b></td>
								   <td class="align-l"><b>Chi phí hoạt động</b></td>
								   <td class="align-c"><b>[17]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct17"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>15</b></td>
								   <td class="align-l"><b>Chi phí dự phòng rủi ro tín dụng</b></td>
								   <td class="align-c"><b>[18]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct18"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>16</b></td>
								   <td class="align-l"><b>Tổng lợi nhuận trước thuế ([19]=[06]+[09]+[10]+[11]+[12]+[15]+[16]-[17]-[18])</b></td>
								   <td class="align-c"><b>[19]</b></td>
								   <td class="number align-r"><b><xsl:value-of select="$pl03-1b_tndn/ct19"/></b></td>
								 </tr>  
							   </table>
                        </div>
					</div>
	<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>						
			<xsl:call-template name="tkhaiFooter"/>	
				<div>____________________</div>
				<div><i><b><u>Ghi chú:</u></b></i></div>
				<div><i>Số liệu chỉ tiêu [19] được tổng hợp vào chỉ tiêu A1 của Tờ khai 03/TNDN</i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>						
		</xsl:if>
<!--end phu luc 03_1B_TNDN-->	
	   
	</xsl:template>		
</xsl:stylesheet>