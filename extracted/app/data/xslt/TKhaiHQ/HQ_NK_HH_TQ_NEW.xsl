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
							<b>Số tờ khai: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='DeclarationNo']"/>
						</td>
						<td class="align-l">
							<b>Số tờ khai đầu tiên: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='FirstDeclarationNo']"/>
						</td>				
					</tr>					
					<tr>
						<td class="align-l" colspan="2">
							<b>Số tờ khai tạm nhập tái xuất tương ứng: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='TIREDeclarationNo']"/>
						</td>				
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã phân loại kiểm tra: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Channel']"/>
						</td>
						<td class="align-l">
							<b>Mã loại hình: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ExImCode']"/>
						</td>				
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>Tên cơ quan Hải quan tiếp nhận tờ khai: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Customs']/*[local-name()='Name']"/>
						</td>		
					</tr>
					<tr>
						<td class="align-l">
							<b>Ngày đăng ký: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='PlannedDate']"/>
						</td>
						<td class="align-l">
							<b>Ngày thay đổi kiểm tra: </b>
						</td>					
					</tr>	
					<tr>
						<td class="align-l">
							<b>Ngày thông quan: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ClearanceDate']"/>
						</td>
						<td class="align-l">
							<b>Thời hạn tái nhập/ tái xuất: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='TIREDate']"/>
						</td>	
					</tr>	
					<tr>
						<td class="align-l">
						<b>Ngày thay đổi đăng ký: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ChangePlannedDate']"/>
						</td>
						<td class="align-l">
							<b>Ngày hoàn thành kiểm tra: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='CompleteInspectionDate']"/>
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
						<td class="align-l">
							<b>Ngày hàng hóa qua KVGS: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='MonitoringAreaDate']"/>
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
			<!--Nguoi NK-->
			<div class="content" style="border:1px solid">
				<p><b>Người nhập khẩu</b></p>
				<table class="tkhai_table_k">
					<tr>
						<td class="align-l">
							<b>Mã: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='TaxCode']"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l">
							<b>Tên: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='Name']"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Địa chỉ: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Importer']/*[local-name()='Address']/*[local-name()='Address']"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Người ủy thác xuất nhập khẩu</b>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Mã: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ImportEntrusted']/*[local-name()='TaxCode']"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l">
							<b>Tên: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ImportEntrusted']/*[local-name()='Name']"/>
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
							<b>Mã:</b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='TaxCode']"/>
						</td>						
					</tr>					
					<tr>
						<td class="align-l" colspan="2">
							<b>Tên: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='Name']"/>
						</td>						
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>Mã nước: </b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='Address']/*[local-name()='CountryCode']"/>

						</td>						
					</tr>
					<tr>
						<td class="align-l1">
							<b>Địa chỉ</b><br/>
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Exporter']/*[local-name()='Address']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='Address']" /></td>
										</tr>
								</xsl:for-each>
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
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='LPCO']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='Code']" /></td>
										</tr>
								</xsl:for-each>
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
							<b>Ngày phát hành: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name(InvoiceDate)='']"/>
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
							<b>Nguyên tệ Tổng trị giá hóa đơn:</b><xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Invoice']/*[local-name()='InvoiceValue']/*[local-name()='Unit']"/>
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
									<b>Số lượng: </b>  <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='TariffQuantity']/*[local-name()='Amount']"/>
								</td>
							</tr>	
							<tr>
								<td class="align-l">
									<b>Tổng trọng lượng hàng (Gross): </b> <xsl:value-of select="format-number(*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='GrossWeight']/*[local-name()='Amount'], '#.###,00', 'ok')"/>
								</td>			
							</tr>
							<tr>
							</tr>	
							<tr>
								<td class="align-l">
									<b>Đơn vị tổng trọng lượng: </b> <xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='GoodsMeasure']/*[local-name()='GrossWeight']/*[local-name()='Unit']"/>
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
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='StorageLocation']/*[local-name()='Code']"/> 														
								</td>
								<td class="align-l" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='StorageLocation']/*[local-name()='Name']"/>
								</td>
							</tr>
							<tr>
								<td class="align-l" >
									<b>Địa điểm dỡ hàng: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='UnLoadingLocation']/*[local-name()='Code']"/>
															
								</td>
								<td class="align-l" >														
																<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='UnLoadingLocation']/*[local-name()='Name']"/>
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
							<tr>	
								<td class="align-l" >
									<b>Ngày hàng đến: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='ETA']"/>																
								</td>							
							</tr>
							<tr>	
								<td class="align-l" >
									<b>Ngày được phép nhập kho đầu tiên: </b> 
								</td>
								<td class="align-l" >
															<xsl:value-of select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='FirstStorageDate']"/>																
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
						<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Goods']">
							<xsl:variable name="currentRows" select='position()' />
								<tr>
									<td class="align-l"><xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='Code']" /></td>
									<td class="align-l"><xsl:value-of select="*[local-name()='GoodsInfo']/*[local-name()='Name']" /></td>
									<td class="align-l"><xsl:value-of select="*[local-name()='Origin']/*[local-name()='Code']" /></td>
								</tr>
						</xsl:for-each>
				</table>
			</div >
			<!--Thong tin thue-->
			<br/>
			<div class="content"  style="border:1px solid" >
				<table class="tkhai_table_k" width="100%">
					<tr>
						<td class="align-l">
							<b>Thông tin thuế</b>
								<tr>
						   <td class="align-c" rowspan="2"><b>Loại thuế</b></td>
						   <td class="align-c" rowspan="2"><b>Trị giá tính thuế</b></td>
						   <td class="align-c" colspan="2"><b>Tiền thuế</b></td>
						   <td class="align-c" rowspan="2"><b>Số tiền miễn giảm</b></td>						   
						 </tr>
								<xsl:for-each select="*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='ListExImDeclarationResponse']/*[local-name()='Declarations']/*[local-name()='Goods']">
									<xsl:variable name="currentRows" select='position()' />
										<tr>
											<td class="align-l"><xsl:value-of select="*[local-name()='TaxInfo']/*[local-name()='TaxType']" /></td>
											<td align="right">							
												<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='Unit'], '#.###,00', 'ok')"/>							
											</td>
											<td align="right">							
												<xsl:value-of select="format-number(*[local-name()='TaxCalcValue']/*[local-name()='Amount'], '#.###,00', 'ok')"/>							
											</td>
											<td align="right">							
												<xsl:value-of select="format-number(*[local-name()='TaxInfo']/*[local-name()='ExemptAmount']/*[local-name()='Amount'], '#.###,00', 'ok')"/>							
											</td>
										</tr>
								</xsl:for-each>
						</td>
					</tr>										
				</table>				
				</div>		
			<!--en thong tin thue-->
		</div>
		
	</xsl:template>
</xsl:stylesheet>