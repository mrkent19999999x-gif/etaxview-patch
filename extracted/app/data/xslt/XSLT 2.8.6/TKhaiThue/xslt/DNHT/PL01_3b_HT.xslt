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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3b_HT">	
		<xsl:variable name="PL01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3b_HT'/>
		<xsl:call-template name="tkhaiHeader-plucTT01_3b_HT">
		<xsl:with-param name="mauTKhai"   select="'01-3b/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'Bảng kê Viên chức ngoại giao thuộc đối tượng được hoàn thuế GTGT'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Giấy đề nghị hoàn trả khoản thu NSNN số... ngày ... tháng... năm...)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
	
	<div  class="align-r"><i>Đơn vị tiền (currency unit): Đồng Việt Nam (Vietnamese dong)</i></div>		
                   <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT
(No)
</b></td>
<td class="align-c" rowspan="2" ><b>Tên cá nhân
(Name of individual)
</b></td>
<td class="align-c" rowspan="2" ><b>Chức vụ
(Designation)
</b></td>

							<td class="align-c" colspan="4"><b>Thông tin hộ chiếu 
(Passport details)
</b></td>
<td class="align-c" colspan="3"><b>Thông tin nhận tiền 
hoàn trả 
(Refund receiver details)
</b></td>
							
	                        <td class="align-c" rowspan="2"><b>Số tiền thuế GTGT đề nghị hoàn 
(Amount of VAT refund claimed)
</b></td>
	                        <td class="align-c" rowspan="2"><b>Số tiền thuế GTGT Cục Lễ tân xác nhận được hoàn
(Amount of VAT refund approved by the Protocol Department-MOFA )  
</b></td>

						</tr>
						<tr>
							<td class="align-c"><b>Số
(No)
</b></td>
							<td class="align-c"><b>Ngày cấp (Date of issue)</b></td>
							<td class="align-c"><b>Ngày hết hạn
(Date of expiry)
</b></td>
							<td class="align-c"><b>Quốc tịch (Nationality)</b></td>
							<td class="align-c"><b>Số tài khoản
(Bank account No)
</b></td>
							<td class="align-c"><b>Tên chủ tài khoản
(Name of sccount holder)
</b></td>
							<td class="align-c"><b>Tại ngân hàng
(Name of Bank)
</b></td>
						
						</tr>
						
				<xsl:for-each select="$PL01_1/VienChucNgoaiGiaoHoanThue">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenCaNhan"/></td>
								<td class="align-l"><xsl:value-of select="chucVu"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayCap,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayHetHan,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ten_QuocTich"/></td>
								<td class="align-l"><xsl:value-of select="soTaiKhoan"/></td>
								<td class="align-l"><xsl:value-of select="tenChuTaiKhoan"/></td>
								<td class="align-l"><xsl:value-of select="NganHang_ten"/></td>
								
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThueGTGTDeNghiHoan)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThueGTGTXacNhanHoan)"/></td>
								
	         				</tr>	
	         		</xsl:for-each>	
							
			</table><br/>
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
<xsl:call-template name="tkhaiFooter_01_3b_HT">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
