<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'(Kèm theo Tờ khai mẫu số 06/TNCN Kê khai vào hồ sơ khai thuế của tháng/quý cuối cùng trong năm tính thuế)'"/>
	  <!-- Phụ lục 06-1/BK-TNCN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_06_1_BK_TNCN"/>	
		<xsl:variable name="Pl_06_1" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_06_1_BK_TNCN'/>
		<xsl:call-template name="tkhaiHeader_PL_06_1_BK_TNCN">
			<xsl:with-param name="mauTKhai"   select="'06-1/BK-TNCN '"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CÓ THU NHẬP TRONG NĂM TÍNH THUẾ'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai mẫu số 06/TNCN Kê khai vào hồ sơ khai thuế của tháng/quý cuối cùng trong năm tính thuế)'"/>
	    </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<tr>
					<br></br>
					<td><b>A. CÁ NHÂN CÓ THU NHẬP TỪ CHUYỂN NHƯỢNG CHỨNG KHOÁN</b></td>
				</tr>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                <table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Họ và tên</b></td>
						<td class="align-c"><b>Mã số thuế</b></td>
						<td class="align-c"><b>Số CMND/ CCCD/Hộ chiếu </b>(trường hợp chưa có MST)</td>
						<td class="align-c"><b></b>Mã chứng khoán</td>
						<td class="align-c"><b></b>Số lượng chứng khoán</td>
						<td class="align-c"><b></b>Tổng giá trị chuyển nhượng</td>
						<td class="align-c"><b></b>Số thuế phát sinh</td>
						<td class="align-c"><b>Số thuế được giảm theo hiệp định tránh đánh thuế hai lần</b></td>
						<td class="align-c"><b>Số thuế đã khấu trừ</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>[06]</b></td>
						<td class="align-c"><b>[07]</b></td>
						<td class="align-c"><b>[08]</b></td>
						<td class="align-c"><b>[09]</b></td>
						<td class="align-c"><b>[10]</b></td>
						<td class="align-c"><b>[11]</b></td>
						<td class="align-c"><b>[12]</b></td>
						<td class="align-c"><b>[13]</b></td>
						<td class="align-c"><b>[14]</b></td>
						<td class="align-c"><b>[15]=[13]-[14]</b></td>
					</tr>
					<xsl:for-each select="$Pl_06_1/ThuNhapTuChungKhoan/NDungThuNhapTuChungKhoan">
						<xsl:variable name="currentRows" select='position()'/>
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct07_hoTen"/></td>
							<td class="align-l"><xsl:value-of select="ct08_mst"/></td>
							<td class="align-l"><xsl:value-of select="ct09_cmt"/></td>
							<td class="align-r"><xsl:value-of select="ct10"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
						</tr>
					</xsl:for-each>						 											
						<tr>
							<td class="align-c" colspan="5"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuChungKhoan/ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuChungKhoan/ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuChungKhoan/ct18)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuChungKhoan/ct19)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuChungKhoan/ct20)"/></b></td>
  						</tr>
				</table>
					<br></br>
				<tr>
					<td><b>B. CÁ NHÂN CÓ THU NHẬP TỪ CÁC KHOẢN THU KHÁC</b></td>
				</tr>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Họ và tên</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Số CMND/ CCCD/Hộ chiếu </b>(trường hợp chưa có MST)</td>
							<td class="align-c"><b></b>Tổng thu nhập tính thuế</td>
							<td class="align-c"><b></b>Số thuế phát sinh</td>
							<td class="align-c"><b></b>Số thuế được giảm theo hiệp định tránh đánh thuế hai lần</td>
							<td class="align-c"><b></b>Số thuế đã khấu trừ</td>
						</tr>
						<tr>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c"><b>[28]=[26]-[27]</b></td>
						</tr>
					<tr>
							<td class="align-c"><b>I</b></td>
							<td class="align-l" colspan="3"><b>Thu nhập từ đầu tư vốn</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuDauTuVon/ct29)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuDauTuVon/ct30)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuDauTuVon/ct31)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuDauTuVon/ct32)"/></b></td>
					</tr>
						<xsl:for-each select="$Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuDauTuVon/NDungThuNhapTuDauTuVon">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct22_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct23_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct24_cmt"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
						</xsl:for-each>					 											
						<tr>
							<td class="align-c"><b>II</b></td>
							<td class="align-l" colspan="3"><b>Thu nhập từ bản quyền, nhượng quyền thương mại</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuBanQuyen/ct33)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuBanQuyen/ct34)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuBanQuyen/ct35)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuBanQuyen/ct36)"/></b></td>
						</tr>
						<xsl:for-each select="$Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuBanQuyen/NDungThuNhapTuBanQuyen">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct22_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct23_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct24_cmt"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-c"><b>III</b></td>
							<td class="align-l" colspan="3"><b>Thu nhập từ trúng thưởng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuTrungThuong/ct37)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuTrungThuong/ct38)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuTrungThuong/ct39)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuTrungThuong/ct40)"/></b></td>
						</tr>
						<xsl:for-each select="$Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuTrungThuong/NDungThuNhapTuTrungThuong">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct22_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct23_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct24_cmt"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-c"><b>IV</b></td>
							<td class="align-l" colspan="3"><b>Doanh thu từ kinh doanh của cá nhân không cư trú</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/DoanhThuTuKinhDoanh/ct41)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/DoanhThuTuKinhDoanh/ct42)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/DoanhThuTuKinhDoanh/ct43)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/DoanhThuTuKinhDoanh/ct44)"/></b></td>
						</tr>
						<xsl:for-each select="$Pl_06_1/ThuNhapTuKhoanThuKhac/DoanhThuTuKinhDoanh/NDungDoanhThuTuKinhDoanh">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct22_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct23_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct24_cmt"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-c"><b>V</b></td>
							<td class="align-l" colspan="3"><b>Thu nhập từ chuyển nhượng vốn của cá nhân không cư trú</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuCNV/ct45)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuCNV/ct46)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuCNV/ct47)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuCNV/ct48)"/></b></td>
						</tr>
						<xsl:for-each select="$Pl_06_1/ThuNhapTuKhoanThuKhac/ThuNhapTuCNV/NDungThuNhapTuCNV">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct22_hoTen"/></td>
								<td class="align-c"><xsl:value-of select="ct23_mst"/></td>
								<td class="align-c"><xsl:value-of select="ct24_cmt"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct27)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct28)"/></td>
							</tr>
						</xsl:for-each>	
					</table>
			</div>
		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
				<div class="ghichu">   
				<xsl:call-template name="tkhaiFooter_TT80"/>
				</div>
				<div><b><u><i>Ghi chú:</i></u></b></div>
				<div><i>- Trường hợp chưa có mã chứng khoán thì khai thông tin mã số thuế của tổ chức phát hành chứng khoán tại chỉ tiêu [10].</i></div>
				<div><i>- Công ty xổ số điện toán Việt Nam thực hiện theo quy định tại Nghị định số 122/2017/NĐ-CP ngày 13/11/2017 của Chính phủ thì không kê khai vào mục III mà kê khai vào Phụ lục bảng phân bổ 05-1/PBT-KK-TNCN.</i></div>
				<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

