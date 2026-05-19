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
		<xsl:with-param name="mauTKhai"   select="'02/CNKD-TNCN-QTT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho hộ kinh doanh, cá nhân kinh doanh thực hiện nộp thuế thu nhập cá nhân trên thu nhập tính thuế)'"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<div  class="align-l"><b>A. KÊ KHAI THÔNG TIN TÍNH THUẾ</b></div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Doanh thu bán hàng hoá và cung cấp dịch vụ (bao gồm cả doanh thu từ hoạt động kinh doanh trên nền tảng TMĐT)</td>
										<td class="align-c">[11]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct11)"/></td>
									</tr>
									<tr>
										<td class="align-c"></td>
										<td><i>Trong đó: Doanh thu từ hoạt động trên nền tảng TMĐT do sàn TMĐT khấu trừ, nộp thay</i></td>
										<td class="align-c">[11a]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct11a)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Chi phí sản xuất, kinh doanh hàng hoá, dịch vụ</td>
										<td class="align-c">[12]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct12)"/></td>
									</tr>
									<tr>
										<td class="align-c">3</td>
										<td>Thu nhập tính thuế từ hoạt động sản xuất kinh doanh [13]=[11]-[12]</td>
										<td class="align-c">[13]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct13)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Thuế suất</td>
										<td class="align-c">[14]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct14)"/></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Số Thuế TNCN phải nộp [15] = [13]x[14]</td>
										<td class="align-c">[15]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct15)"/></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Số thuế TNCN do Sàn TMĐT đã khấu trừ</td>
										<td class="align-c">[16]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct16)"/></td>
									</tr>
									<tr>
										<td class="align-c">7</td>
										<td>Thuế TNCN còn phải nộp [17] = [15]-[16]>=0</td>
										<td class="align-c">[17]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct17)"/></td>
									</tr>
									<tr>
										<td class="align-c">8</td>
										<td>Thuế TNCN nộp thừa [18] = [15]-[16] &lt;0</td>
										<td class="align-c">[18]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiTTTinhThue/ct18)"/></td>
									</tr>
									</table>
										
				<div  class="align-l"><b>B. HỖ TRỢ THÔNG TIN NỘP THUẾ</b></div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Mục</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Cơ quan thu</b></td>
						<td class="align-c"><b>Hạn nộp thuế</b></td>
						
					</tr>
					<tr>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
						<xsl:variable name="currentRows" select='position()' />
						
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ma_muc"/>-<xsl:value-of select="ten_muc"/></td>
							<td class="align-c"><xsl:value-of select="ma_tieumuc"/>-<xsl:value-of select="ten_tieumuc"/></td>
						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTien)"/></td>
							<td class="align-c"><xsl:value-of select="ten_coquanthu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(hanNopThue,'dd/mm/yyyy')"/></td>
						
					</xsl:for-each>
					<tr>
						
						<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r"><b>[25]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tong_sotien)"/></b></td>
						<td></td>
						<td></td>
						
						
					</tr>
				</table>
				<div  class="align-l"><b>C. ĐỀ NGHỊ XỬ LÝ KHOẢN NỘP THỪA</b></div>
				<div  class="align-l"><b>[26]</b> Thuế TNCN đề nghị hoàn trả: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/thueTNCNDeNghiHT)"/></div>
				<div  class="align-l"><b>[27]</b> Hình thức hoàn trả: </div> 
				<div><b>[27.1]</b>[<xsl:if test="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/chuyenKhoan='true' or $tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/chuyenKhoan='1'">x</xsl:if>]<lable>Chuyển khoản:</lable></div>
				<div><b>[27.2]</b>Tên chủ tài khoản: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tenChuTaiKhoan"/></div>
				
				<div><b>[27.3]</b>Tài khoản số: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/taiKhoanSo"/>&#160;&#160;&#160;&#160;&#160; <b>[27.4]</b>Tại Ngân hàng (KBNN): <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/taiNganHang_ten"/></div>
				       
			     <div><b>[27.5]</b> [<xsl:if test="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tienMat='true' or $tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/tienMat='1'">x</xsl:if>] <lable> Tiền mặt</lable></div>
			     <div><b>[27.6]</b>Tên người nhận tiền: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/nguoiNhanTien"/></div>
			     <div><b>[27.7]</b>Số CCCD/Số định danh cá nhân/Số Hộ chiếu:  <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/so_giayto"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</div>
			     <div><b>[27.8]</b>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/ngayCap,'dd/mm/yyyy')"/>&#160;&#160;&#160;&#160;&#160;<b>[27.9]</b> Nơi cấp: <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/noiCap"/></div>
			     <div><b>[27.10]</b> Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước <xsl:value-of select="$tkchinh/DeNghiXuLyKhoanNopThua/HinhThucHoanTra/noiNhanTien"/></div> 
				 <div><b>[28]</b> Đề nghị bù trừ nghĩa vụ thuế phải nộp các kỳ khác: <xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/deNghiBuTruKyKhac)"/></div> 
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
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-c"><b>[33]</b></td>
							<td class="align-c"><b>[34]</b></td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-c"><b>[38]</b></td>
							<td class="align-c"><b>[39]</b></td>
							<td class="align-c"><b>[40]</b></td>
							<td class="align-c"><b>[41]=[39]-[40]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/DeNghiXuLyKhoanNopThua/DeNghiBuTru/CTietBuTru">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ct30"/></td>
							<td class="align-c"><xsl:value-of select="ct31"/></td>
							<td class="align-c"><xsl:value-of select="ct32"/></td>
							<td class="align-c"><xsl:value-of select="ct33"/></td>
							<td class="align-c"><xsl:value-of select="ct34"/></td>
							<td class="align-c"><xsl:value-of select="ct35_ma"/>-<xsl:value-of select="ct35_ten"/></td>
						    <td class="align-c"><xsl:value-of select="ct36_ten"/></td>
							<td class="align-c"><xsl:value-of select="ct37"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct38,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct39)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct40)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct41)"/></td>
							
							
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