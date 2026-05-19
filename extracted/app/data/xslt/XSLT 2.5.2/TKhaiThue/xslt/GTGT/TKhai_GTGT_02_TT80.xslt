<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_02GTGT_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với người nộp thuế tính thuế theo phương pháp khấu trừ có dự án đầu tư thuộc diện được hoàn thuế)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<br/>
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
                            <tr>
							  <td class="align-c"><b>STT</b></td>
							  <td class="align-c"><b>Chỉ tiêu</b></td>
							  <td class="align-c" colspan="2"><b>Giá trị hàng hóa dịch vụ (chưa có thuế giá trị gia tăng)</b></td>
						   	  <td class="align-c" colspan="2"><b>Thuế giá trị gia tăng</b></td>
    					    </tr>
							<tr>
							   <td class="align-c"><b>1</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng chưa được hoàn kỳ trước chuyển sang</b></td>
							   <td class="align-c"><b>[21]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng đầu vào của dự án đầu tư nhận bàn giao</b></td>
							   <td class="align-c"><b>[21a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21a)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>3</b></td>
							   <td colspan="5"><b>Kê khai thuế giá trị gia tăng đầu vào của dự án đầu tư</b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>3.1</b></td>
							   <td class="align-l"><b>Hàng hoá, dịch vụ mua vào trong kỳ </b></td>
							   <td class="align-c"><b>[22]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVMuaVaoTrongKy/ct22)"/></td>
							   <td class="align-c"><b>[23]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVMuaVaoTrongKy/ct23)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"></td>
							   <td class="align-l">Trong đó: hàng hóa, dịch vụ nhập khẩu</td>
							   <td class="align-c"><b>[22a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TrongDo/ct22a)"/></td>
							   <td class="align-c"><b>[23a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TrongDo/ct23a)"/></td>
							 </tr> 							 
							 <tr>
							   <td class="align-c"><b>3.2</b></td>
							   <td colspan="5"><b>Điều chỉnh giá trị và thuế giá trị gia tăng của hàng hóa, dịch vụ mua vào các kỳ trước</b></td>
							 </tr>  
							 <tr>
							   <td class="align-c">a</td>
							   <td class="align-l">Điều chỉnh tăng</td>
							   <td class="align-c"><b>[24]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DieuChinhTangGTGTCacKyTruoc/ct24)"/></td>
							   <td class="align-c"><b>[25]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DieuChinhTangGTGTCacKyTruoc/ct25)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Điều chỉnh giảm</td>
							   <td class="align-c"><b>[26]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DieuChinhGiamGTGTCacKyTruoc/ct26)"/></td>
							   <td class="align-c"><b>[27]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DieuChinhGiamGTGTCacKyTruoc/ct27)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>4</b></td>
							   <td colspan="3"><b>Tổng số thuế giá trị gia tăng đầu vào của hàng hóa, dịch vụ mua vào ([28]=[21]+[21a]+[23]+[25]-[27])</b></td>
							   <td class="align-c"><b>[28]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>5</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng mua vào của dự án đầu tư bù trừ với thuế giá trị gia tăng phải nộp của hoạt động sản xuất kinh doanh cùng kỳ tính thuế ([28a]≤[28])</b></td>
							   <td class="align-c"><b>[28a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28a)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>6</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng mua vào của dự án đầu tư bù trừ với thuế giá trị gia tăng phải nộp của hoạt động sản xuất kinh doanh cùng kỳ tính thuế của chủ đầu tư (trường hợp người nộp thuế được chủ đầu tư giao quản lý dự án đầu tư; ([28b]≤[28]-[28a])</b></td>
							   <td class="align-c"><b>[28b]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28b)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>7</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng đầu vào chưa được hoàn đến kỳ tính thuế của dự án đầu tư ([29]=[28]-[28a]-[28b])</b></td>
								<td class="align-c"><b>[29]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
							 </tr>   
							 <tr>
							   <td class="align-c"><b>8</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng đề nghị hoàn ([30]≤[29])</b></td>
							   <td class="align-c"><b>[30]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>9</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng đầu vào của dự án đầu tư chưa được hoàn bàn giao trong kỳ ([31]≤[29]-[30])</b></td>
							   <td class="align-c"><b>[31]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
							 </tr>  
							 							   
							 <tr>
							   <td class="align-c"><b>10</b></td>
							   <td colspan="3"><b>Thuế giá trị gia tăng đầu vào của dự án đầu tư chưa được hoàn chuyển kỳ sau ([32]=[29]-[30]-[31])</b></td>
							   <td class="align-c"><b>[32]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
							 </tr>  
						   </table>
	   </div>
       </div>	
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>

<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>	
</xsl:stylesheet>