<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_04_CNV_TNCN_283">
			<xsl:with-param name="mauTKhai"   select="'04/CNV-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân có thu nhập từ chuyển nhượng vốn góp, cá nhân chuyển nhượng chứng khoán khai trực tiếp với cơ quan thuế và tổ chức, cá nhân khai thuế thay, nộp thuế thay cho cá nhân)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<br></br>
				<tr>
					<td><b>II. THÔNG TIN TỔ CHỨC, CÁ NHÂN NHẬN CHUYỂN NHƯỢNG VỐN GÓP, NHẬN CHUYỂN NHƯỢNG CHỨNG KHOÁN</b></td>
				</tr>
				<table class="tkhai_table">
					<br></br>
					<tr>
						<td  class="align-c" rowspan="2"><b>STT</b></td>
						<td  class="align-c" rowspan="2"><b>Họ và tên</b></td>
						<td  class="align-c" rowspan="2"><b>Mã số thuế</b></td>
						<td  class="align-c" rowspan="2"><b>Số CMND/CCCD/Hộ chiếu</b></td>
						<td  class="align-c" colspan="2"><b>Hợp đồng chuyển nhượng</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Số</b></td>
						<td class="align-c"><b>Ngày/tháng/năm</b></td>
					</tr>
					<tr>
						<td class="align-c">[23]</td>
						<td class="align-c">[24]</td>
						<td class="align-c">[25]</td>
						<td class="align-c">[26]</td>
						<td class="align-c">[27]</td>
						<td class="align-c">[28]</td>
					</tr>
					<xsl:for-each select="$tkchinh/NhanChuyenNhuongVGCK/NDungNhanChuyenNhuongVGCK">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct24_hoTen"/></td>
							<td class="align-c"><xsl:value-of select="ct25_mst"/></td>
							<td class="align-c"><xsl:value-of select="ct26_cmt"/></td>
							<td class="align-c"><xsl:value-of select="ct27_so"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct28_ngay,'dd/mm/yyyy')"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<br></br>
				<tr>
					<td>
						<b>III. THÔNG TIN TỔ CHỨC PHÁT HÀNH CHỨNG KHOÁN HOẶC TỔ CHỨC NƠI CÁ NHÂN CÓ VỐN GÓP </b>
					</td>
				</tr>
					<br></br>
				<table>
					<tr>
						<td colspan="3">
							<b>[29] Tên tổ chức phát hành: </b><xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct29_ten_toChucPhatHanh"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[30] Mã số thuế: </b>
								<xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct30_mst_toChucPhatHanh"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[31] </b> Địa chỉ: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct31_dchi_toChucPhatHanh"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[32]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct32_tenXa"/>
						</td>
						
						<td colspan="2">
							<b>[33]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct33_tenTinh"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[34] </b> Điện thoại: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct34_dthoai"/>
						</td>
						<td>
							<b>[35] </b>Fax: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct35_fax"/>
						</td>
						<td>
							<b>[36]</b> E-mail: <xsl:value-of select="$tkchinh/ToChucPhatHanhChungKhoan/ct36_email"/>
						</td>
					</tr>
				</table>
				<br></br>
				<tr>
					<td>
						<b>IV. CHI TIẾT TÍNH THUẾ</b>
					</td>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				</tr>
				<table class="tkhai_table">
					<tr>
						<td  class="align-c"><b>STT</b></td>
						<td  class="align-c"><b>Chỉ tiêu</b></td>
						<td  class="align-c"><b>Mã chỉ tiêu</b></td>
						<td  class="align-c"><b>Số tiền</b></td>
					</tr>
					<tr>
						<td  class="align-c"><b>I</b></td>
						<td colspan="3"><b>Thu nhập từ chuyển nhượng vốn góp</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td class="align-l">Giá chuyển nhượng</td>
						<td class="align-c"><b>[37]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct37)"/></td>	
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Giá vốn của phần vốn góp chuyển nhượng</td>
						<td  class="align-c"><b>[38]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct38)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Chi phí chuyển nhượng</td>
						<td  class="align-c"><b>[39]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct39)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td class="align-l">Thu nhập tính thuế từ chuyển nhượng vốn góp [40]=[37]-[38]-[39] </td>
						<td class="align-c"><b>[40]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct40)"/></td>
					</tr>
					<tr>
						<td  class="align-c">5</td>
						<td  class="align-l">Số thuế phải nộp</td>
						<td  class="align-c"><b>[41]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct41)"/></td>
					</tr>
					<tr>
						<td  class="align-c">6</td>
						<td  class="align-l">Số thuế được miễn giảm theo Hiệp định tránh đánh thuế hai lần</td>
						<td  class="align-c"><b>[42]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct42)"/></td>
					</tr>
					<tr>
						<td  class="align-c">7</td>
						<td  class="align-l">Số thuế còn phải nộp [43]=[41]-[42] </td>
						<td  class="align-c"><b>[43]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNhuongVGop/ct43)"/></td>
					</tr>
					<tr>
						<td  class="align-c"><b>II</b></td>
						<td colspan="3"><b>Thu nhập từ chuyển nhượng chứng khoán </b></td>
					</tr>
					<tr>
						<td  class="align-c">1</td>
						<td  class="align-l">Giá chuyển nhượng</td>
						<td  class="align-c"><b>[44]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNHuongCKhoan/ct44)"/></td>
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Số thuế phải nộp</td>
						<td  class="align-c"><b>[45]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNHuongCKhoan/ct45)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Số thuế được miễn giảm theo Hiệp định tránh đánh thuế hai lần</td>
						<td  class="align-c"><b>[46]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNHuongCKhoan/ct46)"/></td>
					</tr>
					<tr>
						<td  class="align-c">4</td>
						<td  class="align-l">Số thuế còn phải nộp [47]=[45]-[46] </td>
						<td  class="align-c"><b>[47]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietTinhThue/TNHapTuCNHuongCKhoan/ct47)"/></td>
					</tr>
				</table>	
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"></xsl:call-template>
		<div><b><u><i>Ghi chú: </i></u> </b></div>
		<div><i>- (*) Trường hợp cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần thì nộp hồ sơ khai thuế của lần khai thuế đầu tiên cùng với Hồ sơ thông báo miễn, giảm thuế theo Hiệp định theo quy định.</i></div>
		<div><i>- Cá nhân chuyển nhượng chứng khoán khai trực tiếp với cơ quan thuế  là cá nhân có chứng khoán chuyển nhượng chưa được tổ chức khấu trừ theo quy định tại điểm đ Khoản 1 Điều 25 Thông tư số 111/2013/TT-BTC ngày 15/8/20132 và điểm 2 Khoản 16 Điều 2 Nghị định số 12/2015/NĐ-CP ngày 12/2/2015.</i></div>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
