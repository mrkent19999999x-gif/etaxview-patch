<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_05_GTGT_TT80_283">
		<xsl:with-param name="mauTKhai"   select="'05/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với người nộp thuế tính thuế theo phương pháp khấu trừ có hoạt động xây dựng, chuyển nhượng bất động sản tại địa bàn cấp tỉnh khác nơi đóng trụ sở chính)'"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">          
                      		<div>&#160;&#160;&#160;&#160; <b>I. Kê khai nghĩa vụ thuế:</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Hoạt động</b></td>
										<td class="align-c"><b>Doanh thu chưa có thuế giá trị gia tăng [21]</b></td>
										<td class="align-c"><b>Tỷ lệ (%) thuế giá trị gia tăng [22]</b></td>
									    <td class="align-c"><b>Thuế giá trị gia tăng phải nộp [23]=[21]x[22]</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Hoạt động xây dựng</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDXayDung/ct21)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDXayDung/ct22)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDXayDung/ct23)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Hoạt động chuyển nhượng bất động sản </td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDChuyenNhuongBDS/ct21)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDChuyenNhuongBDS/ct22)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/HDChuyenNhuongBDS/ct23)"/></td>
									</tr>
									<tr>
										<td></td>
										<td><b>Tổng cộng</b></td>
										<td class="align-r"><b>[24]</b> = <xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/TongCong/ct24)"/></td>
										<td></td>
										<td class="align-r"><b>[25]</b> = <xsl:value-of select="ihtkk:formatNumber($tkchinh/KeKhaiNVThue/TongCong/ct25)"/></td>
									</tr>
									</table>
									
									<div> &#160;&#160;&#160;&#160;<b>II. Kê khai thông tin của hợp đồng xây dựng:</b> </div>	<br/>
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
					        <td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
				            <td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
				            <td class="align-c" rowspan="2"><b>Tên chủ đầu tư</b></td>
				            <td class="align-c" rowspan="2"><b>Mã số thuế của chủ đầu tư (nếu có)</b></td>
				            <td class="align-c" colspan="4"><b>Địa chỉ nơi có công trình</b></td>
				            <td class="align-c" rowspan="2"><b>Tổng giá trị hợp đồng (chưa có thuế GTGT)</b></td>
				            </tr>
			            <tr>
				            <td class="align-c"><b>Số nhà, đường phố</b></td>
				            <td class="align-c"><b>Xã/ phường/đặc khu</b></td>
				            <td class="align-c"><b>Quận/huyện</b></td>
				            <td class="align-c"><b>Tỉnh/TP</b></td>
				        </tr>
				        
				        <xsl:for-each select="$tkchinh/BangChiTietHDXD/thongTinHDXD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="soHopDong"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayHopDong,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="tenChuDauTu"/></td>
								<td class="align-r"><xsl:value-of select="maSoThueCDT"/></td>
								<td class="align-l"><xsl:value-of select="soNha"/></td>
								<td class="align-l"><xsl:value-of select="phuong_xa_ten"/></td>
								<td class="align-l"><xsl:value-of select="quan_huyen_ten"/></td>
								<td class="align-l"><xsl:value-of select="tinh_tp_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongGiaTriHD)"/></td>
	         					
	         				</tr>	
	         		</xsl:for-each>	
				        
				        
				        	</table>
								<xsl:call-template name="tkhaiFooter"/>
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
		<table style="page-break-inside: avoid;width:100%" >

</table>	
					</xsl:template>	

</xsl:stylesheet>