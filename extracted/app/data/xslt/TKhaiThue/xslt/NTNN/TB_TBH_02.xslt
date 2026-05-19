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
		<xsl:with-param name="mauTKhai"   select="'02/TBH-TB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
	<div class="ndungtkhai_div">
    <div class="content">
         <div class="align-c"><i>Áp dụng miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần giữa Việt Nam và <br/> <xsl:value-of select="$tkchinh/nuocNgoai"/>   đối với các tổ chức nhận tái bảo hiểm nước ngoài có thu nhập từ kinh doanh <br/>không thực hiện chế độ kế toán Việt Nam </i></div><br/>
 
  <!-- 1. Đối tượng được miễn, giảm thuế theo Hiệp định: -->
        <tr>
			<td><b>1. Đối tượng được miễn, giảm thuế theo Hiệp định: </b></td>
		</tr>
        <xsl:if test="$tkchinh/DoiTuongDuocMGiam/doiTuongMGiam = 'true' ">            
                <div><b>1. Đối tượng được miễn, giảm thuế theo Hiệp định [ X ]</b></div><br/>
        </xsl:if>     
        <xsl:if test="$tkchinh/DoiTuongDuocMGiam/doiTuongMGiam = '' ">            
                <div><b>1. Đối tượng được miễn, giảm thuế theo Hiệp định [  ]</b></div><br/>
        </xsl:if>  
         <table class="tkhai_table">
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
								 <td>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DoiTuongDuocMGiam/Muc1_1/ngayCap,  'dd/mm/yyyy')"/></td>
								 <td>tại: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/tai"/></td>
								 <td>Cơ quan cấp: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_1/coQuanCap"/></td>
							</tr>
					</table>
				</td>
			</tr>
			 <tr>
				 <td class="align-c">1.2</td>
				 <td>Tên sử dụng trong giao dịch <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/muc1_2"/></td>
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
                                <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/noiLamViec = 'true' ">                                
                                    <td colspan="3"><i>A. Nơi làm việc [ X ]  B. Nơi lưu trú [  ]  C. Văn phòng ĐD [  ]  D. Cơ sở thường trú [  ] E. Khác [  ]</i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/noiLuuTru = 'true' ">                                
                                    <td colspan="3"><i>A. Nơi làm việc [  ]  B. Nơi lưu trú [ X ]  C. Văn phòng ĐD [  ]  D. Cơ sở thường trú [  ] E. Khác [  ]</i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/vanPhongDD = 'true' ">                                
                                    <td colspan="3"><i>A. Nơi làm việc [  ]  B. Nơi lưu trú [  ]  C. Văn phòng ĐD [ X ]  D. Cơ sở thường trú [  ] E. Khác [  ]</i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/coSoThuongTru = 'true' ">                                
                                    <td colspan="3"><i>A. Nơi làm việc [  ]  B. Nơi lưu trú [  ]  C. Văn phòng ĐD [  ]  D. Cơ sở thường trú [ X ] E. Khác [  ]</i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/diaChiTren/khac = 'true' ">                                
                                    <td colspan="3"><i>A. Nơi làm việc [  ]  B. Nơi lưu trú [  ]  C. Văn phòng ĐD [  ]  D. Cơ sở thường trú [  ] E. Khác [ X ] Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_3a/neuRo"/></i></td>
                                </xsl:if>
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
							<xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/phapNhan = 'true' ">
							<i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[ X ]</td>
								     <td>B. Liên danh không tạo pháp nhân</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td colspan="3">AB. Khác (Nêu rõ:)</td>
								     <td>[  ]</td>
							    </tr>
							</i>
							</xsl:if>
							<xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/lienDanhKTaoPhapNhan = 'true' ">
							<i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>B. Liên danh không tạo pháp nhân</td>
								     <td>[ X ]</td>
							    </tr>
							    <tr>
							         <td colspan="3">AB. Khác (Nêu rõ:)</td>
								     <td>[  ]</td>
							    </tr>
							</i>
							</xsl:if>
							<xsl:if test="$tkchinh/DoiTuongDuocMGiam/Muc1_7/DoiTuong/khac = 'true' ">
							<i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>B. Liên danh không tạo pháp nhân</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td colspan="3">AB. Khác (Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongDuocMGiam/Muc1_7/neuRo"/>)</td>
								     <td>[ X ]</td>
							    </tr>
							</i>
							</xsl:if>

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
		</table> <br/>		
		
 <!-- 2. Đại diện được uỷ quyền: -->
       <tr>
			<td><b>2. Đại diện được uỷ quyền:</b></td>
		</tr>
        <xsl:if test="$tkchinh/DaiDienUyQuyen/daiDienUQ = 'true' ">            
                <div><b>2. Đại diện được uỷ quyền: [ X ]</b></div><br/>
        </xsl:if>     
        <xsl:if test="$tkchinh/DaiDienUyQuyen/daiDienUQ = '' ">            
                <div><b>2. Đại diện được uỷ quyền: [  ]</b></div><br/>
        </xsl:if>  
         <table class="tkhai_table">
             <tr>
				 <td class="align-c">2.1</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/tenDayDu"/></td>
							</tr>
							<tr>
                                <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/cmnd = 'true' ">                                
                                    <td colspan="3"><i>A.  CMND [ X ]  B. Hộ chiếu [  ]  C. Giấy chứng nhận kinh doanh/đầu tư [  ]  D. Khác(nêu rõ) [  ] </i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/hoChieu = 'true' ">                                
                                    <td colspan="3"><i>A.  CMND [  ]  B. Hộ chiếu [ X ]  C. Giấy chứng nhận kinh doanh/đầu tư [  ]  D. Khác(nêu rõ) [  ] </i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/giayChungNhanKD = 'true' ">                                
                                    <td colspan="3"><i>A.  CMND [  ]  B. Hộ chiếu [  ]  C. Giấy chứng nhận kinh doanh/đầu tư [ X ]  D. Khác(nêu rõ) [  ] </i></td>
                                </xsl:if>
                                <xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_1/GiayChungNhan/khac = 'true' ">                                
                                    <td colspan="3"><i>A.  CMND [  ]  B. Hộ chiếu [  ]  C. Giấy chứng nhận kinh doanh/đầu tư [  ]  D. Khác (nêu rõ: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/neuRo"/>) [ X ] </i></td>
                                </xsl:if>
							</tr>
							<tr>
								 <td colspan="3">Số: <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_1/so"/></td>
							</tr>
							<tr>
								 <td>Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DaiDienUyQuyen/Muc2_1/ngayCap,  'dd/mm/yyyy')"/></td>
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
							<xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/phapNhan = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[ X ]</td>
								     <td>D. Cá nhân hành nghề phụ thuộc</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo thành pháp nhân </td>
								     <td>[  ]</td>
								     <td>E. Khác</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>C. Đại lý thuế (nếu có) </td>
								     <td>[  ]</td>
								     <td></td>
								     <td></td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/lienDoanhKTaoThanhPhapNhan = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>D. Cá nhân hành nghề phụ thuộc</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo thành pháp nhân </td>
								     <td>[ X ]</td>
								     <td>E. Khác</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>C. Đại lý thuế (nếu có) </td>
								     <td>[  ]</td>
								     <td></td>
								     <td></td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/daiLyThue = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>D. Cá nhân hành nghề phụ thuộc</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo thành pháp nhân </td>
								     <td>[  ]</td>
								     <td>E. Khác</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>C. Đại lý thuế (nếu có) </td>
								     <td>[ X ]</td>
								     <td></td>
								     <td></td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/caNhanHanhNghePhuThuoc = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>D. Cá nhân hành nghề phụ thuộc</td>
								     <td>[ X ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo thành pháp nhân </td>
								     <td>[  ]</td>
								     <td>E. Khác</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>C. Đại lý thuế (nếu có) </td>
								     <td>[  ]</td>
								     <td></td>
								     <td></td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DaiDienUyQuyen/Muc2_5/DoiTuong/khac = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>D. Cá nhân hành nghề phụ thuộc</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo thành pháp nhân </td>
								     <td>[  ]</td>
								     <td>E. Khác <br/>(Nêu rõ <xsl:value-of select="$tkchinh/DaiDienUyQuyen/Muc2_5/neuRo"/>)</td>
								     <td>[ X ]</td>
							    </tr>
							    <tr>
							         <td>C. Đại lý thuế (nếu có) </td>
								     <td>[  ]</td>
								     <td></td>
								     <td></td>
							    </tr>
                                 </i>
							</xsl:if>
                        </table>
				 </td>
			</tr>
		</table><br/>
        
 <!-- 3. Đối tượng chi trả thu nhập: -->
  
    <div><b>3. Đối tượng chi trả thu nhập</b></div>
    <div><i>(Trường hợp nhiều đối tượng chi trả thu nhập, phải lập bảng kê kèm theo Thông báo này)</i></div>
         <table class="tkhai_table">
             <tr>
				 <td class="align-c">3.1</td>
				 <td>
				     <table>
							<tr>
								 <td colspan="3">Tên đầy đủ (viết hoa): <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/tenDayDu"/></td>
							</tr>
							<xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/cmnd = 'true' ">    
								<i>
							    <tr>
                                    <td colspan="2">A.  CMND [ X ]</td>
                                    <td>B. Hộ chiếu [  ]</td>
                                </tr>
                                <tr>
                                    <td colspan="2">C. Giấy phép kinh doanh hoặc Giấy phép hành nghề [  ]</td>
                                    <td>D. Khác [  ]</td>
                                </tr>
                                </i>
                            </xsl:if>
                            <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/hoChieu = 'true' ">    
								<i>
							    <tr>
                                    <td colspan="2">A.  CMND [  ]</td>
                                    <td>B. Hộ chiếu [ X ]</td>
                                </tr>
                                <tr>
                                    <td colspan="2">C. Giấy phép kinh doanh hoặc Giấy phép hành nghề [  ]</td>
                                    <td>D. Khác [  ]</td>
                                </tr>
                                </i>
                            </xsl:if>
                            <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/giayPhepKD = 'true' ">    
								<i>
							    <tr>
                                    <td colspan="2">A.  CMND [  ]</td>
                                    <td>B. Hộ chiếu [  ]</td>
                                </tr>
                                <tr>
                                    <td colspan="2">C. Giấy phép kinh doanh hoặc Giấy phép hành nghề [ X ]</td>
                                    <td>D. Khác [  ]</td>
                                </tr>
                                </i>
                            </xsl:if>
                            <xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_1/DoiTuong/khac = 'true' ">    
								<i>
							    <tr>
                                    <td colspan="2">A.  CMND [  ]</td>
                                    <td>B. Hộ chiếu [  ]</td>
                                </tr>
                                <tr>
                                    <td colspan="2">C. Giấy phép kinh doanh hoặc Giấy phép hành nghề [  ]</td>
                                    <td>D. Khác [ X ] (nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_1/neuRo"/>) </td>
                                </tr>
                                </i>
                            </xsl:if>
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
							<xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/phapNhan = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[ X ]</td>
								     <td>C. Cá nhân hành nghề độc lập</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo pháp nhân  </td>
								     <td>[  ]</td>
								     <td>D. Khác </td>
								     <td>[  ]</td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/lienDanhKTaoPhapNhan = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>C. Cá nhân hành nghề độc lập</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo pháp nhân  </td>
								     <td>[ X ]</td>
								     <td>D. Khác </td>
								     <td>[  ]</td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/caNhanHanhNgheDLap = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>C. Cá nhân hành nghề độc lập</td>
								     <td>[ X ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo pháp nhân  </td>
								     <td>[  ]</td>
								     <td>D. Khác </td>
								     <td>[  ]</td>
							    </tr>
                                 </i>
							</xsl:if>
							<xsl:if test="$tkchinh/DoiTuongChiTra/Muc3_4/DoiTuong/khac = 'true' ">
							     <i>
							    <tr>
							         <td>A. Pháp nhân</td>
								     <td>[  ]</td>
								     <td>C. Cá nhân hành nghề độc lập</td>
								     <td>[  ]</td>
							    </tr>
							    <tr>
							         <td>B. Liên danh không tạo pháp nhân  </td>
								     <td>[  ]</td>
								     <td>D. Khác (Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongChiTra/Muc3_4/neuRo"/>)</td>
								     <td>[ X ]</td>
							    </tr>
                                 </i>
							</xsl:if>
                        </table>
				 </td>
			</tr>
		</table><br/>
     <!-- 4.	Nội dung miễn, giảm thuế: -->
    <div><b>4. Nội dung miễn, giảm thuế:</b></div>
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
			     <td>i) Bản gốc (hoặc bản chụp đã được chứng thực) Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự trong năm tính thuế đó; </td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);	</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		</xsl:if>
		<xsl:if test="$tkchinh/ThongTinGDich/muc5_3ii = 'true' ">
		     <tr>
			     <td>i) Bản gốc (hoặc bản chụp đã được chứng thực) Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự trong năm tính thuế đó; </td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);	</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		</xsl:if>
		<xsl:if test="$tkchinh/ThongTinGDich/muc5_3iii = 'true' ">
		     <tr>
			     <td>i) Bản gốc (hoặc bản chụp đã được chứng thực) Giấy chứng nhận cư trú do Cơ quan thuế của nước cư trú cấp đã được hợp pháp hoá lãnh sự trong năm tính thuế đó; </td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>ii) Bảng kê các hợp đồng tái bảo hiểm đã hoặc dự kiến kí kết với các tổ chức, cá nhân tại Việt Nam (mẫu số 01-1/TBH-TB ban hành kèm theo TT số ...../2013/TT-BTC);	</td>
			     <td class="align-r">[  ]</td>
		     </tr>
		     <tr>
			     <td>iii) Giấy uỷ quyền (trong trường hợp uỷ quyền);</td>
			     <td class="align-r">[ X ]</td>
		     </tr>
		 </xsl:if>

	</table>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	
    <xsl:call-template name="tkhaiFooter"/> 
    
			<br/> <div>---------------------------------------------------------------</div><br/>
			<div><b><u>Ghi chú: </u></b></div><br/>
			<div>1.	Đề nghị đánh dấu (x) vào ô trống thích hợp.  </div><br/>
			<div>2.	Trường hợp người nộp thuế uỷ quyền cho đại diện hợp pháp thực hiện thủ tục áp dụng Hiệp định, bên uỷ quyền và bên được uỷ quyền phải kê khai đầy đủ các thông tin kể cả phần 1 và 2 của Thông báo này.</div><br/>\\
<div id="sigDiv"></div>
</td>
</tr>
</table>			
	</div>	
    </div>
        
    		</xsl:template>		
</xsl:stylesheet>
