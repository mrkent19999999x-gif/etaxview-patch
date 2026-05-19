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
		<xsl:call-template name="tbaoHeader_03_DK_TVAN">
			<xsl:with-param name="mauTBao"   select="'03/ĐK-T-VAN'"/>
			<xsl:with-param name="tenTBao"   select="$tTinDKyThue/tenDKy" />
			<xsl:with-param name="ngayTBao"   select="$tTinDKyThue/ngayDKy" />
			<xsl:with-param name="noiTBao"   select="$nDungDKy/diaDiemTB" />
		</xsl:call-template>
		<br/>
		<div>
		<tr>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<td>Kính gửi:</td>
						<td><xsl:value-of select="$cQT/tenCQT"/></td>
					</tr>
			<table>
				<tbody>
					
					<tr>
						<td>1.Tên người nộp thuế:</td>
						<td><xsl:value-of select="$tTinDKyThue/tenNNT"/></td>
					</tr>
					<tr>
						<td>2.Mã số thuế:</td>
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
					<div> Đăng ký ngừng sử dụng dịch vụ T-VAN, cụ thể như sau:  </div>	</br>
							<br/>
			<table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Thủ tục thuế điện tử đăng ký ngừng sử dụng</b></td>
										<td class="align-c"><b>Thời điểm ngừng</b></td>
										<td class="align-c"><b>Lý do ngừng</b></td>
									    
									</tr>
									<xsl:for-each select="$nDungDKy/dkyTDT">
									<xsl:variable name="currentRows" select='position()' />
									
									<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td>
							<xsl:if test="$nDungDKy/dkyTDT='true'"> Đăng ký thuế điện tử
						   </xsl:if>
						   <xsl:if test="$nDungDKy/kkTDT='true'"> , Kê khai thuế điện tử
							   
						   </xsl:if>
						</td>
						
						<td> từ ngày <xsl:value-of select="ihtkk:stringDatetime($nDungDKy/ngayNgung,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($nDungDKy/ngayNgung,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($nDungDKy/ngayNgung,'yyyy')"/></td>
						
						
								
								<td><xsl:value-of select="$nDungDKy/lyDoNgung"/></td>
								
							
					
							
	         				</tr>	
							</xsl:for-each>	
			
			</table>
					
					
					
					
					
					
					
					
			
			Người nộp thuế cam kết chịu trách nhiệm hoàn toàn trước pháp luật về tính chính xác, trung thực của nội dung nêu trên./.<br/>
			
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