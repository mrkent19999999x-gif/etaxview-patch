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
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='DeclarationNo']"/>
						</td>
						<td class="align-l">
							<b>Số tờ khai xuất nhập khẩu: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='OriginalDeclarationNo']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" >
							<b>Mã loại hình: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='ExImCode']"/>
						</td>
						<td class="align-l">
							<b>Ngày thông quan: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='ClearanceDate']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký XNK: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='OriginalPlannedDate']"/>
						</td>
						<td class="align-l">
							<b>Ngày hoàn thành kiểm tra: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='CompleteInspectionDate']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" >
							<b>Thời hạn tái nhập tái xuất: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='TIREDate']"/>
						</td>
								<td class="align-l">
							<b>Mã phân loại nhập xuất: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='DeclarationType']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='PlannedDate']"/>
						</td>
							<td class="align-l">
							<b>Tên cơ quan Hải Quan: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Customs']/*[local-name()='Name']"/>
						</td>
						<tr>		
						<td class="align-l" colspan="2">
							<b>Trạng thái TK: </b>							
						</td>					
					</tr>
					</tr>						
						<tr>
						<td class="align-l">
							<b>Ngày huỷ: </b>
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
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Declarant']/*[local-name()='TaxCode']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Declarant']/*[local-name()='Name']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Địa chỉ: </b>
							<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Declarant']/*[local-name()='Address']">
								<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-l"><xsl:value-of select="*[local-name()='Address']" /></td>
									</tr>
							</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã đại lý Hải Quan: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='CustomsAgent']/*[local-name()='Code']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên đại lý Hải Quan: </b>
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='CustomsAgent']/*[local-name()='Name']"/>
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
					<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Goods']">
						<tr>
							<td  align="center">
								<xsl:value-of select="*[local-name()='Index']"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='GoodsInfo']"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='AdditionalName']"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='Origin']/*[local-name()='Name']"/>
							</td>
							<td class="align-l">
								<xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='AdditionalOrigin']/*[local-name()='Name']"/>
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
					<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Goods']">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(*[local-name()='TaxInfo']/*[local-name()='TaxAmount']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
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
					<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='InquiryAMADeclarationResponse']/*[local-name()='AMADeclaration']/*[local-name()='Goods']">
						<tr>
							<td class="align-l">
								<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='AdditionalAmount'], '#.###,00', 'ok')"/>
							</td>
							<td class="align-l" align="center">
								<xsl:value-of select="format-number(*[local-name()='TaxInfo']/*[local-name()='TaxAmount']/*[local-name()='AdditionalAmount'], '#.###,00', 'ok')"/>
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
