<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_01_HTQT_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/HTQT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			
               <div class="align-l"><p><b>1. Đối tượng được miễn, giảm thuế theo Hiệp định thuế:</b>[<xsl:if test="$tkchinh/CT1/doiTuongMienGiam = 'true' or $tkchinh/CT1/doiTuongMienGiam = '1'" >x</xsl:if>]</p>
			   </div>
				<table class="tkhai_table" >
					<tr>
						<td class="align-c"> <p>1.1</p></td>
						<td class="align-l" colspan="4">
							<p>Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/CT1/ct1_1/tenDoiTuong"/></p>
							<p>Số hợp đồng <xsl:value-of select="$tkchinh/CT1/ct1_1/soHD"/> ngày hợp đồng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_1/ngayHD,'dd/mm/yyyy')"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT1/ct1_1/giayPhepKD = 'true' or $tkchinh/CT1/ct1_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>Hộ chiếu</i>[<xsl:if test="$tkchinh/CT1/ct1_1/hoChieu = 'true' or $tkchinh/CT1/ct1_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT1/ct1_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_1/ngayCap,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT1/ct1_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT1/ct1_1/noiCap"/></p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.2</p></td>
						<td class="align-l" colspan="4">
							<p>Tên sử dụng trong giao dịch <i>(nếu là tổ chức)</i>: <xsl:value-of select="$tkchinh/CT1/ct1_2_tenSuDung"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>1.3a</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ tại Việt Nam: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_DiaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_SDT"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_Fax"/> E-mail: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_Email"/></p>
							<p>Địa chỉ trên là: </p>
							<p>
								<i>Văn phòng ĐD</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_vanPhong = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_vanPhong = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Cơ sở thường trú</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_coSoTTru = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_coSoTTru = '1'" >x</xsl:if>] 
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nơi làm việc</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_noiLViec = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_noiLViec = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nơi lưu trú</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_noiLTru = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_noiLTru = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Khác</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_khac = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_khac = '1'" >x</xsl:if>] Nêu rõ: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_diaChiKhac"/>
							</p>
						</td>
					</tr>		
					<tr>
						<td class="align-c"> <p>1.3b</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ giao dịch hoặc làm việc tại Việt Nam (nếu khác với địa chỉ nêu trên): Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_tenTinh"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_DiaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_SDT"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_Fax"/> E-mail: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_Email"/></p>	
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.4</p></td>
						<td class="align-l" colspan="4">
							<p>Mã số thuế tại Việt Nam: <xsl:value-of select="$tkchinh/CT1/ct1_4/mst_taiVN"/> </p>
							<p>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/CT1/ct1_4/lyDo"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.5</p></td>
						<td class="align-l" colspan="4">
							<p>Thời gian dự kiến thực hiện hoạt động (hoặc ở) tại Việt Nam: Từ ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_5/tuNgay,'dd/mm/yyyy')"/> đến ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_5/denNgay,'dd/mm/yyyy')"/></p>
							
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.6</p></td>
						<td class="align-l" colspan="4">
							<p>Quốc tịch: <i>Nước ký kết</i> [<xsl:if test="$tkchinh/CT1/ct1_6/nuocKyKet = 'true' or $tkchinh/CT1/ct1_6/nuocKyKet = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nước khác</i> [<xsl:if test="$tkchinh/CT1/ct1_6/nuocKhac = 'true' or $tkchinh/CT1/ct1_6/nuocKhac = '1'" >x</xsl:if>] <xsl:value-of select="$tkchinh/CT1/ct1_6/ten_QTich"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>1.7</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/CT1/ct1_7/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT1/ct1_7/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT1/ct1_7/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT1/ct1_7/email"/></p>	
							<p>Địa chỉ trên là: </p>
							<p>
								<i>Nơi làm việc</i> [<xsl:if test="$tkchinh/CT1/ct1_7/noiLViec = 'true' or $tkchinh/CT1/ct1_7/noiLViec = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nơi thường trú</i> [<xsl:if test="$tkchinh/CT1/ct1_7/noiTTru = 'true' or $tkchinh/CT1/ct1_7/noiTTru = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Khác</i> [<xsl:if test="$tkchinh/CT1/ct1_7/noiKhac = 'true' or $tkchinh/CT1/ct1_7/noiKhac = '1'" >x</xsl:if>] Nêu rõ: <xsl:value-of select="$tkchinh/CT1/ct1_7/neuRo"/>
							</p>
						</td>
					</tr>		
					<tr>
						<td class="align-c" rowspan = '3'> <p>1.8</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý tại Nước ký kết:
							
						</td>
					</tr>
					<tr>
								<td class="align-l"> Pháp nhân </td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_8/phapNhan = 'true' or $tkchinh/CT1/ct1_8/phapNhan = '1'" >x</xsl:if>]</td>
								<td class="align-l">Cá nhân </td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_8/caNhan = 'true' or $tkchinh/CT1/ct1_8/caNhan = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
								<td class="align-l">Liên danh không tạo pháp nhân</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_8/lienDanh = 'true' or $tkchinh/CT1/ct1_8/lienDanh = '1'" >x</xsl:if>]</td>
								<td class="align-l">Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT1/ct1_8/neuRo"/>)</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_8/khac = 'true' or $tkchinh/CT1/ct1_8/khac = '1'" >x</xsl:if>]</td>
					</tr>
						
					<tr>
						<td class="align-c"> <p>1.9</p></td>
						<td class="align-l" colspan="4">
							<p>Mã số thuế tại Nước ký kết: <xsl:value-of select="$tkchinh/CT1/ct1_9/mst_nuocKK"/> </p>
							<p>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/CT1/ct1_9/lyDo"/> </p>
						</td>
					</tr>						
				</table>
				
				<div class="align-l"><p><b>2. Đại diện được uỷ quyền:</b>[<xsl:if test="$tkchinh/CT2/daiDienUQ = 'true' or $tkchinh/CT2/daiDienUQ = '1'" >x</xsl:if>]</p>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <p>2.1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/CT2/ct2_1/ten_daiDien"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT2/ct2_1/giayPhepKD = 'true' or $tkchinh/CT2/ct2_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>Hộ chiếu</i>[<xsl:if test="$tkchinh/CT2/ct2_1/hoChieu = 'true' or $tkchinh/CT2/ct2_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p><i>CMND/CCCD</i>[<xsl:if test="$tkchinh/CT2/ct2_1/canCuoc = 'true' or $tkchinh/CT2/ct2_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT2/ct2_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT2/ct2_1/ngayCap,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT2/ct2_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT2/ct2_1/noiCap"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>2.2</p></td>
						<td class="align-l" colspan = "4">
							<p>Địa chỉ: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT2/ct2_2/tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT2/ct2_2/tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT2/ct2_2/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT2/ct2_2/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT2/ct2_2/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT2/ct2_2/email"/></p>	
						</td>
					</tr>						
					<tr>
						<td class="align-c"> <p>2.3</p></td>
						<td class="align-l" colspan = "4">
							<p>Mã số thuế: <xsl:value-of select="$tkchinh/CT2/ct2_3/mst_UQuyen"/> </p>
							<p>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/CT2/ct2_3/lyDo"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>2.4</p></td>
						<td class="align-l" colspan = "4">
							<p>Giấy uỷ quyền số: <xsl:value-of select="$tkchinh/CT2/ct2_4/so_giayUQ"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT2/ct2_4/ngay_giayUQ,'dd/mm/yyyy')"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c" rowspan="4"> <p>2.5</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý:
						</td>
					</tr>	
					<tr>
						<td class="align-l"> Pháp nhân </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/phapNhan = 'true' or $tkchinh/CT2/ct2_5/phapNhan = '1'" >x</xsl:if>]</td>
						<td class="align-l">Cá nhân hành nghề độc lập </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/caNhan = 'true' or $tkchinh/CT2/ct2_5/caNhan = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">Liên danh không tạo pháp nhân</td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/lienDanh = 'true' or $tkchinh/CT2/ct2_5/lienDanh = '1'" >x</xsl:if>]</td>
						<td rowspan="2" class="align-l">Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT2/ct2_5/neuRo"/>)</td>
						<td rowspan="2" class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/khac = 'true' or $tkchinh/CT2/ct2_5/khac = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">Đại lý thuế </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/daiLThue = 'true' or $tkchinh/CT2/ct2_5/daiLThue = '1'" >x</xsl:if>]</td>
						
					</tr>
				</table>
			   </div>
			   
			   <div class="align-l"><p><b>3. Đối tượng chi trả thu nhập/sử dụng lao động:</b></p>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <p>3.1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ: <xsl:value-of select="$tkchinh/CT3/ct3_1/tenDoiTuong"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT3/ct3_1/giayPhepKD = 'true' or $tkchinh/CT3/ct3_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>Hộ chiếu</i>[<xsl:if test="$tkchinh/CT3/ct3_1/hoChieu = 'true' or $tkchinh/CT3/ct3_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p><i>CMND/CCCD</i>[<xsl:if test="$tkchinh/CT3/ct3_1/canCuoc = 'true' or $tkchinh/CT3/ct3_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT3/ct3_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT3/ct3_1/ngayCap,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT3/ct3_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT3/ct3_1/noiCap"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>3.2</p></td>
						<td class="align-l" colspan = "4">
							<p>Địa chỉ: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT3/ct3_2/tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT3/ct3_2/tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT3/ct3_2/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT3/ct3_2/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT3/ct3_2/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT3/ct3_2/email"/></p>	
						</td>
					</tr>						
					<tr>
						<td class="align-c"> <p>3.3</p></td>
						<td class="align-l" colspan = "4">
							<p>Mã số thuế: <xsl:value-of select="$tkchinh/CT3/ct3_3/mst_doiTuong"/> </p>
							<p>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/CT3/ct3_3/lyDo"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c" rowspan="4"> <p>3.4</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý:
						</td>
					</tr>	
					<tr>
						<td class="align-l"> Pháp nhân </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/phapNhan = 'true' or $tkchinh/CT3/ct3_4/phapNhan = '1'" >x</xsl:if>]</td>
							<td class="align-l">Cá nhân hành nghề độc lập </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/caNhan = 'true' or $tkchinh/CT3/ct3_4/caNhan = '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td class="align-l">Liên danh không tạo pháp nhân</td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/lienDanh = 'true' or $tkchinh/CT3/ct3_4/lienDanh = '1'" >x</xsl:if>]</td>
							<td class="align-l">Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT3/ct3_4/neuRo"/>)</td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/khac = 'true' or $tkchinh/CT3/ct3_4/khac = '1'" >x</xsl:if>]</td>
					</tr>
				</table>
			   </div>
			    <div class="align-l">
					<p><b>4. Nội dung miễn, giảm thuế:</b> </p>
					<p>4.1. Loại và tổng số thu nhập ước tính đề nghị miễn, giảm thuế </p>
					<p>4.1.1. Loại thu nhập:</p>
					    <p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_BDS = 'true' or $tkchinh/CT4/ct4_1/tNhap_BDS = '1'" >x</xsl:if>] Thu nhập từ bất động sản</p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_KD = 'true' or $tkchinh/CT4/ct4_1/tNhap_KD = '1'" >x</xsl:if>] Thu nhập kinh doanh </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_VTQT = 'true' or $tkchinh/CT4/ct4_1/tNhap_VTQT = '1'" >x</xsl:if>] Thu nhập từ vận tải quốc tế </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_tienLai = 'true' or $tkchinh/CT4/ct4_1/tNhap_tienLai = '1'" >x</xsl:if>] Thu nhập từ tiền lãi cổ phần </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_choVay = 'true' or $tkchinh/CT4/ct4_1/tNhap_choVay = '1'" >x</xsl:if>] Thu nhập từ lãi tiền cho vay </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_banQuyen = 'true' or $tkchinh/CT4/ct4_1/tNhap_banQuyen = '1'" >x</xsl:if>] Thu nhập từ tiền bản quyền </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_cNhuong = 'true' or $tkchinh/CT4/ct4_1/tNhap_cNhuong = '1'" >x</xsl:if>] Thu nhập từ chuyển nhượng tài sản </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_VDCN = 'true' or $tkchinh/CT4/ct4_1/tNhap_VDCN = '1'" >x</xsl:if>] Thu nhập từ hoạt động dịch vụ cá nhân độc lập </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_tienLuong = 'true' or $tkchinh/CT4/ct4_1/tNhap_tienLuong = '1'" >x</xsl:if>] Thu nhập từ tiền lương, tiền công </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_thuLao = 'true' or $tkchinh/CT4/ct4_1/tNhap_thuLao = '1'" >x</xsl:if>] Thù lao giám đốc </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_VDV = 'true' or $tkchinh/CT4/ct4_1/tNhap_VDV = '1'" >x</xsl:if>] Thu nhập của nghệ sĩ và Vận động viên </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_tienHuu = 'true' or $tkchinh/CT4/ct4_1/tNhap_tienHuu = '1'" >x</xsl:if>] Thu nhập từ tiền lương hưu </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_pVuCP = 'true' or $tkchinh/CT4/ct4_1/tNhap_pVuCP = '1'" >x</xsl:if>] Thu nhập từ phục vụ Chính phủ </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_TTS = 'true' or $tkchinh/CT4/ct4_1/tNhap_TTS = '1'" >x</xsl:if>] Thu nhập của sinh viên và Thực tập sinh</p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_gVien = 'true' or $tkchinh/CT4/ct4_1/tNhap_gVien = '1'" >x</xsl:if>] Thu nhập của giáo viên, Giáo sư và Nhà nghiên cứu </p>
						<p>&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/CT4/ct4_1/tNhap_khac = 'true' or $tkchinh/CT4/ct4_1/tNhap_khac = '1'" >x</xsl:if>] Thu nhập khác. Nêu rõ: <xsl:value-of select="$tkchinh/CT4/ct4_1/neuRo"/> </p>
					<p>4.1.2. Tổng số thu nhập: <xsl:value-of select="$tkchinh/CT4/ct4_1/tong_tNhap"/> Đơn vị tính: <xsl:value-of select="$tkchinh/CT4/ct4_1/ten_loaiTien"/></p>
					<p>4.2. Thời gian phát sinh thu nhập: Từ ngày <xsl:value-of select="$tkchinh/CT4/ct4_2/thoiGianPS_Tu"/> đến ngày <xsl:value-of select="$tkchinh/CT4/ct4_2/thoiGianPS_Den"/></p>
					<p>4.3. Số thuế đề nghị miễn, giảm (hoặc mức thuế suất đề nghị áp dụng Hiệp định thuế trong trường hợp đề nghị áp dụng mức thuế suất giảm): <xsl:value-of select="$tkchinh/CT4/ct4_3/soThue"/> Đơn vị tính: <xsl:value-of select="$tkchinh/CT4/ct4_3/ten_loaiTien"/></p>
				</div>
				<div class="align-l">
					<p><b>5. Thông tin về giao dịch phát sinh thu nhập liên quan đến áp dụng Hiệp định thuế:</b> </p>
					<p>5.1.	Giải trình tóm tắt về hoạt động kinh doanh/giao dịch phát sinh thu nhập: <xsl:value-of select="$tkchinh/CT5/giaiTrinhTT"/></p>
					<p>5.2. Giải trình khác: <xsl:value-of select="$tkchinh/CT5/giaiTrinhKhac"/></p>
					<p>5.3.	Tài liệu gửi kèm:</p>
						<xsl:for-each select="$tkchinh/CT5/TaiLieuGuiKem/TaiLieu">
									<xsl:variable name="pos" select="position()"/>
									<xsl:variable name="last" select="last()"/>
											<xsl:if test="$pos != $last ">
												<xsl:if test="tenTaiLieu != '' ">
													 - <xsl:value-of select="tenTaiLieu"/>;<br/>
												</xsl:if>
												</xsl:if>
										<xsl:if test="$pos = $last ">
											<xsl:if test="tenTaiLieu != '' ">
												- <xsl:value-of select="tenTaiLieu"/>.
											</xsl:if>
										</xsl:if>
						</xsl:for-each>
				</div>
			   
		 </div>		
      </div>	
	 <xsl:call-template name="tkhaiFooter_01_HTQT_TT80"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

