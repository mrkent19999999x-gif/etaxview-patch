<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số…'" />
		 <xsl:call-template name="tkhaiHeader_01_CNKD_HKD">
		<xsl:with-param name="mauTKhai"   select="'01/CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<!--<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân kinh doanh nộp thuế theo phương pháp khoán và cá nhân kinh doanh nộp thuế theo từng lần phát sinh )'"/>-->
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			
            
                      	<div> <b>A. KÊ KHAI THÔNG TIN KINH DOANH, DOANH THU</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							
							<table class="tkhai_table">
					<tr>
							<td class="align-c" rowspan="3"><b>STT</b></td>
					        <td class="align-c" rowspan="3"><b>Tên địa điểm kinh doanh/ BĐS</b></td>
							<td class="align-c" rowspan="3"><b>Mã địa điểm</b></td>
							<td class="align-c" colspan="3" rowspan="2"><b>Địa chỉ kinh doanh</b></td>
				            <td class="align-c" colspan="8"><b>Nhóm ngành nghề</b></td>
				            <td class="align-c" rowspan="3"><b>Thuế GTGT</b></td>
							<td class="align-c" rowspan="3"><b>Thuế TNCN</b></td>
				            </tr>
							<tr>
							
							<td class="align-c" colspan="2"><b>Phân phối, cung cấp hàng hóa</b></td>
							<td class="align-c" colspan="2"><b>Dịch vụ, xây dựng không bao thầu nguyên vật liệu</b></td>
							<td class="align-c" colspan="2"><b>Sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu</b></td>
							<td class="align-c" colspan="2"><b>Hoạt động kinh doanh khác</b></td>
							</tr>
							
							
			            <tr>
				            <td class="align-c"><b>Địa chỉ</b></td>
				            <td class="align-c"><b>Xã/phường/đặc khu</b></td>
				            <td class="align-c"><b>Tỉnh/TP</b></td>
						
				            <td class="align-c"><b>Doanh thu</b></td>
							<td class="align-c"><b>Trong đó: DT không chịu thuế GTGT</b></td>
							 <td class="align-c"><b>Doanh thu</b></td>
							<td class="align-c"><b>Trong đó: DT không chịu thuế GTGT</b></td>
							 <td class="align-c"><b>Doanh thu</b></td>
							<td class="align-c"><b>Trong đó: DT không chịu thuế GTGT</b></td>
							 <td class="align-c"><b>Doanh thu</b></td>
							<td class="align-c"><b>Trong đó: DT không chịu thuế GTGT</b></td>
							 </tr>
					<tr>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c"><b>[26]</b></td>
						</tr>
					<tr>
								<td class="align-c"><b>1</b></td>
								<td colspan="15"><b>Hoạt động sản xuất, kinh doanh hàng hóa, cung cấp dịch vụ (bao gồm hoạt động kinh doanh thông thường, hoạt động kinh doanh trên nền tảng thương mại điện tử không có chức năng thanh toán, kinh doanh dịch vụ lưu trú, cho thuê tài sản khác trừ BĐS)</b></td>
							</tr>
						<xsl:for-each select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuSXKD/CTietDoanhThuSXKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_diadiem"/></td>
								<td class="align-c"><xsl:value-of select="ma_diadiem"/></td>
								<td class="align-c"><xsl:value-of select="diaChi"/></td>
								<td class="align-c"><xsl:value-of select="ten_xaPhuong"/></td>
								<td class="align-c"><xsl:value-of select="ten_tinh"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuphanPhoiCCHH)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhthuKCT_CCHH)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuDVXD)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_DVXD)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuSXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_SXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuHDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_HDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNCN)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="15"><b>Hoạt động cho thuê bất động sản (nhà (không bao gồm dịch vụ lưu trú), mặt bằng, cửa hàng, nhà xưởng, kho bãi)</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuBDS/CTietDoanhThuBDS">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_diadiem"/></td>
								<td class="align-c"><xsl:value-of select="ma_diadiem"/></td>
								<td class="align-c"><xsl:value-of select="diaChi"/></td>
								<td class="align-c"><xsl:value-of select="ten_xaPhuong"/></td>
								<td class="align-c"><xsl:value-of select="ten_tinh"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuphanPhoiCCHH)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhthuKCT_CCHH)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuDVXD)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_DVXD)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuSXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_SXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuHDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_HDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNCN)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
					<tr>
						<td class="align-c"><b>III</b></td>
						<td colspan="15"><b>Hoạt động kinh doanh khai thuế theo từng lần phát sinh</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/CTietDoanhThuKhaiThueLPS">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td>\</td>
					            <td>\</td>
								<td class="align-c"><xsl:value-of select="diaChi"/></td>
								<td class="align-c"><xsl:value-of select="ten_xaPhuong"/></td>
								<td class="align-c"><xsl:value-of select="ten_tinh"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuphanPhoiCCHH)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhthuKCT_CCHH)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuDVXD)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_DVXD)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuSXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_SXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuHDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKCT_HDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNCN)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
					
					
					<!-- <tr>
						<td class="align-c"><b>III</b></td>
						<td colspan="15"><b>Hoạt động kinh doanh khai thuế theo từng lần phát sinh </b></td>
					</tr>
					<tr>
					<td>1</td>
					<td>\</td>
					<td>\</td>
					<td class="align-c"><xsl:value-of select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/diaChi"/></td>
								<td class="align-c"><xsl:value-of select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/ten_xaPhuong"/></td>
								<td class="align-c"><xsl:value-of select="$tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/ten_tinh"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuphanPhoiCCHH)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhthuKCT_CCHH)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuDVXD)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuKCT_DVXD)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuSXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuKCT_SXVT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuHDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/doanhThuKCT_HDK)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/thueGTGT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/DoanhThuKhaiThueLPS/thueTNCN)"/></td>
					</tr> -->
	         		<tr>
						<td class="align-c" colspan="6"><b>Tổng cộng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuphanPhoiCCHH)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhthuKCT_CCHH)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuDVXD)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuKCT_DVXD)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuSXVT)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuKCT_SXVT)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuHDK)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_doanhThuKCT_HDK)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_thueGTGT)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThongTinKinhDoanh/tongCong_thueTNCN)"/></b></td>
					</tr>
					
				</table>
							
						<div  class="align-l"><b>B. HỖ TRỢ THÔNG TIN NỘP THUẾ</b></div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Tên địa điểm kinh doanh</b></td>
						<td class="align-c"><b>Mã địa điểm kinh doanh</b></td>
						<td class="align-c"><b>Mục</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Cơ quan thu</b></td>
						<td class="align-c"><b>Hạn nộp thuế</b></td>
						
					</tr>
					<tr>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c"><b>[28]</b></td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-c"><b>[33]</b></td>
							<td class="align-c"><b>[34]</b></td>
						</tr>
					<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
						<xsl:variable name="currentRows" select="position()"/>
						<tr>
						     <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ten_diadiemKD"/></td>
							<td class="align-c"><xsl:value-of select="ma_diadiemKD"/></td>
							
							<td class="align-c"><xsl:value-of select="ma_muc"/>-<xsl:value-of select="ten_muc"/></td>
							<td class="align-c"><xsl:value-of select="ma_tieumuc"/>-<xsl:value-of select="ten_tieumuc"/></td>
						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTien)"/></td>
							<td class="align-c"><xsl:value-of select="ten_coquanthu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(hanNopThue,'dd/mm/yyyy')"/></td>
						</tr>	
					</xsl:for-each>
					<tr>
						
						<td colspan="5" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r"><b>[35]&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tong_sotien)"/></b></td>
						<td></td>
						<td></td>
						
						
					</tr>
				</table>	
				
				<div> <b>C. KÊ KHAI ĐIỀU CHỈNH, BỔ SUNG  </b> </div>	<br/>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr>
								<td class="align-c"><b>STT</b></td>
								<td class="align-c"><b>Nhóm ngành nghề</b></td>
								<td class="align-c"><b>Doanh thu điều chỉnh tăng/giảm</b></td>
								<td class="align-c"><b>Trong đó: Doanh thu không chịu thuế điều chỉnh tăng/giảm</b></td>
								<td class="align-c"><b>Số thuế GTGT điều chỉnh tăng/giảm</b></td>
								<td class="align-c"><b>Số thuế TNCN điều chỉnh tăng/giảm</b></td>
								<td class="align-c"><b>Loại kỳ</b></td>
								<td class="align-c"><b>Kỳ điều chỉnh</b></td>
								<td class="align-c"><b>Lý do</b></td>
							</tr>
							<tr>
								<td class="align-c"><b>[36]</b></td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-c"><b>[38]</b></td>
							<td class="align-c"><b>[39]</b></td>
							<td class="align-c"><b>[40]</b></td>
							<td class="align-c"><b>[41]</b></td>
							<td class="align-c"><b>[42]</b></td>
							<td class="align-c"><b>[43]</b></td>
							<td class="align-c"><b>[44]</b></td>
							</tr>
							<tr>
								<td class="align-c"><b>I</b></td>
								<td colspan="8"><b>Doanh thu từ hoạt động sản xuất, kinh doanh hàng hóa, cung cấp dịch vụ (bao gồm hoạt động kinh doanh thông thường, hoạt động kinh doanh trên nền tảng thương mại điện tử không có chức năng thanh toán, kinh doanh dịch vụ lưu trú, cho thuê tài sản khác trừ BĐS)</b></td>
							</tr>
						<xsl:for-each select="$tkchinh/KeKhaiDieuChinhBoSung/DoanhThuHoatDongSXKD/ChiTietDoanhThuSXKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_nganhNghe"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuTangGiam)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKhongChiuThue)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueGTGT)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueTNCN)"/></td>
								<td class="align-l"><xsl:value-of select="loaiKy"/></td>
								<td class="align-l"><xsl:value-of select="kyDieuCHinh"/></td>
								<td class="align-l"><xsl:value-of select="lyDo"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="8"><b>Doanh thu từ hoạt động cho thuê bất động sản (nhà (không bao gồm dịch vụ lưu trú), mặt bằng, cửa hàng, nhà xưởng, kho bãi)</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/KeKhaiDieuChinhBoSung/DoanhThuHoatDongChoThue/ChiTietDoanhThuChoThue">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_nganhNghe"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuTangGiam)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuKhongChiuThue)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueGTGT)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueTNCN)"/></td>
								<td class="align-l"><xsl:value-of select="loaiKy"/></td>
								<td class="align-l"><xsl:value-of select="kyDieuCHinh"/></td>
								<td class="align-l"><xsl:value-of select="lyDo"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		
					
						</table>
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		<xsl:call-template name="tkhaiFooter_TT80_HKD"/>
		</div>	
		</div>
		
					</xsl:template>	

</xsl:stylesheet>
