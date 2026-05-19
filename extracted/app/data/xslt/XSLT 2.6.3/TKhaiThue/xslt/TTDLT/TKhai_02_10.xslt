<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_02_10">
		<xsl:with-param name="mauTKhai"   select="'Mẫu 2.10'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'THÔNG BÁO 
Về việc thực hiện hợp đồng dịch vụ với đại lý thuế'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
						       <table class="tkhai_table">
									<tr>
										<td class="align-c" rowspan="2"><b>STT</b></td>
										<td class="align-c" rowspan="2"><b>Nội dung</b></td>
																			
										<td class="align-c" colspan="2"><b>Thời gian thực hiện</b></td>
										<td class="align-c" colspan="2"><b>Thời gian tạm dừng</b></td>
										<td class="align-c" colspan="1"><b>Thời gian chấm dứt</b></td>
										<td class="align-c" rowspan="2"><b>Ghi chú</b></td>
									</tr>
			                        <tr>
				                        <td class="align-c"><b>Từ ngày (Từ kỳ)</b></td>
				                        <td class="align-c"><b>Đến ngày (Đến kỳ)</b></td>
										<td class="align-c"><b>Từ ngày (Từ kỳ)</b></td>
				                        <td class="align-c"><b>Đến ngày (Đến kỳ)</b></td>
										<td class="align-c"><b>Từ ngày (Từ kỳ)</b></td>				                      
			                        </tr>
				        <tr>
						    <td class="align-c"><b>I</b></td>
						    <td class="align-l"><b>Dịch vụ thực hiện thủ tục về thuế </b></td>
  						    
						    <td></td>
						    <td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
          				</tr>
						 <tr>
						    <td class="align-c"><b>1</b></td>
						    <td class="align-l"><b>Đăng ký thuế</b></td>
  						   
						    <td></td>
						    <td></td>
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/DangKyThue/ChiTietDangKyThue">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c">1.<xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_NoiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="ghiChu" /></td>
								</tr>
	         		</xsl:for-each>	
						 <tr>
						    <td class="align-c"><b>2</b></td>
						    <td class="align-l"><b>Dịch vụ khai thuế</b></td>
  						
						    <td></td>
						    <td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
          				</tr>
						 
					
					<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/KhaiThue/ChiTietKhaiThue">
							<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c">2.<xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><b><xsl:value-of select="ten_SacThue"/></b></td>
									<td></td>
									<td></td>
									
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									
								</tr>
	          				<xsl:for-each select="ChiTietToKhai">
								<xsl:variable name="currentRows1" select='position()'/>
								<tr>
									<td class="align-c">2.<xsl:value-of select="$currentRows"/>.<xsl:value-of select="$currentRows1"/></td>
									<td class="align-l"><xsl:value-of select="ten_NoiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="thucHienTuNgay"/></td>
								<td class="align-c"><xsl:value-of select="thucHienDenNgay"/></td>
								<td class="align-c"><xsl:value-of select="tamDungTuNgay"/></td>
								<td class="align-c"><xsl:value-of select="tamDungDenNgay"/></td>
								<td class="align-c"><xsl:value-of select="chamDutTuNgay"/></td>
								
								 <td class="align-l"><xsl:value-of select="ghiChu"/></td>
													
								</tr>
							</xsl:for-each>	       				 
						</xsl:for-each>		
						<tr>
						    <td class="align-c"><b>3</b></td>
							<td class="align-l"><b>Nộp thuế &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/dichVuNopThue= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/NopThue/ghiChu" /></td>
								</tr>
						<tr>
						    <td class="align-c"><b>4</b></td>
							<td class="align-l"><b>Văn bản đề nghị tra soát &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/dichVuTraSoat= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNTraSoat/ghiChu" /></td>
								</tr>
								<tr>
						    <td class="align-c"><b>5</b></td>
							<td class="align-l"><b>Văn bản đề nghị xác nhận việc thực hiện nghĩa vụ thuế với ngân sách nhà nước &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/dichVuDNXN= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXNNghiaVuThue/ghiChu" /></td>
								</tr>
									<tr>
						    <td class="align-c"><b>6</b></td>
							<td class="align-l"><b>Văn bản đề nghị xử lý số tiền thuế, tiền chậm nộp, tiền phạt nộp thừa &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/dichVuDNXLNopThua= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/VanBanDNXLNopThua/ghiChu" /></td>
								</tr>
								<tr>
						    <td class="align-c"><b>7</b></td>
						    <td class="align-l"><b>Hoàn thuế</b></td>
  						    <td></td>
						    <td></td>
						    
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/HoanThue/ChiTietHoanThue">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c">7.<xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_NoiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="ghiChu" /></td>
								</tr>
	         		</xsl:for-each>	
                          <tr>
						    <td class="align-c"><b>8</b></td>
						    <td class="align-l"><b>Miễn, giảm thuế</b></td>
  						    <td></td>
						    <td></td>
						   
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<tr>
						    <td class="align-c"><b>8.1</b></td>
							<td class="align-l"><b>Miễn thuế &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/dichVuMienGiamThue= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/MienThue/ghiChu" /></td>
								</tr>
						
						<tr>
						    <td class="align-c"><b>8.2</b></td>
							<td class="align-l"><b>Giảm thuế &#160; &#160; &#160; <xsl:if test="$tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/dichVuMienGiamThue= 'true' ">[x]</xsl:if> 
                        </b></td>
						        
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/GiamThue/ghiChu" /></td>
								</tr>
	         		
						<tr>
						    <td class="align-c"><b>9</b></td>
						    <td class="align-l"><b>Dịch vụ thủ tục khác</b></td>
  						   
						    <td></td>
						    <td></td>
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVThuTucThue/ThuTucKhac/ChiTietThuTucKhac">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c">9.<xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="noiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="ghiChu" /></td>
								</tr>
	         		</xsl:for-each>	
						
						<tr>
						    <td class="align-c"><b>II</b></td>
						    <td class="align-l"><b>Dịch vụ tư vấn thuế</b></td>
  						    <td></td>
						    
						    <td></td>
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVTuVanThue/ChiTietDVTuVanThue">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="noiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="ghiChu" /></td>
								</tr>
	         		</xsl:for-each>	
						<tr>
						    <td class="align-c"><b>III</b></td>
						    <td class="align-l"><b>Dịch vụ kế toán cho doanh nghiệp siêu nhỏ</b></td>
  						    <td></td>
						    <td></td>
						   
							 <td></td>
							  <td></td>
							   <td></td>
							    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangThongTinChiTiet/DVKT_DNSieuNho/ChiTietDVKT_DNSieuNho">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="noiDung"/></td>
								
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thucHienDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungTuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tamDungDenNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(chamDutTuNgay,'dd/mm/yyyy')"/></td>
								 <td class="align-l"><xsl:value-of select="ghiChu" /></td>
								</tr>
	         		</xsl:for-each>	
                      </table>
								
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
