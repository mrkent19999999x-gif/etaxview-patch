<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_02qtt_tt80">
		<xsl:with-param name="mauTKhai"   select="'02/QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân cư trú có thu nhập từ tiền lương, tiền công)'"/>
	  </xsl:call-template>
	  
			  <div class="ndungtkhai_div">
					<div class="content">
								 <table class="tkhai_table">
								  <tr>
									<td class="align-c"><b>STT</b></td>
									<td class="align-c" colspan="3"><b>Chỉ Tiêu</b></td>
									<td class="align-c"><b>Mã chỉ tiêu</b></td>
									<td class="align-c"><b>Đơn vị tính</b></td>
									<td class="align-c"><b>Số tiền/Số người</b></td>
									<td class="align-c"><b>Lý do</b></td>
								  </tr>
										<tr>
											<td rowspan="4" class="align-c">1</td>
											<td colspan="3"><b>Tổng thu nhập chịu thuế (TNCT) trong kỳ [20]=[21]+[23]</b></td>
											<td class="align-c"><b>[20]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct20"  /></td>
										</tr>
										<tr>
											<td rowspan="2" class="align-c">a</td>
											<td colspan="2">Tổng TNCT phát sinh tại Việt Nam </td>
											<td class="align-c"><b>[21]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct21"  /></td>
										</tr>
										<tr>
											
											<td colspan="2">Trong đó tổng TNCT phát sinh tại Việt Nam được miễn giảm theo Hiệp định (nếu có)</td>
											<td class="align-c"><b>[22]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct22"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">b</td>
											<td colspan="2">Tổng TNCT phát sinh ngoài Việt Nam </td>
											<td class="align-c"><b>[23]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct23"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>2</b></td>
											<td colspan="3"><b>Số người phụ thuộc</b></td>
											<td class="align-c"><b>[24]</b></td>
											<td class="align-c">Người</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct24"  /></td>
										</tr>
										<tr>
											<td rowspan="6" class="align-c">3</td>
											<td colspan="3"><b>Các khoản giảm trừ ([25]=[26]+[27]+[28]+[29]+[30])</b></td>
											<td class="align-c"><b>[25]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct25"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">a</td>
											<td colspan="2">Cho bản thân cá nhân</td>
											<td class="align-c"><b>[26]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct26"  /></td>
										</tr>
										
										<tr>
											<td rowspan="1" class="align-c">b</td>
											<td colspan="2">Cho những người phụ thuộc được giảm trừ </td>
											<td class="align-c"><b>[27]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct27"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">c</td>
											<td colspan="2">Từ thiện, nhân đạo, khuyến học</td>
											<td class="align-c"><b>[28]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct28"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">d</td>
											<td colspan="2">Các khoản đóng bảo hiểm được trừ</td>
											<td class="align-c"><b>[29]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct29"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">e</td>
											<td colspan="2">Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
											<td class="align-c"><b>[30]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct30"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>4</b></td>
											<td colspan="3"><b>Tổng thu nhập tính thuế ([31]=[20]-[22]-[25])</b></td>
											<td class="align-c"><b>[31]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct31"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>5</b></td>
											<td colspan="3"><b>Tổng số thuế thu nhập cá nhân (TNCN) phát sinh trong kỳ</b></td>
											<td class="align-c"><b>[32]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct32"  /></td>
										</tr>
										<tr>
											<td rowspan="6" class="align-c"><b>6</b></td>
											<td colspan="3"><b>Tổng số thuế đã nộp trong kỳ ([33]=[34]+[35]+[36]-[37]-[38])Trong đó:</b></td>
											<td class="align-c"><b>[33]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct33"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">a</td>
											<td colspan="2">Số thuế đã khấu trừ tại tổ chức trả thu nhập</td>
											<td class="align-c"><b>[34]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct34"  /></td>
										</tr>
										
										<tr>
											<td rowspan="1" class="align-c">b</td>
											<td colspan="2">Số thuế đã nộp trong năm không qua tổ chức trả thu nhập</td>
											<td class="align-c"><b>[35]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct35"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">c</td>
											<td colspan="2">Số thuế đã nộp ở nước ngoài được trừ (nếu có)</td>
											<td class="align-c"><b>[36]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct36"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">d</td>
											<td colspan="2">Số thuế đã khấu trừ, đã nộp ở nước ngoài trùng do quyết toán vắt năm</td>
											<td class="align-c"><b>[37]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct37"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">đ</td>
											<td colspan="2">Số thuế đã nộp trong năm không qua tổ chức trả thu nhập trùng do quyết toán vắt năm</td>
											<td class="align-c"><b>[38]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct38"  /></td>
										</tr>
										<tr>
											<td rowspan="3" class="align-c"><b>7</b></td>
											<td colspan="3"><b>Tổng số thuế TNCN được giảm trong kỳ [39]=[40]+[41]</b></td>
											<td class="align-c"><b>[39]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct39"  /></td>
										</tr>
										<tr>
											<td rowspan="1" class="align-c">a</td>
											<td colspan="2">Số thuế phải nộp trùng do quyết toán vắt năm</td>
											<td class="align-c"><b>[40]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct40"  /></td>
										</tr>
										
										<tr>
											<td rowspan="1" class="align-c">b</td>
											<td colspan="2">Tổng số thuế TNCN được giảm khác </td>
											<td class="align-c"><b>[41]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct41"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>8</b></td>
											<td colspan="3"><b>Tổng số thuế còn phải nộp trong kỳ [42]=([32]-[33]-[39])>0</b></td>
											<td class="align-c"><b>[42]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct42"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>9</b></td>
											<td colspan="3"><b>Số thuế được miễn do cá nhân có số tiền thuế phải nộp sau quyết toán từ 50.000 đồng trở xuống </b></td>
											<td class="align-c"><b>[43]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct43"  /></td>
										</tr>
										<tr>
											<td class="align-c"><b>10</b></td>
											<td colspan="3"><b>Tổng số thuế nộp thừa trong kỳ</b></td>
											<td class="align-c"><b>[44]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct44"  /></td>
										</tr>
										
										
										<tr>
											<td rowspan="4" class="align-c"><b>11</b></td>
											<td rowspan="3" class="align-c">a</td>
											<td colspan="2"><b>Tổng số thuế đề nghị hoàn trả [45]=[46]+[47]</b></td>
											<td class="align-c"><b>[45]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct45"  /></td>
										</tr>
										<tr>
											<td rowspan="2" class="align-c">Trong đó:</td>
											<td colspan="1">Số thuế hoàn trả cho người nộp thuế</td>
											<td class="align-c"><b>[46]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct46"  /></td>
										</tr>
										<tr>
											<td>Số thuế bù trừ cho khoản phải nộp ngân sách nhà nước khác</td>
											<td class="align-c"><b>[47]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct47"  /></td>
										</tr>
										<tr>
											<td class="align-c">b</td>
											<td colspan="2"><b>Tổng số thuế bù trừ cho các phát sinh của kỳ sau [48]=[44]-[45]</b></td>
											<td class="align-c"><b>[48]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)" /></td>
											<td class="align-l"><xsl:value-of select="$tkchinh/lyDo/lyDo_ct48"  /></td>
										</tr>
								</table>
								
								<div>Số tiền hoàn trả: Bằng số: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TTinHoanThue/soTienHoanTra)" />&#160;&#160;&#160;&#160;&#160;&#160;đồng</div>
							<div>	Hình thức hoàn trả:</div>
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/TTinHoanThue/HinhThucHoanTra/chuyenKhoan='true' or $tkchinh/TTinHoanThue/HinhThucHoanTra/chuyenKhoan='1'">x</xsl:if>]Chuyển khoản: Số CCCD: &#160;&#160;<xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/soCCCD" /> &#160;&#160;&#160;&#160;Tên chủ tài khoản: &#160;&#160;<xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/tenChuTaiKhoan" /></div>
							
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tài khoản số: <xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/soTaiKhoan" />&#160;&#160;&#160;&#160; Tại Ngân hàng/KBNN:<xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/tenNganHang" /></div>
							
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[<xsl:if test="$tkchinh/TTinHoanThue/HinhThucHoanTra/tienMat='true' or $tkchinh/TTinHoanThue/HinhThucHoanTra/tienMat='1'">x </xsl:if>]Tiền mặt: </div>
							
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người nhận tiền: <xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/tenNguoiNhan"/></div>
							
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;CMND/CCCD/HC số: <xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/soGiayTo"/>&#160;&#160;&#160;&#160; 
							Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinHoanThue/HinhThucHoanTra/ngayCap, 'dd/mm/yyyy')" />&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160; 
							
							Nơi cấp: <xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/noiCap"/></div>
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nơi nhận tiền hoàn thuế: <xsl:value-of select="$tkchinh/TTinHoanThue/HinhThucHoanTra/noNhanTien"/></div>
							
							
							<div>Khoản nợ, khoản thu phát sinh đề nghị được bù trừ:</div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
									<tr>
										<td class="align-c" rowspan="2"><b>STT</b></td>
										<td class="align-c" colspan="10"><b>Thông tin khoản nợ/khoản thu phát sinh</b></td>
										<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp đề nghị bù trừ với số tiền nộp thừa</b></td>
										<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp sau bù trừ</b></td>
									</tr>
									<tr>
										<td class="align-c" colspan="1"><b>MST của NNT khác (nếu có)</b></td>
										<td class="align-c" colspan="1"><b>Tên NNT khác (nếu có)</b></td>
										<td class="align-c" rowspan="1"><b>Mã định danh khoản phải nộp (ID) (nếu có)</b></td>
										<td class="align-c" colspan="1"><b>Nội dung khoản   nợ/phát sinh</b></td>
										<td class="align-c" colspan="1"><b>Chương</b></td>
										<td class="align-c" rowspan="1"><b>Tiểu mục</b></td>
										<td class="align-c" colspan="1"><b>Tên CQT quản lý khoản thu</b></td>
										<td class="align-c" colspan="1"><b>Địa bàn hành chính</b></td>
										<td class="align-c" rowspan="1"><b>Hạn nộp</b></td>
										<td class="align-c" colspan="1"><b>Số tiền còn phải nộp</b></td>
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
										<td class="align-c">(11)</td>
										<td class="align-c">(12)</td>
										<td class="align-c">(13)=(11)–(12)</td>
										
									</tr>
									<xsl:for-each select="$tkchinh/TTinBuTru/TTinKhoanNoKhoanThuPS">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct02" /></td>
							  <td class="align-c"><xsl:value-of select="ct03" /></td>
							  <td class="align-c"><xsl:value-of select="ct04" /></td>
							  <td class="align-c"><xsl:value-of select="ct05" /></td>
							  <td class="align-c"><xsl:value-of select="ct06_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct07_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct08_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct09_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct10" /></td>	  
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  
							</tr>
						</xsl:for-each>
							</table>
							
						</div>
					
			<xsl:call-template name="tkhaiFooter"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>
	</xsl:template>
	
</xsl:stylesheet>