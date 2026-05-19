<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_CCTT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_CCTT' />
			<xsl:call-template name="tkhaiHeader-pluc02-TMDT">
		<xsl:with-param name="mauTKhai"   select="'01-1/CCTT-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'PHỤ LỤC THÔNG TIN CHUNG'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
					<td class="align-c" rowspan="2"><b>Mã quản lý trên sàn giao dịch TMĐT của nhà cung cấp</b></td>
				<td class="align-c" rowspan="2"><b>Loại hình</b></td>
				<td class="align-c" rowspan="2"><b>Email liên hệ</b></td>
				<td class="align-c" rowspan="2"><b>Số điện thoại liên hệ đăng ký trên Sàn</b></td>
				<td class="align-c" colspan="5"><b>Thông tin địa chỉ trụ sở của tổ chức, cá nhân, hộ kinh doanh cung cấp hàng hóa dịch vụ thông qua Sàn</b></td>
				<td class="align-c" colspan="5"><b>Thông tin địa chỉ nơi thường trú của cá nhân, hộ kinh doanh cung cấp hàng hóa dịch vụ thông qua Sàn</b></td>
				<td class="align-c" rowspan="2"><b>Trạng thái</b></td>
				
			</tr>
			<tr>
				<td class="align-c"><b>Quốc gia</b></td>
				<td class="align-c"><b>Tỉnh/thành phố</b></td>
				<td class="align-c"><b>Quận/huyện</b></td>
				<td class="align-c"><b>Phường/xã/thị trấn</b></td>
				<td class="align-c"><b>Số nhà đường, phố</b></td>
				<td class="align-c"><b>Quốc gia</b></td>
				<td class="align-c"><b>Tỉnh/thành phố</b></td>
				<td class="align-c"><b>Quận/huyện</b></td>
				<td class="align-c"><b>Phường/xã/thị trấn</b></td>
				<td class="align-c"><b>Số nhà đường, phố</b></td>
			</tr>
			<td class="align-l" colspan="16"><b>I. Thông tin chung nhà cung cấp trong nước </b></td>
			 <xsl:for-each select="$pl01/ThongTinNCCTrongNuoc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-c"><xsl:value-of select="maQuanLyTrenSan" /></td>
							  <td class="align-c"><xsl:value-of select="tenLoaiHinh" /></td>
							  <td class="align-c"><xsl:value-of select="email" /></td>
							  <td class="align-c"><xsl:value-of select="soDienThoai" /></td>
							  <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/quocgia_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/tinh_tp_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/quan_huyen_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/phuong_xa_ten" /></td>
							    <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/soNha" /></td>
								 <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/quocgia_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/tinh_tp_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/quan_huyen_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/phuong_xa_ten" /></td>
							    <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/soNha" /></td>
							     <td class="align-c"><xsl:value-of select="ten_TrangThai" /></td>
							</tr>
							</xsl:for-each>	
							<td class="align-l" colspan="16"><b>II. Thông tin chung nhà cung cấp nước ngoài </b></td>
							 <xsl:for-each select="$pl01/ThongTinNCCNuocNgoai">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-c"><xsl:value-of select="maQuanLyTrenSan" /></td>
							  <td class="align-c"><xsl:value-of select="tenLoaiHinh" /></td>
							  <td class="align-c"><xsl:value-of select="email" /></td>
							  <td class="align-c"><xsl:value-of select="soDienThoai" /></td>
							  <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/quocgia_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/tinh_tp_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/quan_huyen_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/phuong_xa_ten" /></td>
							    <td class="align-c"><xsl:value-of select="TTDiaChiTruSo/soNha" /></td>
								 <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/quocgia_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/tinh_tp_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/quan_huyen_ten" /></td>
							   <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/phuong_xa_ten" /></td>
							    <td class="align-c"><xsl:value-of select="TTDiaChiThuongTru/soNha" /></td>
							     <td class="align-c"><xsl:value-of select="ten_TrangThai" /></td>
							</tr>
							</xsl:for-each>	
			
		</table>
</div>
</div>
	</xsl:if>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>