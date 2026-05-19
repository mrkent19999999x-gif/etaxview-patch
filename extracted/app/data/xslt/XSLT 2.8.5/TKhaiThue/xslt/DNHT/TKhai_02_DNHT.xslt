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
		<xsl:variable name="ghichuTK"   select="'Đề nghị đánh dấu (x) vào ô trống thích hợp:'"/>
		<xsl:call-template name="tkhaiHeader_02HT">
			<xsl:with-param name="mauTKhai"   select="'02/HT'"/>
			<xsl:with-param name="moTaBMau"   select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/moTaBMau"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">

		<table class="ttinnnt_table">
				<tr>
				<br></br>	<td class="tentkhai" colspan="4">
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<tr>
					<td><br></br>
						<div style="width:100%;text-align:center"><b>NNT nộp hồ sơ hoàn theo ủy quyền </b><input disabled="disabled" type="checkbox" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/Header/uyQuyen = 'true' or $tkchinh/Header/uyQuyen = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
						</div>						
					</td>
				</tr>
				<tr>
					<td><div style="width:100%;text-align:center"><b>Kính gửi: <xsl:value-of select="$tkchinh/Header/ten_CQTQuanLy"/></b></div>
					</td>
				</tr>
				<tr>
				<tr>
					<td>
					<br></br><div style="width:100%;text-align:left">Số giấy đề nghị hoàn: <xsl:value-of select="$tkchinh/Header/so_GiayDNH"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>
					<div style="width:100%;text-align:left">Trường hợp hoàn thuế: <xsl:value-of select="$tkchinh/Header/ten_THHoanThue"/>
						</div>
					</td>
				</tr>
					<td><div style="width:100%;text-align:left">Kỳ đề nghị hoàn: 
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Y'">
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> (từ ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)   
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D'">
							Lần phát sinh (từ ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>) 
                        </xsl:if>
						</div>				
					</td>
				</tr>
				<tr>
					<td><div style="width:90%;text-align:left">Hiệp định thuế áp dụng: <xsl:value-of select="$tkchinh/Header/ten_HiepDinhThue"/></div>
					</td>
				</tr>								
				
				<tr>
					<td>
						<div style="width:100%;text-align:left"><i>Áp dụng đối với các tổ chức, cá nhân là đối tượng cư trú của: </i></div>					
					</td>
				</tr>				
				
				<tr>				
				  <td colspan="2">
					<div style="width:100%; text-align:left">
					  <span style="margin-right: 60px;">
						<i>Việt Nam</i>
						<input type="checkbox" disabled="disabled" style="transform: scale(1.5); margin-left: 10px;">
						<xsl:if test="$tkchinh/Header/vietNam = 'true' or $tkchinh/Header/vietNam = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if></input>
					  </span>
					  
					  <span>
						<i>Nước ngoài</i>
						<input type="checkbox" disabled="disabled" style="transform: scale(1.5); margin-left: 10px;">
						<xsl:if test="$tkchinh/Header/nuocNgoai = 'true' or $tkchinh/Header/nuocNgoai = '1'">
						  <xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if></input>
					  </span>
					</div>
				  </td>
				</tr>	
				
				<tr>
					<td class="mtatentkhai">
						<div style="width:80%; text-align:left">
							<xsl:value-of select="$ghichuTK"/>
						</div>
					</td>
				</tr>

			</table>

		<div><b>I. Thông tin về tổ chức, cá nhân được hoàn thuế: </b><input disabled="disabled" type="checkbox" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/tChucCaNhan_DHT = 'true' or $tkchinh/TT_ToChucCaNhanDHT/tChucCaNhan_DHT = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
		</div>
					<table class="tkhai_table"  >
						<tr>	
							<td></td>			
						  <td colspan="12">
							<div style="width:100%; text-align:left">
							  <span style="margin-left: 60px; margin-right: 100px; vertical-align: middle;">
								<b style="vertical-align: middle;">A. Tổ chức</b>
								<input type="checkbox" disabled="disabled"
									   style="transform: scale(1.5); margin-left: 10px; vertical-align: middle;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/toChuc = 'true' or $tkchinh/TT_ToChucCaNhanDHT/toChuc = '1'">
								  <xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							  </span>
							
							  <span style="vertical-align: middle;">
								<b style="vertical-align: middle;">B. Cá nhân</b>
								<input type="checkbox" disabled="disabled"
									   style="transform: scale(1.5); margin-left: 10px; vertical-align: middle;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/caNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/caNhan = '1'">
								  <xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							  </span>
							</div>
						  </td>
						</tr>
														
    					<tr>
							<td class="align-c">1</td>
							<td class="align-l" colspan="12">
								<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
									Tên đầy đủ: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TenDayDu/tenDayDu"/>		
								</div>																
							
								<div style="display: flex; align-items: left;"><i>Giấy chứng nhận đăng ký kinh doanh</i>
										<input type="checkbox" disabled="disabled"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/toChuc = 'true' or $tkchinh/TT_ToChucCaNhanDHT/toChuc = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>&#160;&#160;&#160;&#160;<i>Hộ chiếu</i>
										<input type="checkbox" disabled="disabled"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/caNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/caNhan = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
										&#160;&#160;&#160;&#160;<i>CMND/CCCD</i>
										<input type="checkbox" disabled="disabled"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/caNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/caNhan = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
								</div>
								<div>
									Số: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TenDayDu/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Ngày cấp: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TenDayDu//ngayCap"/> <br></br>
									Tại: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TenDayDu//tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan cấp: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TenDayDu/coQuanCap"/>								  
								</div>								  								
							</td>					
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td class="align-l" colspan="12">Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/tenSuDung"/>
							</td>
						</tr>
						<tr>
							<td class="align-c" rowspan="4">3</td>
							<td class="align-l" colspan="12">Tư cách pháp lý: </td>
						</tr>
						<tr> 
							<td colspan="3"> <i>Pháp nhân</i> </td>					
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/phapNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/phapNhan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
							<td colspan="3"><i>Cá nhân hành nghề độc lập</i></td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/caNhanDL = 'true' or $tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/caNhanDL = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
						</tr>
						<tr>
							<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/lienDanhKhongPN = 'true' or $tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/lienDanhKhongPN = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
								<i>Cá nhân hành nghề phụ thuộc</i>
							</td>
							<td class="align-c" colspan="3">								
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/caNhanPT = 'true' or $tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/caNhanPT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
						</tr>
						<tr>
							<td colspan="3">
								<i>Khác</i>
								<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/khac"/>
								<p><i>Nêu rõ:</i>...............</p>
								<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TuCachPhapLy/neuRo"/>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;"></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>
						
						<tr>
							<td class="align-c">4.1</td>
							<td class="align-l" colspan="12">Địa chỉ tại Việt Nam: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/soNha"/>;&#160; <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/E-mail"/></p>
							<p>Địa chỉ trên là: </p>
								<p>
									<i>Trụ sở chính</i> 
									<input type="checkbox" disabled="disabled"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/toChuc = 'true' or $tkchinh/TT_ToChucCaNhanDHT/toChuc = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>

								&#160;&#160;&#160;<i>Nhà ở thường trú </i>
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 5px; margin-right: 20px;"></input>
									<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/nhaOThuongTru"/>								
								&#160;&#160;&#160;<i>Khác</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 5px; margin-right: 20px;"> 
								<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/khac"/>	
								<i>Nêu rõ:</i>...............</input><xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiVN/neuRo"/>	
								</p>
									</td>
						</tr>
						
						<tr>
							<td class="align-c">4.2</td>
							<td class="align-l" colspan="12">Địa chỉ giao dịch tại Việt Nam: 
							<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/soNha"/>;&#160; <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/ten_xa_phuong"/>;&#160;<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGD/E-mail"/></p>
							</td>
						</tr>
						
						<tr>
							<td class="align-c" rowspan="2">5</td>
							<td class="align-l" colspan="12">Quốc tịch: </td>
						</tr>
						<tr>
							<td class="align-l" colspan="2"><i>Việt Nam</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/QuocTich/vietNam = 'true' or $tkchinh/TT_ToChucCaNhanDHT/QuocTich/vietNam = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>
							<td class="align-l" colspan="2"><i>Nước ký kết</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/QuocTich/nuocKyKet = 'true' or $tkchinh/TT_ToChucCaNhanDHT/QuocTich/nuocKyKet = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td class="align-l" colspan="8"><i>Nước khác</i> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">&#160;&#160;
							<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/QuocTich/nuocKhac = 'true' or $tkchinh/TT_ToChucCaNhanDHT/QuocTich/nuocKhac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							<i>Tên nước:</i> <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/QuocTich/ten_NuocKhac"/>
							
							</td>
						</tr>
						<tr>
							<td class="align-c">6</td>
							<td class="align-l" colspan="12">Mã số thuế tại Việt Nam (nếu có): <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/mst_VN"/>
							</td>
						</tr>
						<tr>
							<td class="align-c">7.1</td>
							<td class="align-l" colspan="12">
								Địa chỉ tại nước ký kết: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/diaChiNKK"/>
								<p>Số điện thoại:<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/E-mail"/></p>
								<p>Địa chỉ trên là: </p>
								<p>
									<i>Văn phòng đại diện</i> 
									<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/vpDaiDien = 'true' or $tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/vpDaiDien = '1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</input>
									&#160;&#160;&#160;<i>Cơ sở thường trú </i>
									<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/coSoThuongTru = 'true' or $tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/coSoThuongTru = '1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</input>
								&#160;&#160;&#160;	<i>Nơi làm việc</i> 
									<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/noiLV = 'true' or $tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/noiLV = '1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</input>
									&#160;&#160;&#160;<i>Nơi thường trú </i>
									<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/noiCuTru = 'true' or $tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/noiCuTru = '1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</input>
								</p>
								<p><i>Khác</i> 								
									<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/khac = 'true' or $tkchinh/TT_ToChucCaNhanDHT/DiaChiNuocKyKet/khac = '1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										&#160;&#160;&#160;<i>Nêu rõ:</i>...............
									</input>
								</p>
							</td>
						</tr>
						<tr>
							<td class="align-c">7.2</td>
							<td class="align-l" colspan="12">Địa chỉ giao dịch tại nước ký kết (nếu khác với địa chỉ nêu trên): 
								<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGDNuocKyKet/diaChiGDKK"/>
								<p>Số điện thoại:<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGDNuocKyKet/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGDNuocKyKet/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/DiaChiGDNuocKyKet/E-mail"/></p>
							</td>
						</tr>
						<tr>
							<td class="align-c">8</td>
							<td class="align-l" colspan="12">Mã số thuế tại Nước ký kết (nếu có): <xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/mst_NuocKK"/>
							</td>
						</tr>
						<tr>
							<td class="align-c">9</td>
							<td class="align-l" colspan="12">Thời gian có mặt tại Việt Nam hoặc thực hiện hoạt động tại Việt Nam (đối với các tổ chức, cá nhân là đối tượng cư trú của nước ngoài): 
								<p>Từ ngày:............<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TGCoMatTaiVN/tuNgay"/>&#160;&#160;&#160; Đến ngày:..................<xsl:value-of select="$tkchinh/TT_ToChucCaNhanDHT/TGCoMatTaiVN/denNgay"/></p>
							
							</td>
						</tr>
					   </table>		
	                      	
						<div> <b>II. Đại diện được ủy quyền: </b> <input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
						  <xsl:if test="$tkchinh/DD_DuocUyQuyen/daiDienUQ = 'true' or $tkchinh/DD_DuocUyQuyen/daiDienUQ = '1'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						  </xsl:if></input>
							
						</div>
						<table class="tkhai_table"  >											
    					<tr>
							<td class="align-c">1</td>
							<td class="align-l" colspan="12">
								<div style="width: 100%; text-align: left; display: flex; justify-content: space-between;">
									Tên đầy đủ: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TenDayDu/tenDayDu"/>		
								</div>																
							
								<div style="display: flex; align-items: left;"><i>Giấy chứng nhận đăng ký kinh doanh</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/toChuc = 'true' or $tkchinh/TT_ToChucCaNhanDHT/toChuc = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> </input>&#160;&#160;&#160;&#160;<i>Hộ chiếu</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/caNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/caNhan = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
										&#160;&#160;&#160;&#160;<i>CMND/CCCD</i>
										<input type="checkbox" disabled="true"
											   style="transform: scale(1.5); margin-left: 10px;">
										<xsl:if test="$tkchinh/TT_ToChucCaNhanDHT/caNhan = 'true' or $tkchinh/TT_ToChucCaNhanDHT/caNhan = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if></input>
								</div>
								<div>
									Số: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TenDayDu/soGiayTo"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Ngày cấp: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TenDayDu//ngayCap"/> <br></br>
									Tại: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TenDayDu//tai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan cấp: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TenDayDu/coQuanCap"/>								  
								</div>								  								
							</td>					
						</tr>
						
						<tr>
							<td class="align-c">2</td>
							<td class="align-l" colspan="12">Địa chỉ: 
							<xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/soNha"/>&#160; <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/ten_xa_phuong"/>&#160;<xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/ten_tinh_tp"/>
							<p>Số điện thoại: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/dienThoai"/>&#160;&#160;&#160; Số Fax: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/fax"/>&#160;&#160;&#160; E-mail: <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/DiaChi/E-mail"/></p>
							</td>
						</tr>
						
							<tr>
							<td class="align-c">3</td>
							<td class="align-l" colspan="12">Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/DD_DuocUyQuyen/mst"/>
							</td>
						</tr>
						
						
						<tr>
							<td class="align-c" rowspan="4">4</td>
							<td class="align-l" colspan="12">Tư cách pháp lý: </td>
						</tr>
						<tr> 
							<td colspan="3"> <i>Pháp nhân</i> </td>					
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/phapNhan = 'true' or $tkchinh/DD_DuocUyQuyen/TuCachPhapLy/phapNhan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>	
							</td>
							
							<td colspan="3">
								<i>Cá nhân hành nghề phụ thuộc</i>
							</td>
							<td class="align-c" colspan="3">								
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/caNhanPT = 'true' or $tkchinh/DD_DuocUyQuyen/TuCachPhapLy/caNhanPT = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>

							</td>	
						</tr>
						<tr>
							<td colspan="3"><i>Liên danh không tạo pháp nhân</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true"  style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/lienDanhKhongPN = 'true' or $tkchinh/DD_DuocUyQuyen/TuCachPhapLy/lienDanhKhongPN = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
								<i>Khác</i>
								<xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/khac"/>
								<p><i>Nêu rõ:</i>...............</p>
								<xsl:value-of select="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/neuRo"/>
							</td>
							<td class="align-c" colspan="3">
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;"></input>
							</td>
							
						</tr>
						<tr>
							<td colspan="3"><i>Đại lý thuế (nếu có)</i></td>
							<td class="align-c" colspan="3">					
								<input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$tkchinh/DD_DuocUyQuyen/TuCachPhapLy/daiLyThue = 'true' or $tkchinh/DD_DuocUyQuyen/TuCachPhapLy/daiLyThue = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if></input>
							</td>
							<td colspan="3">
							</td>
							<td colspan="3">
							</td>
						</tr>

					   </table>	
					   
					<div><b>III. Nội dung đề nghị hoàn thuế: </b></div>								
					<div><b><i>1. Năm đề nghị áp dụng Hiệp định thuế/Điều ước quốc tế: </i></b></div>
					<div style="width:100%; text-align:left">
					  <span style="margin-right: 60px;">
						<i>Từ năm: </i>	<xsl:value-of select="$tkchinh/NoiDungDNHT/NamDeNghi/tuNam"/>
					  </span>
					  
					  <span>
						<i>Đến năm: </i> <xsl:value-of select="$tkchinh/NoiDungDNHT/NamDeNghi/denNam"/>											
					  </span>
					</div>
					
					<div><b><i>2. Số thu nhập thuộc diện miễn, giảm theo Điều: </i></b>
						<xsl:value-of select="$tkchinh/NoiDungDNHT/SoThuNhap/dieu"/>
					</div>
					
					<div>Số thuế đề nghị hoàn:</div>
						<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Loại thuế</b></td>
							<td class="align-c" colspan="2"><b>Kỳ đề nghị hoàn thuế</b></td>						
							<td class="align-c" rowspan="2"><b>Số tiền đã nộp (VNĐ)</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền nộp thừa (VNĐ)</b></td>							
							<td class="align-c" rowspan="2"><b>Số tiền đề nghị hoàn trong kỳ (VNĐ)</b></td>							
						</tr>
						<tr>
							<td class="align-c"><b>Từ kỳ</b></td>
							<td class="align-c"><b> Đến kỳ</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>							

						</tr>
						<xsl:for-each select="$tkchinh/NoiDungDNHT/SoThuNhap/SoThueDNH/CTieuSoThue">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiThue"/></td>
								<td class="align-l"><xsl:if test="ct3_TuKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct3_TuKy_KyKeKhai"/></td>
								<td class="align-l"><xsl:if test="ct4_DenKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct4_DenKy_KyKeKhai"/></td>						
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienDaNop)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienNopThua)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienDNHTrongKy)"/></td>
								
	         				</tr>
						</xsl:for-each>
							<tr>
							<td class="align-c" colspan ='4'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot5a)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot5)"/></b></td>							
							</tr>
					</table><br/>
					
					<div><b><i>3. Hình thức đề nghị hoàn trả: </i></b><br></br>
					<b><i>3.1 Bù trừ cho khoản phải nộp ngân sách nhà nước (NSNN): </i></b>
					</div>
					
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
                        <tr>
							<td class="align-c" ><b>STT</b></td>
							<td class="align-c" ><b>Mã số thuế</b></td>
							<td class="align-c" ><b>Mã định danh khoản phải nộp (ID)</b></td>
							<td class="align-c" ><b>CQT</b></td>
							<td class="align-c" ><b>Cơ quan hải quan</b></td>
							<td class="align-c" ><b>Cơ quan khác</b></td>
							<td class="align-c" ><b>Địa bàn hạch toán thu NS</b></td>
							<td class="align-c" ><b>Nội dung kinh tế (tiểu mục)</b></td>
							<td class="align-c" ><b>Kiểu kỳ</b></td>
							<td class="align-c" ><b>Kỳ</b></td>
							<td class="align-c" ><b>Số tiền đề nghị bù trừ (VNĐ)</b></td>
							<td class="align-c" ><b>Ghi chú</b></td>
							</tr>						
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4.1)</td>
								<td class="align-c">(4.2)</td>
								<td class="align-c">(4.3)</td>
								<td class="align-c">(5)</td>
                                <td class="align-c">(6)</td>
								<td class="align-c">(7.1)</td>
								<td class="align-c">(7.2)</td>
								<td class="align-c">(8)</td>
								<td class="align-c">(9)</td>
                             </tr>

                              <xsl:for-each select="$tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/CTietBuTru">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mst"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4.1_tenCQT"/></td>
								<td class="align-l"><xsl:value-of select="ct4.2_tenCQHQ"/></td>
								<td class="align-l"><xsl:value-of select="ct4.3_tenCQTKhac"/></td>
								<td class="align-l"><xsl:value-of select="ct5_diaBanHTNS"/></td>
								<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct7_LoaiKy"/></td>
								<td class="align-l"><xsl:value-of select="ct7_KyKeKhai"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8_soTien)"/></td>	         					
	         					<td><xsl:if test="ct9_ma != '5'"> <xsl:value-of select="ct9_ten" /> </xsl:if>
							    <xsl:if test="ct9_ma = '5'"><xsl:value-of select="ct9_khac" /> </xsl:if> </td>
	         					</tr>
	         				</xsl:for-each>
							<tr>
								<td class="align-l" colspan ='10'>Cộng theo mã số thuế, cơ quan quản lý thu, nội dung kinh tế, kỳ thuế</td> 
								<td></td>	
								<td></td>
							</tr>
							<tr>
							<td class="align-c" colspan ='10'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot8)"/></b></td>
							<td></td>
							</tr>
					</table>
					<b><i>3.2 Hoàn trả trực tiếp: </i></b>				
						<div><input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$hoantratructiep/HinhThucHoanTra/chuyenKhoan = 'true' or $hoantratructiep/HinhThucHoanTra/chuyenKhoan = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if>
							&#160;&#160;Chuyển khoản: Tên tổ chức/người nhận tiền: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/tenChuTaiKhoan"/>			
							</input>
						</div>
						<div>Tài khoản số: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiKhoanSo"/></div>
						<div>Tại Ngân hàng (KBNN): <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiNganHang_ten"/> </div>
						
						<div><input type="checkbox" disabled="true" style="transform: scale(1.5); margin-left: 10px;">
								<xsl:if test="$hoantratructiep/HinhThucHoanTra/tienMat = 'true' or $hoantratructiep/HinhThucHoanTra/tienMat = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if>
							&#160;&#160;Tiền mặt: Tên người nhận tiền: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/nguoiNhanTien"/>			
							</input>
						</div>
						 <div>CMND/CCCD/HC/SĐDCN số: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/cmt-HoChieu"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Ngày cấp: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/ngayCap"/>
						 </div>
						 <div>Nơi cấp: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/noiCap"/></div>
						 <div> Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/ten_KBNN"/></div>											

				<div><b>IV. Thông tin về giao dịch phát sinh thu nhập liên quan đến số thuế đề nghị áp dụng Hiệp định thuế/Điều ước quốc tế: </b></div>
					<div>4.1 Giải trình tóm tắt về giao dịch: </div>
					<div><xsl:value-of select="$tkchinh/TTGiaoDichPS/giaiTrinhTT"/>....................... </div>
					<div>4.2 Giải trình khác: </div>
					<div><xsl:value-of select="$tkchinh/TTGiaoDichPS/giaiTrinhKhac"/>....................... </div>
					<div>4.3 Tài liệu gửi kèm (ghi rõ tên tài liệu, bản chính, bản sao): </div>
					<table class="tkhai_table">
					<xsl:for-each select="$tkchinh/TTGiaoDichPS/TaiLieuGuiKem/TaiLieu">
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
	 <xsl:call-template name="tkhaiFooter_02HT"/>

	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>

		</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
