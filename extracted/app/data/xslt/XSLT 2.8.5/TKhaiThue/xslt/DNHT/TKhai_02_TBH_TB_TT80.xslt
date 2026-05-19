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
		 <xsl:call-template name="tkhaiHeader_02_TBH_TB_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/TBH-TB'"/>
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
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề số <xsl:value-of select="$tkchinh/CT1/ct1_1/soGiayTo"/></i></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_1/ngayCap,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT1/ct1_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT1/ct1_1/noiCap"/></p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.2</p></td>
						<td class="align-l" colspan="4">
							<p>Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/CT1/ct1_2_tenSuDung"/></p>
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
								<i>A. Nơi làm việc</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_noiLViec = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_noiLViec = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>B. Nơi lưu trú</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_noiTTru = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_noiTTru = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>C. Văn phòng ĐD</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_vanPhong = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_vanPhong = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>D. Cơ sở thường trú</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_coSoTT = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_coSoTT = '1'" >x</xsl:if>] 
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>E. Khác</i> [<xsl:if test="$tkchinh/CT1/ct1_3a/ct1_3a_khac = 'true' or $tkchinh/CT1/ct1_3a/ct1_3a_khac = '1'" >x</xsl:if>] Nêu rõ: <xsl:value-of select="$tkchinh/CT1/ct1_3a/ct1_3a_NeuRo"/>
							</p>
						</td>
					</tr>		
					<tr>
						<td class="align-c"> <p>1.3b</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ giao dịch tại Việt Nam <i>(nếu khác với địa chỉ nêu trên)</i>: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_tenTinh"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT1/ct1_3b/ct1_3b_DiaChi"/></p>
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
							<p>Thời gian có mặt tại Việt Nam hoặc thực hiện hoạt động tại Việt Nam: Từ ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_5/tuNgay,'dd/mm/yyyy')"/> đến ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT1/ct1_5/denNgay,'dd/mm/yyyy')"/></p>
							
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.6</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/CT1/ct1_6/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT1/ct1_6/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT1/ct1_6/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT1/ct1_6/email"/></p>	
						</td>
					</tr>		
					<tr>
						<td class="align-c" rowspan = '3'> <p>1.7</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý tại Nước ký kết:
							
						</td>
					</tr>
					<tr>
								<td class="align-l">A. Pháp nhân </td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_7/phapNhan = 'true' or $tkchinh/CT1/ct1_7/phapNhan = '1'" >x</xsl:if>]</td>
								<td class="align-l">B. Liên danh không tạo pháp nhân</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_7/lienDanh = 'true' or $tkchinh/CT1/ct1_7/lienDanh = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
							
								<td class="align-l" colspan="3">C. Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT1/ct1_7/neuKhac"/>)</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT1/ct1_7/khac = 'true' or $tkchinh/CT1/ct1_7/khac = '1'" >x</xsl:if>]</td>
					</tr>
						
					<tr>
						<td class="align-c"> <p>1.8</p></td>
						<td class="align-l" colspan="4">
							<p>Mã số thuế tại Nước ký kết: <xsl:value-of select="$tkchinh/CT1/ct1_8/mst_nuocKK"/> </p>
							<p>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/CT1/ct1_8/lyDo"/> </p>
						</td>
					</tr>						
				</table>
				
				<div class="align-l"><p><b>2. Đại diện được uỷ quyền:</b>[<xsl:if test="$tkchinh/CT2/daiDienUQ = 'true' or $tkchinh/CT2/daiDienUQ = '1'" >x</xsl:if>]</p>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <p>2.1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/CT2/ct2_1/ten_daiDien"/></p>
							<p><i>A. CMND/CCCD</i>[<xsl:if test="$tkchinh/CT2/ct2_1/hoChieu = 'true' or $tkchinh/CT2/ct2_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p><i>B. Hộ chiếu</i>[<xsl:if test="$tkchinh/CT2/ct2_1/hoChieu = 'true' or $tkchinh/CT2/ct2_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p><i>C. Giấy chứng nhận kinh doanh/đầu tư</i> [<xsl:if test="$tkchinh/CT2/ct2_1/giayCNhan = 'true' or $tkchinh/CT2/ct2_1/giayCNhan = '1'" >x</xsl:if>]</p>
							<p><i>D. Khác</i> [<xsl:if test="$tkchinh/CT2/ct2_1/khac = 'true' or $tkchinh/CT2/ct2_1/khac = '1'" >x</xsl:if>] <i>(nêu rõ) <xsl:value-of select="$tkchinh/CT2/ct2_1/neuRo"/></i></p>
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
						<td class="align-l"> A. Pháp nhân </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/phapNhan = 'true' or $tkchinh/CT2/ct2_5/phapNhan = '1'" >x</xsl:if>]</td>
						<td class="align-l">D. Cá nhân hành nghề phụ thuộc </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/caNhan = 'true' or $tkchinh/CT2/ct2_5/caNhan = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">B. Liên danh không tạo pháp nhân</td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/lienDanh = 'true' or $tkchinh/CT2/ct2_5/lienDanh = '1'" >x</xsl:if>]</td>
						<td rowspan="2" class="align-l">E. Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT2/ct2_5/neuRo"/>)</td>
						<td rowspan="2" class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/khac = 'true' or $tkchinh/CT2/ct2_5/khac = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">C. Đại lý thuế </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT2/ct2_5/daiLThue = 'true' or $tkchinh/CT2/ct2_5/daiLThue = '1'" >x</xsl:if>]</td>
						
					</tr>
				</table>
			   </div>
			   
			   <div class="align-l"><p><b>3. Đối tượng chi trả thu nhập:</b></p>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <p>3.1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/CT3/ct3_1/tenDoiTuong"/></p>
							<p><i>A. CMND/CCCD</i>[<xsl:if test="$tkchinh/CT3/ct3_1/canCuoc = 'true' or $tkchinh/CT3/ct3_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p><i>B. Hộ chiếu</i>[<xsl:if test="$tkchinh/CT3/ct3_1/hoChieu = 'true' or $tkchinh/CT3/ct3_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p><i>C. Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT3/ct3_1/giayPhepKD = 'true' or $tkchinh/CT3/ct3_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>D. Khác</i> [<xsl:if test="$tkchinh/CT3/ct3_1/khac = 'true' or $tkchinh/CT3/ct3_1/khac = '1'" >x</xsl:if>] <i>(nêu rõ) <xsl:value-of select="$tkchinh/CT3/ct3_1/neuRo"/></i></p>
							
							<p>Số: <xsl:value-of select="$tkchinh/CT3/ct3_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT3/ct3_1/ngayGiayTo,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT3/ct3_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT3/ct3_1/noiCap"/></p>
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
						<td class="align-l">A. Pháp nhân </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/phapNhan = 'true' or $tkchinh/CT3/ct3_4/phapNhan = '1'" >x</xsl:if>]</td>
							<td class="align-l">C. Cá nhân hành nghề độc lập </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/caNhan = 'true' or $tkchinh/CT3/ct3_4/caNhan = '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td class="align-l">B. Liên danh không tạo pháp nhân</td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/lienDanh = 'true' or $tkchinh/CT3/ct3_4/lienDanh = '1'" >x</xsl:if>]</td>
							<td class="align-l">D. Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT3/neuKhac"/>)</td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT3/ct3_4/khac = 'true' or $tkchinh/CT3/ct3_4/khac = '1'" >x</xsl:if>]</td>
					</tr>
				</table>
			   </div>
			    <div class="align-l">
					<p><b>4. Nội dung miễn, giảm thuế:</b> </p>
					<p>4.1. Số thuế dự kiến đề nghị miễn, giảm (ghi rõ số tiền): <xsl:value-of select="$tkchinh/CT4/ct4_1_soThue"/></p>
					<p>4.2. Mức thuế suất đề nghị áp dụng (trong trường hợp đề nghị áp dụng mức thuế suất giảm): <xsl:value-of select="$tkchinh/CT4/ct4_2_thueSuat"/></p>
					<p>4.3. Thời gian phát sinh thu nhập: Từ ngày <xsl:value-of select="$tkchinh/CT4/ct4_3/tuNgay"/> đến ngày <xsl:value-of select="$tkchinh/CT4/ct4_3/denNgay"/></p>
					
				</div>
				<div class="align-l">
					<p><b>5. Thông tin về giao dịch phát sinh thu nhập liên quan đến áp dụng Hiệp định thuế:</b> </p>
					<p>5.1.	Giải trình tóm tắt về giao dịch: <xsl:value-of select="$tkchinh/CT5/giaiTrinhTT"/></p>
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
	 <xsl:call-template name="tkhaiFooter_02_TBH_TB_TT80"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

