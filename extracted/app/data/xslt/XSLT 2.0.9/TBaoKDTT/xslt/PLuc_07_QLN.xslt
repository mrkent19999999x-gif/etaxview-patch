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
							<table cellpadding="0" cellspacing="0" class="table_hd1">
								<tbody>
									<tr class="align-c">
										<td class="fz17px">
											<b >BẢNG KÊ CHI TIẾT<br/>
											SỐ TIỀN THUẾ NỢ, TIỀN PHẠT VÀ TIỀN CHẬM NỘP
											</b>	
										</td>
									</tr>
									<tr class="align-c">
										<td class="fz18_5px">
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
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,9,2)" />
											tháng
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,6,2)" />
											năm
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,4)" />)				
											</i>
										</td>
									</tr>
									<tr>
										<td>
											<hr class="table_hr3" />
										</td>
									</tr>
								</tbody>
							</table>
							<table width="100%">
								<tr width="50%">
									<td class="align-l fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									</td>
									<td class="align-r fz17px" width="50%">
										<i>Đơn vị tiền: Đồng Việt Nam</i>
									</td>
								</tr>
							</table>
							
							<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet">
							<b>I. TỔNG SỐ TIỀN CHƯA NỘP TÍNH ĐẾN 
							NGÀY
								<xsl:value-of select="substring(TongSoTienChuaNopDenThangDonDoc-1/ngayAnDinhNoThangDonDoc-1,9,2)" />
							THÁNG
								<xsl:value-of select="substring(TongSoTienChuaNopDenThangDonDoc-1/ngayAnDinhNoThangDonDoc-1,6,2)" />
							NĂM
								<xsl:value-of select="substring(TongSoTienChuaNopDenThangDonDoc-1/ngayAnDinhNoThangDonDoc-1,1,4)" /></b><br/><br/>
							1. Số tiền thuế, tiền phạt
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%">
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
										<xsl:for-each select="TongSoTienChuaNopDenThangDonDoc-1/SoTienThueTienPhat">
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
												<xsl:if test="TongSoTienChuaNopDenThangDonDoc-1/SoTienThueTienPhat/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber(TongSoTienChuaNopDenThangDonDoc-1/SoTienThueTienPhat/tongCong)" />
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
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%" rowspan="2">
												Khoản thuế
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tiểu mục
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
											<td id="td_table"  width="15%" rowspan="2">
												Tỷ lệ tính tiền chậm nộp
											</td>
											<td id="td_table"  width="20%" rowspan="2">
												Số tiền chậm nộp
											</td>
											<td id="td_table"  width="25%" rowspan="2">
												Số tiền chậm nộp chưa nộp NSNN đến thời điểm tháng N-2
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
											<td id="td_table">A</td>
											<td id="td_table">b</td>
											<td id="td_table">c</td>
											<td id="td_table">d</td>
											<td id="td_table">e</td>
											<td id="td_table">f</td>
											<td id="td_table">G</td>
											<td id="td_table">h=((f-e)+1)*c*g</td>
											<td id="td_table">i</td>											
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-1/SoTienChamNopDenThangDonDoc-2">
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
														<xsl:if test="tuNgay !=''">
															<xsl:value-of select="tuNgay" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="denNgay !=''">
															<xsl:value-of select="denNgay" />
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
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-1/SoTienChamNopDenThangDonDoc-2/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/TongSoTienChuaNopDenThangDonDoc-1/SoTienChamNopDenThangDonDoc-2/tongCong)" />
												</xsl:if>
											</td>
											<td/>										
										</tr>
									</tbody>
								</table>	
								<br/>
								<br/>
							<b>II. SỐ TIỀN CHƯA NỘP TỪ NGÀY</b><br/><br/>
							1. Số tiền thuế, tiền phạt
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%">
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
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienthue">
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
												<xsl:if test="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienthue/tongCong !=''">
													<xsl:value-of select="ihtkk:formatNumber($BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienthue/tongCong)" />
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
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>	
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="20%" rowspan="2">
												Khoản thuế
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Tiểu mục
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												Số tiền nợ bị tính chậm nộp
											</td>
											<td id="td_table"  width="15%" rowspan="2">
												Hạn nộp nợ gốc
											</td>
											<td id="td_table"  width="20%" colspan="2">
												Tính tiền chậm nộp
											</td>
											<td id="td_table"  width="20%" rowspan="2">
												Tỷ lệ tính tiền chậm nộp
											</td>
											<td id="td_table"  width="20%" rowspan="2">
												Số tiền chậm nộp
											</td>
											<td id="td_table"  width="25%" rowspan="2">
												Số tiền chậm nộp chưa nộp NSNN đến thời điểm tháng N-1
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
											<td id="td_table">A</td>
											<td id="td_table">b</td>
											<td id="td_table">c</td>
											<td id="td_table">d</td>
											<td id="td_table">e</td>
											<td id="td_table">f</td>
											<td id="td_table">G</td>
											<td id="td_table">h=((f-e)+1)*c*g</td>
											<td id="td_table">i</td>											
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienChuaNopThangDonDoc/SoTienChamNop">
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
														<xsl:if test="tuNgay !=''">
															<xsl:value-of select="tuNgay" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="denNgay !=''">
															<xsl:value-of select="denNgay" />
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
												Ghi chú
											</td>
										</tr>
										<xsl:for-each select="$BkeChiTiet/NDungBkeCTiet/SoTienQuaHanPhaiCuongCheNopThue">
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