<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số .... của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tkhaiHeader_01_TAIN_HKD">
			<xsl:with-param name="mauTKhai"   select="'01/TAIN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho hộ kinh doanh, cá nhân kinh doanh kinh doanh hàng hóa chịu thuế TTĐB)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<div  class="align-l">A. KÊ KHAI THÔNG TIN TÍNH THUẾ</div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Tài nguyên, hàng hóa, sản phẩm</b></td>
						<td class="align-c"><b>Mã chỉ tiêu</b></td>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Sản lượng/ Số lượng</b></td>
						<td class="align-c"><b>Giá tính thuế tài nguyên</b></td>
						<td class="align-c"><b>Thuế suất</b></td>
						<td class="align-c"><b>Số thuế</b></td>
					</tr>
					<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8)=(5)*(6)*(7)</td>
						</tr>
					<xsl:for-each select="$tkchinh/KKhaiTaiNguyen/CTietThueTaiNguyen">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
							<td class="align-c"><xsl:value-of select="ct3"/></td>
							<td class="align-c"><xsl:value-of select="ct4"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						<td></td>
						<td class="align-l"><b>Tổng cộng:</b></td>
						<td><b>[12]</b></td>
						<td></td>
						<td></td>
						<td></td>
						
						<td></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiTaiNguyen/tongCong)"/></b></td>
						
					</tr>
				</table>
				
				<div  class="align-l">B. HỖ TRỢ THÔNG TIN NỘP THUẾ</div>
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
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ma_muc"/>-<xsl:value-of select="ten_muc"/></td>
							<td class="align-c"><xsl:value-of select="ma_tieumuc"/>-<xsl:value-of select="ten_tieumuc"/></td>
						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTien)"/></td>
							<td class="align-c"><xsl:value-of select="ten_coquanthu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(hanNopThue,'dd/mm/yyyy')"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						
						<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r"><b>[19]</b>&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tong_sotien)"/></td>
						<td></td>
						<td></td>
						
						
					</tr>
				</table>
			</div>
			
		</div>
		<xsl:call-template name="tkhaiFooter_TT80_HKD"/>
			
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

