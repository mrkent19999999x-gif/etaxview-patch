<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_01_MGTH">
			<xsl:with-param name="mauTKhai"   select="'01/MGTH'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="$tkchinh/ten_KhoanThu"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<table class="ttinnnt_table"  width="100%">
					<br></br>
						<tr>
						<td colspan="3">
						<b>[01] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[02] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[03] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[03a]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[03b]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[04] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							<b>[05] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							<b>[06]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
						
						</td>
					</tr>
					<tr>
							<td>
								<br></br>
							Đề nghị được miễn (giảm) 
							<xsl:value-of select="$tkchinh/ten_KhoanThu"/>
							với lý do và số tiền miễn (giảm): 
							<xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/tong_MienGiam)"/>
							cụ thể như sau:						
							</td>
					</tr>
					<tr>
							<td>
							<br/>
							<b>1.	Lý do đề nghị miễn (giảm): </b>
							</td>
					</tr>
					<table class="tkhai_table">
						 <tr>
						   <td rowspan="2" class="align-c"><b>STT</b></td>						  
						   <td rowspan="2" class="align-c"><b>Lý do</b></td>
						   <td colspan="5" class="align-c"><b>Căn cứ pháp lý</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>Điểm</b></td>
						   <td class="align-c"><b>Khoản</b></td>  
						   <td class="align-c"><b>Điều</b></td>
						   <td class="align-c"><b>văn bản QPPL</b></td>
							<td class="align-c"><b>Nội dung miễn giảm</b></td> 
						 </tr>						 						 
							<xsl:for-each select="$tkchinh/LyDoMienGiam/NDungLydoMienGiam">
								 <xsl:variable name="currentRows1" select='position()'/>																	
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
								<td class="align-c"><xsl:value-of select="ly_Do"/></td>
								<td class="align-c"><xsl:value-of select="diem"/></td>
								<td class="align-c"><xsl:value-of select="khoan"/></td>
								<td class="align-c"><xsl:value-of select="dieu"/></td>
								<td class="align-c"><xsl:value-of select="van_Ban"/></td>
								<td class="align-c"><xsl:value-of select="noi_Dung"/></td>	
							</tr>														 
						 </xsl:for-each>				
					</table>
					<tr>
							<td>
							<br/>
							Trường hợp đề nghị miễn (giảm) thuế tài nguyên thì cần ghi rõ thêm loại tài nguyên, địa điểm, hình thức khai thác, nơi tiêu thụ.
							</td>
					</tr>
					<table class="tkhai_table">
						 <tr>
						   <td rowspan="2" class="align-c"><b>STT</b></td>						  
						   <td rowspan="2" class="align-c"><b>Loại tài nguyên</b></td>
						   <td colspan="3" class="align-c"><b>Địa điểm khai thác</b></td>
						   <td rowspan="2" class="align-c"><b>Hình thức khai thác</b></td>
						   <td colspan="3" class="align-c"><b>Nơi tiêu thụ</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>Tỉnh/thành phố</b></td>
						   <td class="align-c"><b>Xã/phường/ đặc khu</b></td>  
						   <td class="align-c"><b>Số nhà</b></td>
						   <td class="align-c"><b>Tỉnh/thành phố</b></td>
						   <td class="align-c"><b>Xã/phường/ đặc khu</b></td>  
						   <td class="align-c"><b>Số nhà</b></td>
						 </tr>						 						 
							<xsl:for-each select="$tkchinh/MienGiamTaiNguyen/NDungMienGiamTaiNguyen">
								 <xsl:variable name="currentRows1" select='position()'/>																
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
								<td class="align-c"><xsl:value-of select="ten_TaiNguyen"/></td>
								<td class="align-c"><xsl:value-of select="ten_TinhKhaiThac"/></td>
								<td class="align-c"><xsl:value-of select="ten_XaKhaiThac"/></td>
								<td class="align-c"><xsl:value-of select="so_NhaKhaiThac"/></td>
								<td class="align-c"><xsl:value-of select="ten_HinhThuc"/></td>	
								<td class="align-c"><xsl:value-of select="ten_TinhTieuThu"/></td>
								<td class="align-c"><xsl:value-of select="ten_XaTieuThu"/></td>
								<td class="align-c"><xsl:value-of select="so_NhaTieuThu"/></td>
							</tr>														 
						 </xsl:for-each>				
					</table>
						<tr>
							<td>
							<br/>
							<b>2. Xác định số thuế được miễn (giảm): </b>
							</td>	
						</tr>
						 <div class="align-r">Đơn vị tiền: Đồng Việt Nam</div>
						<table class="tkhai_table">
						 <tr>
						   <td rowspan="2" class="align-c"><b>STT</b></td>						  
						   <td rowspan="2" class="align-c"><b>Loại miễn/giảm</b></td>
						   <td colspan="2" class="align-c"><b>Tên khoản thu thuộc NSNN được miễn (giảm)</b></td>  
						   <td rowspan="2" class="align-c"><b>Kiểu kỳ</b></td>
						   <td colspan="2" class="align-c"><b>Kỳ tính thuế/Khoảng thời gian đề nghị miễn (giảm)</b></td>
						   <td rowspan="2" class="align-c"><b>Số tiền đề nghị miễn (giảm)</b></td>  
						   <td rowspan="2" class="align-c"><b>Số tiền đã nộp (nếu có)</b></td>
						   <td rowspan="2" class="align-c"><b>Mã phi nông nghiệp</b></td>
						   <td rowspan="2" class="align-c"><b>Số thông báo</b></td>
						   <td rowspan="2" class="align-c"><b>Ngày thông báo</b></td>   
						 </tr>
						 <tr>
						   <td class="align-c">Mục</td>
						   <td class="align-c">Tiểu mục</td>
						   <td class="align-c">Từ kỳ</td>
						   <td class="align-c">Đến kỳ</td>						   
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
						 </tr>
							<xsl:for-each select="$tkchinh/SoThueMienGiam/NDungSoThueMienGiam">
								 <xsl:variable name="currentRows1" select='position()'/>																
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
								<td class="align-c"><xsl:value-of select="loai"/></td>
								<td class="align-c"><xsl:value-of select="muc"/></td>
								<td class="align-c"><xsl:value-of select="tieu_Muc"/></td>
								<xsl:if test="kieu_Ky='D'">
									<td>Lần phát sinh</td>
								</xsl:if>
								<xsl:if test="kieu_Ky ='M'">
									<td>Tháng</td>
								</xsl:if>
								<xsl:if test="kieu_Ky ='Q'">
									<td>Quý</td>
								</xsl:if>
								<xsl:if test="kieu_Ky ='Y'">
									<td>Năm</td>
								</xsl:if>
								<td class="align-c"><xsl:value-of select="tu_Ky"/></td>
								<td class="align-c"><xsl:value-of select="den_Ky"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/NDungSoThueMienGiam/so_MienGiam)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/NDungSoThueMienGiam/so_DaNop)"/></td>
								<td class="align-c"><xsl:value-of select="ma_PNN"/></td>
								<td class="align-c"><xsl:value-of select="so_TB"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_TB,'dd/mm/yyyy')"/></td>
							</tr>														 
						 </xsl:for-each>
							<tr>
								<td colspan="7" class="align-l">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng cộng</b>
								</td>
								<td class="align-c">
									<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/tong_MienGiam)"/></b>
								</td>
								<td class="align-c">
									<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/tong_DaNop)"/></b>
								</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>						 
						</table>
						<tr>
					<td>
					<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./.
					</td>
				</tr>
					
	
				</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_06_MGTH"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
