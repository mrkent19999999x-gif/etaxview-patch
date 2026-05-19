<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 06/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
                            <tr>
							  <td class="align-c"><b>STT</b></td>
							  <td class="align-c"><b>Chỉ tiêu</b></td>
							  <td class="align-c" colspan="2"><b>Giá trị HHDV (chưa có thuế GTGT)</b></td>
						   	  <td class="align-c" colspan="2"><b>Thuế GTGT</b></td>
    					    </tr>
							<tr>
							   <td class="align-c"><b>1</b></td>
							   <td colspan="3"><b>Thuế GTGT chưa được hoàn kỳ trước chuyển sang</b></td>
							   <td class="align-c"><b>[21]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>1a</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào của dự án đầu tư nhận bàn giao từ chủ dự án đầu tư</b></td>
							   <td class="align-c"><b>[21a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21a)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2</b></td>
							   <td colspan="5"><b>Kê khai thuế GTGT đầu vào của dự án đầu tư</b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2.1</b></td>
							   <td class="align-l"><b>Hàng hoá, dịch vụ mua vào trong kỳ </b></td>
							   <td class="align-c"><b>[22]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVMuaVaoTrongKy/ct22)"/></td>
							   <td class="align-c"><b>[23]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVMuaVaoTrongKy/ct23)"/></td>
							 </tr>  							 
							 <tr>
							   <td class="align-c"><b>2.2</b></td>
							   <td colspan="5"><b>Điều chỉnh thuế GTGT của HHDV mua vào các kỳ trước</b></td>
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
							   <td class="align-c"><b>3</b></td>
							   <td colspan="3"><b>Tổng số thuế GTGT đầu vào của HHDV mua vào ([28]= [23]+[25]-[27])</b></td>
							   <td class="align-c"><b>[28]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>4</b></td>
							   <td colspan="3"><b>Thuế GTGT mua vào của dự án đầu tư (cùng tỉnh, thành phố trực thuộc trung ương) bù trừ với thuế GTGT phải nộp của hoạt động sản xuất kinh doanh cùng kỳ tính thuế</b></td>
							   <td class="align-c"><b>[28a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28a)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>5</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào chưa được hoàn đến kỳ tính thuế của dự án đầu tư ([29] = [21]+[21a]+[28]-[28a])</b></td>
							   <td class="align-c"><b>[29]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>6</b></td>
							   <td colspan="5"><b>Thuế GTGT đề nghị hoàn </b></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>6.1</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào của hàng hoá nhập khẩu thuộc loại trong nước chưa sản xuất được để tạo tài sản cố định đã đề nghị hoàn </b></td>
							   <td class="align-c"><b>[30a]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30a)"/></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>6.2</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào còn lại của dự án đầu tư đề nghị hoàn</b></td>
							   <td class="align-c"><b>[30]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
							 </tr>  
							 							   
							 <tr>
							   <td class="align-c"><b>7</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào của dự án đầu tư chưa được hoàn  bàn giao cho doanh nghiệp mới thành lập trong kỳ</b></td>
							   <td class="align-c"><b>[31]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>8</b></td>
							   <td colspan="3"><b>Thuế GTGT đầu vào của dự án đầu tư chưa được hoàn chuyển kỳ sau ([32] = [29]-[30a]-[30]-[31] )</b></td>
							   <td class="align-c"><b>[32]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
							 </tr>  
						   </table>
	   </div>
       </div>	
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>
<div class="ghichu">	 
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- GTGT: Giá trị Gia tăng</i></div>
	 <div>  <i>- HHDV: Hàng hoá dịch vụ</i></div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>	
</xsl:stylesheet>