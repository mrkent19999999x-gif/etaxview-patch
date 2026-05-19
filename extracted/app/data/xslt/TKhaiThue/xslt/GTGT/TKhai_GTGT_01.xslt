<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho người nộp thuế khai thuế giá trị gia tăng theo phương pháp khấu trừ)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
<div class="align-l">
				<xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan = ''">[] Gia hạn</xsl:if>	
				<xsl:if test="not(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan)">[] Gia hạn</xsl:if>	
					<xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan/maLyDoGiaHan='01'"> [x] Gia hạn</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan/maLyDoGiaHan = '02'">[x] Gia hạn</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan/maLyDoGiaHan = '03'"> [x] Gia hạn</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan/maLyDoGiaHan = '99'">[x] Gia hạn</xsl:if>
						 </div>
	     <xsl:if test="(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan)">     
	     <xsl:if test="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan != ''">		 
				<div>Trường hợp được gia hạn: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/GiaHan/lyDoGiaHan"/>	</div>
				</xsl:if>	
			</xsl:if>
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
				<td class="align-c" colspan="2"><b>Giá trị HHDV<br/> (chưa có thuế GTGT)</b></td>
				<td class="align-c" colspan="2"><b>Thuế GTGT </b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>A</b></td>
				<td class="align-l"><b>Không phát sinh hoạt động mua, bán trong kỳ (đánh dấu "X")</b></td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-c" colspan="2">[<xsl:if test="$tkchinh/ct21='true'"> X </xsl:if>]</td>
			 </tr>
			 <tr>
				<td class="align-c"><b>B</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT còn được khấu trừ kỳ trước chuyển sang</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>C</b></td>
				<td class="align-l" colspan="6"><b>Kê khai thuế GTGT phải nộp Ngân sách nhà nước</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>I</b></td>
				<td class="align-l" colspan="6"><b>Hàng hoá, dịch vụ (HHDV) mua vào trong kỳ</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="2">Giá trị và thuế GTGT của hàng hoá, dịch vụ mua vào</td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriVaThueGTGTHHDVMuaVao/ct23)"/></td>
     			<td class="align-c"><b>[24]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaTriVaThueGTGTHHDVMuaVao/ct24)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="4">Tổng số thuế GTGT được khấu trừ kỳ này</td>
			 	<td class="align-c"><b>[25]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>II</b></td>
				<td class="align-l" colspan="6"><b>Hàng hoá, dịch vụ bán ra trong kỳ</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="2">Hàng hóa, dịch vụ bán ra không chịu thuế GTGT </td>
				<td class="align-c"><b>[26]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="2">Hàng hóa, dịch vụ bán ra chịu thuế GTGT ([27]=[29]+[30]+[32]; [28]=[31]+[33])</td>
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
				<td class="align-c"><b>3</b></td>
				<td class="align-l" colspan="2">Tổng doanh thu và thuế GTGT của HHDV bán ra ([34]=[26]+[27]; [35]=[28])</td>
				<td class="align-c"><b>[34]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDThuVaThueGTGTHHDVBRa/ct34)"/></td>
     			<td class="align-c"><b>[35]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDThuVaThueGTGTHHDVBRa/ct35)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>III</b></td>
				<td class="align-l" colspan="4">Thuế GTGT phát sinh trong kỳ ([36]=[35]-[25]) </td>
				<td class="align-c"><b>[36]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>IV</b></td>
				<td class="align-l" colspan="6"><b>Điều chỉnh tăng, giảm thuế GTGT còn được khấu trừ của các kỳ trước </b></td>
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
				<td class="align-l" colspan="4"><b>Thuế GTGT đã nộp ở địa phương khác của hoạt động kinh doanh xây dựng, lắp đặt, bán hàng, bất động sản ngoại tỉnh</b></td>
				<td class="align-c"><b>[39]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>VI</b></td>
				<td class="align-l" colspan="6"><b>Xác định nghĩa vụ thuế GTGT phải nộp trong kỳ: </b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>1</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT phải nộp của hoạt động sản xuất kinh doanh trong kỳ ([40a]=[36]-[22]+[37]-[38] - [39]&#8805; 0)</b></td>
				<td class="align-c"><b>[40a]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40a)"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT mua vào của dự án đầu tư (cùng tỉnh, thành phố trực thuộc trung ương) được bù trừ với thuế GTGT còn phải nộp của hoạt động sản xuất kinh doanh cùng kỳ tính thuế</b></td>
				<td class="align-c"><b>[40b]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40b)"/></td>
			 </tr>
		 	 <tr>
				<td class="align-c"><b>3</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT còn phải nộp trong kỳ ([40]=[40a]-[40b])</b></td>
				<td class="align-c"><b>[40]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT chưa khấu trừ hết kỳ này (nếu [41]=[36]-[22]+[37]-[38]-[39] &lt; 0)</b></td>
				<td class="align-c"><b>[41]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4.1</b></td>
				<td class="align-l" colspan="4"><b>Tổng số thuế GTGT đề nghị hoàn</b></td>
				<td class="align-c"><b>[42]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)"/></td>
			 </tr>
             <tr>
				<td class="align-c"><b>4.2</b></td>
				<td class="align-l" colspan="4"><b>Thuế GTGT còn được khấu trừ chuyển kỳ sau ([43]=[41]-[42])</b></td>
				<td class="align-c"><b>[43]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)"/></td>
			 </tr>
 		</table>	
	   </div>
       </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
	<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- GTGT: Giá trị Gia tăng</i></div>
	 <div>  <i>- HHDV: Hàng hoá dịch vụ</i></div>
	</div>
	<br/>
	<div class="align-l">
	   <b><i><u>Hộ trợ hạch toán MLNSNN</u></i></b>
	   <br/>
	   Hạch toán chỉ tiêu [40] vào tiểu mục <xsl:value-of select="$tkchinh/tieuMucHachToan"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</xsl:template>	

		
</xsl:stylesheet>