<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_01_1_HT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_HT">	
		<xsl:variable name="PL02_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_HT'/>
			
		<xsl:call-template name="tkhaiHeader-plucTT02_1_HT">
		<xsl:with-param name="mauTKhai"   select="'02-1/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHỨNG TỪ NỘP THUẾ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Áp dụng đối với trường hợp đề nghị hoàn thuế theo Hiệp định
 tránh đánh thuế hai lần và Điều ước quốc tế khác/trường hợp tổ chức, cá nhân trả thu nhập hoàn thuế TNCN khi quyết toán.
Kèm theo Giấy đề nghị hoàn trả khoản thu NSNN số ... ngày ... tháng... năm...)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
	<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>		
                   <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"  ><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Số chứng từ </b></td>
							<td class="align-c" rowspan="2"><b>Ngày chứng từ</b></td>
							<td class="align-c" rowspan="2"><b>Ngân hàng nơi nộp thuế</b></td>
							<td class="align-c" colspan="2"><b>Kho bạc nhà nước nơi nộp thuế</b></td>
							<td class="align-c" rowspan="2"><b>Tiểu mục</b></td>
							<td class="align-c" rowspan="2"><b>Kỳ thuế (nếu có)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế đã nộp</b></td>
						</tr>
						<tr>
							<td class="align-c" ><b>Tỉnh/Thành phố</b></td>
							<td class="align-c" ><b>Kho bạc nhà nước</b></td>
							
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(4.1)</td>
							<td class="align-c">(4.2)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>	
						</tr>
				<xsl:for-each select="$PL02_1/NoiDungPL02_1_HT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct4_tenNH"/></td>
								<td class="align-l"><xsl:value-of select="ct4_tenTinh"/></td>
								<td class="align-l"><xsl:value-of select="ct4_tenKBNN"/></td>
								<td class="align-l"><xsl:value-of select="ct5_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct6_KyKeKhai"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>>
	         				</tr>	
	         		</xsl:for-each>	
							<tr> 
							<td class="align-c" colspan ='8'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL02_1/tongCot7)"/></b></td>
							</tr>
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
