<?xml version="1.0" encoding="UTF-8" standalone="no"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../TKhaiThue/common/common.xsl"/> 
	<xsl:decimal-format name="ok" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/">
		<div class="ndungtkhai_div">
			<div id="headercenter" align="center">
				<strong class="title_strong">TỜ KHAI HÀNG HÓA NHẬP KHẨU (THÔNG QUAN)</strong>
				<br />
				<br />
			</div>
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Số tờ khai: </b><xsl:value-of select="TOKHAI_OBJ/SO_TK"/>
						</td>
						<td class="align-l">
							<b>Số tờ khai đầu tiên: </b><xsl:value-of select="TOKHAI_OBJ/SO_TK_DAU_TIEN"/>
						</td>				
					</tr>					
					<tr>
						<td class="align-l" colspan="2">
							<b>Số tờ khai tạm nhập tái xuất tương ứng: </b><xsl:value-of select="TOKHAI_OBJ/SO_TK_TAM_NHAP_TX"/>
						</td>				
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã phân loại kiểm tra: </b><xsl:value-of select="TOKHAI_OBJ/MA_PHAN_LOAI_KT"/>
						</td>
						<td class="align-l">
							<b>Mã loại hình: </b><xsl:value-of select="TOKHAI_OBJ/MA_LH"/>
						</td>				
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>Tên cơ quan Hải quan tiếp nhận tờ khai: </b><xsl:value-of select="TOKHAI_OBJ/TEN_HQ"/>
						</td>		
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_DK"/>
						</td>
						<td class="align-l">
							<b>Ngày thay đổi kiểm tra: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_THAY_DOI_KT"/>
						</td>					
					</tr>	
					<tr>
						<td class="align-l">
							<b>Ngày thông quan: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_THONG_QUAN"/>
						</td>
						<td class="align-l">
							<b>Thời hạn tái nhập/ tái xuất: </b><xsl:value-of select="TOKHAI_OBJ/THOI_HAN_TAI_NHAP_TAI_XUAT
"/>
						</td>	
					</tr>	
					<tr>
						<td class="align-l">
						<b>Ngày thay đổi đăng ký: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_THAY_DOI_DK"/>
						</td>
						<td class="align-l">
							<b>Ngày hoàn thành kiểm tra: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_HOAN_THANH_KT"/>
						</td>	
					</tr>	
					<tr>	
			
						<td class="align-l">
							<b>Trạng thái TK: </b>
								<xsl:variable name="tk">
									<xsl:value-of select="TOKHAI_OBJ/TRANG_THAI_TK"/>							
								</xsl:variable>		
									<xsl:if test="$tk=0">
									<b>Tờ khai không huỷ </b>
									</xsl:if>		
									<xsl:if test="$tk=1">
									<b>Tờ khai huỷ trong thông quan </b>
									</xsl:if>	
										<xsl:if test="$tk=2">
									<b>Tờ khai huỷ sau thông quan </b>
									</xsl:if>	
									<xsl:if test="$tk=3">
									<b>Chuyển xử lý thủ công </b>
									</xsl:if>							
						</td>					
					</tr>
				
					<tr>
						<td class="align-l">
							<b>Ngày huỷ: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_HUY"/>
						</td>	
						<td class="align-l">
							<b>Ngày hàng hóa qua KVGS: </b><xsl:value-of select="TOKHAI_OBJ/NGAY_HH_QUA_KVGS"/>
						</td>	
					</tr>
						
				</table>				
			</div>
			<br />
			<!--nguon lay=======================================-->	
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Nguồn lấy: </b><xsl:value-of select="TOKHAI_OBJ/NGUON_LAY"/>		
						</td>
						
					</tr>	
					<tr>
						<td class="align-l">
							<b>Thời gian lấy dữ liệu: </b><xsl:value-of select="TOKHAI_OBJ/THOI_GIAN_LAY_DU_LIEU"/>	
						</td>
					</tr>	
					<tr>
						<td class="align-l">
							<b>Loại tờ khai: </b><xsl:value-of select="TOKHAI_OBJ/LOAI_TK"/>	
						</td>
					</tr>
				</table>	
			</div>
			<br/>
			<!--end nguon lay-->
			<!--Nguoi NK-->
			<div class="content" style="border:1px solid">
				<p><b>Người nhập khẩu</b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Mã: </b> <xsl:value-of select="TOKHAI_OBJ/NGUOI_NHAP_KHAU/MA_SO_THUE"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l">
							<b>Tên: </b> <xsl:value-of select="TOKHAI_OBJ/NGUOI_NHAP_KHAU/TEN"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Địa chỉ: </b> <xsl:value-of select="TOKHAI_OBJ/NGUOI_NHAP_KHAU/DIA_CHI_1"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Người ủy thác xuất nhập khẩu</b>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã: </b><xsl:value-of select="TOKHAI_OBJ/NGUOI_UY_THAC_XNK/MA_SO_THUE"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên: </b><xsl:value-of select="TOKHAI_OBJ/NGUOI_UY_THAC_XNK/TEN"/>
						</td>						
					</tr>					
				</table>			
			</div>			
			<!--End nguoi NK-->
			<br />
			<!--Nguoi XK-->
			<div class="content" style="border:1px solid">
				<p><b>Người xuất khẩu</b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l" colspan="2">
							<b>Mã:</b><xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/MA_SO_THUE"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l" colspan="2">
							<b>Tên: </b><xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/TEN"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>Mã nước: </b><xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/MA_NUOC"/>

						</td>						
					</tr>
					<tr>
						<td class="align-l1">
							<b>Địa chỉ</b><br/>
						
						
										<b>1: </b>	<xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/DIA_CHI_1"/><BR/>
										<b>2: </b>	<xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/DIA_CHI_2"/><BR/>
										<b>3: </b>	<xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/DIA_CHI_3"/><BR/>
										<b>4: </b>	<xsl:value-of select="TOKHAI_OBJ/NGUOI_XUAT_KHAU/DIA_CHI_4"/><BR/>
							</td>				
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>Người ủy thác xuất khẩu:</b>
						</td>						
					</tr>					
				</table>				
			</div>			
			<!--End nguoi XK-->		
			<br/>
			<!--Dai ly HQ=======================================-->
			<div class="content" style="border:1px solid">
								
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l" colspan="4" >
							<p><b>Đại lý hải quan</b></p>
						</td>
					</tr>
					<tr>						
						<td class="align-l" width="30%">
							<b>Tên đại lý Hải Quan: </b> 
						
							 <xsl:value-of select="TOKHAI_OBJ/TEN_DAI_LY_HQ"/>
						</td>
						
						<td class="align-l"  width="25%">
							<b>Mã đại lý Hải Quan: </b> 
						
							 <xsl:value-of select="TOKHAI_OBJ/MA_DAI_LY_HQ"/>
						</td>						
					</tr>		
				</table>
			</div>	
			<!--end dai ly hq-->
			<!--Giay phep xuat khau=============================-->
			<br/>
			<div class="content" style="border:1px solid" >
			<table width="100%">
			<tr>
			<td width="50%">
				<table class="tkhai_table_k" width="100%">
					<tr>
						<td class="align-l">
							<b>Giấy phép xuất nhập khẩu</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>1</b>
						</td>
						<td class="align-l">
							<xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_1"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>2</b> <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_2"/>
						</td>
						<td class="align-l">
							 <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_2"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>3</b> <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
						<td class="align-l">
							 <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>4</b> <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
						<td class="align-l">
							 <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>5</b> <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
						<td class="align-l">
							 <xsl:value-of select="TOKHAI_OBJ/GIAY_PHEP_XUAT_NHAP_KHAU_3"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							
						</td>
					</tr>					
				</table>
				</td>
				<td width="50%">
				<table width="100%">
					<tr>
						<td class="align-l">
							<b>Số hóa đơn: </b> <xsl:value-of select="TOKHAI_OBJ/SO_HOA_DON"/>
						</td>
					</tr>
					<tr>							
						<td class="align-l">
							<b>Ngày phát hành: </b> <xsl:value-of select="TOKHAI_OBJ/NGAY_PHAT_HANH"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Phương thức thanh toán: </b> <xsl:value-of select="TOKHAI_OBJ/PHUONG_THUC_THANH_TOAN"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Tổng trị giá hóa đơn: </b> <xsl:value-of select="format-number(TOKHAI_OBJ/TONG_TRI_GIA_HOA_DON, '#.###,00', 'ok')"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Tổng trị giá tính thuế: </b> <xsl:value-of select="format-number(TOKHAI_OBJ/TONG_TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Nguyên tệ Tổng trị giá hóa đơn:</b><xsl:value-of select="TOKHAI_OBJ/NGUYEN_TE_TONG_TRI_GIA_HOA_DON"/>
						</td>
					</tr>	
				</table>	
				</td>
				</tr>	
</table>				
			</div>
			<!--end giay phep xk-->
			<br/>
			<!--So van don======================================-->	
			<div class="content" style="border:1px solid">
						
				<table>				
					<tr>
						<td width="35%" >
						<table class="tkhai_table_k" width="100%">
							<tr>
								<td class="align-l">
									<b>Số vận đơn:</b>
								</td>			
							</tr>
							<tr>
								<td class="align-l" >
									<b>1 </b> <xsl:value-of select="TOKHAI_OBJ/SO_VAN_DON_1"/>
								</td>								
							</tr>	
							<tr>
								<td class="align-l" >
									<b>2 </b> <xsl:value-of select="TOKHAI_OBJ/SO_VAN_DON_2"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>3 </b><xsl:value-of select="TOKHAI_OBJ/SO_VAN_DON_3"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>4 </b> <xsl:value-of select="TOKHAI_OBJ/SO_VAN_DON_4"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>5 </b> <xsl:value-of select="TOKHAI_OBJ/SO_VAN_DON_5"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>Số lượng: </b>  <xsl:value-of select="format-number(TOKHAI_OBJ/SO_LUONG, '#.###,00', 'ok')"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l">
									<b>Tổng trọng lượng hàng (Gross): </b> <xsl:value-of select="format-number(TOKHAI_OBJ/TONG_TRONG_LUONG, '#.###,00', 'ok')"/>
								</td>			
							</tr>
							<tr>
							</tr>	
							<tr>
								<td class="align-l">
									<b>Đơn vị tổng trọng lượng: </b> <xsl:value-of select="TOKHAI_OBJ/DVT_TONG_TRONG_LUONG"/>
								</td>	
							</tr>
						</table>
						</td>
						<td width="65%" align="left" valign="top">
						<table width="100%" >
							<tr>
								<td class="align-l" >
										<b>Địa điểm lưu kho: </b> 				
								</td>		
								<td class="align-l" >
																<xsl:value-of select="TOKHAI_OBJ/MA_DIA_DIEM_LUU_KHO"/> 														
								</td>
								<td class="align-l" >														
																<xsl:value-of select="TOKHAI_OBJ/TEN_DIA_DIEM_LUU_KHO"/>
								</td>
							</tr>
							<tr>
								<td class="align-l" >
									<b>Địa điểm dỡ hàng: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="TOKHAI_OBJ/MA_DIA_DIEM_DO_HANG"/>
															
								</td>
								<td class="align-l" >														
																<xsl:value-of select="TOKHAI_OBJ/TEN_DIA_DIEM_DO_HANG"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>Địa điểm xếp hàng: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="TOKHAI_OBJ/MA_DIA_DIEM_XEP_HANG"/>
															
								</td>
								<td class="align-l" >														
																<xsl:value-of select="TOKHAI_OBJ/TEN_DIA_DIEM_XEP_HANG"/>
								</td>
							</tr>
							<tr>	
								<td class="align-l" >
									<b>Phương tiện vận chuyển: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="TOKHAI_OBJ/MA_PHUONG_TIEN_VC"/>
																
								</td>
								<td class="align-l" >														
																<xsl:value-of select="TOKHAI_OBJ/TEN_PHUONG_TIEN_VC"/>
								</td>
							</tr>
							<tr>	
								<td class="align-l" >
									<b>Ngày hàng đến: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="TOKHAI_OBJ/NGAY_HANG_DEN"/>																
								</td>							
							</tr>
							<tr>	
								<td class="align-l" >
									<b>Ngày được phép nhập kho đầu tiên: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="TOKHAI_OBJ/NGAY_DUOC_PHEP_NHAP_KHO_DAU_TIEN"/>																
								</td>							
							</tr>
						</table>
						</td>
					</tr>
				</table>
			</div>	
			<!--end so van don-->	
			<br/>
			<!--Thong tin hang hoa=============================-->	
			<div class="content" style="border:1px solid" >
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#EEEEEE">
							<b>Thông tin hàng hóa </b>
						</td>
					</tr>
					<tr bgcolor="#DDDDDD">
						<td class="align-l">
							<b>Mã hàng </b>
						</td>
						<td class="align-l">
							<b>Tên hàng </b>
						</td>
						<td class="align-l">
							<b>Nước nhập khẩu </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAI_OBJ/TT_HANG/HANG">
					<tr>						
						<td class="align-l">							
							<xsl:value-of select="MA_HANG"/>							
						</td>
						<td class="align-l">							
							<xsl:value-of select="TEN_HANG"/>							
						</td>
						<td class="align-l">							
							<xsl:value-of select="NUOC_NHAP_KHAU"/>							
						</td>
					</tr>
					</xsl:for-each>
					</table>
			</div >
			<!--thue nhap khau-->
			<br/>
			<div class="content"  style="border:1px solid" >
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#EEEEEE">
							<b>Thuế nhập khẩu </b>
						</td>						
					</tr>
					<tr bgcolor="#DDDDDD">
						<td class="align-l" width="33%">
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" width="33%" align="center" >
							<b>Tiền thuế </b>
						</td>
						<td class="align-l"  width="33%">
							<b>Số tiền miễn giảm </b>
						</td>						
					</tr>
					<xsl:for-each select="TOKHAI_OBJ/TT_HANG/HANG/THUE_NHAP_KHAU">
					<tr>						
						<td align="right">							
							<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>							
						</td>
						<td align="right">							
							<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>							
						</td>
						<td align="right">							
							<xsl:value-of  select="format-number(SO_TIEN_MIEN_GIAM, '#.###,00', 'ok')"/>							
						</td>						
					</tr>
					</xsl:for-each>
				</table>				
				</div>		
			<!--en thue nhap khau-->
			<br/>
			 <!--thue gia tri gia tang-->
			 
			<div class="content"  style="border:1px solid" >
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="4" bgcolor="#EEEEEE">
							<b>Thuế giá trị gia tăng </b>
						</td>						
					</tr>
					<tr bgcolor="#DDDDDD">
						<td class="align-l" width="25%">
							<b>Loại thuế </b>
						</td>
						<td class="align-l" width="25%" align="center" >
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l"  width="25%">
							<b>Tiền thuế</b>
						</td>
						<td class="align-l"  width="25%">
							<b>Số tiền miễn giảm </b>
						</td>						
					</tr>
					<xsl:for-each select="TOKHAI_OBJ/TT_HANG/HANG/THUE_GTGT">
					<tr>						
						<td class="align-l">							
							<xsl:value-of select="LOAI_THUE"/>							
						</td>
						<td align="right">							
							<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>							
						</td>
						<td align="right">							
							<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>							
						</td>	
						<td align="right">							
							<xsl:value-of select="format-number(SO_TIEN_MIEN_GIAM, '#.###,00', 'ok') "/>							
						</td>		
					</tr>
					</xsl:for-each>
				</table>				
				</div>	
			<!--end thue gtgt-->
			
			<!--thue TTDB-->
			
				<xsl:choose>
					 <xsl:when test="TOKHAI_OBJ/TT_HANG/HANG/THUE_TTDB">
					 <div class="content"  style="border:1px solid" >
						<table class="tkhai_table" >
							<tr>
								<td class="align-l" colspan="4" bgcolor="#EEEEEE" >
									<b>Thuế tiêu thụ đặc biệt </b>
								</td>						
							</tr>
							<tr bgcolor="#DDDDDD">
								<td class="align-l" width="25%">
									<b>Loại thuế </b>
								</td>
								<td class="align-l" width="25%" align="center" >
									<b>Trị giá tính thuế </b>
								</td>
								<td class="align-l"  width="25%">
									<b>Tiền thuế</b>
								</td>
								<td class="align-l"  width="25%">
									<b>Số tiền miễn giảm </b>
								</td>						
							</tr>
							<xsl:for-each select="TOKHAI_OBJ/TT_HANG/HANG/THUE_TTDB">
							<tr>						
								<td class="align-l">							
									<xsl:value-of select="LOAI_THUE"/>							
								</td>
								<td align="right">							
							<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>							
						</td>
						<td align="right">							
							<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>							
						</td>	
						<td align="right">							
							<xsl:value-of select="format-number(SO_TIEN_MIEN_GIAM, '#.###,00', 'ok') "/>							
						</td>		
							</tr>
							</xsl:for-each>
						</table>
						</div>
					 </xsl:when>
					 <xsl:otherwise></xsl:otherwise>
				</xsl:choose>
			
			<!--end thue TTDB-->
			
			<!--thue BVMT-->
			
				<xsl:choose>
					 <xsl:when test="TOKHAI_OBJ/TT_HANG/HANG/THUE_BVMT">
					 <div class="content"  style="border:1px solid" >
						<table class="tkhai_table" >
							<tr>
								<td class="align-l" colspan="4" bgcolor="#EEEEEE">
									<b>Thuế bảo vệ môi trường </b>
								</td>						
							</tr>
							<tr>
								<td class="align-l" width="25%">
									<b>Loại thuế </b>
								</td>
								<td class="align-l" width="25%" align="center" >
									<b>Trị giá tính thuế </b>
								</td>
								<td class="align-l"  width="25%">
									<b>Tiền thuế</b>
								</td>
								<td class="align-l"  width="25%">
									<b>Số tiền miễn giảm </b>
								</td>						
							</tr>
							<xsl:for-each select="TOKHAI_OBJ/TT_HANG/HANG/THUE_BVMT">
							<tr>						
								<td class="align-l">							
									<xsl:value-of select="LOAI_THUE"/>							
								</td>
								<td align="right">							
							<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>							
						</td>
						<td align="right">							
							<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>							
						</td>	
						<td align="right">							
							<xsl:value-of select="format-number(SO_TIEN_MIEN_GIAM, '#.###,00', 'ok') "/>							
						</td>		
							</tr>
							</xsl:for-each>
						</table>
						 </div>
					 </xsl:when>
				</xsl:choose>
			
			<!--end thue BVMT-->
			<!--end thong tin hang hoa-->
			<br/>
				<!--User can bo======================================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>USER CBT: </b>
							<xsl:value-of select="TOKHAI_OBJ/USER_CBT"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Thời gian truy vấn: </b>
							<xsl:value-of select="TOKHAI_OBJ/THOIGIAN_TRUYVAN"/>
						</td>
					</tr>
				</table>
			</div>			
			<!--end user can bo-->
			<div id="sigDiv"></div>
		</div>
		
	</xsl:template>
</xsl:stylesheet>