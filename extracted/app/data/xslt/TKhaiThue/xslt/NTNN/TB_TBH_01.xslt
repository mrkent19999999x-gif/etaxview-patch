<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-01TNKDCK">
		<xsl:with-param name="mauTKhai"   select="'01/TBH-TB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'Áp dụng miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần giữa Việt Nam và (tên Nước/Vùng lãnh thổ ký kết) đối với các tổ chức nhận tái bảo hiểm nước ngoài có thu nhập từ kinh doanh, không thực hiện chế độ kế toán Việt Nam'"/>
	  </xsl:call-template>
		  
	<div class="ndungtkhai_div">
    <div class="content">
         <div><i>Áp dụng miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần giữa Việt Nam và <xsl:value-of select="$tkchinh/nuocNgoai"/> đối với các tổ chức nhận tái bảo hiểm nước ngoài có thu nhập từ kinh doanh, không thực hiện chế độ kế toán Việt Nam</i></div><br/>
 
  <!-- 1. Đối tượng được miễn, giảm thuế theo Hiệp định: -->
  
 <div><b>1. Đối tượng được miễn, giảm thuế theo Hiệp định [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/doiTuongMGiam = 'true' "> X </xsl:if>]</b></div><br/>
         <table border="1">
             <tr>
				 <td class="align-c">1.1</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tenDayDu"/></td>
							</tr>
							<tr>
								 <td colspan="3"><i>Giấy phép kinh doanh hoặc Giấy phép hành nghề số: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/soGiayPhepKDoanh"/></i></td>
							</tr>
							<tr>
								 <td>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DoiTuongDuocMGiam/Muc1_1/ngayCap, 'dd/mm/yyyy')"/></td>
								 <td>tại: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tai"/></td>
								 <td>Cơ quan cấp: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/coQuanCap"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.2</td>
				 <td>Tên sử dụng trong giao dịch: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/muc1_2"/></td>
			 </tr>
			 <tr>
				 <td class="align-c">1.3.a</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Địa chỉ tại Việt Nam: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTaiVietNam"/></td>
							</tr>
							<tr>
								 <td>Số điện thoại: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/soDienThoai"/></td>
								 <td>Số Fax: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/soFax"/></td>
								 <td>E-mail: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/eMail"/></td>
							</tr>
							<tr>
								 <td colspan="3">Địa chỉ trên là:</td>
							</tr>
							<tr>
                                <td><i>A. Nơi làm việc [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/noiLamViec = 'true' "> X </xsl:if>]</i></td>
                                <td><i>B. Nơi lưu trú [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/noiLuuTru = 'true' "> X </xsl:if>]</i></td>
                                <td><i>C. Văn phòng ĐD [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/vanPhongDD = 'true' "> X </xsl:if>]</i></td>
                            </tr>
                            <tr>
                                <td><i>D. Cơ sở thường trú [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/coSoThuongTru = 'true' "> X </xsl:if>]</i></td>
                                <td><i>E. Khác [ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/khac = 'true' "> X </xsl:if>] </i></td>
                                <td><i>Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/neuRo"/></i></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.3.b</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="2">Địa chỉ giao dịch tại Việt Nam <i>(nếu khác với địa chỉ nêu trên)</i>: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3b/diaChiTaiVietNam"/></td>
							</tr>
							<tr>
								 <td colspan="2">Số điện thoại:<xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3b/soDienThoai"/></td>
							</tr>
							<tr>
								 <td>Số Fax: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3b/soFax"/></td>
								 <td>E-mail: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3b/eMail"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.4</td>
				 <td>
				     <table>
							<tr>
								 <td>Mã số thuế tại Việt Nam: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_4/mstTaiVietNam"/></td>
							</tr>
							<tr>
								 <td>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_4/lyDo"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.5</td>
				 <td>Thời gian có mặt tại Việt Nam hoặc thực hiện hoạt động tại Việt Nam: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/muc1_5"/></td>
			</tr>
			 <tr>
				 <td class="align-c">1.6</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="2">Địa chỉ tại Nước ký kết: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_6/diaChiTaiNuocKyKet"/></td>
							</tr>
							<tr>
								 <td colspan="2">Số điện thoại:<xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_6/soDienThoai"/></td>
							</tr>
							<tr>
								 <td>Số Fax: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_6/soFax"/></td>
								 <td>E-mail: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_6/eMail"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.7</td>
				 <td>
				     <table class="tkhai_table">
							<tr>
								 <td colspan="4">Tư cách pháp lý tại Nước ký kết:</td>
							</tr>
							<tr>
							         <td><i>A. Pháp nhân</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/phapNhan = 'true' "> X </xsl:if>]</i></td>
								     <td><i>B. Liên danh không tạo pháp nhân</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/lienDanhKTaoPhapNhan = 'true' "> X  </xsl:if>]</i></td>
							</tr>
							<tr>
							         <td colspan="3"><i>AB. Khác (Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_7/neuRo"/>)</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/khac = 'true' "> X  </xsl:if>]</i></td>
							</tr>
					</table>
				</td>
			</tr>
			<tr>
				 <td class="align-c">1.8</td>
				 <td>
				     <table>
							<tr>
								 <td>Mã số thuế tại Nước ký kết: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_8/mstTaiNuocKyKet"/></td>
							</tr>
							<tr>
								 <td>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_8/lyDo"/></td>
							</tr>
					</table>
				</td>
			</tr>
		</table>
		<br/>
 <!-- 2. Đại diện được uỷ quyền: -->
  
    <div><b>2. Đại diện được uỷ quyền: [ <xsl:if test="$tkchinh/DaiDienUyQuyen/daiDienUQ = 'true' "> X </xsl:if>]</b></div><br/>
         <table border="1">
             <tr>
				 <td class="align-c">2.1</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/tenDayDu"/></td>
							</tr>
							<tr>
                                <td><i>A.  CMND [ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/cmnd = 'true' "> X </xsl:if>]</i></td>
                                <td><i>B. Hộ chiếu [ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/hoChieu = 'true' "> X </xsl:if>]</i></td>
                                <td><i>C. Giấy chứng nhận kinh doanh/đầu tư [ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/giayChungNhanKD = 'true' ">  X </xsl:if> ]</i></td>
                            </tr>
                            <tr>
                                <td colspan="3"><i>D. Khác (nêu rõ: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/neuRo"/>) [ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/khac = 'true' "> X </xsl:if>] </i></td>
							</tr>
							<tr>
								 <td colspan="3">Số: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/so"/></td>
							</tr>
							<tr>
								 <td>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DaiDienUyQuyen/Muc2_1/ngayCap, 'dd/mm/yyyy')"/></td>
								 <td>tại: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/tai"/></td>
								 <td>Cơ quan cấp: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/coQuanCap"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">2.2</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Địa chỉ: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_2/diaChi"/></td>
							</tr>
							<tr>
								 <td>Số điện thoại: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_2/soDienThoai"/></td>
								 <td>Số Fax: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_2/soFax"/></td>
								 <td>E-mail: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_2/eMail"/></td>
							</tr>
					 </table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">2.3</td>
				 <td>
				     <table>
							<tr>
								 <td>Mã số thuế: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_3/mst"/></td>
							</tr>
							<tr>
								 <td>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_3/lyDo"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">2.4</td>
				 <td>
				     <table>
							<tr>
								 <td>Giấy uỷ quyền số: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_4/giayUyQuyenSo"/></td>
								 <td>ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DaiDienUyQuyen/Muc2_4/ngayUyQuyen, 'dd/mm/yyyy')"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">2.5</td>
				 <td>
				      <table class="tkhai_table">
							<tr>
								 <td colspan="4">Tư cách pháp lý</td>
							</tr>
							
							    <tr>
							         <td><i>A. Pháp nhân</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/phapNhan = 'true' "> X </xsl:if>]</i></td>
								     <td><i>D. Cá nhân hành nghề phụ thuộc</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/caNhanHanhNghePhuThuoc = 'true' "> X  </xsl:if>]</i></td>
							    </tr>
							    <tr>
							         <td><i>B. Liên danh không tạo thành pháp nhân </i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/lienDoanhKTaoThanhPhapNhan = 'true' "> X  </xsl:if>]</i></td>
								     <td><i>E. Khác <br/> Nêu rõ: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_5/neuRo"/></i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/khac = 'true' "> X  </xsl:if>]</i></td>
							    </tr>
							    <tr>
							         <td><i>C. Đại lý thuế (nếu có) </i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/daiLyThue = 'true' "> X  </xsl:if>]</i></td>
								     <td></td>
								     <td></td>
							    </tr>
                        </table>
				 </td>
			</tr>
		</table>
       <br/> 
 <!-- 3. Đối tượng chi trả thu nhập: -->
  
    <div><b>3. Đối tượng chi trả thu nhập</b></div><br/>
    <div><i>(Trường hợp nhiều đối tượng chi trả thu nhập, phải lập bảng kê kèm theo Thông báo này)</i></div><br/>
         <table border="1">
             <tr>
				 <td class="align-c">3.1</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/tenDayDu"/></td>
							</tr>
							<tr>
                                <td colspan="2"><i>A.  CMND [ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/cmnd = 'true' "> X </xsl:if>]</i></td>
                                <td><i>B. Hộ chiếu [ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/hoChieu = 'true' ">  X  </xsl:if>]</i></td>
                            </tr>
                            <tr>
                                <td colspan="2"><i>C. Giấy phép kinh doanh hoặc Giấy phép hành nghề [ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/giayPhepKD = 'true' "> X  </xsl:if>]</i></td>
                               <td><i>D. Khác (nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/neuRo"/>) [ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/khac = 'true' "> X  </xsl:if>]</i></td>
                            </tr>
 							<tr>
								 <td colspan="3">Số: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/so"/></td>
							</tr>
							<tr>
								 <td>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DoiTuongChiTra/Muc3_1/ngayCap, 'dd/mm/yyyy')"/></td>
								 <td>tại: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/tai"/></td>
								 <td>Cơ quan cấp: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/coQuanCap"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">3.2</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Địa chỉ: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_2/diaChi"/></td>
							</tr>
							<tr>
								 <td>Số điện thoại: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_2/soDienThoai"/></td>
								 <td>Số Fax: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_2/soFax"/></td>
								 <td>E-mail: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_2/eMail"/></td>
							</tr>
					 </table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">3.3</td>
				 <td>
				     <table>
							<tr>
								 <td>Mã số thuế: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_3/mst"/></td>
							</tr>
							<tr>
								 <td>Nếu không có nêu lí do: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_3/lyDo"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">3.4</td>
				 <td>
				      <table class="tkhai_table">
							<tr>
								 <td colspan="4">Tư cách pháp lý:</td>
							</tr>
							
							    <tr>
							         <td><i>A. Pháp nhân</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/phapNhan = 'true' "> X </xsl:if>]</i></td>
								     <td><i>C. Cá nhân hành nghề độc lập</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/caNhanHanhNgheDLap = 'true' "> X  </xsl:if>]</i></td>
							    </tr>
							    <tr>
							         <td><i>B. Liên danh không tạo pháp nhân  </i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/lienDanhKTaoPhapNhan = 'true' "> X  </xsl:if>]</i></td>
								     <td><i>D. Khác (Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_4/neuRo"/>)</i></td>
								     <td><i>[ <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/khac = 'true' "> X  </xsl:if>]</i></td>
							    </tr>
                        </table>
				 </td>
			</tr>
		</table>
     <!-- 4.	Nội dung miễn, giảm thuế: -->
    <div><b>4. Nội dung miễn, giảm thuế:</b></div><br/>
    <div>4.1. Số thuế dự kiến thông báo miễn, giảm <i>(nếu có)</i>: <xsl:value-of select="$tkchinh/NoiDungMGiam/muc4_1"/></div><br/>
    <div>4.2. Mức thuế suất thông báo áp dụng (trong trường hợp thông báo áp dụng mức thuế suất giảm): <xsl:value-of select="$tkchinh/NoiDungMGiam/muc4_2"/></div><br/>
    <div>4.3. Thời gian phát sinh thu nhập <i>(ghi rõ năm đề nghị áp dụng Hiệp định)</i>: <xsl:value-of select="$tkchinh/NoiDungMGiam/muc4_3"/></div><br/>
    <!-- 5.      Thông tin về giao dịch phát sinh thu nhập liên quan đến áp dụng Hiệp định: -->
    <div><b>5. Thông tin về giao dịch phát sinh thu nhập liên quan đến áp dụng Hiệp định:</b></div><br/>
    <div>5.1.	Giải trình tóm tắt về giao dịch:</div><br/>
    <div><xsl:value-of select="$tkchinh/ThongTinGDich/muc5_1"/></div><br/>
    <div>5.2.	Giải trình khác: <xsl:value-of select="$tkchinh/ThongTinGDich/muc5_2"/></div><br/>
    <div>5.3.	Tài liệu gửi kèm:</div><br/>
    <table>
        <xsl:if test="$tkchinh/ThongTinGDich/muc5_3i = 'true' ">
		     <tr>
			     <td>i) Bản gốc/bản chụp đã được chứng thực Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự (cho năm ngay trước năm nộp Thông báo (dự kiến) );</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iv) Tài liệu khác (nếu có)</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		</xsl:if>
		<xsl:if test="$tkchinh/ThongTinGDich/muc5_3ii = 'true' ">
		     <tr>
			     <td>i) Bản gốc/bản chụp đã được chứng thực Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự (cho năm ngay trước năm nộp Thông báo (dự kiến) );</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iv) Tài liệu khác (nếu có)</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		</xsl:if>
		<xsl:if test="$tkchinh/ThongTinGDich/muc5_3iii = 'true' ">
		     <tr>
			     <td>i) Bản gốc/bản chụp đã được chứng thực Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự (cho năm ngay trước năm nộp Thông báo (dự kiến) );</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		     <tr>
			     <td>iv) Tài liệu khác (nếu có)</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		</xsl:if>
		<xsl:if test="$tkchinh/ThongTinGDich/muc5_3iv = 'true' ">
		     <tr>
			     <td>i) Bản gốc/bản chụp đã được chứng thực Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự (cho năm ngay trước năm nộp Thông báo (dự kiến) );</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iv) Tài liệu khác (nếu có)</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		</xsl:if>
	</table>

    <xsl:call-template name="tkhaiFooter"/> 
    
			<br/> <div>---------------------------------------------------------------</div><br/>
			<div><b><u>Ghi chú: </u></b></div><br/>
			<div>1.	Đề nghị đánh dấu (x) vào ô trống thích hợp.  </div><br/>
			<div>2.	Trường hợp người nộp thuế uỷ quyền cho đại diện hợp pháp thực hiện thủ tục áp dụng Hiệp định, bên uỷ quyền và bên được uỷ quyền phải kê khai đầy đủ các thông tin kể cả phần 1 và 2 của Thông báo này.</div><br/>
			
	<div class="align-c"><b>PHẦN DÀNH CHO CƠ QUAN THUẾ</b></div><br/>
	<div>Cục Thuế: <xsl:value-of select="$tkchinh/PhanDanhChoCQT/cucThue"/></div><br/>
	<div>Xác nhận Công ty: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tenDayDu"/></div><br/>
	<div>Mã số thuế: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_4/mstTaiVietNam"/></div><br/>
	<div>Địa chỉ: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3b/diaChiTaiVietNam"/></div><br/>
    <div>1. Đã nộp đầy đủ Hồ sơ Thông báo (dự kiến) thuộc diện miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần giữa Việt Nam và <xsl:value-of select="$tkchinh/PhanDanhChoCQT/nuocNgoai"/></div><br/>
    <div>2. Công ty <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tenDayDu"/> được tạm thời chưa phải nộp thuế TNDN đối với thu nhập phát sinh từ các hợp đồng tái bảo hiểm đã ký và sẽ ký kết với các công ty tái bảo hiểm Việt Nam trong năm <xsl:value-of select="$tkchinh/NoiDungMGiam/muc4_3"/>.</div><br/>
    <div>3. Trong vòng quý I của năm <xsl:value-of select="$tkchinh/PhanDanhChoCQT/namLienKe"/>, Công ty <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tenDayDu"/> có trách nhiệm gửi cho Cục Thuế <xsl:value-of select="$tkchinh/PhanDanhChoCQT/cucThue"/> các tài liệu sau để được miễn, giảm thuế theo Hiệp định:</div><br/>
    <div>i) Bản gốc Giấy chứng nhận cư trú đã được hợp pháp hoá lãnh sự của năm tính thuế <xsl:value-of select="$tkchinh/PhanDanhChoCQT/namTinhThue"/> </div><br/>
    <div>ii) Thông báo (chính thức) theo mẫu số 02/TBH-TB ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/2/2011 của Bộ Tài chính.</div><br/>
    <div>iii) Bản chụp có xác nhận của người nộp thuế các Hợp đồng tái bảo hiểm đã thực hiện trong năm (bao gồm cả những hợp đồng đã có trong kế hoạch và những hợp đồng ngoài kế hoạch đã gửi Cơ quan thuế) nhưng chưa nộp cho Cơ quan thuế.</div><br/>
    <br/>
    <br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	
    <div class="align-c"><i><xsl:value-of select="$tkchinh/CQTKy/diaDiemCQTKy"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CQTKy/ngayCQTKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CQTKy/ngayCQTKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CQTKy/ngayCQTKy,'yyyy')"/></i></div><br/>
    <div class="align-c"><b>CỤC TRƯỞNG <br/>(hoặc) KT. CỤC TRƯỞNG<br/>PHÓ CỤC TRƯỞNG</b></div><br/>
    <div class="align-c"><i>(ký, ghi rõ họ tên, đóng dấu)</i></div><br/>
    <br/>
    <br/>
    <br/>
    <div class="align-c"><xsl:value-of select="$tkchinh/CQTKy/nguoiCQTKy"/></div><br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>    
        </div>	
        </div>
        
    		</xsl:template>		
</xsl:stylesheet>
