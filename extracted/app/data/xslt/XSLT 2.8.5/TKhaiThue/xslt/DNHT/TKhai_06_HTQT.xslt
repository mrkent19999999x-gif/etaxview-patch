<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>
 <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>		
		<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<!--<xsl:variable name="ghichuTK"   select="'Đề nghị đánh dấu (x) vào ô trống thích hợp:'"/>-->
		<xsl:call-template name="tkhaiHeader_06HTQT">
			<xsl:with-param name="mauTKhai"   select="'06/HTQT'"/>
			<xsl:with-param name="moTaBMau"   select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/moTaBMau"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">

		<table class="ttinnnt_table">
			<tr>
				<td style="width: 45%" class="align-c" align="top">
							<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, 
							Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> 
							tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> 
							năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
			</tr>
				
			<tr>
					<td><div style="width:100%;text-align:center"><b>Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></b></div>
					</td>
			</tr>
				<tr>					
					<td>
						<div style="width:100%;text-align:center"><b>GIẤY ÐỀ NGHỊ XÁC NHẬN CƯ TRÚ CỦA VIỆT NAM </b></div>						
					</td>						
				</tr>
				<tr>
					<td><div style="width:100%;text-align:center"><b><i>(Dành cho các tổ chức, cá nhân là đối tượng cư trú của Việt Nam) </i></b></div>
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
				  <td colspan="2">
					<div style="width:100%; text-align:center">
					  <span style="margin-right: 60px;">
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							<xsl:if test="$tkchinh/CT_I/laNNT = 'true' or $tkchinh/CT_I/laNNT = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Đối tượng đang là NNT</i>
						</input>
					  </span>
					</div>
					<div style="width:100%; text-align:center">					
					  <span>
						
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						<xsl:if test="$tkchinh/CT_I/khongLaNNT = 'true' or $tkchinh/CT_I/khongLaNNT = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Đối tượng không phải là đối tượng khai, nộp thuế</i>
						</input>
					  </span>
					</div>
				  </td>
				</tr>	
				<tr>
				<td>
				<br></br><div><b>I. Người nộp thuế</b>
					<input disabled="disabled" type="checkbox" style="transform: scale(1.5); margin-left: 10px;">
								  <xsl:if test="$tkchinh/CT_I/nnt = 'true' or $tkchinh/CT_I/nnt = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								  </xsl:if>
					</input>
				</div>
				</td>
				</tr>
				<tr>
					<td>
						<div style="width:100%;text-align:left"><b>Đánh dấu (x) vào ô trống thích hợp: </b></div>					
					</td>
				</tr>				
				
				<tr>				
				  <td colspan="2">
					<div style="width:100%; text-align:left">
					  <span style="margin-right: 60px;">
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
							<xsl:if test="$tkchinh/CT_I/toChuc = 'true' or $tkchinh/CT_I/toChuc = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Áp dụng cho tổ chức</i>
						</input>
					  </span>
					  
					  <span>
						
						<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						<xsl:if test="$tkchinh/CT_I/caNhan = 'true' or $tkchinh/CT_I/caNhan = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						&#160;&#160;&#160;<i>Áp dụng cho cá nhân</i>
						</input>
					  </span>
					</div>
				  </td>
				</tr>	

			</table>

					<table class="tkhai_table"  >								
    					<tr>
							<td class="align-c">1</td>
							<td class="align-l" colspan="12">
								<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
									Tên đầy đủ: <xsl:value-of select="$tkchinh/CT_I/CT1_1/tenDayDu"/>		
								</div>																
							
								<div style="display: flex; align-items: left;"><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT1_1/giayCNDKKD = 'true' or $tkchinh/CT_I/CT1_1/giayCNDKKD = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input> <br></br>
										<i>Hộ chiếu</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT1_1/hoChieu = 'true' or $tkchinh/CT_I/CT1_1/hoChieu = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>	
										&#160;&#160;&#160;&#160;<i>CMND/CCCD</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT1_1/cMND_CCCD = 'true' or $tkchinh/CT_I/CT1_1/cMND_CCCD = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>										
								</div>
								<div>
									Số: <xsl:value-of select="$tkchinh/CT_I/CT1_1/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
									Ngày cấp: <xsl:value-of select="$tkchinh/CT_I/CT1_1/ngayCap"/> <br></br>
									Tại: <xsl:value-of select="$tkchinh/CT_I/CT1_1/tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									Cơ quan cấp: <xsl:value-of select="$tkchinh/CT_I/CT1_1/coQuanCap"/>								  
								</div>								  								
							</td>					
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td class="align-l" colspan="12">Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/CT_I/ct_1_tenSuDung"/>
							</td>
						</tr>
						
						<tr>
							<td class="align-c" rowspan="4">3</td>
							<td class="align-l" colspan="12">Tư cách pháp lý</td>
						</tr>
						<tr> 
							<td colspan="3"> <i>Pháp nhân</i> </td>					
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT3/phapNhan = 'true' or $tkchinh/CT_I/CT3/phapNhan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
							<td colspan="3"><i>Cá nhân hành nghề độc lập</i></td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT3/caNhanDL = 'true' or $tkchinh/CT_I/CT3/caNhanDL = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
						</tr>
						<tr>
							<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT3/lienDanhKhongPN = 'true' or $tkchinh/CT_I/CT3/lienDanhKhongPN = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
								<i>Cá nhân hành nghề phụ thuộc</i>
							</td>
							<td class="align-c" colspan="3">								
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT3/caNhanPT = 'true' or $tkchinh/CT_I/CT3/caNhanPT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
						</tr>
						<tr>
							<td colspan="3">
								<i>Khác</i>								
								<p><i>Nêu rõ: <xsl:value-of select="$tkchinh/CT_I/CT3/neuRo"/></i></p>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT3/khac = 'true' or $tkchinh/CT_I/CT3/khac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>
						
						
						<tr>
							<td class="align-c">4.a</td>
							<td class="align-l" colspan="12">Địa chỉ tại Việt Nam: <xsl:value-of select="$tkchinh/CT_I/CT_4a/diaChi"/>;&#160; <xsl:value-of select="$tkchinh/CT_I/CT_4a/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/CT_I/CT_4a/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I/CT_4a/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CT_4a/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CT_4a/E-mail"/></p>
							<p>Địa chỉ trên là: </p>
								<p>
									<i>Trụ sở chính</i> 
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_4a/truSoChinh = 'true' or $tkchinh/CT_I/CT_4a/truSoChinh = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>

								&#160;&#160;&#160;<i>Nhà ở thường trú </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_4a/nhaOThuongTru = 'true' or $tkchinh/CT_I/CT_4a/nhaOThuongTru = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>								

								<br></br><i>Khác</i> 
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_4a/khac = 'true' or $tkchinh/CT_I/CT_4a/khac = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> 
								</input>
								&#160;&#160;&#160;<i>Nêu rõ: </i><xsl:value-of select="$tkchinh/CT_I/CT_4a/neuRo"/>	
								</p>
									</td>
						</tr>
						
						<tr>
							<td class="align-c">4.b</td>
							<td class="align-l" colspan="12">Địa chỉ giao dịch tại Việt Nam: 
							<xsl:value-of select="$tkchinh/CT_I/CT_4b/diaChi"/>;&#160; <xsl:value-of select="$tkchinh/CT_I/CT_4b/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/CT_I/CT_4b/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/CT_I/CT_4b/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CT_4b/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CT_4b/E-mail"/></p>
							</td>
						</tr>
						
						<tr>
							<td class="align-c" rowspan="2">5</td>
							<td class="align-l" colspan="12">Quốc tịch: </td>
						</tr>
						<tr>
							<td class="align-l" colspan="2"><i>Việt Nam</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT_5/vietNam = 'true' or $tkchinh/CT_I/CT_5/vietNam = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
							<td class="align-l" colspan="2"><i>Nước kí kết</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/CT_5/nuocKyKet = 'true' or $tkchinh/CT_I/CT_5/nuocKyKet = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td class="align-l" colspan="8"><i>Nước khác</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">&#160;&#160;
							<xsl:if test="$tkchinh/CT_I/CT_5/nuocKhac = 'true' or $tkchinh/CT_I/CT_5/nuocKhac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							<i>Tên nước:</i> <xsl:value-of select="$tkchinh/CT_I/CT_5/ten_NuocKhac"/>
							</td>
						</tr>
						
						<tr>
							<td class="align-c">6</td>
							<td class="align-l" colspan="12">Mã số thuế tại Việt Nam (nếu có): <xsl:value-of select="$tkchinh/CT_I/ct_6_MST_VN"/>
							</td>
						</tr>
						
						<tr>
							<td class="align-c">7.a</td>
							<td class="align-l" colspan="12">
								Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/CT_I/CT_7a/diaChiNKK"/>
								<p>Số điện thoại:<xsl:value-of select="$tkchinh/CT_I/CT_7a/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CT_7a/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CT_7a/E-mail"/></p>								
							<p>Địa chỉ trên là: </p>
								<p>
									<i>Văn phòng ĐD</i> 
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_7a/vanPhongDaiDien = 'true' or $tkchinh/CT_I/CT_7a/vanPhongDaiDien = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>

								&#160;&#160;&#160;<i>Cơ sở thường trú </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_7a/coSoThuongTru = 'true' or $tkchinh/CT_I/CT_7a/coSoThuongTru = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>								

								&#160;&#160;&#160;<i>Nơi làm việc </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_7a/noiLamViec = 'true' or $tkchinh/CT_I/CT_7a/noiLamViec = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>								

								&#160;&#160;&#160;<i>Nơi lưu trú </i>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_7a/noiCuTru = 'true' or $tkchinh/CT_I/CT_7a/noiCuTru = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>																				
								
								<br></br><i>Khác</i> 
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/CT_I/CT_7a/khac = 'true' or $tkchinh/CT_I/CT_7a/khac = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> 
								</input>
								&#160;&#160;&#160;<i>Nêu rõ: </i><xsl:value-of select="$tkchinh/CT_I/CT_7a/neuRo"/>	
								</p>
							</td>
						</tr>
						<tr>
							<td class="align-c">7.b</td>
							<td class="align-l" colspan="12">
								Địa chỉ giao dịch tại Nước ký kết: <xsl:value-of select="$tkchinh/CT_I/CT_7b/diaChiNKK"/>
								<p>Số điện thoại:<xsl:value-of select="$tkchinh/CT_I/CT_7b/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/CT_I/CT_7b/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/CT_I/CT_7b/E-mail"/></p>								
							</td>
						</tr>
						
						
						<tr>
							<td class="align-c">8</td>
							<td class="align-l" colspan="12">Mã số thuế tại Nước ký kết (nếu có): <xsl:value-of select="$tkchinh/CT_I/ct_8_mst_NKK"/>
							</td>
						</tr>
						
					   </table>		
						
						<div>Năm đề nghị xác nhận đối tượng cư trú: <br></br>
							<span style="margin-right: 60px;"> Từ năm:<xsl:value-of select="$tkchinh/CT_I/NamDN/tuNam"/></span>
							<span>đến năm: <xsl:value-of select="$tkchinh/CT_I/NamDN/denNam"/></span>
							<br></br><span style="margin-right: 60px;"> Từ ngày:<xsl:value-of select="$tkchinh/CT_I/NamDN/tuNgay"/></span>
							<span>đến ngày: <xsl:value-of select="$tkchinh/CT_I/NamDN/denNgay"/></span>
						</div> 
						
						<div> Thời gian có mặt tại Việt Nam trong các năm xin xác nhận cư trú (chỉ áp dụng đối với cá nhân): <br></br>
							<xsl:value-of select="$tkchinh/CT_I/tGCoMatTaiVN/ChiTiet/TGCoMat"/>	
						</div> 
						
						<div> Nguồn thu nhập chủ yếu của bản thân cá nhân trong các năm nói trên phát sinh từ </div> 						
						<tr>
							<td class="align-l" colspan="2">Việt Nam<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/nguonThuNhap/vietNam = 'true' or $tkchinh/CT_I/nguonThuNhap/vietNam = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
							<td class="align-l" colspan="2">Nước ký kết<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_I/nguonThuNhap/nuocKyKet = 'true' or $tkchinh/CT_I/nguonThuNhap/nuocKyKet = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td class="align-l" colspan="8">Nước khác <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">&#160;&#160;
							<xsl:if test="$tkchinh/CT_I/nguonThuNhap/nuocKhac = 'true' or $tkchinh/CT_I/nguonThuNhap/nuocKhac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							<i>Tên nước:</i> <xsl:value-of select="$tkchinh/CT_I/nguonThuNhap/ten_NuocKhac"/>
							
							</td>
						</tr>						

						<div> <b>II. Đại diện được ủy quyền: </b> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/CT_II/daiDienUQ = 'true' or $tkchinh/CT_II/daiDienUQ = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
							
						</div>
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
							<td class="align-l" colspan="12">Địa chỉ giao dịch: 
							<xsl:value-of select="$tkchinh/CT_II/CT_2/diaChi"/>&#160; <xsl:value-of select="$tkchinh/CT_II/CT_2/ten_xa_phuong"/>&#160;<xsl:value-of select="$tkchinh/CT_II/CT_2/ten_tinh_tp"/>
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
								<p><i>Nêu rõ: <xsl:value-of select="$tkchinh/CT_II/CT_4/neuRo"/></i></p>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_II/CT_4/khac = 'true' or $tkchinh/CT_II/CT_4/khac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
	
						</tr>
						<tr>
							<td colspan="3"><i>Đại lý thuế (nếu có)</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/CT_II/CT_4/daiLyThue = 'true' or $tkchinh/CT_II/CT_4/daiLyThue = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>
					   </table>	
					   
					<br></br><div><b>Tài liệu gửi kèm:</b></div>
					<table class="tkhai_table">
					<xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
						<xsl:variable name="currentRows" select="position()"/>
						<tr>
							<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
						</tr>
					</xsl:for-each>
					</table>

<table style="page-break-inside: avoid;" >
<tr>
<td>
	 <xsl:call-template name="tkhaiFooter_06HTQT"/>

	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>

		</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
