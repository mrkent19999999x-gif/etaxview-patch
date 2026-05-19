<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
		<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="hoantra" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/TTDeNghiXuLyHoan/TTinDeNghi' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01DNXLNT">
		<xsl:with-param name="mauTKhai"   select="'01/DNXLNT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>  
		<xsl:with-param name="ghuchuTK"   select="''"/> 
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<br/>	
	                      	<div> <b>II. THÔNG TIN SỐ TIỀN THUẾ, TIỀN CHẬM NỘP, TIỀN PHẠT NỘP THỪA</b> </div>	
							<!--<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>-->			
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" ><b>STT</b></td>
							<td class="align-c"><b>Nội dung khoản nộp thừa</b></td>
							<td class="align-c"><b>Mã định danh khoản phải nộp (ID) (nếu có)</b></td>
							<td class="align-c"><b>Chương</b></td>
							<td class="align-c"><b>Tiểu mục</b></td>
							<td class="align-c"><b>Tên cơ quan thu</b></td>
							<td class="align-c"><b>Loại tiền</b></td>
							<td class="align-c"><b>Số tiền phải nộp</b></td>
							<td class="align-c"><b>Số tiền đã nộp vào NSNN</b></td>
							<td class="align-c"><b>Số tiền nộp thừa</b></td>
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
							<td class="align-c">(10)= (9)-(8)>0</td>
							
						</tr>
				<xsl:for-each select="$tkchinh/TTSoTienThue/CTietTTSoTienThue">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct6_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								
								<!--<td class="align-l"><xsl:if test="ct3_TuKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct3_TuKy_KyKeKhai"/></td>
								<td class="align-l"><xsl:if test="ct4_DenKy_LoaiKy = 'Q' ">Q</xsl:if><xsl:value-of select="ct4_DenKy_KyKeKhai"/></td>-->
	         				</tr>	
	         		</xsl:for-each>	
	         		<xsl:for-each select="$tkchinh/TTSoTienThue/Cong_tieuMuc_01">
							<xsl:variable name="currentRows" select="position()"/>
							<tr> 
							<td class="align-c" colspan ='4'><b>Tổng cộng theo tiểu mục </b></td>
							<td class="align-l"><b><xsl:value-of select="tieuMuc_ten"/></b></td>
							<td></td>
						    <td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong8_tieuMuc)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong9_tieuMuc)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong10_tieuMuc)"/></b></td>
							</tr>
								</xsl:for-each>	
							<td class="align-c" colspan ='4'><b>Tổng cộng </b></td>
							<td></td>
						    <td></td>
						    <td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTSoTienThue/tongCot8)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTSoTienThue/tongCot9)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTSoTienThue/tongCot10)"/></b></td>
			</table><br/>
	<div> <b>III. ĐỀ NGHỊ XỬ LÝ KHOẢN NỘP THỪA</b> </div>	
						<div><b><i>1. Thông tin người nộp thuế đề nghị bù trừ khoản nộp thừa với khoản nợ, khoản thu phát sinh hoặc đề nghị hoàn kiêm bù trừ thu ngân sách nhà nước </i></b></div>
							<!--<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>-->
			 <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="12" ><b>Thông tin khoản nợ/khoản thu phát sinh</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp đề nghị bù trừ với số tiền nộp thừa</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền còn phải nộp sau bù trừ</b></td>
							</tr>
							<tr>
							<td class="align-c" ><b>MST của NNT khác (nếu có)</b></td>
                            <td class="align-c" ><b>Tên người nộp thuế khác (nếu có)</b></td>
							<td class="align-c" ><b>Nội dung khoản nợ/phát sinh</b></td>
							<td class="align-c" ><b>Mã định danh khoản phải nộp (ID) (nếu có)</b></td>
							<td class="align-c" ><b>Chương</b></td>
							<td class="align-c" ><b>Tiểu mục</b></td>
							<td class="align-c" ><b>Tên cơ quan thu</b></td>
							<td class="align-c" colspan="2" ><b>Địa bàn hành chính </b></td>
							<td class="align-c" ><b>Hạn nộp</b></td>
							<td class="align-c" ><b>Loại tiền</b></td>
							<td class="align-c" ><b>Số tiền còn phải nộp</b></td>
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
                                <td class="align-c" colspan="2">(9)</td>
                                <td class="align-c">(10)</td>
                                <td class="align-c">(11)</td>
                                <td class="align-c">(12)</td>
                                <td class="align-c">(13)</td>
                                <td class="align-c">(14)= (12)-(13)</td>
                             </tr>
                                
                              <xsl:for-each select="$tkchinh/TTDeNghiXuLyHoan/TTinNNT/CTietTTinNNT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct8_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct9_ten_tinh"/></td>
								<td class="align-l"><xsl:value-of select="ct9_ten_huyen"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct10,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct11_ten"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
	         					</tr>					
	         				</xsl:for-each>	
							<xsl:for-each select="$tkchinh/TTDeNghiXuLyHoan/TTinNNT/Cong_tieuMuc_02">
							<xsl:variable name="currentRows" select="position()"/>
							<tr> 
							<td class="align-c" colspan ='6'><b>Tổng cộng theo tiểu mục </b></td>
							<td class="align-l"><b><xsl:value-of select="tieuMuc_ten"/></b></td>
							<td></td>
						    <td></td>
						    <td></td>
                           <td></td>
                           <td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong12_tieuMuc)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong13_tieuMuc)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong14_tieuMuc)"/></b></td>
							</tr>
								</xsl:for-each>	
							<td class="align-c" colspan ='6'><b>Tổng cộng </b></td>
							<td></td>
							<td></td>
						    <td></td>
						    <td></td>
                            <td></td>
                            <td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTDeNghiXuLyHoan/TTinNNT/tongCot12)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTDeNghiXuLyHoan/TTinNNT/tongCot13)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTDeNghiXuLyHoan/TTinNNT/tongCot14)"/></b></td>
			</table><br/>
			
			
	<!--<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
	<div>Tổng số tiền nộp NSNN ghi bằng chữ: <b><i><xsl:value-of select="ihtkk:DocTienBangChu($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot11)"/> đồng</i></b></div> -->
               
					<div><b><i>2. Thông tin người nộp thuế đề nghị hoàn trả khoản thu ngân sách nhà nước </i></b> </div> 
		          <div>Số tiền hoàn trả: Bằng số: <b><i><xsl:value-of select="ihtkk:formatNumber($hoantra/soTienHoanTra)"/>đồng</i></b>&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;    </div>  
				<div>Hình thức hoàn trả: </div> 
				<div>[<xsl:if test="$hoantra/HinhThucHoanTra/chuyenKhoan='true' or $hoantra/HinhThucHoanTra/chuyenKhoan='1'">x</xsl:if>] Chuyển khoản: Tên chủ tài khoản: <xsl:value-of select="$hoantra/HinhThucHoanTra/tenChuTaiKhoan"/></div>
				<div>Tài khoản số: <xsl:value-of select="$hoantra/HinhThucHoanTra/taiKhoanSo"/></div>
				<div>Tại Ngân hàng (KBNN): <xsl:value-of select="$hoantra/HinhThucHoanTra/taiNganHang"/> </div>         
			     <div> [<xsl:if test="$hoantra/HinhThucHoanTra/tienMat='true' or$hoantra/HinhThucHoanTra/tienMat='1'">x</xsl:if>] <lable> Tiền mặt</lable></div>
			     <div>Tên người nhận tiền: <xsl:value-of select="$hoantra/HinhThucHoanTra/nguoiNhanTien"/></div>
			     <div>CMND/CCCD/ Hộ chiếu số: <xsl:value-of select="$hoantra/HinhThucHoanTra/cmt-HoChieu"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cấp <xsl:value-of select="ihtkk:stringDatetime(ngayCap,'dd/mm/yyyy')"/></div>
			     <div>Nơi cấp: <xsl:value-of select="$hoantra/HinhThucHoanTra/noiCap"/></div>
			     <div> Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước <xsl:value-of select="$hoantra/HinhThucHoanTra/noiNhanTien"/></div> 
	
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
	<!--<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- “Trường hợp đề nghị hoàn thuế”: Ghi rõ đề nghị hoàn trả theo quy định tại điểm, khoản, Điều của văn bản quy phạm pháp luật có liên quan; </i></div>
	 <div>  <i>- “Ghi chú” tại mục bù trừ: Ghi rõ phải nộp theo văn bản của Kiểm toán nhà nước, Thanh tra tài chính, Thanh tra chính phủ, cơ quan có thẩm quyền khác (nếu có);</i></div>  	 
	</div>-->
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
			
		</div>	
		</div>
	</xsl:template>	
</xsl:stylesheet>
