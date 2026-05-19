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
		<xsl:call-template name="tkhaiHeader_04_TKQT_TNCN">
			<xsl:with-param name="mauTKhai"   select="'04/TKQT-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân nhận thừa kế, quà tặng không phải là bất động sản)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<table>
					<tr>
						<td colspan="3">
							<b>II. VĂN BẢN GIAO NHẬN THỪA KỀ, QUÀ TẶNG</b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[17]</b> Làm tại <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_diaDiem"/>
								ngày <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_ngay_lam"/>
								tháng <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_thang_lam"/>
								năm <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_nam_lam"/> 
								đã được Cơ quan công chứng chứng nhận ngày <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_ngay_chungNhan"/>
								tháng <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_thang_chungNhan"/>
								năm <xsl:value-of select="$tkchinh/VanBanGiaoNhan/ct17_nam_chungNhan"/>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>III. THÔNG TIN VỀ CÁ NHÂN CHO THỪA KẾ, QUÀ TẶNG</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[18] Họ và tên: </b><xsl:value-of select="$tkchinh/ThongTinCaNhan/ct18_hoTen"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[19]  </b>Mã số thuế:
								<xsl:value-of select="$tkchinh/ThongTinCaNhan/ct19_mst"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[20] </b>Số CMND/CCCD/Hộ chiếu: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct20_cmt"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[21] </b>Quốc tịch: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct21_ten_quocTich"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[22] </b> Địa chỉ: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct22_dchi"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[22a]</b> Quận/Huyện: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct22_tenQuanHuyen"/>
						</td>
						<td colspan="2">
							<b>[22b]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct22_tenTinh"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[23] </b> Điện thoại: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct23_dthoai"/>
						</td>
						<td>
							<b>[24] </b>Fax: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct24_fax"/>
						</td>
						<td>
							<b>[25]</b> E-mail: <xsl:value-of select="$tkchinh/ThongTinCaNhan/ct25_email"/>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>IV. LOẠI TÀI SẢN ĐƯỢC NHẬN THỪA KẾ, QUÀ TẶNG</b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[26]</b> Chứng khoán
						</td>
						<td colspan="2">
							<xsl:if test="$tkchinh/LoaiTaiSan/ct26_chungKhoan= 'true'">[X]</xsl:if>
							<xsl:if test="$tkchinh/LoaiTaiSan/ct26_chungKhoan= 'false'">[&#32;]</xsl:if>
						</td>
					</tr>
					<tr>
						<td>
							<b>[27]</b> Vốn góp
						</td>
						<td  colspan="2" class="align-l">
							<xsl:if test="$tkchinh/LoaiTaiSan/ct27_vonGop= 'true'">[X]</xsl:if>
						    <xsl:if test="$tkchinh/LoaiTaiSan/ct27_vonGop= 'false'">[&#32;]</xsl:if>
						</td>
					</tr>
					<tr>
						<td>
							<b>[28]</b> Tài sản phải đăng ký sở hữu hoặc sử dụng
						</td>
						<td colspan="2" class="align-l">
							<xsl:if test="$tkchinh/LoaiTaiSan/ct28_taiSan= 'true'">[X]</xsl:if>
							<xsl:if test="$tkchinh/LoaiTaiSan/ct28_taiSan= 'false'">[&#32;]</xsl:if>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>V(a). GIẤY CHỨNG NHẬN QUYỀN SỬ DỤNG HOẶC SỞ HỮU TÀI SẢN THỪA KẾ, QUÀ TẶNG</b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[29] </b>Số:  <xsl:value-of select="$tkchinh/GiayChungNhan/ct29_so"/>. 
									Do cơ quan <xsl:value-of select="$tkchinh/GiayChungNhan/ct29_coQuanCap"/> Cấp ngày 
									 <xsl:value-of select="ihtkk:stringDatetime($tkchinh/GiayChungNhan/ct29_ngayCap,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>V(b). THÔNG TIN TỔ CHỨC PHÁT HÀNH CHỨNG KHOÁN HOẶC TỔ CHỨC NƠI CÁ NHÂN CÓ VỐN GÓP </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[30] Tên tổ chức: </b><xsl:value-of select="$tkchinh/ToChucPhatHanh/ct30_ten"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[31] </b>Mã số thuế: 
								<xsl:value-of select="$tkchinh/ToChucPhatHanh/ct31_mst"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[32] </b> Địa chỉ: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct32_dchi"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[33]</b> Quận/Huyện: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct33_tenQuanHuyen"/>
						</td>
						<td colspan="2">
							<b>[34]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct34_tenTinh"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[35] </b> Điện thoại: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct35_dthoai"/>
						</td>
						<td>
							<b>[36] </b>Fax: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct36_fax"/>
						</td>
						<td>
							<b>[37]</b> E-mail: <xsl:value-of select="$tkchinh/ToChucPhatHanh/ct37_email"/>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>VI. THU NHẬP TỪ NHẬN THỪA KẾ, QUÀ TẶNG</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[38]</b> Số tiền: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhap/ct38_soTien)"/> đồng.</td>
					</tr>
					<tr>
						<td colspan="3">
							<i>(Viết bằng chữ): <xsl:value-of select="$tkchinh/ThuNhap/ct38_vietBangChu"/></i>.</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							<b>VII. THU NHẬP ĐƯỢC MIỄN GIẢM THEO HIỆP ĐỊNH TRÁNH ĐÁNH THUẾ HAI LẦN</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[39]</b> Số tiền <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapDuocMien/ct39_soTien)"/> đồng.</td>
					</tr>
					<tr>
						<td colspan="3">
							<i>(Viết bằng chữ): <xsl:value-of select="$tkchinh/ThuNhapDuocMien/ct39_vietBangChu"/></i>.</td>
					</tr>
				</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"></xsl:call-template>
			<div><b><u><i>Ghi chú: </i></u></b></div>
			<div><i>- (*) Trường hợp cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần thì nộp hồ sơ khai thuế của lần khai thuế đầu tiên cùng với Hồ sơ thông báo miễn, giảm thuế theo Hiệp định theo quy định.</i></div>
			<div><i>- Cá nhân nhận thừa kế, quà tặng là chứng khoán, phần vốn góp nộp hồ sơ khai thuế tại cơ quan thuế quản lý doanh nghiệp phát hành chứng khoán, doanh nghiệp có phần vốn góp. Cá nhân đồng thời nhận thừa kế, quà tặng của nhiều loại chứng khoán, phần vốn góp nộp hồ sơ khai thuế tại Chi cục Thuế nơi cá nhân cư trú.</i></div>
		<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
