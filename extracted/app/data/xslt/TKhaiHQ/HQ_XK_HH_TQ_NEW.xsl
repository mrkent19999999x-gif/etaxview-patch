<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../TKhaiThue/common/common.xsl"/> 
	<xsl:decimal-format name="ok" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/">
		<div class="ndungtkhai_div">
			<div id="headercenter" align="center">
				<strong class="title_strong">TỜ KHAI HÀNG HÓA XUẤT KHẨU (THÔNG QUAN) </strong>
				<br />
				<br />
			</div>
		<!--header==========================================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l" >
							<b>Số tờ khai: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='DeclarationNo']"/>
						</td>	
						<td class="align-l">
							<b>Số tờ khai đầu tiên: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='FirstDeclarationNo']"/>
						</td>						
					</tr>	
					<tr>
						<td class="align-l">
							<b>Số tờ khai tạm nhập tái xuất tương ứng: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='TIREDeclarationNo']"/>
						</td>	
						<td class="align-l" >
							<b>Ngày thông quan: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ClearanceDate']"/>
						</td>							
					</tr>	
					<tr>
						<td class="align-l" >
							<b>Mã phân loại kiểm tra: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Channel']"/>
						</td>	
						<td class="align-l" >
							<b>Mã loại hình: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ExImCode']"/>
						</td>	
											
					</tr>		
					<tr>
						<td class="align-l" >
							<b>Tên cơ quan Hải Quan tiếp nhận tờ khai: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Customs']/*[local-name()='Name']"/>
						</td>	
						<td class="align-l" >
							<b>Ngày hoàn thành kiểm tra: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='CompleteInspectionDate']"/>
						</td>	
					</tr>	
					<tr>
						<td class="align-l" >
							<b>Ngày đăng ký: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='PlannedDate']"/>
						</td>	
						<td class="align-l" >
							<b>Ngày thay đổi kiểm tra: </b>
						</td>							
					</tr>
					<tr>
						<td class="align-l">
							<b>Thời hạn nhập/ tái xuất: </b>
						</td>	
						<td class="align-l">
							<b>Ngày hàng hóa qua KVGS: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='MonitoringAreaDate']"/>
						</td>
					</tr>
				<tr>
						<td class="align-l">
							<b>Thuế GTGT: </b>
						</td>	
						<td class="align-l">
							<b>Ngày thay đổi đăng ký: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ChangePlannedDate']"/>
						</td>
					</tr>
					<tr>	
			
						<td class="align-l">
							<b>Trạng thái TK: </b>							
						</td>					
					</tr>
						<tr>
						<td class="align-l">
							<b>Ngày huỷ: </b>
						</td>	
						
					</tr>
				</table>				
			</div>
			<!--end header-->
			<br />
		<!--nguon lay=======================================-->	
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Nguồn lấy: </b>		
						</td>
						
					</tr>	
					<tr>
						<td class="align-l">
							<b>Thời gian lấy dữ liệu: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Header']/*[local-name()='SendDate']"/>	
						</td>
					</tr>	
					<tr>
						<td class="align-l">
							<b>Loại tờ khai: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='DeclarationType']"/>
						</td>
					</tr>
				</table>	
			</div>
			<br/>
			<!--end nguon lay-->
		<!--Nguoi XK========================================-->
			<div class="content" style="border:1px solid" >
			
				<p><b>Người xuất khẩu: </b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Mã: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='TaxCode']"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l">
							<b>Tên: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='Name']"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l">
							<b>Địa chỉ: </b> 
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='Address']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='Address']" /></td>
										</tr>
								</xsl:for-each>
						</td>						
					</tr>					
				</table>				
			</div>
			<!--End nguoi XK-->
			<br />
		<!--Nguoi uy thac XNK===============================-->
			<div class="content" style="border:1px solid">	
						
				<p><b>Người ủy thác xuất nhập khẩu</b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Mã: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ExportEntrusted']/*[local-name()='TaxCode']"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ExportEntrusted']/*[local-name()='Name']"/>
						</td>						
					</tr>					
				</table>								
			</div>	
			<!--end Nguoi uy thac XNK-->	
<br/>			
		<!--Nguoi NK========================================-->
			<div class="content" style="border:1px solid">
			
				<p><b>Người nhập khẩu</b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Mã: </b> 
						
							 <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='TaxCode']"/>
						</td>		
					</tr>					
					<tr>
						<td class="align-l">
							<b>Tên: </b> 
						
							 <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='Name']"/>
						</td>		
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã bưu chính: </b>
						</td>						
					</tr>
					<tr>
						<td class="align-l1" >
							<b>Địa chỉ </b> <br/>
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='Address']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='Address']" /></td>
										</tr>
								</xsl:for-each>
						</td>											
					</tr>

					<tr>
						<td class="align-l">
							<b>Mã nước: </b> 
						
							<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='Address']/*[local-name()='CountryCode']"/>		
						</td>	
										
					</tr>
				</table>			
			</div>			
			<!--end ng nhap khau -->
			<br/>
		<!--Dai ly HQ=======================================-->
			<div class="content" style="border:1px solid">
								
				<table class="tkhai_table_k">
					<tr height="20%">
						<td class="align-l" colspan="4" >
							<p><b>Đại lý hải quan</b></p>
						</td>
					</tr>
					<tr>						
						<td class="align-l" width="30%">
							<b>Tên đại lý Hải Quan: </b> 
						
							 <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='CustomsAgent']/*[local-name()='Name']"/>
						</td>
						
						<td class="align-l"  width="25%">
							<b>Mã đại lý Hải Quan: </b> 
					
							 <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='CustomsAgent']/*[local-name()='Code']"/>
						</td>						
					</tr>		
				</table>
			</div>	
			<!--end dai ly hq-->
			<br/>
		<!--So van don======================================-->		
			<div class="content" style="border:1px solid">
				
				<table>				
					<tr>
						<td width="40%" >
						<table class="tkhai_table_k" width="100%">
							<tr>
								<td class="align-l">
									<b>Số vận đơn: </b>
									<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']">
											<xsl:variable name="currentRows" select='position()' />
											<tr>
												<td class="align-l"><xsl:value-of select="*[local-name()='BLNo']" /></td>
											</tr>
										</xsl:for-each>
								</td>			
							</tr>	
							<tr>
								<td class="align-l" >
									<b>Số lượng: </b> <xsl:value-of select="format-number(*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='TarriffQuantily']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
								</td>	
								
							</tr>	
							<tr>
								<td class="align-l">
									<b>Tổng trọng lượng hàng (Gross): </b><xsl:value-of select="format-number(*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='GrossWeight']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
								</td>
												
							</tr>
							<tr>
							</tr>	
							<tr>
								<td class="align-l">
									<b>Đơn vị tổng trọng lượng: </b>  <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='GrossWeight']/*[local-name()='Unit']"/>
								</td>	
								
							</tr>
						</table>
						</td>
						<td width="60%"  valign="top">
						<table width="100%" >
							<tr>
								<td class="align-l" >
										<b>Địa điểm lưu kho: </b> 				
								</td>		
								<td class="align-l" valign="bottom">
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='StorageLocation']/*[local-name()='Code']"/> 														
								</td>
								<td class="align-l" valign="middle" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='StorageLocation']/*[local-name()='Name']"/>
								</td>
							</tr>
							<tr>
								<td class="align-l" >
									<b>Địa điểm nhận hàng cuối cùng: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='FinalDestination']/*[local-name()='Code']"/>
															
								</td>
								<td class="align-l" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='FinalDestination']/*[local-name()='Name']"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l" >
									<b>Địa điểm xếp hàng: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='LoadingLocation']/*[local-name()='Code']"/>
															
								</td>
								<td class="align-l" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='LoadingLocation']/*[local-name()='Name']"/>
								</td>
							</tr>
							<tr>	
								<td class="align-l" >
									<b>Phương tiện vận chuyển: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='TransportMeans']/*[local-name()='Code']"/>
																
								</td>
								<td class="align-l" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='TransportMeans']/*[local-name()='Name']"/>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
			</div>	
			<!--end so van don-->
		<!--Giay phep xuat khau=============================-->
			<br/>
			<div class="content" style="border:1px solid" >
			<table >
			<tr>
			<td width="50%">
				<table class="tkhai_table_k" width="100%" border="0">
					<tr>
						<td class="align-l">
							<b>Giấy phép xuất khẩu</b>
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='LPCO']/*[local-name()='Code']" /></td>
										</tr>
								</xsl:for-each>
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
							<b>Số hóa đơn: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='InvoiceNo']"/>
						</td>
					</tr>
					<tr>							
						<td class="align-l">
							<b>Ngày phát hành: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='InvoiceDate']"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Phương thức thanh toán: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='PaymentMethod']"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Tổng trị giá hóa đơn: </b> <xsl:value-of select="format-number(*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='InvoiceValue']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Tổng trị giá tính thuế: </b> <xsl:value-of select="format-number(*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='TaxCalcValue']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
						</td>
					</tr>
					<tr>	
						<td class="align-l">
							<b>Nguyên tệ Tổng trị giá hóa đơn: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='InvoiceValue']/*[local-name()='Unit']"/>
						</td>
					</tr>	
				</table>	
				</td>
				</tr>	
</table>				
			</div>
			<!--end giay phep xk-->
		<!--Dia diem xep hang len xe========================-->
		<br/>
			<div  class="content" style="border:1px solid">
							
				<table class="tkhai_table_k" width="100%">
					<tr>
						<td class="align-l">
							<b>Địa điểm xếp hàng lên xe chở hàng</b>
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ReceiptLocation']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='Code']" /></td>
											<td class="align-l"><xsl:value-of select="*[local-name()='Name']" /></td>
										</tr>
								</xsl:for-each>
						</td>
					</tr>
				</table>
			</div>		
			<!--end xep hang-->			
		
		<!--Thong tin hang hoa=============================-->	
		<br/>
			<div class="content" style="border:1px solid" >
							
				<table class="tkhai_table">
					<tr>
						<td class="align-l" colspan="2" bgcolor="#EEEEEE">
							<b>Thông tin hàng hóa </b>
						</td>
					</tr>
					<tr bgcolor="#DDDDDD">
						<td class="align-l" >
							<b>Mã hàng </b>
						</td>
						<td class="align-l">
							<b>Tên hàng </b>
						</td>
					</tr>
					<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Goods']/*[local-name()='GoodsInfo']">
					<tr>						
						<td class="align-l">							
							<xsl:value-of select="*[local-name()='Code']"/>							
						</td>
						<td class="align-l">							
							<xsl:value-of select="*[local-name()='Name']"/>							
						</td>
					</tr>
					</xsl:for-each>
					</table>	
					</div>			
					<br/>					
					<div class="content" style="border:1px solid" >
					<table class="tkhai_table" >
					<tr>
						<td class="align-l" colspan="3" bgcolor="#EEEEEE">
							<b>Thuế xuất khẩu </b>
						</td>						
					</tr>
					<tr bgcolor="#DDDDDD">
						<td class="align-l" >
							<b>Trị giá tính thuế </b>
						</td>
						<td class="align-l" align="center" >
							<b>Tiền thuế </b>
						</td>
						<td class="align-l"  >
							<b>Mã tiền tệ </b>
						</td>						
					</tr>
					<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Goods']">
					<tr>						
						<td align="right">							
							<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='Unit'], '#.###,00', 'ok')"/>							
						</td>
						<td  align="right">							
							<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='Amount'], '#.###,00', 'ok')"/>							
						</td>
						<td align="left">							
							<xsl:value-of select="*[local-name()='TaxAmount']/*[local-name()='Unit']"/>							
						</td>						
					</tr>
					</xsl:for-each>
				</table>				
			</div>					
			<!--thong tin hang hoa-->
			<br/>
				<!--User can bo======================================-->
			<div class="content" style="border:1px solid">
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>USER CBT: </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>Thời gian truy vấn: </b>
						</td>
					</tr>
				</table>
			</div>			
			<!--end user can bo-->
			<div id="sigDiv"></div>		
		</div>
		
	</xsl:template>
</xsl:stylesheet>