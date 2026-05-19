<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01HT">
		<xsl:with-param name="mauTKhai"   select="'01/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>  
		<xsl:with-param name="ghuchuTK"   select="''"/> 
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<br/>
		<div><b>Thông tin dự án đầu tư theo mã hồ sơ khai dự án</b></div>
					<table class="tkhai_table"  >
                            <tr>
							  <td class="align-c"><b>STT</b></td>
							  <td class="align-c"><b>Chỉ tiêu</b></td>
							  <td class="align-c"><b>Giá trị</b></td>
    					    </tr>
    					    <tr>
							   <td class="align-c">1</td>
							   <td class="align-l">Mã hồ sơ khai DAĐT</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/maHoSoKhaiDuAnDauTu"/></td>
							 </tr>  
							<tr>
							   <td class="align-c">2</td>
							   <td class="align-l">Cơ quan thuế quản lý nơi có DAĐT</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/cqtQLyNoiCoDADT/tenCoQuanthue"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">3</td>
							   <td class="align-l">Thông tin dự án đầu tư</td>
							   <td class="align-l"></td>
							 </tr>  
							 <tr>
							   <td class="align-c">3.1</td>
							   <td class="align-l">Tên dự án</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/TTDuAnDauTu/tenDuAn"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">3.2</td>
							   <td class="align-l">Địa chỉ thực hiện dự án</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/TTDuAnDauTu/diaChiThucHienDuAn"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">3.3</td>
							   <td class="align-l">Tên chủ dự án đầu tư</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/TTDuAnDauTu/chuDuAnDauTu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">3.4</td>
							   <td class="align-l">MST chủ dự án đầu tư</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/TTDuAnDauTu/maSoThueDuAnDauTu"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">4</td>
							   <td class="align-l">Văn bản phê duyệt DAĐT</td>
							   <td class="align-l"></td>
							 </tr>  
							 <tr>
							   <td class="align-c">4.1</td>
							   <td class="align-l">Số</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/VBPheDuyetDuAnDauTu/so"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">4.2</td>
							   <td class="align-l">Ngày</td>
							   <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/VBPheDuyetDuAnDauTu/ngay,'dd/mm/yyyy')"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">4.3</td>
							   <td class="align-l">Cơ quan ban hành</td>
							   <td class="align-l"><xsl:value-of select="$tkchinh/VBPheDuyetDuAnDauTu/coQuanBanHanhPheDuyetDADT"/></td>
							 </tr>
						   </table>		
	                      	<div> <b>II- Nội dung đề nghị hoàn trả khoản thu ngân sách nhà nước (NSNN):</b> </div>	
						<div><b>1. Thông tin về khoản thu đề nghị hoàn trả: </b></div>
							<!--<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>-->			
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Loại thuế</b></td>
							<td class="align-c" colspan="2"><b>Kỳ đề nghị hoàn thuế</b></td>
							<td class="align-c" rowspan="2"><b>Mã giao dịch điện tử của hồ sơ khai thuế đề nghị hoàn </b></td>
							<td class="align-c" rowspan="2"><b>Số tiền đề nghị hoàn trong kỳ (VNĐ)</b></td>
							<td class="align-c" rowspan="2"><b>Trường hợp đề nghị hoàn thuế</b></td>
							<td class="align-c" rowspan="2"><b>Ghi chú</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Từ kỳ</b></td>
							<td class="align-c"><b> Đến kỳ</b></td>
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
							
						</tr>
				<xsl:for-each select="$tkchinh/NoiDungDNHT/TTinDNHT/CTietTTinDNHT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-l"><xsl:if test="ct3_TuKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct3_TuKy_KyKeKhai"/></td>
								<td class="align-l"><xsl:if test="ct4_DenKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct4_DenKy_KyKeKhai"/></td>
								<td class="align-l"><xsl:value-of select="maGiaoDich"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
	         					<td class="align-l"><xsl:value-of select="ct8"/></td>
	         				</tr>	
	         		</xsl:for-each>	
							<tr> 
							<td class="align-c" colspan ='5'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot6)"/></b></td>
							<td></td>
							<td></td>
							</tr>
			</table><br/>
	<div> <b>2. Hình thức đề nghị hoàn trả:</b> </div>	
						<div><b><i>2.1. Bù trừ cho khoản phải nộp NSNN : </i></b></div>
							<!--<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>-->
			 <table class="tkhai_table">
                        <tr>
							<td class="align-c" ><b>STT</b></td>
							<td class="align-c" ><b>Mã số thuế</b></td>
							<td class="align-c" ><b>Mã định danh khoản phải nộp (nếu có)</b></td>
							<td class="align-c" ><b>Cơ quan quản lý thu</b></td>
							<td class="align-c" ><b>Nội dung kinh tế (tiểu mục)</b></td>
							<td class="align-c" ><b>Kỳ thuế</b></td>
							<td class="align-c" ><b>Số tiền đề nghị bù trừ (VNĐ)</b></td>
							<td class="align-c" ><b>Ghi chú</b></td>
							</tr>
							<!--<tr>
								<td class="align-c"><b>Cơ quan thuế</b></td>
								<td class="align-c"><b>Cơ quan Hải quan</b></td>
								<td class="align-c"><b>Cơ quan khác</b></td>
								<td class="align-c"><b>Số</b></td>
								<td class="align-c"><b>Ngày</b></td>
								<td class="align-c"><b>Thu NSNN</b></td>
								<td class="align-c"><b>Tạm thu</b></td>
							</tr>-->
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
                                <td class="align-c">(8)</td>
                             </tr>
                                
                              <xsl:for-each select="$tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/CTietBuTru">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mst"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct6_KyKeKhai"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         					<!--<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct8,'dd/mm/yyyy')"/></td>
	         					<td class="align-c"><xsl:if test="ct9='true'">[x]</xsl:if></td>
	         					<td class="align-c"><xsl:if test="ct20='true'">[x]</xsl:if></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>-->
	         					<td><xsl:if test="ct8_ma != '5'"> <xsl:value-of select="ct8_ten" /> </xsl:if>
							    <xsl:if test="ct8_ma = '5'"><xsl:value-of select="ct8_Khac" /> </xsl:if> </td>
	         					</tr>					
	         				</xsl:for-each>	
							<tr>
							<td class="align-c" colspan ='6'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot7)"/></b></td>
							<td></td>
							</tr>
					</table> 
			
			
	<!--<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
	<div>Tổng số tiền nộp NSNN ghi bằng chữ: <b><i><xsl:value-of select="ihtkk:DocTienBangChu($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot11)"/> đồng</i></b></div> -->
               
					<div><b><i>2.2. Hoàn trả trực tiếp: </i></b> </div> 
				<!--<div>Số tiền hoàn trả: Bằng số: <b><i><xsl:value-of select="ihtkk:formatNumber($hoantratructiep/soTienHoanTra)"/></i></b>&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;         Bằng chữ: <b><i><xsl:value-of select="ihtkk:DocTienBangChu($hoantratructiep/soTienHoanTra)"/> đồng </i></b></div> -->
				<div>Hình thức hoàn trả: </div> 
				<div>[<xsl:if test="$hoantratructiep/HinhThucHoanTra/chuyenKhoan='true'">x</xsl:if>] Chuyển khoản: Tên chủ tài khoản: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/tenChuTaiKhoan"/></div>
				<div>Tài khoản số: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiKhoanSo"/></div>
				<div>Tại Ngân hàng (KBNN): <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiNganHang_ten"/> </div>         
			     <div> [<xsl:if test="$hoantratructiep/HinhThucHoanTra/tienMat='true'">x</xsl:if>] <lable> Tiền mặt</lable></div>
			     <div>Tên người nhận tiền: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/nguoiNhanTien"/></div>
			     <div>CMND/CCCD/ Hộ chiếu số: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/cmt-HoChieu"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cấp</div>
			     <div>Nơi cấp: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/tinh-ThanhPho_ten"/></div>
			     <div> Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/noiNhanTien"/></div> 
	
<div><b>III- Tài liệu gửi kèm: </b>(ghi rõ tên tài liệu, bản chính, bản sao)</div>
<table class="tkhai_table">

<xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
							</tr>
	         				</xsl:for-each>	
</table>

<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01HT"/>
	<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- “Trường hợp đề nghị hoàn thuế”: Ghi rõ đề nghị hoàn trả theo quy định tại điểm, khoản, Điều của văn bản quy phạm pháp luật có liên quan; </i></div>
	 <div>  <i>- “Ghi chú” tại mục bù trừ: Ghi rõ phải nộp theo văn bản của Kiểm toán nhà nước, Thanh tra tài chính, Thanh tra chính phủ, cơ quan có thẩm quyền khác (nếu có);</i></div>
	<!--<div>  <i>- “Quyết định thu/Tờ khai hải quan”: Ghi Quyết định hành chính của cơ quan có thẩm quyền hoặc tờ khai hải quan có nợ thuế chưa nộp NSNN.</i></div>
	<div>  <i>- “Nộp vào tài khoản”: Đánh dấu “V” vào cột tài khoản có liên quan.</i></div>
	<div>  <i>- KBNN: Kho bạc Nhà nước.</i></div>
	<div>  <i>- NSNN: Ngân sách Nhà nước.</i></div>
	<div>  <i>- GTGT: Giá trị gia tăng.</i></div> -->	  	 
	</div>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
			
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
