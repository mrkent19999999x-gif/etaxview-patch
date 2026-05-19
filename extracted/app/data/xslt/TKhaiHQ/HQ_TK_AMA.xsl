<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../TKhaiThue/common/common.xsl"/>
	<xsl:decimal-format name="ok" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/">
		<div class="ndungtkhai_div">
			<div id="headercenter" align="center">
				<strong class="title_strong">TỜ KHAI BỔ SUNG SAU THÔNG QUAN (AMA)</strong>
				<br/>
				<br/>
			</div>
			<div class="content" style="border:1px solid">
				<!--header=======================================-->
				<table class="tkhai_table_k" >
					<tr>
						<td class="align-l">
							<b>Số tờ khai: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/SO_TK"/>
						</td>
						<td class="align-l">
							<b>Số tờ khai xuất nhập khẩu: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/SO_TK_XNK"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" >
							<b>Mã loại hình: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/MA_LH_XNK"/>
						</td>
						<td class="align-l">
							<b>Ngày thông quan: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGAY_THONG_QUAN_XNK"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký XNK: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGAY_DK_XNK"/>
						</td>
						<td class="align-l">
							<b>Ngày hoàn thành kiểm tra: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGAY_HOAN_THANH_KT"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" >
							<b>Thời hạn tái nhập tái xuất: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/THOI_HAN_TAI_NHAP_TAI_XUAT"/>
						</td>
								<td class="align-l">
							<b>Mã phân loại nhập xuất: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/MA_PHAN_LOAI_NHAP_XUAT"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGAY_DK"/>
						</td>
							<td class="align-l">
							<b>Tên cơ quan Hải Quan: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/TEN_HQ"/>
						</td>
						<tr>		
						<td class="align-l" colspan="2">
							<b>Trạng thái TK: </b>
								<xsl:variable name="tk1">
									<xsl:value-of select="TOKHAISUA_OBJ/TRANG_THAI_TK"/>							
								</xsl:variable>		
									<xsl:if test="$tk1=0">
									<b>Tờ khai không huỷ </b>
									</xsl:if>		
									<xsl:if test="$tk1=1">
									<b>Tờ khai huỷ trong thông quan </b>
									</xsl:if>	
									<xsl:if test="$tk1=2">
									<b>Tờ khai huỷ sau thông quan </b>
									</xsl:if>
									<xsl:if test="$tk1=3">
									<b>Chuyển xử lý thủ công </b>
									</xsl:if>							
						</td>					
					</tr>
					</tr>						
						<tr>
						<td class="align-l">
							<b>Ngày huỷ: </b><xsl:value-of select="TOKHAISUA_OBJ/NGAY_HUY"/>
						</td>					
					</tr>
					
				</table>
			</div>
			<br/>
			
			<!--Nguoi Khai==============================================-->
			<div class="content" style="border:1px solid">
				
				<table class="tkhai_table_k">
				<tr>
					<td class="align-l"><b>NGƯỜI KHAI</b></td>
				</tr>
					<tr>
						<td class="align-l">
							<b>Mã: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGUOI_KHAI/MA_SO_THUE"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGUOI_KHAI/TEN"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Địa chỉ: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGUOI_KHAI/DIA_CHI"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã đại lý Hải Quan: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/MA_DAI_LY_HQ"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên đại lý Hải Quan: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/TEN_DAI_LY_HQ"/>
						</td>
					</tr>
				</table>
			</div>
			<!--End nguoi khai======================================================-->
			<br/>
			<!--Thong tin hang hoa=============================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="5" bgcolor="#BBBBBB">
							<b>THÔNG TIN HÀNG HÓA </b>
						</td>
					</tr>
					<tr bgcolor="#EEEEEE">
						<td class="align-l">
							<b>Số thứ tự dòng hàng trên tờ khai gốc </b>
						</td>
						<td class="align-l">
							<b>Tên hàng trước khi khai báo bổ sung</b>
						</td>
						<td class="align-l">
							<b>Tên hàng sau khi khai báo bổ sung </b>
						</td>
						<td class="align-l">
							<b>Nước xuất xứ trước khi khai báo bổ sung </b>
						</td>
						<td class="align-l">
							<b>Nước xuất xứ sau khi khai báo bổ sung </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAISUA_OBJ/TT_HANG/HANG">
						<tr>
							<td  align="center">
								<xsl:value-of select="STT_HANG_TK_GOC"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="TEN_HANG_TRUOC_KB"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="TEN_HANG_SAU_KB"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="NUOC_XX_TRUOC_KB"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="NUOC_XX_SAU_KB"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
			<!--thue xuất nhap khau======================================================-->
			<br/>
			<!--Trước kho bạc====================-->
			<div class="content" style="border:1px solid">
			<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#BBBBBB">
							<b>THUẾ XUẤT NHẬP KHẨU</b>
						</td>
					</tr>
					</table>
					<br/>
				<table class="tkhai_table">
					
					<tr>
						<td class="align-l" colspan="3" bgcolor="#DDDDDD">
							<b>Trước khai báo </b>
						</td>
					</tr>
					<tr bgcolor="#EEEEEE">
						<td class="align-l" width="33%">
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" width="33%" align="center">
							<b>Tiền thuế </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAISUA_OBJ/TT_HANG/HANG/THUE_XUAT_NHAP_KHAU/TRUOC_KB">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			
			<!--End Trước kho bạc====================-->
		
			<!--Sau kho bạc====================-->
			<!--<div class="content" style="border:1px solid">-->
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#DDDDDD">
							<b>Sau khai báo </b>
						</td>
					</tr>
					<tr bgcolor="#EEEEEE">
						<td class="align-l" width="33%">
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" width="33%" align="center">
							<b>Tiền thuế </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAISUA_OBJ/TT_HANG/HANG/THUE_XUAT_NHAP_KHAU/SAU_KB">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
			<!--Sau kho bạc====================-->
			<!--en thue nhap khau-->
			
			<!--thue khác=====================================================-->
			<br/>
			<!--Trước kho bạc====================-->
			<div class="content" style="border:1px solid">
			<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#BBBBBB">
							<b>THUẾ KHÁC</b>
						</td>
					</tr>
					</table>
					<br/>
				<table class="tkhai_table">					
					<tr>
						<td class="align-l" colspan="3" bgcolor="#DDDDDD">
							<b>Trước khai báo </b>
						</td>
					</tr>
					<tr bgcolor="#EEEEEE">
						<td class="align-l" width="33%">
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" width="33%" align="center">
							<b>Tiền thuế </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAISUA_OBJ/TT_HANG/HANG/THUE_KHAC/TRUOC_KB">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			<!--</div>-->
			<!--End Trước kho bạc====================-->
			<!--Sau kho bạc====================-->
		<!--	<div class="content" style="border:1px solid">-->
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="3" bgcolor="#DDDDDD">
							<b>Sau khai báo </b>
						</td>
					</tr>
					<tr bgcolor="#EEEEEE">
						<td class="align-l" width="33%">
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" width="33%" align="center">
							<b>Tiền thuế </b>
						</td>
					</tr>
					<xsl:for-each select="TOKHAISUA_OBJ/TT_HANG/HANG/THUE_XUAT_NHAP_KHAU/SAU_KB">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(TRI_GIA_TINH_THUE, '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(TIEN_THUE, '#.###,00', 'ok')"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
			<!--Sau kho bạc====================-->
			<!--en thue khác======================================-->
			<br/>
				<!--User can bo======================================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>USER CBT: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/USER_CBT"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Thời gian truy vấn: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/THOIGIAN_TRUYVAN"/>
						</td>
					</tr>
				</table>
			</div>			
			<!--end user can bo-->
			<br/>
			<!--nguon lay=======================================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Nguồn lấy: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/NGUON_LAY"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Thời gian lấy dữ liệu: </b>
							<xsl:value-of select="TOKHAISUA_OBJ/THOI_GIAN_LAY_DU_LIEU"/>
						</td>
					</tr>
				</table>
			</div>
			<br/>
			<!--end nguon lay-->
			<div id="sigDiv"></div>
		</div>
		
	</xsl:template>
</xsl:stylesheet>
