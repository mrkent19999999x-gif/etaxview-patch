<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="cQT" select='DKyThueDTu/DKyThue/TTinChung/CQT' />
		<xsl:variable name="tTinDKyThue" select='DKyThueDTu/DKyThue/TTinChung/TTinDKyThue' />
		<xsl:variable name="nDungDKy" select='DKyThueDTu/DKyThue/NDungDKy' />
		<xsl:call-template name="tbaoHeader_02_DK_TVAN">
			<xsl:with-param name="mauTBao"   select="'02-ĐK/T-VAN'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="ngayTBao"   select="$tTinDKyThue/ngayDKy" />
		</xsl:call-template>
		<br/>
		<div>
		<tr>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<td class="align-c">
[x] Thay đổi 
                        </td>
                </tr>
                &#160;&#160;&#160;&#160;&#160;
                 <tr>
					<td class="align-c">
[] Bổ sung
                        </td>
                </tr>
				<br></br>
				<tr>
						 &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;
						  &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;
						  &#160;&#160;&#160;<td>Kính gửi:</td>
						<td><xsl:value-of select="$cQT/tenCQT"/></td>
					</tr>
			<table>
				<tbody>
					
					<tr>
						<td>1. Tên người nộp thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tenNNT"/></td>
					</tr>
					<tr>
						<td>2. Mã số thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tIN"/></td>
					</tr>
					<tr>
						<td>3. Địa chỉ:</td>
						<td></td>
					</tr>
					<tr>
						<td>4. Thông tin về đại lý thuế (nếu có): </td>
						<td></td>
					</tr>
					<tr>
						<td>4a. Tên: </td>
						<td></td>
					</tr>
					<tr>
						<td>4b. Mã số thuế: </td>
						<td></td>
					</tr>
					<tr>
						<td>4c. Hợp đồng đại lý thuế: Số &#160;&#160;&#160;&#160;&#160; Ngày </td> 
						<td></td>
					</tr>
				</tbody>
			</table>
			
			<br>
			<tr>
			
					<td>Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</td> 
				
					</tr>
						</br>
						<br>
						</br>
						<br>
					<tr>
                    <td>Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</td> 
                    </tr>
					</br>
					<br>
					</br>
					<br>
					<tr>
					<td>Đăng ký thay đổi, bổ sung thông tin, cụ thể như sau:</td> 
                   </tr>
				   </br>
				   <br>
				   </br>
				   
				   <div>1. Thông tin đăng ký thay đổi, bổ sung chứng thư số sử dụng giao dịch thuế điện tử:</div>	
							<br/>
							
						        <table class="tkhai_table">
									<tr>
				
				                       <td class="align-c" rowspan="2"><b>STT</b></td>
					                   <td class="align-c" rowspan="2"><b>Tên tổ chức/cơ quan chứng thực/cấp/công nhận chữ ký số</b></td>
				                       <td class="align-c" rowspan="2"><b>Số sê-ri chứng thư số</b></td>
				
				                       <td class="align-c" colspan="2"><b>Thời hạn sử dụng chứng thư số</b></td>
				                       <td class="align-c" rowspan="2"><b>Thông tin thay đổi, bổ sung</b></td>
									   <td class="align-c" rowspan="2"><b>Thủ tục hành chính thuế đăng ký sử dụng</b></td>
									</tr>
									<tr>
				                       <td class="align-c"><b>từ ngày</b></td>
				                       <td class="align-c"><b>đến ngày</b></td>
				
			                        </tr>
									<xsl:for-each select="DKyThueDTu/DKyThue">
									<xsl:variable name="currentRows" select='position()' />
									
									<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="$nDungDKy/issuer"/></td>
								<td class="align-c"><xsl:value-of select="$nDungDKy/serial"/></td>
								<td class="align-l"><xsl:value-of select="$nDungDKy/fromDateCA"/></td>
								<td class="align-r"><xsl:value-of select="$nDungDKy/toDateCA"/></td>
								
						        <td></td>
							    <td></td>

							
	         				</tr>	
							</xsl:for-each>	
									</table>
				   
				   <div>2. Thông tin đăng ký thay đổi, bổ sung tài khoản ngân hàng thực hiện thủ tục nộp thuế điện tử: </div>	
							<br/>
			<table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Số tài khoản</b></td>
										<td class="align-c"><b>Tên tài khoản</b></td>
										<td class="align-c"><b>Ngân hàng</b></td>
									    <td class="align-c"><b>Số sê-ri chứng thư số</b></td>
										<td class="align-c"><b>Tên tổ chức/cơ quan chứng thực/cấp/công nhận chữ ký số</b></td>
										<td class="align-c"><b>Thông tin thay đổi, bổ sung</b></td>
									</tr>
									<xsl:for-each select="DKyThueDTu/DKyThue">
									<xsl:variable name="currentRows" select='position()' />
									
									<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
						        <td></td>
							    <td></td>
					
	         				</tr>	
							</xsl:for-each>	
			
			</table>
			
			<div>3. Thông tin đăng ký thay đổi, bổ sung địa chỉ thư điện tử đăng ký: </div>	
							<br/>
		   <div> 3.1. Địa chỉ thư điện tử nhận tất cả các quyết định, thông báo, văn bản khác của cơ quan thuế trong quá trình thực hiện giao dịch điện tử với cơ quan thuế: <td><xsl:value-of select="$nDungDKy/email"/></td> </div>	
							<br/>
		   <div>3.2. Địa chỉ thư điện tử khác nhận quyết định, thông báo, văn bản khác của cơ quan thuế theo từng thủ tục hành chính thuế: </div>	
							<br/>
			<table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Địa chỉ thư điện tử</b></td>
										<td class="align-c"><b>Họ tên người sử dụng</b></td>
										<td class="align-c"><b>Thông tin thay đổi, bổ sung</b></td>
									    <td class="align-c"><b>Thủ tục thuế điện tử đăng ký sử dụng</b></td>
									</tr>
			<xsl:for-each select="DKyThueDTu/DKyThue">
									<xsl:variable name="currentRows" select='position()' />
									
									<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td></td>
								<td></td>
								<td></td>
							<td></td>
	         				</tr>	
							</xsl:for-each>	
			</table>
			
			<br>
			<tr>
						<td>4.Thông tin đăng ký điện thoại:</td>
						<td><xsl:value-of select="$nDungDKy/tel"/></td>
					</tr>
			</br>
				  
  
			<p>Người nộp thuế cam đoan những thông tin kê khai nêu trên là hoàn toàn chính xác và cam kết chịu trách nhiệm trước pháp luật về các thông tin đã khai./.</p>
			
			<br/>
		</div>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<td>, ngày <xsl:value-of select="ihtkk:stringDatetime(DKyThueDTu/DKyThue/TTinChung/TTinDKyThue/ngayDKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(DKyThueDTu/DKyThue/TTinChung/TTinDKyThue/ngayDKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(DKyThueDTu/DKyThue/TTinChung/TTinDKyThue/ngayDKy,'yyyy')"/></td>
		
		<table>
									<tr>
										<td class="align-c"><b>TỔ CHỨC CUNG CẤP DỊCH VỤ T-VAN</b><br/>
					<i> &lt;Chữ ký số của tổ chức cung cấp dịch vụ T-VAN&gt;</i></td>
										<td class="align-c"><b>NHÂN VIÊN ĐẠI LÝ THUẾ</b><br/>Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:<br/>
					<i> &lt;Chữ ký số của đại lý thuế&gt;</i></td>
					
					
					
										<td class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> &lt;Người nộp thuế ký điện tử&gt;</i>
					</td>
									    
									</tr>
		</table>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>