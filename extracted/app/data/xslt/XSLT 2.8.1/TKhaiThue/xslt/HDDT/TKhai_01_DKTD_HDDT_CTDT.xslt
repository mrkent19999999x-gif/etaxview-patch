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
	  <xsl:call-template name="tkhaiHeader_01_DKTD_HDDT_CTDT">
		<xsl:with-param name="MSo"   select="'01/ĐKTĐ-HĐĐT-CTĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table">
						<tr>
								<td colspan="5" class="align-l">
									Tên hộ kinh doanh:
								</td>
								<td colspan="5" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/TNNT"/>
								</td>
						</tr>
						<tr>
								<td colspan="5" class="align-l">
									Mã số thuế (số định danh cá nhân):
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
									Chủ hộ kinh doanh:
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/TNDDPLuat"/>
								</td>
								<td colspan="3" class="align-l">Điện thoại liên hệ:
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="TKhai/DLTKhai/TTChung/DTDDPLuat"/>
								</td>
						</tr>
						<tr>
								<td colspan="3" class="align-l">
									Ngày tháng năm sinh:
								</td>
								<td colspan="2" class="align-l">
									<xsl:value-of select="ihtkk:stringDatetime(TKhai/DLTKhai/TTChung/NSDDPLuat,'dd/mm/yyyy')"/>
								</td>
								<td colspan="3" class="align-l">
									Giới tính:
								</td>
								<td colspan="2" class="align-l">
									<xsl:if test="TKhai/DLTKhai/TTChung/GTinh ='1'">Nam</xsl:if>
									<xsl:if test="TKhai/DLTKhai/TTChung/GTinh ='0'">Nữ</xsl:if>
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
								Theo Nghị định số……, Hộ kinh doanh thuộc đối tượng sử dụng hóa đơn điện tử, chứng từ điện tử. Hộ kinh doanh đăng ký/thay đổi thông tin đã đăng ký với cơ quan thuế về việc sử dụng hóa đơn điện tử; chứng từ điện tử như sau:
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
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>2. Đăng ký sử dụng thông qua:</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/TTHC ='1'">
										[X] Qua cơ quan thuế
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/TTHC ='0'">
										[&#32;] Qua cơ quan thuế
									</xsl:if><br/>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/TVAN ='1'">
										[X] Qua tổ chức cung cấp dịch vụ hóa đơn điện tử 
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/HTGDLHDDT/TVAN ='0'">
										[&#32;] Qua tổ chức cung cấp dịch vụ hóa đơn điện tử 
									</xsl:if>
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
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>4. Loại hóa đơn sử dụng</b>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l">
								<b>a) Hóa đơn</b>
								<br></br>
									
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
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/PXKho ='1'">
										[X] Phiếu xuất kho kiêm vận chuyển nội bộ, phiếu xuất kho hàng gửi bán đại lý
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/PXKho ='0'">
										[&#32;] Phiếu xuất kho kiêm vận chuyển nội bộ, phiếu xuất kho hàng gửi bán đại lý
									</xsl:if><br/>
									<b>b) Chứng từ</b>
									<br></br>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/CTu ='1'">
										[X] Chứng từ khấu trừ thuế TNCN
									</xsl:if>
									<xsl:if test="TKhai/DLTKhai/NDTKhai/LHDSDung/CTu ='0'">
										[&#32;] Chứng từ khấu trừ thuế TNCN
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
								<b>9. Thông tin địa điểm kinh doanh cần cấp quyền tra cứu hóa đơn</b>
								</td>
						</tr>
						<tr>
							<td rowspan="2" class="align-c"><b>STT (Địa điểm kinh doanh)</b></td>
							<td rowspan="2" colspan="4" class="align-c"><b>Tên địa điểm kinh doanh</b></td>
							<td rowspan="2" colspan="2" class="align-c"><b>Địa chỉ địa điểm kinh doanh</b></td>
							<td colspan="2" class="align-c"><b>Thời gian</b></td>
							<td rowspan="2" class="align-c"><b>Ghi chú</b></td>					   						   						   						   						   
						</tr>
						<tr>
								<td class="align-c"><b>Từ ngày</b></td>
								<td class="align-c"><b>Đến ngày</b></td>
						</tr>
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/TTDDKD/DDKD">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-l"><xsl:value-of select="DDKDoanh"/></td>
								  <td colspan="4" class="align-l"><xsl:value-of select="TDDKDoanh"/></td>
								  <td colspan="2" class="align-l"><xsl:value-of select="DCDDKDoanh"/></td>
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