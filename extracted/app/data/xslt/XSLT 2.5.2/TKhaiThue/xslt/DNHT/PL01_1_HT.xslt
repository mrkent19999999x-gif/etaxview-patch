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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HT">	
		<xsl:variable name="PL01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HT'/>
			
		<xsl:call-template name="tkhaiHeader-plucTT01_1_HT">
		<xsl:with-param name="mauTKhai"   select="'01-1/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN, CHỨNG TỪ HÀNG HOÁ, DỊCH VỤ MUA VÀO'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Giấy đề nghị hoàn trả khoản thu NSNN số... ngày ... tháng... năm...)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
	
	<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>		
                   <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c" colspan="4"><b>Hoá đơn, chứng từ nộp thuế</b></td>
							<td class="align-c" rowspan="2"><b>Tên người bán</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế người bán</b></td>
							<td class="align-c" rowspan="2"><b>Tên hàng hóa, dịch vụ</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng</b></td>
							<td class="align-c" rowspan="2"><b>Đơn giá</b></td>
	                        <td class="align-c" rowspan="2"><b>Giá trị HHDV mua vào chưa có thuế GTGT</b></td>
	                        <td class="align-c" rowspan="2"><b>Thuế suất (%)</b></td>
	                        <td class="align-c" rowspan="2"><b>Tiền thuế GTGT</b></td>
	                        <td class="align-c" rowspan="2"><b>Ghi chú</b></td>

						</tr>
						<tr>
							<td class="align-c"><b>Mẫu số</b></td>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày, tháng, năm</b></td>
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
							
						</tr>
				<xsl:for-each select="$PL01_1/NoiDungPL01_1_HT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7"/></td>
								<td class="align-l"><xsl:value-of select="ct8"/></td>
								<td class="align-l"><xsl:value-of select="ct9"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct5,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/>% </td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								<td class="align-l"><xsl:value-of select="ct115"/></td>
	         				</tr>	
	         		</xsl:for-each>	
							<tr> 
							<td class="align-c" colspan ='13'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL01_1/tongCot14)"/></b></td>
							<td></td>
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
