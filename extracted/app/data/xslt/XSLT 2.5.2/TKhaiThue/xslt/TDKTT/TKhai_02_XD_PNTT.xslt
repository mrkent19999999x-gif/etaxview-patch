<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader_02_XD_PNTT">
			<xsl:with-param name="mauTKhai"   select="'02/XĐ-PNTT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">

				<table class="tkhai_table">
								<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<tr>
							<td class="align-l" colspan="5"><b>1. Nghĩa vụ thuế đã kê khai theo quý đối với hồ sơ khai thuế mẫu số: </b>
							<xsl:value-of select="$tkchinh/NghiaVuThueTheoQuy/tenTKhai"/></td>
					</tr>
					<tr>
							<td class="align-c" >Mã giao dịch điện tử của hồ sơ khai thuế</td>
							<td class="align-c" >Lần nộp</td>
							<td class="align-c" >Ngày nộp</td>
							<td class="align-c" >Kỳ tính thuế quý</td>
							<td class="align-c" >Số thuế phải nộp</td>
					</tr>
					<tr>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/ma_giao_dich"/></td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ngay_nop,'dd/mm/yyyy')"/></td>
							  <td class="align-c">Quý I năm <xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/nam"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ct09)"/></td>
					</tr>
					<tr>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/ma_giao_dich"/></td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ngay_nop,'dd/mm/yyyy')"/></td>
							  <td class="align-c">Quý II năm <xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/nam"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ct09)"/></td>
					</tr>
					<tr>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/ma_giao_dich"/></td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ngay_nop,'dd/mm/yyyy')"/></td>
							  <td class="align-c">Quý III năm <xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/nam"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ct09)"/></td>
					</tr>
					<tr>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/ma_giao_dich"/></td>
							  <td class="align-c"><xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ngay_nop,'dd/mm/yyyy')"/></td>
							  <td class="align-c">Quý IV năm <xsl:value-of select="$tkchinh/NoiDungKyTinhThueQuy/Quy_1/nam"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungKyTinhThueQuy/Quy_1/ct09)"/></td>
					</tr>
					<tr>
							<td class="align-c"><b>Cộng   [10]</b></td>
							<td class="align-l"><b></b></td>
							<td class="align-l"><b></b></td>
							<td class="align-l"><b></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10)"/></b></td>
					</tr>
				</table>
				<table class="tkhai_table">
					<tr>
							<td class="align-l" colspan="9"><b>2. Nghĩa vụ thuế xác định lại theo tháng</b></td>
					</tr>
					<tr>
							<td class="align-c" rowspan="2"><b>Kỳ tính thuế tháng</b></td>
							<td class="align-c"><b>Số thuế phải nộp</b></td>
							<td class="align-c"><b>Số thuế phải nộp chênh lệch [12]</b></td>
							<td class="align-c"><b>Tiền chậm nộp (nếu có) [13]</b></td>
							<td class="align-c" rowspan="2"><b>Có kê khai phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Tên phụ lục bảng phân bổ</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản xuất kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý nhận địa bàn phân bổ)</b></td>
					</tr>
					<tr>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
							<td class="align-c"><b>Huyện</b></td>
					</tr>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang1">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 1</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang2">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 2</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang3">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 3</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang4">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 4</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang5">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 5</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang6">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 6</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang7">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 7</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang8">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 8</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang9">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 9</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang10">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 10</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang11">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 11</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/NDungThang12">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c">Tháng 12</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct13)"/></b></td>
							<td class="align-c">
							<xsl:if test="co_ke_khai_phan_bo = 'true'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '1'"> [X]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = 'false'"> [&#32;]
							</xsl:if>
							<xsl:if test="co_ke_khai_phan_bo = '0'"> [&#32;]
							</xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="tenPLuc"/></td>
							<td class="align-c"><xsl:value-of select="tinh_ten"/></td>
							<td class="align-c"><xsl:value-of select="huyen_ten"/></td>
							<td class="align-c"><xsl:value-of select="cqt_ten"/></td>
						</tr>
					</xsl:for-each>
					<tr>
							<td class="align-l"><b>Cộng quý I</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct14_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct15_1)"/></b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
					</tr>
					<tr>
							<td class="align-l"><b>Cộng quý II</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct14_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct15_1)"/></b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
					</tr>
					<tr>
							<td class="align-l"><b>Cộng quý III</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct14_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct15_1)"/></b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
					</tr>
					<tr>
							<td class="align-l"><b>Cộng quý IV</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct14_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/CongQuy_1/ct15_1)"/></b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
					</tr>
					<tr>
							<td class="align-l"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
							<td class="align-c"><b>\</b></td>
					</tr>
				</table>
			</div>
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"/>
			<div><b><u><i>Ghi chú: </i></u> </b></div>
				<div><i>1. Chỉ tiêu "1. Nghĩa vụ thuế đã kê khai theo quý đối với hồ sơ khai thuế mẫu số: ..." dùng để khai mẫu số của hồ sơ khai thuế có liên quan (ví dụ: 01/GTGT Hoạt động sản xuất kinh doanh thông thường; 01/XSBHĐC;…).</i></div>
				<div><i>2. Cột chỉ tiêu “Mã giao dịch điện tử của hồ sơ khai thuế” dùng để khai mã hồ sơ khai thuế điện tử do cơ quan thuế cấp tại Thông báo về việc chấp nhận "chứng từ điện tử" mẫu số 01-2/TB-TĐT (ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế) lần nộp hồ sơ sau cùng. Trường hợp người nộp thuế đã nộp hồ sơ khai thuế kỳ tính thuế quý bằng giấy hoặc bằng mã vạch đến cơ quan thuế thì phải ghi rõ lần thứ của hồ sơ và ngày cơ quan thuế tiếp nhận hồ sơ đối với lần nộp hồ sơ cuối cùng (ví dụ: Bổ sung lần thứ 01 ngày 10/05/2021; Lần đầu ngày 30/06/2021;…).</i></div>
				<div><i>3. Người nộp thuế tự tính "2. Nghĩa vụ thuế xác định lại theo tháng" và cộng từng quý, tổng các quý; trong đó số liệu tại cột chỉ tiêu [15] của từng quý bằng số liệu của quý tương ứng tại chỉ tiêu [14] trừ đi số liệu của quý tương ứng tại cột chỉ tiêu [09]. Đồng thời, người nộp thuế tự xác định và chịu trách nhiệm về số thuế phải nộp phân bổ tăng thêm nộp cho các địa phương có liên quan (nếu có)./.</i></div>
		<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

