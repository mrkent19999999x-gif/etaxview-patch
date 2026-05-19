<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo …....'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_02_CNKD_HKD">
		<xsl:with-param name="mauTKhai"   select="'01/HKD-ĐNH'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hộ kinh doanh, cá nhân kinh doanh đề nghị hoàn thuế)'"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<div  class="align-l"><b>I. XÁC ĐỊNH TỔNG DOANH THU TRONG NĂM</b></div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Hoạt động kinh doanh</b></td>
										<td class="align-c"><b>Doanh thu</b></td>
									</tr>
									<tr>
							<td class="align-c">[11]</td>
							<td class="align-c">[12]</td>
							<td class="align-c">[13]</td>
						            </tr>
									<tr>
										<td class="align-c">a</td>
										<td>Hoạt động kinh doanh thông thường</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13a)"/></td>
									</tr>
									<tr>
										<td class="align-c">b</td>
										<td>Hoạt động kinh doanh thương mại điện tử</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13b)"/></td>
									</tr>
									
									<tr>
										<td class="align-c">c</td>
										<td>Hoạt động cho thuê nhà</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13c)"/></td>
									</tr>
									
									<tr>
										<td class="align-c">d</td>
										<td>Hoạt động đại lý xổ số</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13d)"/></td>
									</tr>
									<tr>
										<td class="align-c">e</td>
										<td>Hoạt động đại lý bảo hiểm</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13e)"/></td>
									</tr>
									
									<tr>
										<td class="align-c">f</td>
										<td>Hoạt động bán hàng đa cấp</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/ct13e)"/></td>
									</tr>
									
									<tr>
										<td class="align-c"></td>
										<td><b>Tổng cộng</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DoanhThuTrongNam/tongCong)"/></td>
									</tr>
									
									</table>
										
				<div  class="align-l"><b>II. SỐ THUẾ ĐÃ NỘP NSNN </b></div>
				<div  class="align-l"><b>[14] Số tiền người nộp thuế trực tiếp nộp vào NSNN: </b></div>
				<div  class="align-l"><b>[14.1]</b> Thuế GTGT: <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/ct14_1)"/></div>
				<div  class="align-l"><b>[14.2]</b> Thuế TNCN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/ct14_2)"/></div>
				<div  class="align-l"><b>[15] Số tiền do tổ chức khấu trừ, nộp thay: </b></div>
				<div  class="align-l"><b>[15.1]</b> Thuế GTGT: <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/ct15_1)"/></div>
				<div  class="align-l"><b>[15.2]</b> Thuế TNCN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/ct15_2)"/></div>
				<div  class="align-l"><b>[16]</b> Tổng cộng số tiền đã nộp NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/ct15_2)"/></div>
				
				
				<div  class="align-l"><b>II. ĐỀ NGHỊ XỬ LÝ KHOẢN NỘP THỪA</b></div>
				<div  class="align-l"><b>[17] Đề nghị hoàn trả: </b></div>
				<div  class="align-l"><b>[17.1]</b> Thuế GTGT: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiHoanTra/ct17_1)"/></div>
				<div  class="align-l"><b>[17.2]</b> Thuế TNCN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiHoanTra/ct17_2)"/></div>
				<div  class="align-l"><b>[17.3]</b> Tổng cộng: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiHoanTra/ct17_3)"/></div>
				
				<div  class="align-l"><b>[18]</b> Hình thức hoàn trả: </div> 
				<div><b>[18.1]</b>[<xsl:if test="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/chuyenKhoan='true' or $tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/chuyenKhoan='1'">x</xsl:if>]<lable>Chuyển khoản:</lable></div>
				<div><b>[18.2]</b>Tên chủ tài khoản: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tenChuTaiKhoan"/></div>
				
				<div><b>[18.3]</b>Tài khoản số: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/taiKhoanSo"/>&#160;&#160;&#160;&#160;&#160; <b>[18.4]</b>Tại Ngân hàng (KBNN): <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/taiNganHang_ten"/></div>
				       
			     <div><b>[18.5]</b> [<xsl:if test="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tienMat='true' or $tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tienMat='1'">x</xsl:if>] <lable> Tiền mặt</lable></div>
			     <div><b>[18.6]</b>Tên người nhận tiền: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/nguoiNhanTien"/></div>
			     <div><b>[18.7]</b>Số CCCD/Số định danh cá nhân/Số Hộ chiếu:  <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/so_giayto"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</div>
			     <div><b>[18.8]</b>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/ngayCap,'dd/mm/yyyy')"/>&#160;&#160;&#160;&#160;&#160;<b>[18.9]</b> Nơi cấp: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/noiCap"/></div>
			     <div><b>[18.10]</b> Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/noiNhanTien"/></div> 
				 <div  class="align-l"><b>[19] Đề nghị bù trừ nghĩa vụ thuế phải nộp các kỳ khác: </b></div>
				<div  class="align-l"><b>[19.1]</b> Thuế GTGT: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/ct19_1)"/></div>
				<div  class="align-l"><b>[19.2]</b> Thuế TNCN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/ct19_2)"/></div>
				<div  class="align-l"><b>[19.3]</b> Tổng cộng: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/ct19_3)"/></div>
				 
				 
				<div>Thông tin người nộp thuế đề nghị bù trừ khoản nộp thừa với khoản nợ, khoản thu phát sinh hoặc đề nghị hoàn kiêm bù trừ thu ngân sách nhà nước:</div>
				<table class="tkhai_table">
					<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
					        
				            <td class="align-c" colspan="10"><b>Thông tin khoản nợ/khoản thu phát sinh</b></td>
				            <td class="align-c" rowspan="2"><b>Số tiền còn phải nộp đề nghị bù trừ với số tiền nộp thừa</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp sau bù trừ</b></td>
				            </tr>
			            <tr>
				            <td class="align-c"><b>Mã số thuế</b></td>
				            <td class="align-c"><b>Tên NNT</b></td>
				            <td class="align-c"><b>Số định danh khoản phải nộp (ID)(nếu có)</b></td>
				            <td class="align-c"><b>Nội dung khoản nợ/ phát sinh</b></td>
							<td class="align-c"><b>Chương</b></td>
							<td class="align-c"><b>Tiểu mục</b></td>
							<td class="align-c"><b>Tên cơ quan thuế quản lý khoản thu</b></td>
							<td class="align-c"><b>Địa bàn hành chính</b></td>
							<td class="align-c"><b>Hạn nộp</b></td>
							<td class="align-c"><b>Số tiền còn phải nộp</b></td>
							 </tr>
					<tr>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c"><b>[32]= [30]-[31]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/CTietBuTru">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ct21"/></td>
							<td class="align-c"><xsl:value-of select="ct22"/></td>
							<td class="align-c"><xsl:value-of select="ct23"/></td>
							<td class="align-c"><xsl:value-of select="ct24"/></td>
							<td class="align-c"><xsl:value-of select="ct25"/></td>
							<td class="align-c"><xsl:value-of select="ct26_ma"/>-<xsl:value-of select="ct26_ten"/></td>
						    <td class="align-c"><xsl:value-of select="ct27_ten"/></td>
							<td class="align-c"><xsl:value-of select="ct28"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct29,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct30)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct31)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct32)"/></td>
							
							
						</tr>
					</xsl:for-each>
					
				</table>
				
								<xsl:call-template name="tkhaiFooter_TT80_HKD"/>
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
		<table style="page-break-inside: avoid;width:100%" >

</table>	
					</xsl:template>	

</xsl:stylesheet>