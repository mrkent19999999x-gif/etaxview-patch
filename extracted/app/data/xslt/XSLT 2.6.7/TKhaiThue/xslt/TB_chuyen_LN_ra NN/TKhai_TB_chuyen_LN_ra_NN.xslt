<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư 186/2010/TT-BTC ngày 18 tháng 11 năm 2010 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_TB_chuyen_LN_ra_NN">
			<xsl:with-param name="mauTKhai"   select="''"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 186/2010/TT-BTC ngày 18 tháng 11 năm 2010 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						1. Tên nhà đầu tư nước ngoài: <xsl:value-of select="$tkchinh/ten_nha_dau_tu_NN"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;Quốc tịch: <xsl:value-of select="$tkchinh/ten_quoc_gia"/>
					</td>
				</tr>
				<tr>
						<td class="align-l">
						&#160;&#160;&#160;Tổ chức&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							<xsl:if test="$tkchinh/to_chuc= 'true'">&#160;&#160;&#160;[X]</xsl:if>
						    <xsl:if test="$tkchinh/to_chuc= 'false'">&#160;&#160;&#160;[&#32;]</xsl:if>
							<xsl:if test="$tkchinh/to_chuc= '1'">&#160;&#160;&#160;[X]</xsl:if>
						    <xsl:if test="$tkchinh/to_chuc= '0'">&#160;&#160;&#160;[&#32;]</xsl:if>

						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cá nhân&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							<xsl:if test="$tkchinh/ca_nhan= 'true'">&#160;&#160;&#160;[X]</xsl:if>
						    <xsl:if test="$tkchinh/ca_nhan= 'false'">&#160;&#160;&#160;[&#32;]</xsl:if>
							<xsl:if test="$tkchinh/ca_nhan= '1'">&#160;&#160;&#160;[X]</xsl:if>
						    <xsl:if test="$tkchinh/ca_nhan= '0'">&#160;&#160;&#160;[&#32;]</xsl:if>
						</td>
				</tr>
				<tr>
					<td colspan="3">
						2. Tên doanh nghiệp nhà đầu tư nước ngoài tham gia đầu tư vốn: <xsl:value-of select="$tkchinh/ten_DN"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;Giấy phép đầu tư số:  <xsl:value-of select="$tkchinh/giay_phep_dau_tu"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;Ngày: <xsl:value-of select="$tkchinh/ngay"/>
					</td>
				</tr>
				<tr>
					<td>
						&#160;&#160;&#160;Địa chỉ trụ sở của doanh nghiệp: <xsl:value-of select="$tkchinh/dia_chi_DN"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;Mã số thuế: 
						<xsl:value-of select="$tkchinh/mst_DN"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						3. Phần đăng ký lợi nhuận chuyển ra nước ngoài của nhà đầu tư:
					</td>
				</tr>
				<tr>
					<td colspan="3" class="align-r">
						Đơn vị tiền: <xsl:value-of select="$tkchinh/ten_DonVi_3"/>
					</td>
				</tr>
				<table class="tkhai_table">
				<tr>
						<td  class="align-c"><b>STT</b></td>
						<td  class="align-c"><b>Chỉ tiêu</b></td>
						<td  class="align-c"><b>Số lợi nhuận</b></td>
				</tr>
				<tr>
						<td class="align-c"><b>I</b></td>
						<td class="align-l"><b>Số lợi nhuận được chia hoặc thu được trong kỳ</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/loi_nhuan_trong_ky)"/></b></td>	
				</tr>
				<tr>
						<td class="align-c">1</td>
						<td class="align-l">Lợi nhuận được chia hoặc thu được từ hoạt động đầu tư</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/loi_nhuan_tu_dau_tu)"/></td>
				</tr>
				<tr>
					<xsl:for-each select="$tkchinh/ChiTietLoiNhuan/NDungLoiNhuanTuDauTu">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="stt"/></td>
							<td class="align-l"><xsl:value-of select="chi_tieu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_loi_nhuan)"/></td>
						</tr>
					</xsl:for-each>
				</tr>
				<tr>
						<td class="align-c">2</td>
						<td class="align-l">Lợi nhuận thu được khác</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/loi_nhuan_khac)"/></td>	
				</tr>
				<tr>
						<td class="align-c"><b>II</b></td>
						<td class="align-l"><b>Số lợi nhuận đã sử dụng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/loi_nhuan_da_su_dung)"/></b></td>
				</tr>
				<tr>
						<td class="align-c">1</td>
						<td class="align-l">Tái đầu tư</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/tai_dau_tu)"/></td>	
				</tr>
				<tr>
						<td class="align-c">2</td>
						<td class="align-l">Sử dụng vào mục đích khác</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/su_dung_muc_dich_khac)"/></td>	
				</tr>
				<xsl:for-each select="$tkchinh/ChiTietLoiNhuan/NDungLoiNhuanDaSuDung">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="stt"/></td>
							<td class="align-l"><xsl:value-of select="chi_tieu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_loi_nhuan)"/></td>
						</tr>
					</xsl:for-each>
				<tr>
						<td class="align-c"><b>III</b></td>
						<td class="align-l"><b>Số lợi nhuận chuyển kỳ này</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietLoiNhuan/loi_nhuan_chuyen_ky_nay)"/></b></td>
				</tr>
				</table>
				<table>
				<tr>
					<td colspan="3">
					<br/>
						4. Số lợi nhuận đề nghị chuyển ra nước ngoài lần này:
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;- Bằng tiền (của nước nào): &#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/so_tien_chuyen_NN)"/>&#160;&#160;&#160; <xsl:value-of select="$tkchinh/ten_DonVi_4"/>
					</td>
				</tr>
				</table>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;- Bằng hiện vật (tên hàng hóa, số lượng, khối lượng, giá trị): 
						<br/>
					</td>
				</tr>
				<br/>
				<table class="tkhai_table">
				<tr>
						<td  class="align-c" rowspan="2"><b>Tên hàng hóa</b></td>
						<td  class="align-c" rowspan="2"><b>Số lượng/Khối lượng</b></td>
						<td  class="align-c" colspan="2"><b>Giá trị</b></td>	
				</tr>
					<tr>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Đơn vị tiền</b></td>
					</tr>
				<tr>
							<td class="align-l"><xsl:value-of select="$tkchinh/ChiTietHienVat/ten_hang_hoa"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietHienVat/so_luong)"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietHienVat/so_tien)"/></td>
							<td class="align-c"><xsl:value-of select="$tkchinh/ChiTietHienVat/ten_DonVi_5"/></td>
						</tr>
				</table>
				<tr>
					<td colspan="3">
					<br/>
						Nếu chuyển bằng tiền, được rút từ tài khoản số &#160;&#160; <xsl:value-of select="$tkchinh/so_tai_khoan"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;tại Ngân hàng &#160;&#160; <xsl:value-of select="$tkchinh/ngan_hang"/>
					</td>
				</tr>
			</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TB_Chuyen_LN_ra_NN"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
