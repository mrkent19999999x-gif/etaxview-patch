<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định số 117-NĐ-CP/2025/NĐ-CP ngày 09 tháng 06 năm 2025 của Chính Phủ'" />
		 <xsl:call-template name="tkhaiHeader_03_CNKD_TMDT">
		<xsl:with-param name="mauTKhai"   select="'03/CNKD-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho hộ, cá nhân thuộc đối tượng được hoàn thuế)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<br/>
            <div  class="align-l"><b>I. TỔNG DOANH THU TOÀN BỘ HOẠT ĐỘNG KINH DOANH CỦA HỘ, CÁ NHÂN</b></div>
                     
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" ><b>STT</b></td>
							<td class="align-c " ><b>Nhóm ngành nghề</b></td>
							<td class="align-c" ><b>Mã chỉ tiêu</b></td>
							<td class="align-c" ><b>Tổng doanh thu trong năm của hộ, cá nhân</b></td>				
							
							
						</tr>
						
						
						<tr>
								<td class="align-c">(1)<br/></td>
								<td class="align-c">(2)<br/></td>
								<td class="align-c">(3)<br/></td>
								<td class="align-c">(4)<br/></td>								
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Phân phối, cung cấp hàng hóa </td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThu/DoanhThu_NNTKe_06/ct10)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Dịch vụ, xây dựng không bao thầu nguyên vật liệu</td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThu/DoanhThu_NNTKe_06/ct11)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">3</td>
							<td>Sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu</td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThu/DoanhThu_NNTKe_06/ct12)"/></td>
							
						</tr>
						<tr>
							<td class="align-c">4</td>
							<td>Hoạt động kinh doanh khác</td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThu/DoanhThu_NNTKe_06/ct13)"/></td>
							
						</tr>
						<tr>
							<td class="align-c"></td>
							<td class="align-c"><b>Tổng cộng:</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThu/DoanhThu_NNTKe_06/ct14)"/></b></td>
							
						</tr>
					</table>
					<br/>
				
					
				<div> <b>II. SỐ THUẾ ĐÃ NỘP NSNN ĐỐI VỚI HOẠT ĐỘNG KINH DOANH TRÊN NỀN TẢNG THƯƠNG MẠI ĐIỆN TỬ</b> </div>
					<br/>					
					<table>
						<tr>
							<td class="align-l"><b>[15] Số tiền người nộp thuế trực tiếp nộp vào NSNN:</b></td>
							
						</tr>
						<tr>
							<td class="align-l">[15.1] Thuế GTGT:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/TuNop/ct15_1_ThueGTGT)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l">[15.2] Thuế TNCN:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/TuNop/ct15_2_ThueTNCN)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l"><b>[16] Số tiền do tổ chức khấu trừ, nộp thay: </b></td>
							
						</tr>
						<tr>
							<td class="align-l">[16.1] Thuế GTGT:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/KhauTru/ct16_1_ThueGTGT)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l">[16.2] Thuế TNCN: &#160;&#160;&#160; <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/KhauTru/ct16_2_ThueTNCN)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l"><b>[17] Tổng cộng số tiền đã nộp NSNN: </b></td>
							
						</tr>
						<tr>
							<td class="align-l">[17.1] Thuế GTGT:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/TongCong/ct17_1_ThueGTGT)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l">[17.2] Thuế TNCN:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/TongCong/ct17_2_ThueTNCN)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l">[17.3] Tổng cộng: &#160;&#160;&#160;  <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDaNop/TongCong/ct17_3_TongCong)"/> </td>
							
						</tr>
					</table>	<br/>	
					<div> <b>III. ĐỀ NGHỊ XỬ LÝ KHOẢN NỘP THỪA</b> </div>
					<br/>					
					<table >
						<tr>
							<td class="align-l" colspan="3"><b>[18] Đề nghị hoàn trả::</b></td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">[18.1] Thuế GTGT:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/HoanTra/ct18_1_ThueGTGT)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">[18.2] Thuế TNCN:  &#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/HoanTra/ct18_2_ThueTNCN)"/> </td>
							
						</tr>
						
						<tr>
							<td class="align-l" colspan="3">[18.3] Tổng cộng: &#160;&#160;&#160;  <xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/HoanTra/ct18_3_TongCong)"/> </td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">Hình thức hoàn trả: </td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">
							<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/chuyenKhoan='true'">
							&#x2612; &#160;&#160;Chuyển khoản:   
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/chuyenKhoan='1'">
							&#x2612; &#160;&#160;Chuyển khoản:   
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/chuyenKhoan='false'">
							&#x2610; &#160;&#160;Chuyển khoản:     
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/chuyenKhoan='0'">
							&#x2610; &#160;&#160;Chuyển khoản:     
                        </xsl:if>
							</td>					
												
						</tr>
						<tr>
							<td class="align-l" colspan="3">Tên chủ tài khoản: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tenChuTaiKhoan"/></td>
							
						</tr>
						<tr>
							<td class="align-l" >Tài khoản số: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/soTaiKhoan"/></td>
							<td class="align-l" colspan="2">Tại Ngân hàng/KBNN: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tenNganHang"/></td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">
							<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tienMat='true'">
							&#x2612; &#160;&#160;Tiền mặt:   
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tienMat='1'">
							&#x2612; &#160;&#160;Tiền mặt:   
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tienMat='false'">
							&#x2610; &#160;&#160;Tiền mặt:     
                        </xsl:if>
						<xsl:if test="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tienMat='0'">
							&#x2610; &#160;&#160;Tiền mặt:     
                        </xsl:if>
							</td>
																	
						</tr>
						<tr>
							<td class="align-l" colspan="3">Tên người nhận tiền: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tenNguoiNhan"/></td>
							
						</tr>
						<tr>
							<td class="align-l" >Số CCCD/Số định danh cá nhân/Số Hộ chiếu: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/tenLoaiGiayTo"/></td>
							<td class="align-l" >Ngày cấp: &#160;&#160;&#160; 
							<xsl:value-of select="ihtkk:stringDatetime($tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/ngayCap,'dd/mm/yyyy')"/></td>
							<td class="align-l" >Nơi cấp: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/noiCap"/></td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">Nơi nhận tiền hoàn thuế: &#160;&#160;&#160; 
							<xsl:value-of select="$tkchinh/XuLyNopThua/HoanTra/HinhThucHoanTra/noNhanTien"/></td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3"><b>[19] Đề nghị bù trừ nghĩa vụ thuế phải nộp các kỳ khác: </b>
							
							</td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">[19.1] Thuế GTGT: 
							&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/ct19_1_ThueGTGT)"/>
							</td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">[19.2] Thuế TNCN: 
							&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/ct19_2_ThueTNCN)"/>
							</td>
							
						</tr>
						<tr>
							<td class="align-l" colspan="3">[19.3] Tổng cộng: 
							&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/ct19_3_TongCong)"/>
							</td>
							
						</tr>
												
					</table>
					<br/>	
					<div> Thông tin người nộp thuế đề nghị bù trừ khoản nộp thừa với khoản nợ, khoản thu phát sinh hoặc đề nghị hoàn kiêm bù trừ thu ngân sách nhà nước:</div>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
					<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>							
					        <td class="align-c" colspan="10"><b>Thông tin khoản nợ/khoản thu phát sinh</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp đề nghị bù trừ với số tiền nộp thừa</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp sau bù trừ</b></td>
				            
				            </tr>
							<tr>
							
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Tên NNT</b></td>
							<td class="align-c"><b>Số định danh khoản phải nộp (ID) (nếu có)</b></td>
							<td class="align-c"><b>Nội dung khoản nợ/ phát sinh</b></td>
							<td class="align-c"><b>Chương</b></td>
							<td class="align-c"><b>Tiểu mục</b></td>
							<td class="align-c"><b>Tên cơ quan thuế quản lý khoản thu</b></td>
							<td class="align-c"><b>Địa bàn hành chính</b></td>
							<td class="align-c"><b>Hạn nộp</b></td>
							<td class="align-c"><b>Số tiền còn phải nộp</b></td>							
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
							<td class="align-c">(11)</td>
							<td class="align-c">(12)</td>
							<td class="align-c">(13)= (11) - (12)</td>
							
						</tr>
					
						<xsl:for-each select="$tkchinh/XuLyNopThua/DeNghiBuTru/BangBuTru/TTinKhoanNoKhoanThuPS">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="ct02"/></td>
								<td class="align-c"><xsl:value-of select="ct03"/></td>
								<td class="align-c"><xsl:value-of select="ct04"/></td>
								<td class="align-c"><xsl:value-of select="ct05"/></td>
								<td class="align-c"><xsl:value-of select="ct06_ma"/> - <xsl:value-of select="ct06_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct07_ma"/> - <xsl:value-of select="ct07_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct08_ten"/> </td>
								<td class="align-c"><xsl:value-of select="ct09_ten"/> </td>
								<td class="align-c"><xsl:value-of select="ct10"/> </td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
	         					
	         				</tr>	
	         		</xsl:for-each>	
	         		
	         		<tr>
						<td class="align-c" colspan="10"><b>Tổng cộng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/BangBuTru/tong_ct11)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/BangBuTru/tong_ct12)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/XuLyNopThua/DeNghiBuTru/BangBuTru/tong_ct13)"/></b></td>
						
					</tr>
					
				</table>		
				
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		<xsl:call-template name="tkhaiFooter"/>
		</div>	
		</div>
		
					</xsl:template>	

</xsl:stylesheet>
