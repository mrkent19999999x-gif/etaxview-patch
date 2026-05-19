<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="TKhai/DLTKhai/NDTKhai" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	  <xsl:call-template name="tkhaiHeader_01_DKTD_HDDT">
		<xsl:with-param name="MSo"   select="'01/ĐKTĐ-HĐĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table">
						<tr>
								<td colspan="5" class="align-l">
									Tên người nộp thuế:
								</td>
								<td colspan="5" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/TNNT"/>
								</td>
						</tr>
						<tr>
								<td colspan="5" class="align-l">
									Mã số thuế:
								</td>
								<td colspan="5" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/MST"/>
								</td>
						</tr>
						<tr>
								<td colspan="5" class="align-l">
									Cơ quan thuế quản lý:
								</td>
								<td colspan="5" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/CQTQLy"/>
								</td>
						</tr>
						<tr>
								<td colspan="3" class="align-l">
									Người liên hệ: (Đại diện theo pháp luật/ Hộ, cá nhân kinh doanh)
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/TNDDPLuat"/>
								</td>
								<td colspan="3" class="align-l">Điện thoại liên hệ: (Đại diện theo pháp luật/ Hộ, cá nhân kinh doanh)
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/DTDDPLuat"/>
								</td>
						</tr>
						<tr>
								<td colspan="3" class="align-l">
									Số CC/CCCD/số định danh/Hộ chiếu (*)
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/CCCDan"/><xsl:value-of select="TKhai/DLTKhai/TTChung/SHChieu"/>
								</td>
								<td colspan="3" class="align-l">
									Ngày tháng năm sinh:
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="ihtkk:stringDatetime(TKhai/DLTKhai/TTChung/NSDDPLuat,'dd/mm/yyyy')"/>
								</td>
						</tr>
						<tr>
								<td colspan="3" class="align-l">
									Giới tính:
								</td>
								<td colspan="2" class="align-l">
									<xsl:if test="TKhai/DLTKhai/TTChung/GTinh ='1'">Nam</xsl:if>
									<xsl:if test="TKhai/DLTKhai/TTChung/GTinh ='0'">Nữ</xsl:if>
								</td>
								<td colspan="5" class="align-l">
								</td>
						</tr>	
						<tr>
								<td colspan="3" class="align-l">
									Địa chỉ liên hệ: của NNT
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/DCLHe"/>
								</td>
								<td colspan="3" class="align-l">
									Thư điện tử của NNT
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/DCTDTu"/>
								</td>
						</tr>	
						<tr>
								<td colspan="10" class="align-l">
								Theo Nghị định số 70/2025/NĐ-CP ngày 20 tháng 3 năm 2025 của Chính phủ, chúng tôi/tôi thuộc đối tượng sử dụng hóa đơn điện tử. Chúng tôi/tôi đăng ký/thay đổi thông tin đã đăng ký với cơ quan thuế về việc sử dụng hóa đơn điện tử như sau:
								</td>
						</tr>	
						<tr>
								<td colspan="10" class="align-l">
								<b>1. Hình thức hóa đơn</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='1'">[X] Có mã của cơ quan thuế</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='0'">[&#32;] Có mã của cơ quan thuế</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMTMTTien ='1'">[X] Hóa đơn khởi tạo từ Máy tính tiền</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMTMTTien ='0'">[&#32;] Hóa đơn khởi tạo từ Máy tính tiền</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/KCMa ='1'">[X] Không có mã của cơ quan thuế</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/KCMa ='0'">[&#32;] Không có mã của cơ quan thuế</xsl:if><br/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>2. Hình thức gửi dữ liệu hóa đơn điện tử</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='1'">
										a. [X] Trường hợp sử dụng hóa đơn điện tử có mã trên Cổng thông tin điện tử của Tổng cục Thuế hoặc tổ chức cung cấp dịch vụ hóa đơn điện tử được Tổng cục Thuế ủy thác
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='0'">
										a. [&#32;] Trường hợp sử dụng hóa đơn điện tử có mã trên Cổng thông tin điện tử của Tổng cục Thuế hoặc tổ chức cung cấp dịch vụ hóa đơn điện tử được Tổng cục Thuế ủy thác
									</xsl:if>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NNTDBKKhan ='1'">
										[X] Doanh nghiệp nhỏ và vừa, hợp tác xã, hộ, cá nhân kinh doanh tại địa bàn có điều kiện kinh tế xã hội khó khăn, địa bàn có điều kiện kinh tế xã hội đặc biệt khó khăn (điểm a khoản 1 Điều 14 của Nghị định)
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NNTDBKKhan ='0'">
										[&#32;] Doanh nghiệp nhỏ và vừa, hợp tác xã, hộ, cá nhân kinh doanh tại địa bàn có điều kiện kinh tế xã hội khó khăn, địa bàn có điều kiện kinh tế xã hội đặc biệt khó khăn (điểm a khoản 1 Điều 14 của Nghị định)
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NNTKTDNUBND ='1'">
										[X] Doanh nghiệp nhỏ và vừa khác theo đề nghị của Ủy ban nhân dân tỉnh, thành phố trực thuộc trung ương gửi Bộ Tài chính trừ doanh nghiệp hoạt động tại các khu kinh tế, khu công nghiệp, khu công nghệ cao (điểm b khoản 1 Điều 14 của Nghị định)
										</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NNTKTDNUBND ='0'">
										[&#32;] Doanh nghiệp nhỏ và vừa khác theo đề nghị của Ủy ban nhân dân tỉnh, thành phố trực thuộc trung ương gửi Bộ Tài chính trừ doanh nghiệp hoạt động tại các khu kinh tế, khu công nghiệp, khu công nghệ cao (điểm b khoản 1 Điều 14 của Nghị định)
										</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CQXLTSCong ='1'">
										[X] Cơ quan thuế hoặc cơ quan được giao nhiệm vụ tổ chức, xử lý tài sản công theo quy định pháp luật về quản lý, sử dụng tài sản công (khoản 1 Điều 15 Nghị định)
										</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CQXLTSCong ='0'">
										[&#32;]  Cơ quan thuế hoặc cơ quan được giao nhiệm vụ tổ chức, xử lý tài sản công theo quy định pháp luật về quản lý, sử dụng tài sản công (khoản 1 Điều 15 Nghị định)
										</xsl:if><br/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='1'">
										b. [&#32;] Trường hợp sử dụng hóa đơn điện tử không có mã của cơ quan thuế:
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTHDon/CMa ='0'">
										b. [X] Trường hợp sử dụng hóa đơn điện tử không có mã của cơ quan thuế:
									</xsl:if>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CDLTTDCQT ='1'">
										[X] Chuyển dữ liệu trực tiếp đến CQT (Chuyển dữ liệu hóa đơn điện tử trực tiếp đến cơ quan thuế (điểm b1, khoản 3, Điều 22 của Nghị định 70)
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CDLTTDCQT ='0'">
										[&#32;] Chuyển dữ liệu trực tiếp đến CQT (Chuyển dữ liệu hóa đơn điện tử trực tiếp đến cơ quan thuế (điểm b1, khoản 3, Điều 22 của Nghị định 70)
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CDLQTCTN ='1'">
										[X] Chuyển dữ liệu qua TCTN (Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử (điểm b2, khoản 3, Điều 22 của Nghị định 123 (đã được sửa đổi, bổ sung theo quy định tại Nghị định số 70)))
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/CDLQTCTN ='0'">
										[&#32;] Chuyển dữ liệu qua TCTN (Thông qua tổ chức cung cấp dịch vụ hóa đơn điện tử (điểm b2, khoản 3, Điều 22 của Nghị định 123 (đã được sửa đổi, bổ sung theo quy định tại Nghị định số 70)))
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NCCNN ='1'">
										[X] Nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam có hoạt động kinh doanh thương mại điện tử, kinh doanh trên nền tảng số và các dịch vụ khác đăng ký tự nguyện sử dụng hóa đơn điện tử thông qua Cổng thông tin điện tử dành cho nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam của Tổng cục Thuế (khoản 1 Điều 15 Nghị định 70)
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/NCCNN ='0'">
										[&#32;] Nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam có hoạt động kinh doanh thương mại điện tử, kinh doanh trên nền tảng số và các dịch vụ khác đăng ký tự nguyện sử dụng hóa đơn điện tử thông qua Cổng thông tin điện tử dành cho nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam của Tổng cục Thuế (khoản 1 Điều 15 Nghị định 70)
									</xsl:if><br/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>3. Phương thức chuyển dữ liệu hóa đơn điện tử</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/PThuc/CDDu ='1'">
										[X] Chuyển đầy đủ nội dung từng hóa đơn.
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/PThuc/CDDu ='0'">
										[&#32;] Chuyển đầy đủ nội dung từng hóa đơn.
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/PThuc/CBTHop ='1'">
										[X] Chuyển dữ liệu hóa đơn điện tử theo Bảng tổng hợp dữ liệu hóa đơn điện tử theo Mẫu số 01/TH-HĐĐT(điểm a1, khoản 3 Điều 22 của Nghị định).
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/PThuc/CBTHop ='0'">
										[&#32;] Chuyển dữ liệu hóa đơn điện tử theo Bảng tổng hợp dữ liệu hóa đơn điện tử theo Mẫu số 01/TH-HĐĐT(điểm a1, khoản 3 Điều 22 của Nghị định).
									</xsl:if><br/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>4. Loại hóa đơn sử dụng</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDGTGT ='1'">
									[X] Hóa đơn GTGT
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDGTGT ='0'">
										[&#32;] Hóa đơn GTGT
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDGTGTTHBLai ='1'">
										[X] Hóa đơn GTGT tích hợp biên lai thu thuế, phí, lệ phí
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDGTGTTHBLai ='0'">
										[&#32;] Hóa đơn GTGT tích hợp biên lai thu thuế, phí, lệ phí
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHang ='1'">
									[X] Hóa đơn bán hàng
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHang ='0'">
										[&#32;] Hóa đơn bán hàng
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHTHBLai ='1'">
										[X] Hóa đơn bán hàng tích hợp biên lai thu thuế, phí, lệ phí
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHTHBLai ='0'">
										[&#32;] Hóa đơn bán hàng tích hợp biên lai thu thuế, phí, lệ phí
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDTMai ='1'">
										[X] Hóa đơn thương mại
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDTMai ='0'">
										[&#32;] Hóa đơn thương mại
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDNCCNN ='1'">
										[X] Hóa đơn nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDNCCNN ='0'">
										[&#32;] Hóa đơn nhà cung cấp ở nước ngoài không có cơ sở thường trú tại Việt Nam
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBTSCong ='1'">
										[X] Hóa đơn bán tài sản công
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBTSCong ='0'">
										[&#32;] Hóa đơn bán tài sản công
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHDTQGia ='1'">
										[X] Hóa đơn bán hàng dự trữ quốc gia
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDBHDTQGia ='0'">
										[&#32;] Hóa đơn bán hàng dự trữ quốc gia
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDKhac ='1'">
										[X] Các loại hóa đơn khác
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/HDKhac ='0'">
										[&#32;] Các loại hóa đơn khác
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/CTu ='1'">
										[X] Các chứng từ được in, phát hành, sử dụng và quản lý như hóa đơn.
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/CTu ='0'">
										[&#32;] Các chứng từ được in, phát hành, sử dụng và quản lý như hóa đơn.
									</xsl:if><br/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>5. Danh sách chứng thư số sử dụng</b>
								</td>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td rowspan="2" colspan="3" class="align-c"><b>Tên tổ chức cơ quan chứng thực/cấp/công nhận chữ ký số, chữ ký điện tử</b></td>
							<td rowspan="2" colspan="3" class="align-c"><b>Số sê-ri chứng thư</b></td>
							<td colspan="2" class="align-c"><b>Thời hạn sử dụng chứng thư số</b></td>
							<td rowspan="2" class="align-c"><b>Hình thức đăng ký (Thêm mới, gia hạn, ngừng sử dụng)</b></td>					   						   						   						   						   
						 </tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/DSCTSSDung/CTS">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td colspan="3" class="align-l"><xsl:value-of select="TTChuc"/></td>
								  <td colspan="3" class="align-l"><xsl:value-of select="Seri"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c">
									<xsl:if test="HThuc ='1'">Thêm mới
									</xsl:if>
									<xsl:if test="HThuc ='2'">Gia hạn
									</xsl:if>
									<xsl:if test="HThuc ='3'">Ngừng sử dụng
									</xsl:if>
								  </td>
								</tr>
							</xsl:for-each>	
						<tr>
								<td colspan="10" class="align-l">
								<b>6. Đăng ký ủy nhiệm lập hóa đơn</b>
								</td>
						</tr>
						<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên loại hóa đơn ủy nhiệm</b></td>
							<td class="align-c"><b>Ký hiệu mẫu hóa đơn</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn ủy nhiệm</b></td>
							<td colspan="2" class="align-c"><b>Tên tổ chức được/nhận ủy nhiệm</b></td>
							<td class="align-c"><b>Mục đích ủy nhiệm</b></td>
							<td colspan="2" class="align-c"><b>Thời hạn ủy nhiệm</b></td>
							<td class="align-c"><b>Phương thức thanh toán hóa đơn ủy nhiệm</b></td>				   						   						   						   						   
						</tr>
						<tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td colspan="2" class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td colspan="2" class="align-c">(7)</td>
						   <td class="align-c">(8)</td>						   					   
						</tr>
						<tr>
						   <td class="align-c"><br/></td>
						   <td class="align-c"><br/></td>
						   <td class="align-c"><br/></td>
						   <td class="align-c"><br/></td>
						   <td colspan="2" class="align-c"><br/></td>
						   <td class="align-c"><br/></td>
						   <td colspan="2" class="align-c"><br/></td>
						   <td class="align-c"><br/></td>						   					   
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>7. Tổ chức cung cấp dịch vụ</b>
								</td>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td rowspan="2" colspan="4" class="align-c"><b>Tên tổ chức cung cấp dịch vụ</b></td>
							<td rowspan="2" colspan="2" class="align-c"><b>Mã số thuế</b></td>
							<td colspan="2" class="align-c"><b>Thời gian</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>					   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTTCGP/TCGP">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td colspan="4" class="align-l"><xsl:value-of select="TTCGP"/></td>
								  <td colspan="2" class="align-l"><xsl:value-of select="MSTTCGP"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="GChu"/></td>
								</tr>
							</xsl:for-each>
						<tr>
								<td colspan="10" class="align-l">
								<b>8. Thông tin đơn vị truyền nhận</b>
								</td>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td rowspan="2" colspan="4" class="align-c"><b>Tên đơn vị truyền nhận</b></td>
							<td rowspan="2" colspan="2" class="align-c"><b>Mã số thuế</b></td>
							<td colspan="2" class="align-c"><b>Thời gian</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>					   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTTCTN/TCTN">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td colspan="4" class="align-l"><xsl:value-of select="TTCTN"/></td>
								  <td colspan="2" class="align-l"><xsl:value-of select="MSTTCTN"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="GChu"/></td>
								</tr>
							</xsl:for-each>
						<tr>
								<td colspan="10" class="align-l">
								<b>9. Thông tin đơn vị hạch toán phụ thuộc cần cấp quyền tra cứu hóa đơn</b>
								</td>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td rowspan="2" colspan="4" class="align-c"><b>Tên đơn vị</b></td>
							<td rowspan="2" colspan="2" class="align-c"><b>Mã số thuế</b></td>
							<td colspan="2" class="align-c"><b>Thời gian</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>					   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTDVHTPT/DVHTPT">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td colspan="4" class="align-l"><xsl:value-of select="TDVHTPT"/></td>
								  <td colspan="2" class="align-l"><xsl:value-of select="MSTDVHTPT"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="GChu"/></td>
								</tr>
							</xsl:for-each>
						<tr>
								<td colspan="10" class="align-l">
								<b>10. Đề nghị tạm ngừng sử dụng hóa đơn điện tử</b><br/>
								Trong quá trình sử dụng hóa đơn điện tử, chúng tôi xin phép tạm ngừng sử dụng hóa đơn điện tử cụ thể như sau:<br/>
								</td>
								<br/>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td colspan="2" class="align-c"><b>Thời gian tạm ngừng sử dụng hóa đơn điện tử</b></td>
							<td colspan="4" class="align-c"><b>Tổ chức cung cấp dịch vụ</b></td>
							<td rowspan="2" colspan="2" class="align-c"><b>Số sê-ri chứng thư</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>					   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
								<td class="align-c"><b>Mã số thuế</b></td>
								<td colspan="3" class="align-c"><b>Tên</b></td>
								
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTTNSDung/TNSDung">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="MSTTCGP"/></td>
								  <td colspan="3" class="align-l"><xsl:value-of select="TTCGP"/></td>
								  <td colspan="2" class="align-l"><xsl:value-of select="Seri"/></td>
								  <td class="align-l"><xsl:value-of select="GChu"/></td>
								</tr>
							</xsl:for-each>
						<tr>
								<td colspan="10" class="align-l">
								<b>11. Đăng ký tích hợp hóa đơn điện tử với chứng từ điện tử</b>
								</td>
						</tr>
						<tr>
						    <td rowspan="2" class="align-c"><b>STT</b></td>
						    <td rowspan="2" class="align-c"><b>Tên loại hóa đơn tích hợp</b></td>
							<td rowspan="2" class="align-c"><b>Ký hiệu mẫu hóa đơn tích hợp</b></td>
							<td rowspan="2" class="align-c"><b>Ký hiệu hóa đơn tích hợp</b></td>
							<td colspan="2" class="align-c"><b>Tên tổ chức được hoặc nhận tích hợp hóa đơn</b></td>
							<td rowspan="2" class="align-c"><b>Mục đích tích hợp</b></td>
							<td colspan="2" class="align-c"><b>Thời hạn tích hợp</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>				   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Mã số thuế</b></td>
								<td class="align-c"><b>Tên</b></td>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
						<tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td>
						   <td class="align-c">(9)</td>
						   <td class="align-c">(10)</td>							   
						</tr>
						<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTDKTH/DKTH">
							<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-l"><xsl:value-of select="TLHDon"/></td>
								  <td class="align-l"><xsl:value-of select="KHMSHDon"/></td>
								  <td class="align-l"><xsl:value-of select="KHHDon"/></td>
								  <td class="align-l"><xsl:value-of select="MST"/></td>
								  <td class="align-l"><xsl:value-of select="Ten"/></td>
								  <td class="align-l"><xsl:value-of select="MDich"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="GChu"/></td>
								</tr>
						</xsl:for-each>





						
						
				</table> 
				
			</div>		
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_01_DKTD_HDDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>