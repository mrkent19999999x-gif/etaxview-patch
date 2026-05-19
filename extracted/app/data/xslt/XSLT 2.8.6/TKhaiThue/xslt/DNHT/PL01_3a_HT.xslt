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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3a_HT">	
		<xsl:variable name="PL01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3a_HT'/>
		<xsl:call-template name="tkhaiHeader-plucTT01_3a_HT">
		<xsl:with-param name="mauTKhai"   select="'01-3a/HT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THUẾ GIÁ TRỊ GIA TĂNG (GTGT) CỦA HÀNG HÓA, DỊCH VỤ 
MUA VÀO DÙNG CHO CƠ QUAN ĐẠI DIỆN NGOẠI GIAO (*)
'"/>
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
<!-- <td class="align-c" rowspan="2" ><b>Tên cá nhân
(Name of individual)
</b></td>
<td class="align-c" rowspan="2" ><b>Chức vụ
(Designation)
</b></td> -->

							<td class="align-c" colspan="4"><b>Hoá đơn
(Invoice)
</b></td>
<!-- <td class="align-c" colspan="3"><b>Thông tin nhận tiền 
hoàn trả 
(Refund receiver details)
</b></td> -->
							
	                        <td class="align-c" rowspan="2"><b>Tên nhà cung cấp
(Supplier's name)
</b></td>
	                        <td class="align-c" rowspan="2"><b>Mã số thuế nhà cung cấp
(Tax code)
</b></td>
    <td class="align-c" rowspan="2"><b>Tên hàng hoá,dịch vụ
(Name of purchased goods &amp; services)

</b></td>
<td class="align-c" rowspan="2"><b>Đơn vị tính
(Unit)
</b></td>
<td class="align-c" rowspan="2"><b>Số lượng
(Quantity)
</b></td>
<td class="align-c" rowspan="2"><b>Doanh số mua chưa có thuế GTGT
(Purchased price without VAT)
</b></td>
<td class="align-c" rowspan="2"><b>Tiền thuế GTGT
(Refundable tax)
</b></td>

						</tr>
						<tr>
							<td class="align-c"><b>Mẫu số
(Template no)
</b></td>
							<td class="align-c"><b>Ký hiệu
(Symbol)
</b></td>
							<td class="align-c"><b>Số
(No
</b></td>
							<td class="align-c"><b>Ngày, tháng, năm phát hành
(Date of release)
</b></td>
							
						
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
						<tr>
						    <td class="align-c"><b>I</b></td>
						    <td class="align-l" colspan="11"><b>Hàng hoá, dịch vụ dùng cho cơ quan hoặc xăng dùng cho xe cơ quan (Goods, services and petrol for official use)</b></td>
          				</tr>
						<tr>
						    <td class="align-c"><b>I.1</b></td>
						    <td class="align-l" colspan="11"><b>Hàng hoá, dịch vụ dùng cho cơ quan (Goods, services used for official use)</b></td>
						   
          				</tr>
				<xsl:for-each select="$PL01_1/BangKeGTGT/HHDV_XANGDUNGCQ/HHDVDUNGCOQUAN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mauSo"/></td>
								<td class="align-l"><xsl:value-of select="kyHieu"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
							
								<td class="align-l"><xsl:value-of select="tenNCC"/></td>
								<td class="align-l"><xsl:value-of select="mstNCC"/></td>
								<td class="align-l"><xsl:value-of select="tenHHDV"/></td>
								<td class="align-l"><xsl:value-of select="donViTinh"/></td>
								
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhSo)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tienThueGTGT)"/></td>
								
	         				</tr>	
	         		</xsl:for-each>	
					<tr>
						    <td class="align-c"><b>I.2</b></td>
						    <td class="align-l" colspan="11"><b>Xăng dùng cho xe cơ quan mang biển số (**) (No of Vehicle Plate for official use) </b></td>
						   
          				</tr>
							<xsl:for-each select="$PL01_1/BangKeGTGT/HHDV_XANGDUNGCQ/XANGDUNGCOQUAN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mauSo"/></td>
								<td class="align-l"><xsl:value-of select="kyHieu"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
							
								<td class="align-l"><xsl:value-of select="tenNCC"/></td>
								<td class="align-l"><xsl:value-of select="mstNCC"/></td>
								<td class="align-l"><xsl:value-of select="tenHHDV"/></td>
								<td class="align-l"><xsl:value-of select="donViTinh"/></td>
								
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhSo)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tienThueGTGT)"/></td>
								
	         				</tr>	
	         		</xsl:for-each>	
					<tr>
						   
						    <td class="align-l" colspan="10"><b>Cộng (I.1+I.2) (Total (I.1+I.2)</b></td>
						   	<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HHDV_XANGDUNGCQ/tongCong_ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HHDV_XANGDUNGCQ/tongCong_ct12)"/></td>
          				</tr>
						
						
						<tr>
						    <td class="align-c"><b>II</b></td>
						    <td class="align-l" colspan="11"><b>Hàng hoá, dịch vụ dùng cho cá nhân hoặc xăng dùng cho xe cá nhân của viên chức ngoại giao ....(***) (Goods, services or petrol for personal use of diplomatic agent </b></td>
          				</tr>
						<tr>
						    <td class="align-c"><b>II.1</b></td>
						    <td class="align-l" colspan="11"><b>Hàng hoá, dịch vụ dùng cho cá nhân (Goods, services for personal use)</b></td>
						   
          				</tr>
				<xsl:for-each select="$PL01_1/BangKeGTGT/HHDV_XANGDUNGCANHAN/HHDVDUNGCANHAN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mauSo"/></td>
								<td class="align-l"><xsl:value-of select="kyHieu"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
							
								<td class="align-l"><xsl:value-of select="tenNCC"/></td>
								<td class="align-l"><xsl:value-of select="mstNCC"/></td>
								<td class="align-l"><xsl:value-of select="tenHHDV"/></td>
								<td class="align-l"><xsl:value-of select="donViTinh"/></td>
								
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhSo)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tienThueGTGT)"/></td>
								
	         				</tr>	
	         		</xsl:for-each>	
					<tr>
						    <td class="align-c"><b>II.2</b></td>
						    <td class="align-l" colspan="11"><b>Xăng dùng cho xe cá nhân mang biển số (**):(No of Vehicle Plate for personal use) </b></td>
						   
          				</tr>
							<xsl:for-each select="$PL01_1/BangKeGTGT/HHDV_XANGDUNGCANHAN/XANGDUNGCANHAN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="mauSo"/></td>
								<td class="align-l"><xsl:value-of select="kyHieu"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
							
								<td class="align-l"><xsl:value-of select="tenNCC"/></td>
								<td class="align-l"><xsl:value-of select="mstNCC"/></td>
								<td class="align-l"><xsl:value-of select="tenHHDV"/></td>
								<td class="align-l"><xsl:value-of select="donViTinh"/></td>
								
								
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhSo)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tienThueGTGT)"/></td>
								
	         				</tr>	
	         		</xsl:for-each>	
					<tr>
						   
						    <td class="align-l" colspan="10"><b>Cộng (II.1+II.2) Total (II.1+II.2)</b></td>
						   	<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HHDV_XANGDUNGCANHAN/tongCong_ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HHDV_XANGDUNGCANHAN/tongCong_ct12)"/></td>
          				</tr>
						<tr>
						   
						    <td class="align-l" colspan="10"><b>Tổng cộng (I+II) Total (I+II)</b></td>
						   	<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/tongCong_ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/tongCong_ct12)"/></td>
          				</tr>
			</table><br/>
			
			
						    <td class="align-l">- Đề nghị được hoàn thuế GTGT như sau (Claim  VAT refund as follows)</td><br/>
							
							<tr>
						    <td class="align-l" >a.  Hoàn thuế GTGT vào tài khoản số <xsl:value-of select="$PL01_1/BangKeGTGT/HinhThucHoanTra/taiKhoanSo"/> tại ngân hàng <xsl:value-of select="$PL01_1/BangKeGTGT/HinhThucHoanTra/NganHang_ten"/> cho hàng hoá, dịch vụ hoặc xăng xe dùng cho cơ quan, số tiền: <xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HinhThucHoanTra/soTien)"/>đồng</td><br/>
						   (VAT refund for Goods, services and petrol for official use with amount of…….. to bank account number…. at Bank:<br/>
						  
          				</tr>
						<tr>
						    <td class="align-l" >b.  Hoàn thuế GTGT cho hàng hoá, dịch vụ hoặc xăng xe dùng cho cá nhân của viên chức ngoại giao, số tiền:<xsl:value-of select="ihtkk:formatNumber($PL01_1/BangKeGTGT/HinhThucHoanTra/soTienHoanCahan)"/> đồng (chi tiết số tiền thuế đề nghị hoàn và tài khoản nhận tiền hoàn thuế theo bảng kê 01-3b đính kèm) </td><br/>
						   (VAT refund for Goods, services and petrol for  personal use of diplomatic agents with amount of…….. (Details of VAT refund amount and bank of receiver in Form No: 01-3b attached)<br/>
						  
          				</tr>
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter_01_3a_HT">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
