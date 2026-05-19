<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
<!--start phu luc 03_1A_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_1A_TNDN">	
			<xsl:variable name="pl03-1a_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_1A_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-1A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH'"/>
<xsl:with-param name="tenPL1"   select="'Dành cho người nộp thuế thuộc các ngành sản xuất, thương mại, dịch vụ'"/>
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
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							 </tr>
							 <tr>
							   <td></td>
							   <td class="align-l"><b>Kết quả kinh doanh ghi nhận theo báo cáo tài chính.</b></td>
							   <td></td>
							   <td></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>1</b></td>
							   <td class="align-l"><b>Doanh thu bán hàng và cung cấp dịch vụ.</b></td>
							   <td class="align-c"><b>[01]</b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-1a_tndn/ct01)"/></b></td>
							 </tr>  
							 <tr>
							   <td></td>
							   <td class="align-l">Trong đó: - Doanh thu bán hàng hoá, dịch vụ xuất khẩu</td>
							   <td class="align-c">[02]</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl03-1a_tndn/ct02)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2</b></td>
							   <td class="align-l"><b>Các khoản giảm trừ doanh thu ([03]=[04]+[05]+[06]+[07])</b></td>
							   <td class="align-c"><b>[03]</b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-1a_tndn/ct03)"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c">a</td>
							   <td class="align-l">Chiết khấu thương mại</td>
							   <td class="align-c">[04]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct04"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Giảm giá hàng bán</td>
							   <td class="align-c">[05]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct05"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">c</td>
							   <td class="align-l">Giá trị hàng bán bị trả lại</td>
							   <td class="align-c">[06]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct06"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">d</td>
							   <td class="align-l">Thuế tiêu thụ đặc biệt, thuế xuất khẩu, thuế giá trị gia tăng theo phương pháp trực tiếp phải nộp</td>
							   <td class="align-c">[07]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct07"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>3</b></td>
							   <td class="align-l"><b>Doanh thu hoạt động tài chính</b></td>
							   <td class="align-c"><b>[08]</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1a_tndn/ct08"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>4</b></td>
							   <td class="align-l"><b>Chi phí sản xuất, kinh doanh hàng hoá, dịch vụ ([09]=[10]+[11]+[12])</b></td>
							   <td class="align-c"><b>[09]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct09"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c">a</td>
								<td class="align-l">Giá vốn hàng hóa</td>
							   <td class="align-c">[10]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct10"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Chi phí bán hàng</td>
							   <td class="align-c">[11]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct11"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">c</td>
							   <td class="align-l">Chi phí quản lý doanh nghiệp</td>
							   <td class="align-c">[12]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct12"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>5</b></td>
							   <td class="align-l"><b>Chi phí tài chính</b></td>
							   <td class="align-c"><b>[13]</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1a_tndn/ct13"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"></td>
							   <td class="align-l">Trong đó: Chi phí lãi tiền vay dùng cho sản xuất, kinh doanh</td>
							   <td class="align-c">[14]</td>
							   <td class="number align-r"><xsl:value-of select="$pl03-1a_tndn/ct14"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>6</b></td>
							   <td class="align-l"><b>Lợi nhuận thuần từ hoạt động kinh doanh ([15]=[01]-[03]+[08]-[09]-[13])</b></td>
							   <td class="align-c"><b>[15]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct15"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>7</b></td>
							   <td class="align-l"><b>Thu nhập khác</b></td>
							   <td class="align-c"><b>[16]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct16"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>8</b></td>
							   <td class="align-l"><b>Chi phí khác</b></td>
							   <td class="align-c"><b>[17]</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1a_tndn/ct17"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>9</b></td>
							   <td class="align-l"><b>Lợi nhuận khác ([18] = [16] - [17])</b></td>
							   <td class="align-c"><b>[18]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="$pl03-1a_tndn/ct18"/></b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>10</b></td>
							   <td class="align-l"><b>Tổng lợi nhuận kế toán trước thuế thu nhập doanh nghiệp ([19] = [15] + [18])</b></td>
							   <td class="align-c"><b>[19]</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1a_tndn/ct19"/></b></td>
							 </tr>  
						   </table>
					  </div>
					</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>						
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><b><u>Ghi chú:</u></b> - Số liệu tại chỉ tiêu [19] của Phụ lục này được ghi vào chỉ tiêu mã số A1 của Tờ khai quyết toán thuế TNDN của cùng kỳ tính thuế. </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc 03_1A_TNDN-->	
	   
	</xsl:template>		
</xsl:stylesheet>