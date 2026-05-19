<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 107/2014/TT - BTC ngày 8 tháng 8 năm 2014 của Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader-BCTC107">
			<xsl:with-param name="mauTKhai" select="'PHỤ LỤC 02'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="'Ban hành kèm theo Thông tư số 107/2014/TT - BTC ngày 8 tháng 8 năm 2014 của Bộ Tài chính'"/>
		</xsl:call-template>
		<div class="align-r">Đơn vị tính: <xsl:value-of select="$tkchinh/DonViTinh/ten"/>
		</div>
		<br/>
		<table class="tkhai_table">
			<tr>
				<td class="align-c">
					<b>CHỈ TIÊU</b>
				</td>
				<td class="align-c">
					<b>Mã số</b>
				</td>
				<td class="align-c">
					<b>Thuyết minh</b>
				</td>
				<td class="align-c">
					<b>Số cuối năm</b>
				</td>
				<td class="align-c">
					<b>Số đầu năm</b>
				</td>
			</tr>
			<tr>
				<td class="align-c">
					<b>1</b>
				</td>
				<td class="align-c">
					<b>2 </b>
				</td>
				<td class="align-c">
					<b>3 </b>
				</td>
				<td class="align-c">
					<b>4 </b>
				</td>
				<td class="align-c">
					<b>5 </b>
				</td>
			</tr>
			<!-- A - TÀI SẢN -->
			<tr>
				<td class="align-c">
					<b>TÀI SẢN</b>
				</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>
					<b>A. Tài sản ngắn hạn</b>
				</td>
				<td class="align-c">
					<b>A</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctA"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctA"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctA"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>
					<b>I. Tiền và các khoản tương đương tiền</b>
				</td>
				<td class="align-c">
					<b>I</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_I"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_I"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctA_I"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Tiền</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_I_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_I_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_I_1"/>
				</td>
			</tr>
			<tr>
				<td>2.Các khoản tương đương tiền</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_I_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_I_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_I_2"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>II. Các khoản phải thu ngắn hạn</b>
				</td>
				<td class="align-c">
					<b>II</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_II"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_II"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctA_II"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Phải thu của khách hàng</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_II_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_II_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_II_1"/>
				</td>
			</tr>
			<tr>
				<td>2. Trả trước cho người bán</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_II_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_II_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_II_2"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>III. Hàng tồn kho</b>
				</td>
				<td class="align-c">
					<b>III</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_III"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctA_III"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>- Hàng tồn kho</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_III_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_III_1"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>VI. Tài sản ngắn hạn khác</b>
				</td>
				<td class="align-c">
					<b>IV</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_IV"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctA_IV"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Chi phí trả trước ngắn hạn</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_IV_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_1"/>
				</td>
			</tr>
			<tr>
				<td>2. Thuế GTGT được khấu trừ</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_IV_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_2"/>
				</td>
			</tr>
			<tr>
				<td>3. Thuế và các khoản phải thu Nhà nước</td>
				<td class="align-c">3</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_IV_3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_3"/>
				</td>
			</tr>
			<tr>
				<td>4. Tài sản ngắn hạn khác</td>
				<td class="align-c">4</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctA_IV_4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_4"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>B. Tài sản dài hạn</b>
				</td>
				<td class="align-c">
					<b>B</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctB"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctB"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctB"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Chi phí tìm kiếm thăm dò</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_1"/>
				</td>
			</tr>
			<tr>
				<td>2. Chi phí phát triển</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_2"/>
				</td>
			</tr>
			<tr>
				<td>3. Chi phí khai thác</td>
				<td class="align-c">3</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_3"/>
				</td>
			</tr>
			<tr>
				<td>4. Chi phí không được thu hồi</td>
				<td class="align-c">4</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_4"/>
				</td>
			</tr>
			<tr>
				<td>5. Chi phí đã thu hồi</td>
				<td class="align-c">5</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_5"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_5"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_5"/>
				</td>
			</tr>
			<tr>
				<td>6. Chi phí trả trước dài hạn</td>
				<td class="align-c">6</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_6"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_6"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_6"/>
				</td>
			</tr>
			<tr>
				<td>7. Tài sản dài hạn khác</td>
				<td class="align-c">7</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctB_7"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctB_7"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctB_7"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>TỔNG CỘNG TÀI SẢN ( TCTS=A + B + 270)</b>
				</td>
				<td class="align-c">
					<b>TCTS</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/tongCongTS"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/tongCongTS"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/tongCongTS"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>
					<b>NGUỒN VỐN</b>
				</td>
			</tr>
			<tr>
				<td>
					<b>A. Nợ phải trả</b>
				</td>
				<td class="align-c">
					<b>A</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Vốn góp của các bên Nhà thầu khác</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A1"/>
				</td>
			</tr>
			<tr>
				<td>- Vốn góp của các bên Nhà thầu khác</td>
				<td class="align-c">a</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_Aa"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_Aa"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_Aa"/>
				</td>
			</tr>
			<tr>
				<td>- Thu hồi vốn góp của các bên Nhà thầu khác</td>
				<td class="align-c">b</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_Ab"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_Ab"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_Ab"/>
				</td>
			</tr>
			<tr>
				<td>2. Phải trả cho người bán</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A2"/>
				</td>
			</tr>
			<tr>
				<td>3. Thuế và các khoản phải nộp Nhà nước</td>
				<td class="align-c">3</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A3"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A3"/>
				</td>
			</tr>
			<tr>
				<td>4. Phải trả người lao động</td>
				<td class="align-c">4</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A4"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A4"/>
				</td>
			</tr>
			<tr>
				<td>5. Chi phí phải trả</td>
				<td class="align-c">5</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A5"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A5"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A5"/>
				</td>
			</tr>
			<tr>
				<td>6. Các khoản phải trả, phải nộp khác</td>
				<td class="align-c">6</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A6"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A6"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A6"/>
				</td>
			</tr>
			<tr>
				<td>7. Dự phòng phải trả</td>
				<td class="align-c">7</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A7"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A7"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A7"/>
				</td>
			</tr>
			<tr>
				<td>8. Quỹ khen thưởng, phúc lợi</td>
				<td class="align-c">8</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A8"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A8"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A8"/>
				</td>
			</tr>
			<tr>
				<td>9. Phải trả dài hạn khác</td>
				<td class="align-c">9</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_A9"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_A9"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_A9"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>B. Vốn chủ sở hữu</b>
				</td>
				<td class="align-c">
					<b>B</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_B"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_B"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/ctNV_B"/>
					</b>
				</td>
			</tr>
			<tr>
				<td>1. Vốn góp của Công ty mẹ - Người điều hành</td>
				<td class="align-c">1</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_B1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_B1"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_B1"/>
				</td>
			</tr>
			<tr>
				<td>- Vốn góp của Công ty mẹ - Người điều hành</td>
				<td class="align-c">a</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_Ba"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_Ba"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_Ba"/>
				</td>
			</tr>
			<tr>
				<td>- Thu hồi vốn góp của Công ty mẹ - Người điều hành</td>
				<td class="align-c">b</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_Bb"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_Bb"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_Bb"/>
				</td>
			</tr>
			<tr>
				<td>2. Chênh lệch tỷ giá hối đoái</td>
				<td class="align-c">2</td>
				<td class="align-l">
					<xsl:value-of select="$tkchinh/ThuyetMinh/ctNV_B2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoCuoiNam/ctNV_B2"/>
				</td>
				<td class="number align-r">
					<xsl:value-of select="$tkchinh/SoDauNam/ctNV_B2"/>
				</td>
			</tr>
			<tr>
				<td>
					<b>TỔNG CỘNG NGUỒN VỐN (TCNV=A+B +440)</b>
				</td>
				<td class="align-c">
					<b>TCNV</b>
				</td>
				<td class="align-l">
					<b>
						<xsl:value-of select="$tkchinh/ThuyetMinh/tongCongNV"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoCuoiNam/tongCongNV"/>
					</b>
				</td>
				<td class="align-r">
					<b class="number">
						<xsl:value-of select="$tkchinh/SoDauNam/tongCongNV"/>
					</b>
				</td>
			</tr>
			<tr>
				<td colspan="5">
					<b>PHẦN BIỂU MẪU THEO CHẾ ĐỘ KẾ TOÁN DOANH NGHIỆP </b>
				</td>
			</tr>
			<tr>
				<td colspan="5">
					<i>(Theo Điểm b, Khoản 1, Điều 19: Trường hợp Người điều hành dầu khí bổ sung thêm các chỉ tiêu quy định trong Chế độ kế toán doanh nghiệp khi có nhu cầu mà không cần sự chấp thuận của Bộ Tài chính)</i>
				</td>
			</tr>
			<tr>
				<td class="align-c">
					<b>CHỈ TIÊU </b>
				</td>
				<td class="align-c">
					<b>Mã số</b>
				</td>
				<td class="align-c">
					<b>Thuyết minh</b>
				</td>
				<td class="align-c">
					<b>Số cuối năm</b>
				</td>
				<td class="align-c">
					<b>Số đầu năm</b>
				</td>
			</tr>
			<tr>
				<td class="align-c">
					<b>1</b>
				</td>
				<td class="align-c">
					<b>2 </b>
				</td>
				<td class="align-c">
					<b>3 </b>
				</td>
				<td class="align-c">
					<b>4 </b>
				</td>
				<td class="align-c">
					<b>5 </b>
				</td>
			</tr>
			<tr>
				<td class="align-c">
					<b>TÀI SẢN</b>
				</td>
			</tr>
			<xsl:for-each select="$tkchinh/BieuMauTheoCDKTDN/TaiSan/CTietTaiSan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td><xsl:value-of select="chiTieu" /></td>
							  <td class="align-c"><xsl:value-of select="maSo"/></td>
							  <td class="align-c"><xsl:value-of select="thuyetMinh"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soCuoiNam)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soDauNam)" /></td>
							</tr>
						</xsl:for-each>	
				<tr>
				<td><b>TỔNG CỘNG TÀI SẢN (270 = 111+112+121+….+221+224+227+230…+263+268)</b></td>
				<td class="align-c"><b>270</b></td>
				<td class="align-c">
					<b><xsl:value-of select="$tkchinh/BieuMauTheoCDKTDN/TaiSan/tongTaiSan/thuyetMinh"/></b>
				</td>
				<td class="align-r">
					<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BieuMauTheoCDKTDN/TaiSan/tongTaiSan/soCuoiNam)"/></b>
				</td>
				<td class="align-r">
					<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BieuMauTheoCDKTDN/TaiSan/tongTaiSan/soDauNam)"/></b>
				</td>
			</tr>		
			
			<xsl:for-each select="$tkchinh/BieuMauTheoCDKTDN/NguonVon/CTietNguonVon">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td><xsl:value-of select="chiTieu" /></td>
							  <td class="align-c"><xsl:value-of select="maSo"/></td>
							  <td class="align-c"><xsl:value-of select="thuyetMinh"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soCuoiNam)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soDauNam)" /></td>
							</tr>
						</xsl:for-each>		
							
				<tr>
				<td><b>TỔNG CỘNG NGUỒN VỐN (440 = 311+312+313+…+411+….+ 421+422+431+432)</b></td>
				<td class="align-c"><b>440</b></td>
				<td class="align-c">
				<b>	<xsl:value-of select="$tkchinh/BieuMauTheoCDKTDN/NguonVon/tongNguonVon/thuyetMinh"/></b>
				</td>
				<td class="align-r">
					<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BieuMauTheoCDKTDN/NguonVon/tongNguonVon/soCuoiNam)"/></b>
				</td>
				<td class="align-r">
					<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BieuMauTheoCDKTDN/NguonVon/tongNguonVon/soDauNam)"/></b>
				</td>
			</tr>								
		</table>
		<br/>
		<br/>
		<table style="page-break-inside: avoid;width:100%">
			<tr>
				<td>
					<xsl:call-template name="tkhaiFooter-BCTC107">   
</xsl:call-template>
									<br/>
		
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
