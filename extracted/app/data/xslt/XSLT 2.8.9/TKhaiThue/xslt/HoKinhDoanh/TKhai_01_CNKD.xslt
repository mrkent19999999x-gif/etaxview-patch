<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_01_CNKD">
		<xsl:with-param name="mauTKhai"   select="'01/CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>

		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>A. KÊ KHAI THÔNG TIN KINH DOANH, DOANH THU</b></div>
		<div style="padding-top: 6pt;padding-bottom: 6pt;text-align: right"><i>Đơn vị tiền: Đồng Việt Nam</i></div>				
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" rowspan="2"><b>Nhóm ngành nghề</b></td>
				<td class="align-c" rowspan="2"><b>Mã Chỉ tiêu</b></td>
				<td class="align-c" colspan="2"><b>Thuế GTGT</b></td>
				<td class="align-c" colspan="3"><b>Thuế TNCN</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Doanh thu</b></td>
				<td class="align-c"><b>Số thuế phải nộp</b></td>
				<td class="align-c"><b>Doanh thu</b></td>
				<td class="align-c"><b>Doanh thu được trừ để xác định doanh thu tính thuế</b></td>
				<td class="align-c"><b>Số thuế phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>[08]</b></td>
				<td class="align-c"><b>[09]</b></td>
				<td class="align-c"><b>[10]</b></td>
				<td class="align-c"><b>[11]</b></td>
				<td class="align-c"><b>[12]</b></td>
				<td class="align-c"><b>[13]</b></td>
				<td class="align-c"><b>[14]</b></td>
				<td class="align-c"><b>[15]</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>I</b></td>
				<td class="align-l" colspan="7"><b>Hoạt động sản xuất, kinh doanh hàng hóa, cung cấp dịch vụ có địa điểm kinh doanh cố định</b></td>
			</tr>
			<xsl:for-each select="$tkchinh/KhaiThueGTGTTNCN/KinhDoanhDiaDiemCoDinh/DoanhThuThueGTGTTNCN">
				<xsl:variable name="currentRows" select="position()"/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/></td>
					<td class="align-l" colspan="7">
						<xsl:if test="truSoChinh='true' or truSoChinh='1'">
						Trụ sở kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
						<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
						</xsl:if>
						<xsl:if test="truSoChinh='false' or truSoChinh='0'">
						Địa điểm kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
						<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
						</xsl:if>
					</td>
				</tr>
	          	<xsl:for-each select="CTietDoanhThu">
				<xsl:variable name="currentRows1" select='position()'/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/>.<xsl:value-of select="$currentRows1"/></td>
					<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
					<td class="align-c"><xsl:value-of select="ct10"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12_soThue)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_soThue)"/></td>	
				</tr>
				</xsl:for-each>	       				 
			</xsl:for-each>	
	        <tr>
				<td class="align-c"><b>II</b></td>
				<td colspan="7"><b>Hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số khác không có chức năng đặt hàng trực tuyến và chức năng thanh toán</b></td>
			</tr>
			<xsl:for-each select="$tkchinh/KhaiThueGTGTTNCN/KinhDoanhTMDT/DoanhThuThueGTGTTNCN">
				<xsl:variable name="currentRows" select="position()"/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/></td>
					<td class="align-l" colspan="7">
						<xsl:if test="truSoChinh='true' or truSoChinh='1'">
						Trụ sở kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
						<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
						</xsl:if>
						<xsl:if test="truSoChinh='false' or truSoChinh='0'">
						Địa điểm kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
						<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
						</xsl:if>
					</td>
				</tr>
	          	<xsl:for-each select="CTietDoanhThu">
				<xsl:variable name="currentRows1" select='position()'/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/>.<xsl:value-of select="$currentRows1"/></td>
					<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
					<td class="align-c"><xsl:value-of select="ct10"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12_soThue)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_soThue)"/></td>	
				</tr>
				</xsl:for-each>	 
			</xsl:for-each>
			<tr>
				<td class="align-c"><b>III</b></td>
				<td colspan="7"><b>Hoạt động đã cấp hóa đơn điện tử có mã của cơ quan thuế theo từng lần phát sinh</b></td>
			</tr>
			<xsl:for-each select="$tkchinh/KhaiThueGTGTTNCN/KinhDoanhLPS/DoanhThuThueGTGTTNCN">
				<xsl:variable name="currentRows" select="position()"/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/></td>
					<td class="align-l" colspan="7">
						Địa điểm kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
						<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
					</td>
				</tr>
	          	<xsl:for-each select="CTietDoanhThu">
				<xsl:variable name="currentRows1" select='position()'/>
				<tr>
					<td class="align-c"><xsl:value-of select="$currentRows"/>.<xsl:value-of select="$currentRows1"/></td>
					<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
					<td class="align-c"><xsl:value-of select="ct10"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12_soThue)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15_soThue)"/></td>	
				</tr>
				</xsl:for-each>	 
			</xsl:for-each>
			<tr>
				<td class="align-c"><b>IV</b></td>
				<td class="align-l"><b>Tổng cộng</b></td>
				<td class="align-c"><b>[16]</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/TongCongCT16/tongCT11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/TongCongCT16/tongCT12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/TongCongCT16/tongCT13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/TongCongCT16/tongCT14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/TongCongCT16/tongCT15)"/></td>	
			</tr>
			<tr>
				<td class="align-c"><b>V</b></td>
				<td class="align-l"><b>Số thuế được miễn</b></td>
				<td class="align-c"><b>[17]</b></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/SoThueMienCT17/soThueDuocMienCT12)"/></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/SoThueMienCT17/soThueDuocMienCT15)"/></td>	
			</tr>
			<tr>
				<td class="align-c"><b>VI</b></td>
				<td class="align-l"><b>Số thuế còn phải nộp</b></td>
				<td class="align-c"><b>[18]</b></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/SoThueConPhaiNopCT18/soThueGTGT_ct12)"/></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueGTGTTNCN/SoThueConPhaiNopCT18/soThueTNCN_ct15)"/></td>	
			</tr>
	    </table>
			
		<div style="padding-top: 15pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>B. KÊ KHAI THUẾ TIÊU THỤ ĐẶC BIỆT</b></div>
		<div style="padding-top: 6pt;padding-bottom: 6pt;text-align: right"><i>Đơn vị tiền: Đồng Việt Nam</i></div>	
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Hàng hóa, dịch vụ chịu thuế TTĐB</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Đơn vị tính</b></td>
				<td class="align-c"><b>Doanh thu tính thuế TTĐB</b></td>
				<td class="align-c"><b>Thuế suất</b></td>
				<td class="align-c"><b>Số thuế phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)=(5)*(6)</b></td>
			</tr>
			<xsl:for-each select="$tkchinh/KKhaiThueTTDB/NoiDungKhaiThueTTDB">
			<!-- <xsl:number value="position()" format="I"/> -->
			<tr>
				<td class="align-c"><xsl:number format="I"/></td>
				<td class="align-l" colspan="7">
					<xsl:if test="truSoChinh='true' or truSoChinh='1'">
					Trụ sở kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
					<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
					</xsl:if>
					<xsl:if test="truSoChinh='false' or truSoChinh='0'">
					Địa điểm kinh doanh: <xsl:value-of select="ma_diaDiemKD"/> - <xsl:value-of select="ten_diaDiemKD"/>; 
					<xsl:value-of select="diaChi_diaDiemKD/diaChi"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_xaPhuong"/>, <xsl:value-of select="diaChi_diaDiemKD/ten_tinh"/>
					</xsl:if>
				</td>
			</tr>
	        <xsl:for-each select="doanhThuHangHoaTTDB">
			<xsl:variable name="currentRows1" select='position()'/>
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows1"/></td>
				<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
				<td class="align-c"><xsl:value-of select="ct3"/></td>
				<td class="align-l"><xsl:value-of select="ct4"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7_soTien)"/></td>
			</tr>
			</xsl:for-each>	 
			</xsl:for-each>
			<tr>
				<td class="align-c"><b></b></td>
				<td class="align-l"><b>Tổng cộng</b></td>
				<td class="align-c"><b>[20]</b></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/TongCongCT20/tongCT5)"/></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/TongCongCT20/tongCT7)"/></td>
			</tr>
			<tr>
				<td class="align-c"><b></b></td>
				<td class="align-l"><b>Số thuế được miễn</b></td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/soThueMienCT21)"/></td>	
			</tr>
			<tr>
				<td class="align-c"><b></b></td>
				<td class="align-l"><b>Số thuế còn phải nộp</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThueTTDB/soThueConPhaiNopCT22)"/></td>	
			</tr>
		</table>	
				
		<div style="padding-top: 15pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>C. KÊ KHAI THUẾ TÀI NGUYÊN, BẢO VỆ MÔI TRƯỜNG, PHÍ BẢO VỆ MÔI TRƯỜNG</b></div>
		<div style="padding-top: 6pt;padding-bottom: 6pt;text-align: right"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Tài nguyên, hàng hóa, sản phẩm</b></td>
				<td class="align-c"><b>Trụ sở kinh doanh/Mã địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Tên địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Đơn vị tính</b></td>
				<td class="align-c"><b>Sản lượng/Số lượng</b></td>
				<td class="align-c"><b>Giá tính thuế tài nguyên/mức thuế hoặc phí BVMT</b></td>
				<td class="align-c"><b>Thuế suất/Hệ số K tính phí BVMT</b></td>
				<td class="align-c"><b>Số thuế/phí phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)</b></td>
				<td class="align-c"><b>(8)</b></td>
				<td class="align-c"><b>(9)</b></td>
				<td class="align-c"><b>(10)</b></td>
		</tr>
		<tr>
			<td class="align-c"><b>I</b></td>
			<td colspan="9"><b>Khai thuế tài nguyên</b></td>
		</tr>
		<xsl:for-each select="$tkchinh/KKhaiTaiNguyen/ThueTaiNguyen/CTietThueTaiNguyen">
		<xsl:variable name="currentRows" select="position()"/>
		<tr>
			<td class="align-c"><xsl:value-of select="$currentRows"/></td>
			<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
			<td class="align-l"><xsl:value-of select="ct3_ma_diaDiemKD"/></td>
			<td class="align-l"><xsl:value-of select="ct4_ten_diaDiemKD"/></td>
			<td class="align-c"><xsl:value-of select="ct5"/></td>
			<td class="align-l"><xsl:value-of select="ct6"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10_soTien)"/></td>
	    </tr>	
	    </xsl:for-each>	
	     <tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Tổng cộng</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueTaiNguyen/tongCongCT24)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế được miễn</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueTaiNguyen/soThueMienCT25)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế còn phải nộp</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueTaiNguyen/soThueConPhaiNopCT26)"/></td>
		</tr>
		<tr>
			<td class="align-c"><b>II</b></td>
			<td colspan="9"><b>Khai thuế bảo vệ môi trường</b></td>
		</tr>
		<xsl:for-each select="$tkchinh/KKhaiTaiNguyen/ThueBVMT/CTietThueBVMT">
		<xsl:variable name="currentRows" select="position()"/>
		<tr>
			<td class="align-c"><xsl:value-of select="$currentRows"/></td>
			<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
			<td class="align-l"><xsl:value-of select="ct3_ma_diaDiemKD"/></td>
			<td class="align-l"><xsl:value-of select="ct4_ten_diaDiemKD"/></td>
			<td class="align-c"><xsl:value-of select="ct5"/></td>
			<td class="align-l"><xsl:value-of select="ct6"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10_soThue)"/></td>
	    </tr>	
	    </xsl:for-each>	
	     <tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Tổng cộng</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueBVMT/tongCongCT28)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế được miễn</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueBVMT/soThueMienCT29)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế còn phải nộp</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/ThueBVMT/soThueConPhaiNopCT30)"/></td>
		</tr>
		<tr>
			<td class="align-c"><b>III</b></td>
			<td colspan="9"><b>Khai phí bảo vệ môi trường đối với khai thác khoáng sản</b></td>
		</tr>
		<xsl:for-each select="$tkchinh/KKhaiTaiNguyen/PhiBVMT/CTietPhiBVMT">
		<xsl:variable name="currentRows" select="position()"/>
		<tr>
			<td class="align-c"><xsl:value-of select="$currentRows"/></td>
			<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
			<td class="align-l"><xsl:value-of select="ct3_ma_diaDiemKD"/></td>
			<td class="align-l"><xsl:value-of select="ct4_ten_diaDiemKD"/></td>
			<td class="align-c"><xsl:value-of select="ct5"/></td>
			<td class="align-l"><xsl:value-of select="ct6"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
	        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10_soThue)"/></td>
	    </tr>	
	    </xsl:for-each>	
	     <tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Tổng cộng</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/PhiBVMT/tongCongCT32)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế được miễn</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/PhiBVMT/soThueMienCT33)"/></td>
		</tr>
		<tr>
			<td class="align-c"></td>
			<td colspan="8"><b>Số thuế còn phải nộp</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/PhiBVMT/soThueConPhaiNopCT34)"/></td>
		</tr>
	    </table>	
		
		<div style="padding-top: 15pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>D. HỖ TRỢ TỰ ĐỘNG THÔNG TIN NỘP THUẾ</b></div>
		<div style="padding-top: 6pt;padding-bottom: 6pt;text-align: right"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Mã địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Nội dung các khoản nộp NSNN</b></td>
				<td class="align-c"><b>Số tiền</b></td>
				<td class="align-c"><b>Chương</b></td>
				<td class="align-c"><b>Tiểu mục</b></td>
				<td class="align-c"><b>Địa bàn hành chính</b></td>
				<td class="align-c"><b>Cơ quan thu</b></td>
				<td class="align-c"><b>Cơ quan thuế</b></td>
				<td class="align-c"><b>Hạn nộp thuế</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>[35]</b></td>
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
		<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
		<xsl:variable name="currentRows" select="position()"/>
		<tr>
			<td class="align-c"><xsl:value-of select="$currentRows"/></td>
			<td class="align-c"><xsl:value-of select="ct36_ma"/></td>
			<td class="align-l"><xsl:value-of select="ct37"/></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct38)"/></td>
			<td class="align-c"><xsl:value-of select="ct39_ma"/></td>
			<td class="align-c"><xsl:value-of select="ct40_ma"/></td>
			<td class="align-c"><xsl:value-of select="ct41_maDBHC"/> - <xsl:value-of select="ct41_tenDBHC"/></td>
			<td class="align-l"><xsl:value-of select="ct42_maCQThu"/> - <xsl:value-of select="ct42_tenCQThu"/></td>
			<td class="align-l"><xsl:value-of select="ct43_maCQThue"/> - <xsl:value-of select="ct43_tenCQThue"/></td>
			<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct44,'dd/mm/yyyy')"/></td>
	    </tr>	
	    </xsl:for-each>	
	     <tr>
			<td colspan="3"><b>Tổng cộng</b></td>
			<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tongTienCT44)"/></td>
			<td class="align-r"></td>
			<td class="align-r"></td>
			<td class="align-r"></td>
			<td class="align-r"></td>
			<td class="align-r"></td>
			<td class="align-r"></td>
		</tr>
		</table>

		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i><u>Bạn còn được tiếp tục trừ <xsl:value-of select="ihtkk:formatNumber($tkchinh/soTienTruKyTiep)"/> 
		đồng vào doanh thu tính thuế TNCN của kỳ tiếp theo</u></i></b></div>

		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</div>
		<br/>
		<xsl:call-template name="tkhaiFooter_01_CNKD"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		
	</xsl:template>	

</xsl:stylesheet>
