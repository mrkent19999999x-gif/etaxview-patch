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
		 <xsl:call-template name="tkhaiHeader_01_GTGT_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với người nộp thuế tính thuế theo phương pháp khấu trừ có hoạt động sản xuất kinh doanh)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content"> 
			<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
				<td class="align-c" colspan="2"><b>Giá trị hàng hóa, dịch vụ<br/>(chưa có thuế giá trị gia tăng)</b></td>
				<td class="align-c" colspan="2"><b>Thuế giá trị gia tăng</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>A</b></td>
				<td class="align-l" colspan="2"><b>Không phát sinh hoạt động mua, bán trong kỳ </b>(đánh dấu "X")</td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-c" colspan="3">
						     <xsl:if test="$tkchinh/ct21 = 'true'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/ct21 = 'false'">[]</xsl:if>			
							 <xsl:if test="$tkchinh/ct21 = '1'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/ct21 = '0'">[]</xsl:if>	
				</td>			
			 </tr>
			 <tr>
				<td class="align-c"><b>B</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng còn được khấu trừ kỳ trước chuyển sang</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>C</b></td>
				<td class="align-l" colspan="6"><b>Kê khai thuế giá trị gia tăng phải nộp ngân sách nhà nước</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>I</b></td>
				<td class="align-l" colspan="6"><b>Hàng hoá, dịch vụ mua vào trong kỳ</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="2">Giá trị và thuế giá trị gia tăng của hàng hóa, dịch vụ mua vào</td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriVaThueGTGTHHDVMuaVao/ct23)"/></td>
     			<td class="align-c"><b>[24]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriVaThueGTGTHHDVMuaVao/ct24)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b></b></td>
				<td class="align-l" colspan="2">Trong đó: hàng hóa, dịch vụ nhập khẩu</td>
				<td class="align-c"><b>[23a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HangHoaDichVuNhapKhau/ct23a)"/></td>
     			<td class="align-c"><b>[24a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HangHoaDichVuNhapKhau/ct24a)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="4">Thuế giá trị gia tăng của hàng hóa, dịch vụ mua vào được khấu trừ kỳ này</td>
			 	<td class="align-c"><b>[25]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>II</b></td>
				<td class="align-l" colspan="6"><b>Hàng hoá, dịch vụ bán ra trong kỳ</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="2">Hàng hóa, dịch vụ bán ra không chịu thuế giá trị gia tăng</td>
				<td class="align-c"><b>[26]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
				<td colspan="2"></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="2">Hàng hóa, dịch vụ bán ra chịu thuế giá trị gia tăng<br/>([27]=[29]+[30]+[32]+[32a]; [28]=[31]+[33])</td>
				<td class="align-c"><b>[27]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuThueGTGT/ct27)"/></td>
     			<td class="align-c"><b>[28]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuThueGTGT/ct28)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">a</td>
				<td class="align-l" colspan="2">Hàng hoá, dịch vụ bán ra chịu thuế suất 0%</td>
				<td class="align-c"><b>[29]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
				<td colspan="2"></td>
			 </tr>
			 <tr>
				<td class="align-c">b</td>
				<td class="align-l" colspan="2">Hàng hoá, dịch vụ bán ra chịu thuế suất 5%</td>
				<td class="align-c"><b>[30]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuTSuat5/ct30)"/></td>
     			<td class="align-c"><b>[31]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuTSuat5/ct31)"/></td>
			 </tr>
			 <tr>
				<td class="align-c">c</td>
				<td class="align-l" colspan="2">Hàng hoá, dịch vụ bán ra chịu thuế suất 10%</td>
				<td class="align-c"><b>[32]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuTSuat10/ct32)"/></td>
     			<td class="align-c"><b>[33]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHDVBRaChiuTSuat10/ct33)"/></td>
			 </tr>
			  <tr>
				<td class="align-c">d</td>
				<td class="align-l" colspan="2">Hàng hoá, dịch vụ bán ra không tính thuế</td>
				<td class="align-c"><b>[32a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32a)"/></td>
				<td colspan="2"></td>
     		 </tr>
			 <tr>
				<td class="align-c"><b>3</b></td>
				<td class="align-l" colspan="2">Tổng doanh thu và thuế giá trị gia tăng của hàng hóa, dịch vụ bán ra<br/>([34]=[26]+[27]; [35]=[28])</td>
				<td class="align-c"><b>[34]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDThuVaThueGTGTHHDVBRa/ct34)"/></td>
     			<td class="align-c"><b>[35]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDThuVaThueGTGTHHDVBRa/ct35)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>III</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng phát sinh trong kỳ ([36]=[35]-[25])</b></td>
				<td class="align-c"><b>[36]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>IV</b></td>
				<td class="align-l" colspan="6"><b>Điều chỉnh tăng, giảm thuế giá trị gia tăng còn được khấu trừ của các kỳ trước</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="4">Điều chỉnh giảm </td>
				<td class="align-c"><b>[37]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="4">Điều chỉnh tăng </td>
				<td class="align-c"><b>[38]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>V</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng nhận bàn giao được khấu trừ trong kỳ</b></td>
				<td class="align-c"><b>[39a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39a)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>VI</b></td>
				<td class="align-l" colspan="6"><b>Xác định nghĩa vụ thuế giá trị gia tăng phải nộp trong kỳ:</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng phải nộp của hoạt động sản xuất kinh doanh trong kỳ <br/>{[40a]=([36]-[22]+[37]-[38]-[39a]) ≥ 0}</b></td>
				<td class="align-c"><b>[40a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40a)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng mua vào của dự án đầu tư được bù trừ với thuế GTGT còn phải nộp của hoạt động sản xuất kinh doanh cùng kỳ tính thuế ([40b]≤[40a])</b></td>
				<td class="align-c"><b>[40b]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40b)"/></td>
			 </tr>
		 	 <tr>
				<td class="align-c"><b>3</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng còn phải nộp trong kỳ ([40]=[40a]-[40b])</b></td>
				<td class="align-c"><b>[40]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng chưa khấu trừ hết kỳ này <br/>{[41]=([36]-[22]+[37]-[38]-[39a]) ≤ 0}</b></td>
				<td class="align-c"><b>[41]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4.1</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng đề nghị hoàn ([42] ≤ [41])</b></td>
				<td class="align-c"><b>[42]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4.2</b></td>
				<td class="align-l" colspan="4"><b>Thuế giá trị gia tăng còn được khấu trừ chuyển kỳ sau ([43]=[41]-[42])</b></td>
				<td class="align-c"><b>[43]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
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