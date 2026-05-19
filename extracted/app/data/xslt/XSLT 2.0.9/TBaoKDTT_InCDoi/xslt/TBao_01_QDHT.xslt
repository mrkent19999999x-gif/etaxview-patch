<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
		<xsl:include href="../common/common.xsl"/>
		<xsl:include href="../include/TBaoHeader.xsl"/>
		<xsl:include href="../include/TBaoFooter.xsl"/>  
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'01/QĐHT'"/>
				<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
				<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
				<xsl:with-param name="kieuTBao"   select="'QUYẾT ĐỊNH'" />
				<xsl:with-param name="motaTBao"   select="'Về việc hoàn thuế kiêm bù trừ thu ngân sách nhà nước'" />
				<xsl:with-param name="motaTBao_1"   select="''" />
				<xsl:with-param name="motaTBao_2"   select="''" />
				<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
					<div class="content" >
								
							<p class="align-c fz17px">
								<b>CỤC TRƯỞNG CỤC THUẾ</b>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế và các văn bản hướng dẫn thi hành;
								<xsl:if test="$ndungTBao/CanCu/canCuLuatThue !=''">
									<span>
										<xsl:value-of select="$ndungTBao/CanCu/canCuLuatThue" />
									</span>
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ các Luật thuế, Pháp lệnh phí, lệ phí và các văn bản hướng dẫn thi hành;
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định số 
								<xsl:if test="$ndungTBao/CanCu/soQuyetDinh !=''">
									<span>
										<xsl:value-of select="$ndungTBao/CanCu/soQuyetDinh" />
									</span>
								</xsl:if>
								ngày
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayQuyetDinh,9,2)" />
								tháng
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayQuyetDinh,6,2)" />
								năm
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayQuyetDinh,1,4)" />
								của
								<xsl:if test="$ndungTBao/CanCu/donViQuyetDinh !=''">
									<span>
										<xsl:value-of select="$ndungTBao/CanCu/donViQuyetDinh"/>
									</span>
								</xsl:if>
								quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của Cục Thuế;
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ vào Giấy đề nghị hoàn trả khoản thu Ngân sách Nhà nước số 
								<xsl:if test="$ndungTBao/CanCu/soGiayDNHT !=''">
									<span>
										<xsl:value-of select="$ndungTBao/CanCu/soGiayDNHT"/>
									</span>
								</xsl:if>
								ngày
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayGiayDNHT,9,2)" />
								tháng
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayGiayDNHT,6,2)" />
								năm
								<xsl:value-of select="substring($ndungTBao/CanCu/ngayGiayDNHT,1,4)" />
								kèm theo hồ sơ của
								<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>, mã số thuế: 
								<xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" />
									</span>
								</xsl:if>;
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Theo đề nghị của 		
								<xsl:if test="$ndungTBao/CanCu/donViDeNghi !=''">
									<span>
										<xsl:value-of select="$ndungTBao/CanCu/donViDeNghi"/>;
									</span>
								</xsl:if>
							</p>
							<p class="align-c fz17px">
								<b>QUYẾT ĐỊNH:</b>
							</p>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 1. </b>Hoàn trả cho <i>(Ông/Bà/Tổ chức)</i>:
							<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
								<span>
									<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
								</span>
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
							<xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''">
								<span>
									<xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" />
								</span>
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số CMND/Hộ chiếu:
							<xsl:if test="$ndungTBao/Dieu1/soCMND_HoChieu !=''">
								<span>
									<xsl:value-of select="$ndungTBao/Dieu1/soCMND_HoChieu"/>
								</span>
							</xsl:if>
							ngày cấp:
							<xsl:if test="$ndungTBao/Dieu1/ngayCap !=''">
								<span>
									<xsl:value-of select="concat(substring($ndungTBao/Dieu1/ngayCap, 9,2),'/',substring($ndungTBao/Dieu1/ngayCap, 6,2),'/',substring($ndungTBao/Dieu1/ngayCap, 1,4))" />
								</span>
							</xsl:if>
							nơi cấp:
							<xsl:if test="$ndungTBao/Dieu1/noiCap !=''">
								<span>
									<xsl:value-of select="$ndungTBao/Dieu1/noiCap"/>
								</span>
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ:
							<xsl:if test="$ttinChung/NNhanTBaoThue/diaChiNNhan !=''">
								<span>
									<xsl:value-of select="$ttinChung/NNhanTBaoThue/diaChiNNhan" />.
								</span>
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng số tiền thuế là: 
							<xsl:if test="$ndungTBao/Dieu1/tongSoTien !=''">
								<span>
									<xsl:value-of select="ihtkk:formatNumber($ndungTBao/Dieu1/tongSoTien)"/>
								</span>
							</xsl:if>
							đồng
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i>(bằng chữ: 
							<xsl:if test="$ndungTBao/Dieu1/tongSoTien !=''">
								<span>
									<xsl:value-of select="ihtkk:DocTienBangChu($ndungTBao/Dieu1/tongSoTien)"/>
								</span>
							</xsl:if>)</i>.
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trong đó:
							</div>
							<table width="100%">
								<tr width="50%">
									<td class="align-l fz18_5px">
										
									</td>
									<td class="align-r fz17px" width="50%">
										<i>Đơn vị tiền: Đồng Việt Nam</i>
									</td>
								</tr>
							</table>
							<table class="tkhai_table fz14px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
									<tbody >
										<tr class="align-c" height="50px">
											<td id="td_table" width="7%">
												<b>Số TT</b>
											</td>
											<td id="td_table" width="13%">
												<b>Loại thuế</b>
											</td>
											<td id="td_table" width="15%">
												<b>Tiểu mục</b>
											</td>
											<td id="td_table" width="15%">
												<b>Kỳ tính thuế</b>
											</td>
											<td id="td_table" width="17%">
												<b>Số tiền thuế được hoàn</b>
											</td>
											<td id="td_table" width="33%">
												<b>Lý do hoàn trả</b>
											</td>
										</tr>
										<tr class="align-c">
											<td id="td_table">
												(1)
											</td>
											<td id="td_table">
												(2)
											</td>
											<td id="td_table">
												(3)
											</td>
											<td id="td_table">
												(4)
											</td>
											<td id="td_table">
												(5)
											</td>
											<td id="td_table">
												(6)
											</td>
										</tr>
										<xsl:for-each select="$ndungTBao/Dieu1/TrongDo/ChiTiet">
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="loaiThue !=''">
														<xsl:value-of select="loaiThue" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-c">
													<xsl:if test="tieuMuc !=''">
														<xsl:value-of select="tieuMuc" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-c">
													<xsl:if test="kyTinhThue !=''">
														<xsl:value-of select="kyTinhThue" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-r">
													<xsl:if test="soTienDuocHoan !=''">
														<xsl:value-of select="ihtkk:formatNumber(soTienDuocHoan)" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="lyDoHoanTra !=''">
														<xsl:value-of select="lyDoHoanTra" />
													</xsl:if>
												</td>
											</tr>
										</xsl:for-each>
										<tr>
											<td colspan = "4" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<b>
												<xsl:if test="$ndungTBao/Dieu1/TrongDo/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($ndungTBao/Dieu1/TrongDo/tongCong)" />
												</xsl:if>
												</b>
											</td>
											<td> 
											</td>
										</tr>
									</tbody>
								</table>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hình thức hoàn trả:
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan != 'false'">
									[X]
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan != 'true'">
									[&#160;&#160;&#160;]
								</xsl:if>
								&#160;&#160;Chuyển khoản  
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số tài khoản
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan = 'true' and $ndungTBao/Dieu1/HinhThucHoanTra/soTaiKhoan !=''">
									<xsl:value-of select="$ndungTBao/Dieu1/HinhThucHoanTra/soTaiKhoan" />
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan = 'true' and $ndungTBao/Dieu1/HinhThucHoanTra/soTaiKhoan =''">
									.........
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan = 'false'">
									<span>
										.........
									</span>
								</xsl:if>
								Tại ngân hàng (Kho bạc Nhà nước) 
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan = 'true'">
									<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/taiNganHang !=''">
										<span>
											<xsl:value-of select="$ndungTBao/Dieu1/HinhThucHoanTra/taiNganHang" />
										</span>
									</xsl:if>
									<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/taiNganHang =''">
										<span>
											.........
										</span>
									</xsl:if>
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/chuyenKhoan = 'false'">
									<span>
										.........
									</span>
								</xsl:if>
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/tienMat = 'true'">
									[X]
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/tienMat = 'false'">
									[&#160;&#160;&#160;]
								</xsl:if>
								&#160;&#160;Tiền mặt
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nơi nhận tiền hoàn thuế: Kho bạc nhà nước
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/tienMat = 'true'">
									<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/noiNhanTienHoan !=''">
										<span>
											<xsl:value-of select="$ndungTBao/Dieu1/HinhThucHoanTra/noiNhanTienHoan" />
										</span>
									</xsl:if>
									<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/noiNhanTienHoan =''">
										<span>
											.........
										</span>
									</xsl:if>
								</xsl:if>
								<xsl:if test="$ndungTBao/Dieu1/HinhThucHoanTra/tienMat = 'false'">
									<span>
										.........
									</span>
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 2. </b>Trả tiền lãi cho thời gian 
								<xsl:if test="$ndungTBao/Dieu2/soNgayCham !=''">
									<span>
										<xsl:value-of select="$ndungTBao/Dieu2/soNgayCham" />
									</span>
								</xsl:if>
								chậm giải quyết hồ sơ hoàn thuế của cơ quan thuế là 
								<xsl:if test="$ndungTBao/Dieu2/soTienLai !=''">
									<span>
										<xsl:value-of select="ihtkk:formatNumber($ndungTBao/Dieu2/soTienLai)" />
									</span>
								</xsl:if>
								đồng.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 3. </b>Quyết định này có hiệu lực kể từ ngày ký. 
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>,
								<xsl:if test="$ndungTBao/Dieu3/doiTuongThiHanhQD !=''">
									<span>
										<xsl:value-of select="$ndungTBao/Dieu3/doiTuongThiHanhQD" />
									</span>
								</xsl:if>
								chịu trách nhiệm thi hành quyết định này./.
							</p>
							<table style="page-break-inside: avoid;width:100%">
							<tr>
							<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
							<xsl:for-each select="$ndungTBao/NoiNhan/CTietNoiNhan">
							-&#160;<xsl:value-of select="tenNoiNhan" /><br/>
							</xsl:for-each>
							-&#160;Lưu VT,
							<xsl:for-each select="$ndungTBao/NoiNhan/CTietLuu">
							&#160;<xsl:value-of select="luu" /><br/>
							</xsl:for-each>
							</td>
							<td style="width:60%;text-align:center;">
							<xsl:if test="$ndungTBao/TTinKy/hThucKy !=''">
							<xsl:if test="$ndungTBao/TTinKy/hThucKy = '01'">
							<span style="font-weight:bold;text-transform:uppercase;">KT: <xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTUyQuyen" /></span><br/>
							</xsl:if>
							</xsl:if>
							<xsl:if test="$ndungTBao/TTinKy/chucDanhCBTKy !=''">
							<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTKy" /></span><br/>
							(Ký, ghi rõ họ tên và đóng dấu)
							</xsl:if> 
							<br/>
							<br/>
							<xsl:value-of select="$ndungTBao/TTinKy/tenCBTKy" />
							</td>
							</tr>
							</table>
							<br/>
							<br/>
							<br/>
					</div>
		</xsl:for-each>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>