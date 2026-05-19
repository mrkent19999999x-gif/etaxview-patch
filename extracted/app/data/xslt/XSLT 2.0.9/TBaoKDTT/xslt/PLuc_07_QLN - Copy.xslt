<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<xsl:variable name="PLuc" select="TBaoThue/PLuc" />
			<xsl:variable name="BkeTongHop" select="$PLuc/PL_1_07_QLN/BkeTongHop" />
			<xsl:variable name="BkeChiTiet" select="$PLuc/PL_1_07_QLN/BkeChiTiet" />
			<html>
				<body>
					<div class="content_kdt">
						<xsl:for-each select="$PLuc">
						  <div class="align-c">
						<b >BẢNG KÊ TỔNG HỢP<br/>
											SỐ TIỀN THUẾ NỢ, TIỀN PHẠT VÀ TIỀN CHẬM NỘP
											</b>
											</div>
											<div class="align-c">
											<i>
											(Kèm theo thông báo số
												<span >
													<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
														<span>
															<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />,
														</span>
													</xsl:if>
												</span>											
											ngày
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'dd')" />
											tháng
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'mm')" />
											năm
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'yyyy')" />)				
											</i>
											</div>
						<br/>
							
							<table width="100%">
								<tr width="50%">
									<td class="align-l fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									</td>
									<td class="align-r fz17px" width="50%">
										<xsl:if test="$BkeTongHop/NDungBkeTHop/loaiTien !=''">
							<span>
								<i>Đơn vị tiền:  <xsl:value-of select="$BkeTongHop/NDungBkeTHop/loaiTien" /></i>
							</span>
						</xsl:if>
									</td>
								</tr>
							</table>
							<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet">
							
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%">
												STT
											</td>
											<td id="td_table"  width="50%">
												Khoản thuế
											</td>
											<td id="td_table"  width="20%">
												Tiểu mục
											</td>
											<td id="td_table"  width="20%">
												Số tiền thuế còn nợ
											</td>
											
										</tr>										
										<xsl:for-each select="$BkeTongHop/NDungBkeTHop/NDungCTBkeTHop">
										<xsl:variable name="pos2" select="position()"/>
											<tr>
											<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="$pos2" />
													</countNo>
												</td>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienConNo !=''">
															<xsl:value-of select="ihtkk:formatNumber(soTienConNo)" />
														</xsl:if>
													</span>
												</td>
												
																				
											</tr>
										</xsl:for-each>
										<tr>
											<td colspan = "2" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td/>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeTongHop/NDungBkeTHop/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeTongHop/NDungBkeTHop/tongCong)" />
												</xsl:if>
											</td>
											
										</tr>
									</tbody>
								</table>
								<br/>
								<br/>
								<br/>
								<br/>
								</xsl:for-each>
								<div class="align-c">
						<b >BẢNG KÊ CHI TIẾT<br/>
											SỐ TIỀN THUẾ NỢ, TIỀN PHẠT VÀ TIỀN CHẬM NỘP
											</b>	
											</div>
											<div class="align-c">
											<i>
											(Kèm theo thông báo số
												<span >
													<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
														<span>
															<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />,
														</span>
													</xsl:if>
												</span>											
											ngày
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'dd')" />
											tháng
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'mm')" />
											năm
												<xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'yyyy')" />)					
											</i>
											</div>
							<br/>
							<table width="100%">
								<tr width="50%">
									<td class="align-l fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									</td>
									<td class="align-r fz17px" width="50%">
										<xsl:if test="$BkeChiTiet/NDungBkeCTiet/loaiTien !=''">
							<span>
								<i>Đơn vị tiền:  <xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/loaiTien" /></i>
							</span>
						</xsl:if>
									</td>
								</tr>
							</table>
							
							<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet">
							<b>I. TỔNG SỐ TIỀN CHƯA NỘP TÍNH ĐẾN 
							NGÀY
							<xsl:value-of select="ihtkk:stringDatetime($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/ngayAnDinhNoThangDonDoc-2,'dd')"/>
								
							THÁNG
								<xsl:value-of select="ihtkk:stringDatetime($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/ngayAnDinhNoThangDonDoc-2,'mm')"/>
							NĂM
								<xsl:value-of select="ihtkk:stringDatetime($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/ngayAnDinhNoThangDonDoc-2,'yyyy')"/></b><br/><br/>
							1. Số tiền thuế, tiền phạt
							<br/>
							<br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="30%">
												Khoản thuế
											</td>
											<td id="td_table"  width="10%">
												Tiểu mục
											</td>
											<td id="td_table"  width="10%">
												Số tiền thuế còn nợ
											</td>
											<td id="td_table"  width="10%">
												Hạn nộp
											</td>
											<td id="td_table"  width="10%">
												Số ngày nộp chậm
											</td>
											<td id="td_table"  width="50%">
												Ghi chú
											</td>
										</tr>										
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienThueTienPhat/CTSoTienThueTienPhat">
											<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienThueNo !=''">
															<xsl:value-of select="ihtkk:formatNumber(soTienThueNo)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNop !=''">
															<xsl:value-of select="hanNop" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soNgayNopCham !=''">
															<xsl:value-of select="soNgayNopCham" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="ghiChu !=''">
															<xsl:value-of select="ghiChu" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
										<tr>
											<td colspan = "2" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienThueTienPhat/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienThueTienPhat/tongCong)" />
												</xsl:if>
											</td>
											<td/>
											<td/>
											<td/>
										</tr>
									</tbody>
								</table>
								<br/>
								<br/>
							2. Số tiền chậm nộp tính đến ngày
								<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/ngayAnDinhChamNopThangDonDoc-3 !=''">
									<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/ngayAnDinhChamNopThangDonDoc-3" />
								</xsl:if>
								<br/>
								<br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%" rowspan="2">
												Tiểu mục tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tiểu mục khoản nợ gốc
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền nợ bị tính chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Hạn nộp nợ gốc
											</td>
											<td id="td_table"  width="20%" colspan="2">
												Tính tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tỷ lệ tính tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền chậm nộp
											</td>
											<td id="td_table"  width="25%" rowspan="2">
												Số tiền chậm nộp chưa nộp NSNN đến thời điểm tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,'mm')"/>
											</td>
										</tr>
										<tr class="align-c" height="50px;">
											<td id="td_table">
												Từ ngày
											</td >
											<td id="td_table">
												Đến ngày
											</td>							
										</tr>
										<tr class="align-c">
											<td id="td_table">a</td>
											<td id="td_table">b</td>
											<td id="td_table">c</td>
											<td id="td_table">d</td>
											<td id="td_table">e</td>
											<td id="td_table">f</td>
											<td id="td_table">g</td>
											<td id="td_table">h=((f-e)+1)*c*g</td>
											<td id="td_table">i</td>											
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/CTSoTienChamNopDenThangDonDoc-3">
											<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNoBiTinhChamNop !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienNoBiTinhChamNop)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNopNoGoc !=''">
															<xsl:value-of select="hanNopNoGoc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/CTSoTienChamNopDenThangDonDoc-3/TinhTienChamNop/tuNgay !=''">
															<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/CTSoTienChamNopDenThangDonDoc-3/TinhTienChamNop/tuNgay" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/CTSoTienChamNopDenThangDonDoc-3/TinhTienChamNop/denNgay !=''">
															<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/CTSoTienChamNopDenThangDonDoc-3/TinhTienChamNop/denNgay" />
														</xsl:if>
													</span>
												</td>		
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="tiLeTinhTienNopCham !=''">
															<xsl:value-of select="tiLeTinhTienNopCham" />
														</xsl:if>
													</span>
												</td>											
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNopCham !=''">
															<xsl:value-of select="ihtkk:formatNumber(soTienNopCham)" />													
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienChamNopChuaNopNSNN !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienChamNopChuaNopNSNN)" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>	
										<tr>
											<td colspan = "7" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopDenThangDonDoc-3/tongCong)" />
												</xsl:if>
											</td>
											<td/>										
										</tr>
									</tbody>
								</table>	
								<br/>
								<br/>
								3. Số tiền chậm nộp từ ngày
								<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/tuNgayThangDonDoc-2 !=''">
									<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/tuNgayThangDonDoc-2" />
								</xsl:if> 
								đến ngày <xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/denNgayThangDonDoc-2 !=''">
									<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/denNgayThangDonDoc-2" />
								</xsl:if> 
								<br/>
								<br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%" rowspan="2">
												Tiểu mục tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tiểu mục khoản nợ gốc
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền nợ bị tính chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Hạn nộp nợ gốc
											</td>
											<td id="td_table"  width="20%" colspan="2">
												Tính tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tỷ lệ tính tiền chậm nộp
											</td>
											<td id="td_table"  width="20%" rowspan="2">
												Số tiền chậm nộp
											</td>
											<td id="td_table"  width="25%" rowspan="2">
												Số tiền chậm nộp chưa nộp NSNN đến thời điểm tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,'mm')"/>
											</td>
										</tr>
										<tr class="align-c" height="50px;">
											<td id="td_table">
												Từ ngày
											</td >
											<td id="td_table">
												Đến ngày
											</td>							
										</tr>
										<tr class="align-c">
											<td id="td_table">a</td>
											<td id="td_table">b</td>
											<td id="td_table">c</td>
											<td id="td_table">d</td>
											<td id="td_table">e</td>
											<td id="td_table">f</td>
											<td id="td_table">g</td>
											<td id="td_table">h=((f-e)+1)*c*g</td>
											<td id="td_table">i</td>											
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/CTSoTienChamNopTrongThangDonDoc-2">
											<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNoBiTinhChamNop !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienNoBiTinhChamNop)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNopNoGoc !=''">
															<xsl:value-of select="hanNopNoGoc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="TinhTienChamNop/tuNgay !=''">
															<xsl:value-of select="TinhTienChamNop/tuNgay" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="TinhTienChamNop/denNgay !=''">
															<xsl:value-of select="TinhTienChamNop/denNgay" />
														</xsl:if>
													</span>
												</td>		
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="tiLeTinhTienNopCham !=''">
															<xsl:value-of select="tiLeTinhTienNopCham" />
														</xsl:if>
													</span>
												</td>											
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNopCham !=''">
															<xsl:value-of select="ihtkk:formatNumber(soTienNopCham)" />													
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienChamNopChuaNopNSNN !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienChamNopChuaNopNSNN)" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>	
										<tr>
											<td colspan = "8" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-2/SoTienChamNopTrongThangDonDoc-2/tongCong)" />
												</xsl:if>
											</td>
											<td/>										
										</tr>
									</tbody>
								</table>	
								<br/>
								<br/>
							<b>II. SỐ TIỀN CHƯA NỘP TỪ NGÀY <xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/tuNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/tuNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						đến
						<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/denNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/denNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						</b><br/><br/>
							1. Số tiền thuế, tiền phạt
							<br/><br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%">
												Khoản thuế
											</td>
											<td id="td_table"  width="10%">
												Tiểu mục
											</td>
											<td id="td_table"  width="20%">
												Số tiền thuế còn nợ
											</td>
											<td id="td_table"  width="10%">
												Hạn nộp
											</td>
											<td id="td_table"  width="20%">
												Số ngày nộp chậm
											</td>
											<td id="td_table"  width="20%">
												Ghi chú
											</td>
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienthue/CTSoTienthue">
											<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienThueConNo !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienThueConNo)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNop !=''">
															<xsl:value-of select="hanNop" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soNgayCham !=''">
															<xsl:value-of select="soNgayCham" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="ghiChu !=''">
															<xsl:value-of select="ghiChu" />
														</xsl:if>
													</span>
												</td>
											</tr>	
										</xsl:for-each>	
										<tr>
											<td colspan = "2" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienthue/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienthue/tongCong)" />
												</xsl:if>
											</td>
											<td/>
											<td/>
											<td/>
										</tr>
									</tbody>
								</table>
								<br/>
								<br/>
							2. Số tiền chậm nộp	
							<br/><br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>	
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%" rowspan="2">
												Tiểu mục tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tiểu mục khoản nợ gốc
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền nợ bị tính chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Hạn nộp khoản nợ gốc
											</td>
											<td id="td_table"  width="20%" colspan="2">
												Tính tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tỷ lệ tính tiền chậm nộp
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền chậm nộp
											</td>
											<td id="td_table"  width="25%" rowspan="2">
												Số tiền chậm nộp chưa nộp NSNN đến thời điểm tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/SoTienChuaNop/ngayADinhSTienChuaNop,'mm')"/>
											</td>
										</tr>
										<tr class="align-c" height="50px;">
											<td id="td_table">
												Từ ngày
											</td >
											<td id="td_table">
												Đến ngày
											</td>							
										</tr>
										<tr class="align-c">
											<td id="td_table">a</td>
											<td id="td_table">b</td>
											<td id="td_table">c</td>
											<td id="td_table">d</td>
											<td id="td_table">e</td>
											<td id="td_table">f</td>
											<td id="td_table">G</td>
											<td id="td_table">h=((f-e)+1)*c*g</td>
											<td id="td_table">i</td>											
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienChamNop/CTSoTienChamNop">
											<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNoBiTinhChamNop !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienNoBiTinhChamNop)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNopNoGoc !=''">
															<xsl:value-of select="hanNopNoGoc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienChamNop/CTSoTienChamNop/TinhTienChamNop/tuNgay !=''">
															<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienChamNop/CTSoTienChamNop/TinhTienChamNop/tuNgay" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienChamNop/CTSoTienChamNop/TinhTienChamNop/denNgay !=''">
															<xsl:value-of select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc-1/SoTienChamNop/CTSoTienChamNop/TinhTienChamNop/denNgay" />
														</xsl:if>
													</span>
												</td>		
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="tiLeTinhTienNopCham !=''">
															<xsl:value-of select="tiLeTinhTienNopCham" />
														</xsl:if>
													</span>
												</td>											
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienNopCham !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienNopCham)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienChamNopChuaNopNSNN !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienChamNopChuaNopNSNN)" />
														</xsl:if>
													</span>
												</td>
											</tr>	
										</xsl:for-each>
										<tr>
											<td colspan = "7" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienChamNop/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienChamNop/tongCong)" />
												</xsl:if>
											</td>
											<td/>										
										</tr>
									</tbody>
								</table>	
								<br/>
								<br/>
							<b>III. SỐ TIỀN QUÁ HẠN NỘP PHẢI THỰC HIỆN CƯỠNG CHẾ NỢ THUẾ</b><br/><br/>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%">
												Khoản thuế
											</td>
											<td id="td_table"  width="15%">
												Tiểu mục
											</td>
											<td id="td_table"  width="25%">
												Số tiền thuế còn nợ
											</td>
											<td id="td_table"  width="15%">
												Hạn nộp
											</td>											
											<td id="td_table"  width="25%">
												Trường hợp bị cưỡng chế
											</td>
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienQuaHanPhaiCuongCheNopThue/CTSoTienQuaHanPhaiCuongCheNopThue">
										<tr>
												<td class="align-l" id="td_table" >
													<span>
														<xsl:if test="khoanThue !=''">
															<xsl:value-of select="khoanThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="tieuMuc !=''">
															<xsl:value-of select="tieuMuc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soTienThueConNo !=''">															
															<xsl:value-of select="ihtkk:formatNumber(soTienThueConNo)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="hanNop !=''">
															<xsl:value-of select="hanNop" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="truongHopBiCuongChe !=''">
															<xsl:value-of select="truongHopBiCuongChe" />
														</xsl:if>
													</span>
												</td>												
											</tr>	
										</xsl:for-each>
										<tr>
											<td colspan = "2" id="td_table" class="align-c">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r">
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienQuaHanPhaiCuongCheNopThue/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/SoTienQuaHanPhaiCuongCheNopThue/tongCong)" />
												</xsl:if>
											</td>
											<td/>
											<td/>											
										</tr>
									</tbody>
								</table>	
							</xsl:for-each>
						</xsl:for-each>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>