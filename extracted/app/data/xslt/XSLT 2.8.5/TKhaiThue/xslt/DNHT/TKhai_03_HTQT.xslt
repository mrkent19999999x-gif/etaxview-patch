<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>
 <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>	
		<xsl:variable name="pluc" select='HSoThueDTu/HSoKhaiThue/PLuc'/>		
		<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />		
		<xsl:call-template name="tkhaiHeader_03HTQT">
			<xsl:with-param name="mauTKhai"   select="'03/HTQT'"/>
			<xsl:with-param name="moTaBMau"   select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/moTaBMau"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">

		<table class="ttinnnt_table">
				<tr><br></br>						
					<td>
						<div style="width:100%;text-align:center"><b>GIẤY ÐỀ NGHỊ XÁC NHẬN SỐ THUẾ ÐÃ NỘP TẠI VIỆT NAM THEO HIỆP ÐỊNH THUẾ GIỮA VIỆT NAM VÀ 
						<xsl:value-of select="translate ($tkchinh/ten_NuocKyKet,$smallcase,$uppercase)"/> </b>
						</div>						
					</td>						
				</tr>
				<tr>
					<td><div style="width:100%;text-align:center"><b><i>(Dành cho các tổ chức, cá nhân là đối tượng cư trú nước ngoài) </i></b></div>
					</td>
				</tr>
				<tr>
					<td>
						<div style="width:100%;text-align:center"><b>NNT nộp hồ sơ theo ủy quyền </b>
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/uyQuyen = 'true' or $tkchinh/uyQuyen = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
						</div>						
					</td>
				</tr>

				<tr>
					<td>
						<div style="width:100%;text-align:left"><i>Đề nghị đánh dấu (x) vào ô trống thích hợp: </i></div>					
					</td>
				</tr>				
				
				<tr>				
				  <td colspan="2">
					<div style="width:100%; text-align:left">
					  <span style="margin-right: 60px;">
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							<xsl:if test="$tkchinh/Header/vietNam = 'true' or $tkchinh/Header/vietNam = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Áp dụng cho tổ chức</i>
						</input>
					  </span>
					  
					  <span>
						
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						<xsl:if test="$tkchinh/Header/nuocNgoai = 'true' or $tkchinh/Header/nuocNgoai = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Áp dụng cho cá nhân</i>
						</input>
					  </span>
					</div>
				  </td>
				</tr>	

			</table>

				<div><b>I. ĐỐI TƯỢNG ĐỀ NGHỊ</b></div>
				<div><b>1. Người nộp thuế</b>
					<input disabled="disabled" type="checkbox" style="transform: scale(1.5); margin-left: 10px;">
								  <xsl:if test="$tkchinh/CT_I/CTI_1_NNT/nnt = 'true' or $tkchinh/CT_I/CTI_1_NNT/nnt = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								  </xsl:if>
					</input>
				</div>
					<table class="tkhai_table"  >								
    					<tr>
							<td class="align-c">1.1</td>
							<td class="align-l" colspan="12">
								<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
									Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_1/tenDayDu"/>		
								</div>																
							
								<div style="display: flex; align-items: left;"><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i>
										<input type="checkbox" disabled="true" 
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_1/giayCNDKKD = 'true' or $tkchinh/TT_ToChucCaNhanDHT/giayCNDKKD = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input> <br></br>
										<i>Hộ chiếu</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_1/hoChieu = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_1/hoChieu = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>										
								</div>
								<div>
									Số: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_1/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
									Ngày cấp: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_1/ngayCap"/> <br></br>
									Tại: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_1/tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_1/coQuanCap"/>								  
								</div>								  								
							</td>					
						</tr>
						<tr>
							<td class="align-c">1.2</td>
							<td class="align-l" colspan="12">Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/ct1_2_tenSuDung"/>
							</td>
						</tr>
						
						<tr>
							<td class="align-c">1.3.a</td>
							<td class="align-l" colspan="12">Địa chỉ tại Việt Nam: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/diaChi"/>;&#160; <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/E-mail"/></p>
							<p>Địa chỉ trên là: </p>
								<p>
									<i>Văn phòng ĐD</i> 
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/vanPhongDaiDien = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_3a/vanPhongDaiDien = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>

								&#160;&#160;&#160;<i>Cơ sở thường trú </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/coSoThuongTru = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_3a/coSoThuongTru = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>								

								&#160;&#160;&#160;<i>Nơi làm việc </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/noiLamViec = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_3a/noiLamViec = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>								

								&#160;&#160;&#160;<i>Nơi lưu trú </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/noiCuTru = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_3a/noiCuTru = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>																				
								
								<br></br><i>Khác</i> 
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/khac = 'true' or $tkchinh/CT_I/CTI_1_NNT/CT1_3a/khac = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> 
								</input>
								&#160;&#160;&#160;<i>Nêu rõ: </i><xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3a/neuRo"/>	
								</p>
									</td>
						</tr>
						
						<tr>
							<td class="align-c">1.3.b</td>
							<td class="align-l" colspan="12">Địa chỉ giao dịch tại Việt Nam: 
							<xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/diaChi"/>;&#160; <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_3b/E-mail"/></p>
							</td>
						</tr>
						
						<tr>
							<td class="align-c">1.4</td>
							<td class="align-l" colspan="12">Mã số thuế tại Việt Nam (nếu có): <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/ct1_4_mst_VN"/>
							</td>
						</tr>
						
						<tr>
							<td class="align-c">1.5</td>
							<td class="align-l" colspan="12">Thời gian có mặt tại Việt Nam hoặc thực hiện hoạt động tại Việt Nam: 
								<p>Từ ngày: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_5/tuNgay"/>&#160;&#160;&#160; Đến ngày: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_5/denNgay"/></p>
							
							</td>
						</tr>
						
						<tr>
							<td class="align-c">1.6</td>
							<td class="align-l" colspan="12">
								Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_6/diaChiNKK"/>
								<p>Số điện thoại:<xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_6/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_6/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/CT1_6/E-mail"/></p>								
							</td>
						</tr>
						
						<tr>
							<td class="align-c" rowspan="4">1.7</td>
							<td class="align-l" colspan="12">Tư cách pháp lý</td>
						</tr>
						<tr> 
							<td colspan="3"> <i>Pháp nhân</i> </td>					
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/T1_7/phapNhan = 'true' or $tkchinh/CT_I/CTI_1_NNT/T1_7/phapNhan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
							<td colspan="3"><i>Cá nhân hành nghề độc lập</i></td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/T1_7/caNhanDL = 'true' or $tkchinh/CT_I/CTI_1_NNT/T1_7/caNhanDL = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
						</tr>
						<tr>
							<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/T1_7/lienDanhKhongPN = 'true' or $tkchinh/CT_I/CTI_1_NNT/T1_7/lienDanhKhongPN = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
								<i>Cá nhân hành nghề phụ thuộc</i>
							</td>
							<td class="align-c" colspan="3">								
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/T1_7/caNhanPT = 'true' or $tkchinh/CT_I/CTI_1_NNT/T1_7/caNhanPT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
						</tr>
						<tr>
							<td colspan="3">
								<i>Khác</i>								
								<p><i>Nêu rõ: <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/T1_7/neuRo"/></i></p>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_1_NNT/T1_7/khac = 'true' or $tkchinh/CT_I/CTI_1_NNT/T1_7/khac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>
						
						<tr>
							<td class="align-c">1.8</td>
							<td class="align-l" colspan="12">Mã số thuế tại Nước ký kết (nếu có): <xsl:value-of select="$tkchinh/CT_I/CTI_1_NNT/ct1_8_mst_NKK"/>
							</td>
						</tr>
						
					   </table>		
	                      	
						<div> <b>2. Đại diện được ủy quyền: </b> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/daiDienUQ = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/daiDienUQ = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
							
						</div>
						<table class="tkhai_table"  >											
    					<tr>
							<td class="align-c">2.1</td>
							<td class="align-l" colspan="12">
								<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
									Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/tenDayDu"/>		
								</div>																
							
								<div style="display: flex; align-items: left;"><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/giayCNDKKD = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/giayCNDKKD = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>&#160;&#160;&#160;&#160;<i>Hộ chiếu</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/hoChieu = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/hoChieu = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
										&#160;&#160;&#160;&#160;<i>CMND/CCCD</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/cMND_CCCD = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/cMND_CCCD = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
								</div>
								<div>
									Số: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Ngày cấp: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/ngayCap"/> <br></br>
									Tại: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_1/coQuanCap"/>								  
								</div>								  								
							</td>					
						</tr>
						
						<tr>
							<td class="align-c">2.2</td>
							<td class="align-l" colspan="12">Địa chỉ: 
							<xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/diaChi"/>&#160; <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/ten_xa_phuong"/>&#160;<xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_2/E-mail"/></p>
							</td>
						</tr>
						
							<tr>
							<td class="align-c">2.3</td>
							<td class="align-l" colspan="12">Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/ct2_3_mst"/>
							</td>
						</tr>
						
						
						<tr>
							<td class="align-c" rowspan="4">2.4</td>
							<td class="align-l" colspan="12">Tư cách pháp lý: </td>
						</tr>
						<tr> 
							<td colspan="3"> <i>Pháp nhân</i> </td>					
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/phapNhan = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/phapNhan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
							
							<td colspan="3">
								<i>Cá nhân hành nghề phụ thuộc</i>
							</td>
							<td class="align-c" colspan="3">								
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/caNhanPT = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/caNhanPT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>	
						</tr>
						<tr>
							<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/lienDanhKhongPN = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/lienDanhKhongPN = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							
							<td colspan="3">
								<i>Khác</i>								
								<p><i>Nêu rõ: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/neuRo"/></i></p>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/khac = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/khac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
	
						</tr>
						<tr>
							<td colspan="3"><i>Đại lý thuế (nếu có)</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/daiLyThue = 'true' or $tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/daiLyThue = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>
					   </table>	
					   
					   <div> <b>II. ĐỐI TƯỢNG CHI TRẢ THU NHẬP</b></div>
						<div>
						<tr> 							
							<td class="align-c" colspan="3">
								<input type="radio" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_II/mot_DT = 'true' or $tkchinh/CT_II/mot_DT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
								<span>&#160; 1 đối tượng chi trả thu nhập</span>
							</td>
							
							<td class="align-c">								
								<input type="radio" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_II/nhieu_DT = 'true' or $tkchinh/CT_II/nhieu_DT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
								<span>&#160; Nhiều đối tượng chi trả thu nhập</span>
							</td>		
						</tr> </div> 			
						
					<xsl:if test="$tkchinh/CT_II/mot_DT = 'true' or $tkchinh/CT_II/mot_DT = '1'">
							<table class="tkhai_table"  >											
								<tr>
									<td class="align-c">1</td>
									<td class="align-l" colspan="12">
										<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
											Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_II/CT_1/tenDayDu"/>		
										</div>																
									
										<div style="display: flex; align-items: left;"><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i>
												<input type="checkbox" disabled="true"
													   style="transform: scale(1.5); margin-left: 10px;">
												<xsl:if test="$tkchinh/CT_II/CT_1/giayCNDKKD = 'true' or $tkchinh/CT_II/CT_1/giayCNDKKD = '1'">
												  <xsl:attribute name="checked">checked</xsl:attribute>
												</xsl:if> </input>&#160;&#160;&#160;&#160;<i>Hộ chiếu</i>
												<input type="checkbox" disabled="true"  
													   style="transform: scale(1.5); margin-left: 10px;">
												<xsl:if test="$tkchinh/CT_II/CT_1/hoChieu = 'true' or $tkchinh/CT_II/CT_1/hoChieu = '1'">
												  <xsl:attribute name="checked">checked</xsl:attribute>
												</xsl:if></input>
												&#160;&#160;&#160;&#160;<i>CMND/CCCD</i>
												<input type="checkbox" disabled="true"
													   style="transform: scale(1.5); margin-left: 10px;">
												<xsl:if test="$tkchinh/CT_II/CT_1/cMND_CCCD = 'true' or $tkchinh/CT_II/CT_1/cMND_CCCD = '1'">
												  <xsl:attribute name="checked">checked</xsl:attribute>
												</xsl:if></input>
										</div>
										<div>
											Số: <xsl:value-of select="$tkchinh/CT_II/CT_1/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Ngày cấp: <xsl:value-of select="$tkchinh/CT_II/CT_1/ngayCap"/> <br></br>
											Tại: <xsl:value-of select="$tkchinh/CT_II/CT_1/tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_II/CT_1/coQuanCap"/>								  
										</div>								  								
									</td>					
								</tr>
								
								<tr>
									<td class="align-c">2</td>
									<td class="align-l" colspan="12">Địa chỉ: 
									<xsl:value-of select="$tkchinh/CT_II/CT_2/diaChi"/>,&#160; <xsl:value-of select="$tkchinh/CT_I/CT_II/CT_2/ten_xa_phuong"/>,&#160;<xsl:value-of select="$tkchinh/CT_II/CT_2/ten_tinh_tp"/>
									<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_II/CT_2/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_II/CT_2/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_II/CT_2/E-mail"/></p>
									</td>
								</tr>
								
									<tr>
									<td class="align-c">3</td>
									<td class="align-l" colspan="12">Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/CT_II/ct_3_mst"/>
									</td>
								</tr>
								
								<tr>
									<td class="align-c" rowspan="4">4</td>
									<td class="align-l" colspan="12">Tư cách pháp lý</td>
								</tr>
								<tr> 
									<td colspan="3"> <i>Pháp nhân</i> </td>					
									<td class="align-c" colspan="3">
										<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_II/CT_4/phapNhan = 'true' or $tkchinh/CT_II/CT_4/phapNhan = '1'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>	
									</td>
									
									<td colspan="3">
										<i>Cá nhân hành nghề phụ thuộc</i>
									</td>
									<td class="align-c" colspan="3">								
										<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_II/CT_4/caNhanPT = 'true' or $tkchinh/CT_II/CT_4/caNhanPT = '1'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>

									</td>	
								</tr>
								<tr>
									<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
									<td class="align-c" colspan="3">					
										<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_II/CT_4/lienDanhKhongPN = 'true' or $tkchinh/CT_II/CT_4/lienDanhKhongPN = '1'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
									</td>
									
									<td colspan="3">
										<i>Khác</i>								
										<p><i>Nêu rõ: <xsl:value-of select="$tkchinh/CT_I/CTI_2_UyQuyen/CT2_4/neuRo"/></i></p>
									</td>
									<td class="align-c" colspan="3">
										<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_II/CT_4/khac = 'true' or $tkchinh/CT_II/CT_4/khac = '1'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
									</td>
								</tr>
						   </table>	
							
						<div><b>III. Nội dung đề nghị: </b></div>						
						<div>1. Năm đề nghị áp dụng Hiệp định thuế: <xsl:value-of select="$tkchinh/CT_III/ct1_namDN"/></div>
						<div>2. Đối tượng đề nghị, tuỳ theo mục đích xin áp dụng Hiệp định thuế, lựa chọn và điền các thông tin được ghi tại các mục từ mục a đến b dưới đây.</div>	
						<div><b>a. Xác nhận số thuế đã nộp tại Việt Nam: </b>
							<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							  <xsl:if test="$tkchinh/CT_III/CT_2/CT_2a/soThueDN = 'true' or $tkchinh/CT_III/CT_2/CT_2a/soThueDN = '1'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							  </xsl:if></input>
						</div>
						<div>a.1. Số thu nhập chịu thuế tại Việt Nam: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2a/soThuNhapChiuThue"/></div>
						<div>a.2. Loại thu nhập: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2a/tenLoaiTN"/></div>
						<div>a.3. Thời gian phát sinh thu nhập: từ ngày <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2a/tuNgayPS"/> &#160;&#160;&#160;    đến ngày <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2a/denNgayPS"/></div>
						<div>a.4. Số thuế đã nộp: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2a/soThueDaNop"/></div>
					
						<div><b>b. Xác nhận số thuế phát sinh tại Việt Nam nhưng không phải nộp do được hưởng ưu đãi thuế: </b>	
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/CT_III/CT_2/CT_2b/soThuePS = 'true' or $tkchinh/CT_III/CT_2/CT_2b/soThuePS = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
						</div>	
						<div>b.1. Số thu nhập thuộc diện được ưu đãi: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2b/soTNDuocUD"/></div>
						<div>b.2. Loại thu nhập: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2b/tenLoaiTN"/></div>
						<div>b.3. Thời gian phát sinh thu nhập: từ ngày <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2b/tuNgayPS"/> &#160;&#160;&#160;    đến ngày <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2b/denNgayPS"/></div>
						<div>b.4. Số thuế/thuế suất ưu đãi: <xsl:value-of select="$tkchinh/CT_III/CT_2/CT_2b/soThueUuDai"/></div>					

						<div><b>IV. Thông tin về giao dịch phát sinh thu nhập liên quan đến số thuế đề nghị áp dụng Hiệp định thuế</b></div>
						<div>1 Giải trình tóm tắt về giao dịch: </div>
						<div><xsl:value-of select="$tkchinh/CT_IV/giaiTrinhTT"/>....................... </div>
						<div>2 Giải trình khác: </div>
						<div><xsl:value-of select="$tkchinh/CT_IV/giaiTrinhKhac"/>....................... </div>
						<div>3 Tài liệu gửi kèm (ghi rõ tên tài liệu, bản chính, bản sao): </div>
							<table class="tkhai_table">
								<xsl:for-each select="$tkchinh/CT_IV/TaiLieuGuiKem/TaiLieu">
									<xsl:variable name="currentRows" select="position()"/>
										<tr>
											<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
											<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
										</tr>
								</xsl:for-each>
							</table>
					</xsl:if>				
					
					<xsl:if test="$tkchinh/CT_II/nhieu_DT = 'true' or $tkchinh/CT_II/nhieu_DT = '1'">
						<div> <i>(Chi tiết đối tượng chi trả thu nhập trên bảng kê kèm theo Giấy đề nghị này)</i></div>				
						<div><b>III. Nội dung đề nghị: </b></div>						
						<div>1. Năm đề nghị áp dụng Hiệp định thuế: <xsl:value-of select="$tkchinh/CT_III/ct1_namDN"/></div>
						<div>2. Đối tượng đề nghị, tuỳ theo mục đích xin áp dụng Hiệp định thuế, lựa chọn và điền các thông tin được ghi tại các mục từ mục a đến b dưới đây.</div>	
						<div><b>a. Xác nhận số thuế đã nộp tại Việt Nam: </b>
							<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							<xsl:if test="$tkchinh/CT_III/CT_2/CT_2a/soThueDN = 'true' or $tkchinh/CT_III/CT_2/CT_2a/soThueDN = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
						</div>
						<div> <i>(Chi tiết Xác nhận số thuế đã nộp tại Việt Nam trên bảng kê kèm theo Giấy đề nghị này)</i></div>							
						
						<div><b>b. Xác nhận số thuế phát sinh tại Việt Nam nhưng không phải nộp do được hưởng ưu đãi thuế: </b>	
							<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							<xsl:if test="$tkchinh/CT_III/CT_2/CT_2b/soThuePS = 'true' or $tkchinh/CT_III/CT_2/CT_2b/soThuePS = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:if></input>
						</div>	
						<div> <i> (Chi tiết Xác nhận số thuế phát sinh tại Việt Nam nhưng không phải nộp do được hưởng ưu đãi thuế trên bảng kê kèm theo Giấy đề nghị này)</i></div>				

						<div><b>IV. Thông tin về giao dịch phát sinh thu nhập liên quan đến số thuế đề nghị áp dụng Hiệp định thuế</b></div>
						<div>1 Giải trình tóm tắt về giao dịch: </div>
						<div><xsl:value-of select="$tkchinh/CT_IV/giaiTrinhTT"/>....................... </div>
						<div>2 Giải trình khác: </div>
						<div><xsl:value-of select="$tkchinh/CT_IV/giaiTrinhKhac"/>....................... </div>
						<div>3 Tài liệu gửi kèm (ghi rõ tên tài liệu, bản chính, bản sao): </div>
						<table class="tkhai_table">
							<xsl:for-each select="$tkchinh/CT_IV/TaiLieuGuiKem/TaiLieu">
								<xsl:variable name="currentRows" select="position()"/>
									<tr>
										<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
										<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
									</tr>
							</xsl:for-each>
						</table>
					</xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>
	 <xsl:call-template name="tkhaiFooter_03HTQT"/>

	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>

		</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
