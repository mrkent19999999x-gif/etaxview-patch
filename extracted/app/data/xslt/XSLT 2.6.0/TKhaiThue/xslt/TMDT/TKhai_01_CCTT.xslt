<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_CCTT">
		<xsl:with-param name="mauTKhai"   select="'01/CCTT-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
						        <table class="tkhai_table">
									<tr>
										<td class="align-c" rowspan="2"><b>STT</b></td>
										<td class="align-c" rowspan="2"><b>Mã quản lý trên sàn giao dịch TMĐT của nhà cung cấp</b></td>
										<td class="align-c" rowspan="2"><b>Tên tổ chức, cá nhân cung cấp hàng hóa dịch vụ thông qua sàn giao dịch TMĐT</b></td>
										<td class="align-c" rowspan="2"><b>Loại hình</b></td>
										<td class="align-c" rowspan="2"><b>Loại giấy tờ</b></td>
										<td class="align-c" rowspan="2"><b>Số CMND/CCCD/Hộ chiếu</b></td>
										<td class="align-c" rowspan="2"><b>Số GPKD</b></td>
										<td class="align-c" rowspan="2"><b>MST</b></td>
										<td class="align-c" colspan="2"><b>Tổng giá trị hàng hóa của các đơn hàng đã giao dịch thành công (chưa trừ các khoản khuyến mại, giảm giá, chiết khấu, hỗ trợ khác) </b></td>
									    <td class="align-c" rowspan="2"><b>Tổng số lượng các đơn hàng đã giao dịch thành công</b></td>
										<td class="align-c" rowspan="2"><b>Tổng số lượng các đơn hàng đã giao dịch không thành công</b></td>
										<td class="align-c" colspan="2"><b>Thời gian hoạt động trên Sàn của quý</b></td>
										<td class="align-c" rowspan="2"><b>Trạng thái</b></td>
									</tr>
									
			                        <tr>
				                        <td class="align-c"><b>Tổng</b></td>
				                        <td class="align-c"><b>Các khoản giảm trừ</b></td>
				                        <td class="align-c"><b>từ ngày</b></td>
				                        <td class="align-c"><b>đến ngày</b></td>
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
				<td class="align-c"><b>[15]</b></td>
				<td class="align-c"><b>[16]</b></td>
				<td class="align-c"><b>[17]</b></td>
				<td class="align-c"><b>[18]</b></td>
				<td class="align-c"><b>[19]</b></td>
				<td class="align-c"><b>[20]</b></td>
				</tr>
				
									  <xsl:for-each select="$tkchinh/BangThongTinChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="maQuanLyTrenSan"/></td>
								<td class="align-l"><xsl:value-of select="tenNhaCungCap"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiHinh"/></td>
								<td class="align-l"><xsl:value-of select="ten_LoaiGiayTo"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-l"><xsl:value-of select="so_GPKD"/></td>
								<td class="align-l"><xsl:value-of select="mst"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(TongGiaTriHangHoa/tong)" /></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(TongGiaTriHangHoa/cacKhoanGiamTru)" /></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tong_DonHangThanhCong)" /></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tong_DonHangKhongThanhCong)" /></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ThoiGianHoatDong/tuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ThoiGianHoatDong/denNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-c"><xsl:value-of select="ten_TrangThai" /></td>
								</tr>	
	         		</xsl:for-each>	
								</table>
								
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
