<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_01_1_HT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_4_HT">	
		<xsl:variable name="PL01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_4_HT'/>
		<xsl:call-template name="tkhaiHeader-plucTT01_4_HT">
		<xsl:with-param name="mauTKhai"   select="'01-4/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN, CHỨNG TỪ HÀNG HOÁ, DỊCH VỤ MUA VÀO'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Giấy đề nghị hoàn trả khoản thu NSNN số... ngày ... tháng... năm...)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
	
	<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>		
                   <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="3" ><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Thông tin hóa đơn</b></td>
							<td class="align-c" colspan="2"><b>Thông tin doanh nghiệp bán hàng</b></td>
						
							<td class="align-c" colspan="4"><b>Thông tin về người nước ngoài</b></td>
							
							<td class="align-c" colspan="2"><b>Thông tin hàng hóa</b></td>
							<td class="align-c" colspan="4"><b>Thông tin hoàn thuế</b></td>
							

						</tr>
						<tr>
							
							<td class="align-c" rowspan="2"><b>Ký hiệu</b></td>
							<td class="align-c" rowspan="2"><b>Số</b></td>
							<td class="align-c" rowspan="2"><b>Ngày, tháng, năm</b></td>
							
							<td class="align-c" rowspan="2"><b>Tên đơn vị bán hàng</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							
							<td class="align-c" rowspan="2"><b>Họ và tên</b></td>
							<td class="align-c" colspan="3"><b>Hộ chiếu/Giấy tờ nhập xuất cảnh</b></td>
							<td class="align-c" rowspan="2"><b>Trị giá hàng chưa thuế GTGT</b></td>
							<td class="align-c" rowspan="2"><b>Thuế GTGT</b></td>
							
							<td class="align-c" rowspan="2"><b>Tên cơ quan hải quan xác nhận</b></td>
							<td class="align-c" rowspan="2"><b>Ngày ngân hàng hoàn thuế cho người nước ngoài </b></td>
							<td class="align-c" rowspan="2"><b>Số tiền thuế GTGT ngân hàng đã ứng trước để hoàn cho người nước ngoài </b></td>
							<td class="align-c" rowspan="2"><b>Phí dịch vụ ngân hàng được hưởng</b></td>
						</tr>
						<tr>
							
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày cấp</b></td>
							<td class="align-c"><b>Quốc Tịch</b></td>
							
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
							<td class="align-c">(13)</td>
							<td class="align-c">(14)</td>
							<td class="align-c">(15)</td>
							<td class="align-c">(16)</td>
						</tr>
				<xsl:for-each select="$PL01_1/BangKeChungTuHoan">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="kyHieu"/></td>
								<td class="align-l"><xsl:value-of select="soHoaDon"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="tenDonViBanHang"/></td>
								<td class="align-l"><xsl:value-of select="mstNguoiBan"/></td>
								<td class="align-l"><xsl:value-of select="hoVaTen"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayCap,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ten_QuocTich"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(triGiaHangChuaThueGTGT)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)"/></td>
								<td class="align-l"><xsl:value-of select="tenCQHQ"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayNHHoan,'dd/mm/yyyy')"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThueGTGT)"/></td>
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phiDichVu)"/></td>
							
	         				</tr>	
	         		</xsl:for-each>	
							<tr> 
							<td class="align-c" colspan ='10'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongCongTriGiaHangChuaThueGTGT)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongCongThueGTGT)"/></b></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongCongSoTienThueGTGT)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongCongPhiDichVu)"/></b></td>
							
							</tr>
							
							
			</table><br/>
			
			<tr>
							Tổng số tiền đề nghị hoàn trả:<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongSoTienDeNghiHoanTra)"/></b></td>
							</tr>
			<!--	<div class="align-l">Số Giấy chứng nhận doanh nghiệp khoa học và công nghệ: <xsl:value-of select="$PL_TT03/soGiayChungNhanDNKHCN"/></div>
 				<div class="align-l">ngày nộp: <xsl:value-of select="ihtkk:stringDatetime($PL_TT03/ngayCap, 'dd/mm/yyyy')"/> nơi cấp: <xsl:value-of select="$PL_TT03/noiCap"/></div>				
                 <div class="align-l">Danh mục sản phẩm hình thành từ kết quả khoa học và công nghệ đủ điều kiện được hưởng ưu đãi năm <xsl:value-of select="$PL_TT03/nam"/></div> 					
 				  
 				  <table class="tkhai_table">
 				  <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên sản phẩm</b></td>
 				  </tr>
 				  <xsl:for-each select="$PL_TT03/DMSanPham">
									<xsl:variable name="currentRows" select='position()' />
					<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="tenSanPham"/></td>
					</tr>
					</xsl:for-each>
				</table>
		        <div>A. Xác định điều kiện về doanh thu để được hưởng ưu đãi:</div>
		        <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		         <table class="tkhai_table">
 				  <tr>
							   <td class="align-c"><b>TT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
 				  </tr>
					<tr>
							 <td class="align-c">1</td>
							 <td class="align-l">Doanh thu từ sản xuất, kinh doanh các sản phẩm hình thành từ kết quả khoa học và công nghệ</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctA1"/></b></td>
					</tr>
				   <tr>
							 <td class="align-c">2</td>
							 <td class="align-l">Tổng doanh thu của doanh nghiệp</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctA2"/></b></td>
					</tr>
				      <tr>
							 <td class="align-c">3</td>
							 <td class="align-l">Tỷ lệ về doanh thu làm căn cứ xét ưu đãi thuế (= 1/2)</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctA3"/></b></td>
					</tr>
				</table>
		            <div>B. Xác định số thuế TNDN được hưởng ưu đãi:</div>
		            <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		         <table class="tkhai_table">
 				  <tr>
							   <td class="align-c"><b>TT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
 				  </tr>
					<tr>
							 <td class="align-c">1</td>
							 <td class="align-l">Thu nhập từ sản xuất, kinh doanh các sản phẩm hình thành từ kết quả khoa học và công nghệ</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctB1"/></b></td>
					</tr>
				   <tr>
							 <td class="align-c">2</td>
							 <td class="align-l">Thuế TNDN được giảm 50%</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctB2"/></b></td>
					</tr>
				      <tr>
							 <td class="align-c">3</td>
							 <td class="align-l">Thuế TNDN được miễn</td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL_TT03/ctB3"/></b></td>
					</tr>
				</table>-->
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter_02TNDN_TT80">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
