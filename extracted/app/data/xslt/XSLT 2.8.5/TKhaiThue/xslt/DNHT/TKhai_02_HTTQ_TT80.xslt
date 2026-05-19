<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:ihtkk="vn.com.seatechit.genxmlservice.taxviewpdf.FunctionXSLT"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
				xmlns:lxslt="http://xml.apache.org/xslt"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:result="http://www.example.com/results"
				extension-element-prefixes="result xsl xsi ihtkk">
	<xsl:include href="data/xslt/XSLT 2.8.5/TKhaiThue/include/TKhaiHeader.xsl"/>
	<xsl:include href="data/xslt/XSLT 2.8.5/TKhaiThue/include/tkhaifooter.xsl"/>
	<xsl:include href="data/xslt/XSLT 2.8.5/TKhaiThue/common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_02_HTQT_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/HTQT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			
               <div class="align-l">
			    <p><b>I. ĐỐI TƯỢNG ĐỀ NGHỊ:</b></p>
			   <p><b>1. Người nộp thuế:</b>[<xsl:if test="$tkchinh/CT_I_1/doiTuong = 'true' or $tkchinh/CT_I_1/doiTuong = '1'" >x</xsl:if>]</p>
			   </div>
				<table class="tkhai_table" border="1">
					<tr>
						<td class="align-c"> <p>1.1</p></td>
						<td class="align-l" colspan="4">
							<p>Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_I_1/ct1_1/tenDoiTuong"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_1/giayPhepKD = 'true' or $tkchinh/CT_I_1/ct1_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>CMND/CCCD</i>[<xsl:if test="$tkchinh/CT_I_1/ct1_1/canCuoc = 'true' or $tkchinh/CT_I_1/ct1_1/canCuoc = '1'" >x</xsl:if>]<i> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hộ chiếu</i>[<xsl:if test="$tkchinh/CT_I_1/ct1_1/hoChieu = 'true' or $tkchinh/CT_I_1/ct1_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT_I_1/ct1_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_I_1/ct1_1/ngayCap,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT_I_1/ct1_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_I_1/ct1_1/noiCap"/></p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.2</p></td>
						<td class="align-l" colspan="4">
							<p>Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/CT_I_1/ct1_2_tenSuDung"/></p>
						</td>
					</tr>
					
					<tr>
						<td class="align-c" rowspan = '3'> <p>1.3</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý
							
						</td>
					</tr>
					<tr>
								<td class="align-l"> Pháp nhân </td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT_I_1/ct1_3/phapNhan = 'true' or $tkchinh/CT_I_1/ct1_3/phapNhan = '1'" >x</xsl:if>]</td>
								<td class="align-l">Cá nhân hành nghề độc lập </td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT_I_1/ct1_3/caNhan = 'true' or $tkchinh/CT_I_1/ct1_3/caNhan = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
								<td class="align-l">Liên danh không tạo pháp nhân</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT_I_1/ct1_3/lienDanh = 'true' or $tkchinh/CT_I_1/ct1_3/lienDanh = '1'" >x</xsl:if>]</td>
								<td class="align-l">Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT_I_1/ct1_3/neuRo"/>)</td>
								<td class="align-c">[<xsl:if test="$tkchinh/CT_I_1/ct1_3/khac = 'true' or $tkchinh/CT_I_1/ct1_3/khac = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-c"> <p>1.4a</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ tại Việt Nam: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_DiaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_SDT"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_Fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_Email"/></p>
							<p>Địa chỉ trên là: </p>
							<p>
								<i>Trụ sở chính</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_4a/ct1_4a_truSo = 'true' or $tkchinh/CT_I_1/ct1_4a/ct1_4a_truSo = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nhà ở thường trú</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_4a/ct1_4a_noiTTru = 'true' or $tkchinh/CT_I_1/ct1_4a/ct1_4a_noiTTru = '1'" >x</xsl:if>] 
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Khác</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_4a/ct1_4a_khac = 'true' or $tkchinh/CT_I_1/ct1_4a/ct1_4a_khac = '1'" >x</xsl:if>] Nêu rõ: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4a/ct1_4a_NeuRo"/>
							</p>
						</td>
					</tr>		
					<tr>
						<td class="align-c"> <p>1.4b</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ giao dịch hoặc làm việc tại Việt Nam <i>(nếu khác với địa chỉ nêu trên)</i>: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_tenTinh"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_DiaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_SDT"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_Fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_I_1/ct1_4b/ct1_4b_Email"/></p>	
						</td>
					</tr>	
					<tr>
						<td class="align-c" rowspan="2"> <p>1.5</p></td>
						<td class="align-l" colspan="4">
							<p>Quốc tịch:</p>
						</td>
					</tr>
					<tr>
						
						<td class="align-l" >
							<p><i>Việt Nam</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_5/vietNam = 'true' or $tkchinh/CT_I_1/ct1_5/vietNam = '1'" >x</xsl:if>] </p>
						</td>
						<td class="align-l" >
							<p><i>Nước ký kết</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_5/nuocKK = 'true' or $tkchinh/CT_I_1/ct1_5/nuocKK = '1'" >x</xsl:if>]</p>
						</td>
						<td class="align-l" colspan="2">
							<p><i>Nước khác</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_5/nuocKhac = 'true' or $tkchinh/CT_I_1/ct1_5/nuocKhac = '1'" >x</xsl:if>] <xsl:value-of select="$tkchinh/CT_I_1/ct1_5/ten_nuocKhac"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>1.6</p></td>
						<td class="align-l" colspan="4">
							<p>Mã số thuế tại Việt Nam: <xsl:value-of select="$tkchinh/CT_I_1/ct1_6/mst_taiVN"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.7a</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7a/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7a/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7a/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7a/email"/></p>	
							<p>Địa chỉ trên là: </p>
							<p>
								<i>Văn phòng</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_7a/ct1_7a_VPhong = 'true' or $tkchinh/CT_I_1/ct1_7a/ct1_7a_VPhong = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Cơ sở thường trú</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_7a/ct1_7a_TTru = 'true' or $tkchinh/CT_I_1/ct1_7a/ct1_7a_TTru = '1'" >x</xsl:if>]
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Nơi làm việc</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_7a/ct1_7a_noiLV = 'true' or $tkchinh/CT_I_1/ct1_7a/ct1_7a_noiLV = '1'" >x</xsl:if>]&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<i>Khác</i> [<xsl:if test="$tkchinh/CT_I_1/ct1_7a/ct1_7a_noikhac = 'true' or $tkchinh/CT_I_1/ct1_7a/ct1_7a_noikhac = '1'" >x</xsl:if>] Nêu rõ: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7a/ct1_7a_NeuRo"/>
							</p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>1.7b</p></td>
						<td class="align-l" colspan="4">
							<p>Địa chỉ giao dịch tại Nước ký kết<i>(nếu khác với địa chỉ nêu trên)</i>: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7/ct1_7b_diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7/ct1_7b_soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7/ct1_7b_fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_I_1/ct1_7/ct1_7b_email"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>1.8</p></td>
						<td class="align-l" colspan="4">
							<p>Mã số thuế tại Nước ký kết (nếu rõ): <xsl:value-of select="$tkchinh/CT_I_1/ct1_8/mst_nuocKK"/> </p>
						</td>
					</tr>						
				</table>
				
				<div class="align-l"><p><b>2. Đại diện được uỷ quyền:</b>[<xsl:if test="$tkchinh/CT_I_2/daiDienUQ = 'true' or $tkchinh/CT_I_2/daiDienUQ = '1'" >x</xsl:if>]</p>
				<table class="tkhai_table" border="1">
					<tr>
						<td class="align-c"> <p>2.1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_I_2/ct2_1/tenUyQuyen"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT_I_2/ct2_1/giayPhepKD = 'true' or $tkchinh/CT_I_2/ct2_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>CMND/CCCD</i>[<xsl:if test="$tkchinh/CT_I_2/ct2_1/canCuoc = 'true' or $tkchinh/CT_I_2/ct2_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p><i>Hộ chiếu</i>[<xsl:if test="$tkchinh/CT_I_2/ct2_1/hoChieu = 'true' or $tkchinh/CT_I_2/ct2_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT_I_2/ct2_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_I_2/ct2_1/ngayGiayTo,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT_I_2/ct2_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_I_2/ct2_1/noiCap"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>2.2</p></td>
						<td class="align-l" colspan = "4">
							<p>Địa chỉ: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_I_2/ct2_2/email"/></p>	
						</td>
					</tr>						
					<tr>
						<td class="align-c"> <p>2.3</p></td>
						<td class="align-l" colspan = "4">
							<p>Mã số thuế(nếu có): <xsl:value-of select="$tkchinh/CT_I_2/ct2_3/mst_UQuyen"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c"> <p>2.4</p></td>
						<td class="align-l" colspan = "4">
							<p>Giấy uỷ quyền số: <xsl:value-of select="$tkchinh/CT_I_2/ct2_4/so_giayUQ"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_I_2/ct2_4/ngay_giayUQ,'dd/mm/yyyy')"/> </p>
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
						<td class="align-c">[<xsl:if test="$tkchinh/CT_I_2/ct2_5/phapNhan = 'true' or $tkchinh/CT_I_2/ct2_5/phapNhan = '1'" >x</xsl:if>]</td>
						<td class="align-l">Cá nhân hành nghề phụ thuộc</td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT_I_2/ct2_5/caNhan = 'true' or $tkchinh/CT_I_2/ct2_5/caNhan = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">Liên danh không tạo pháp nhân</td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT_I_2/ct2_5/lienDanh = 'true' or $tkchinh/CT_I_2/ct2_5/lienDanh = '1'" >x</xsl:if>]</td>
						<td rowspan="2" class="align-l">Khác (Nêu rõ <xsl:value-of select="$tkchinh/CT_I_2/ct2_5/neuRo"/>)</td>
						<td rowspan="2" class="align-c">[<xsl:if test="$tkchinh/CT_I_2/ct2_5/khac = 'true' or $tkchinh/CT_I_2/ct2_5/khac = '1'" >x</xsl:if>]</td>
					</tr>
					<tr>
						<td class="align-l">Đại lý thuế </td>
						<td class="align-c">[<xsl:if test="$tkchinh/CT_I_2/ct2_5/daiLThue = 'true' or $tkchinh/CT_I_2/ct2_5/daiLThue = '1'" >x</xsl:if>]</td>
						
					</tr>
				</table>
			   </div>
			   
			   <div class="align-l"><p><b>II. ĐỐI TƯỢNG CHI TRẢ THU NHẬP</b></p>
				<table class="tkhai_table" border="1">
					<tr>
						<td class="align-c"> <p>1</p></td>
						<td class="align-l" colspan = "4">
							<p>Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_II/ct_1/tenDoiTuong"/></p>
							<p><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i> [<xsl:if test="$tkchinh/CT_II/ct_1/giayPhepKD = 'true' or $tkchinh/CT_II/ct_1/giayPhepKD = '1'" >x</xsl:if>]</p>
							<p><i>CMND/CCCD</i>[<xsl:if test="$tkchinh/CT_II/ct_1/canCuoc = 'true' or $tkchinh/CT_II/ct_1/canCuoc = '1'" >x</xsl:if>]</p>
							<p><i>Hộ chiếu</i>[<xsl:if test="$tkchinh/CT_II/ct_1/hoChieu = 'true' or $tkchinh/CT_II/ct_1/hoChieu = '1'" >x</xsl:if>]</p>
							<p>Số: <xsl:value-of select="$tkchinh/CT_II/ct_1/soGiayTo"/></p>
							<p>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_II/ct_1/ngayGiayTo,'dd/mm/yyyy')"/> tại <xsl:value-of select="$tkchinh/CT_II/ct_1/tai"/>. Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_II/ct_1/noiCap"/></p>
						</td>
					</tr>
					<tr>
						<td class="align-c"> <p>2</p></td>
						<td class="align-l" colspan = "4">
							<p>Địa chỉ: Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/CT_II/ct_2/tenTinh"/> Phường/xã: <xsl:value-of select="$tkchinh/CT_II/ct_2/tenPhuong"/> Địa chỉ: <xsl:value-of select="$tkchinh/CT_II/ct_2/diaChi"/></p>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_II/ct_2/soDThoai"/></p>
							<p>Số Fax: <xsl:value-of select="$tkchinh/CT_II/ct_2/fax"/> E-mail: <xsl:value-of select="$tkchinh/CT_II/ct_2/email"/></p>	
						</td>
					</tr>						
					<tr>
						<td class="align-c"> <p>3</p></td>
						<td class="align-l" colspan = "4">
							<p>Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/CT_II/ct_3/mst_doiTuong"/> </p>
						</td>
					</tr>	
					<tr>
						<td class="align-c" rowspan="4"> <p>4</p></td>
						<td class="align-l" colspan="4">
							Tư cách pháp lý:
						</td>
					</tr>	
					<tr>
						<td class="align-l"> Pháp nhân </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT_II/ct_4/phapNhan = 'true' or $tkchinh/CT_II/ct_4/phapNhan = '1'" >x</xsl:if>]</td>
							<td class="align-l">Cá nhân hành nghề phụ thuộc </td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT_II/ct_4/caNhan = 'true' or $tkchinh/CT_II/ct_4/caNhan = '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td class="align-l">Liên danh không tạo pháp nhân</td>
							<td class="align-c">[<xsl:if test="$tkchinh/CT_II/ct_4/lienDanh = 'true' or $tkchinh/CT_II/ct_4/lienDanh = '1'" >x</xsl:if>]</td>
							<td class="align-l">Khác <br/>(Nêu rõ <xsl:value-of select="$tkchinh/CT_II/ct_4/neuRo"/>)</td> 
							<td class="align-c">[<xsl:if test="$tkchinh/CT_II/ct_4/khac = 'true' or $tkchinh/CT_II/ct_4/khac = '1'" >x</xsl:if>]</td>
					</tr>
				</table>
			   </div>
			    <div class="align-l">
					<p><b>III. NỘI DUNG ĐỀ NGHỊ</b> </p>
					<p>1. Năm đề nghị áp dụng Hiệp định thuế: <xsl:value-of select='substring($tkchinh/CT_III/ct4_1_namDNghi,7,10)'/></p>
					<p>2. Đối tượng đề nghị khấu trừ thuế đã nộp ở nước ngoài điền các thông tin được ghi tại các mục dưới đây.</p>
					<p>2.1. Số thuế đề nghị khấu trừ trực tiếp: <xsl:value-of select="$tkchinh/CT_III/ct4_2_1/soKhauTru"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thu nhập chịu thuế ở nước ngoài: <xsl:value-of select="$tkchinh/CT_III/ct4_2_1/soThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại thu nhập: <xsl:value-of select="$tkchinh/CT_III/ct4_2_1/loaiThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thời gian phát sinh thu nhập: từ ngày<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_1/thoiGianPS_tu,'dd/mm/yyyy')"/></p> đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_1/thoiGianPS_den,'dd/mm/yyyy')"/>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thuế suất: <xsl:value-of select="$tkchinh/CT_III/ct4_2_1/thueSuat"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thuế đã nộp ở nước ngoài: <xsl:value-of select="$tkchinh/CT_III/ct4_2_1/thueDNop"/></p>
					<p>2.2. Số thuế khoán đề nghị khấu trừ: <xsl:value-of select="$tkchinh/CT_III/ct4_2_2/soThueKhoan"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thu nhập nhận được ở nước ngoài thuộc diện khoán thuế: <xsl:value-of select="$tkchinh/CT_III/ct4_2_2/soThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại thu nhập: <xsl:value-of select="$tkchinh/CT_III/ct4_2_2/loaiThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thời gian phát sinh thu nhập: từ ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_2/thoiGianPS_tu,'dd/mm/yyyy')"/></p> đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_2/thoiGianPS_den,'dd/mm/yyyy')"/>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thuế suất: <xsl:value-of select="$tkchinh/CT_III/ct4_2_2/thueSuat"/></p>
					<p>2.3. Số thuế đề nghị khấu trừ gián tiếp: <xsl:value-of select="$tkchinh/CT_III/ct4_2_3/soThueGTiep"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thu nhập chịu thuế ở nước ngoài: <xsl:value-of select="$tkchinh/CT_III/ct4_2_3/soThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Loại thu nhập: <xsl:value-of select="$tkchinh/CT_III/ct4_2_3/loaiThuNhap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thời gian phát sinh thu nhập: từ ngày<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_3/thoiGianPS_tu,'dd/mm/yyyy')"/></p> đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT_III/ct4_2_3/thoiGianPS_den,'dd/mm/yyyy')"/>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thuế suất<xsl:value-of select="$tkchinh/CT_III/ct4_2_2/thueSuat"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thuế đã nộp ở nước ngoài: <xsl:value-of select="$tkchinh/CT_III/ct4_2_3/thueDNop"/></p>
				</div>
				<div class="align-l">
					<p><b>IV. THÔNG TIN VỀ GIAO DỊCH PHÁT SINH THU NHẬP LIÊN QUAN ĐẾN SỐ THUẾ ĐỀ NGHỊ ÁP DỤNG HIỆP ĐỊNH THUẾ</b> </p>
					<p>1. Giải trình tóm tắt về giao dịch: <xsl:value-of select="$tkchinh/CT5/giaiTrinhTT"/></p>
					<p>2. Giải trình khác: <xsl:value-of select="$tkchinh/CT5/giaiTrinhKhac"/></p>
					<p>3. Tài liệu gửi kèm:</p>
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

		 <xsl:call-template name="tkhaiFooter_02_HTQT_TT80"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

