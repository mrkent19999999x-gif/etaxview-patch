<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 31/2025/TT-BTC ngày 31 tháng 5 năm 2025 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_02_TEM_TT31">
		<xsl:with-param name="mauTKhai"   select="'02/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table class="ttinnnt_table">
				
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160; Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160; Địa chỉ:  <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, 
							<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, 
							<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					</tr>
					
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;(a) Căn cứ Giấy phép sản xuất sản phẩm thuốc lá hoặc Giấy phép sản xuất sản phẩm rượu số <xsl:value-of select="$tkchinh/soGiayPhepSX"/> do <xsl:value-of select="$tkchinh/noiCapGiayPhep"/> cấp ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayGiayPhepSX,'dd/mm/yyyy')"/>,
					trong đó có quy định:
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;- Sản lượng thuốc lá hoặc sản lượng rượu được phép sản xuất để tiêu thụ trong nước là: <xsl:value-of select="ihtkk:formatNumber($tkchinh/sanLuong)"/>
					</td>
					</tr>
					
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;- Thời hạn được phép sản xuất là: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/thoiHan,'dd/mm/yyyy')"/>
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;(b) Thông tin người được giới thiệu đến mua tem:
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;Số CCCD/Hộ chiếu: <xsl:value-of select="$tkchinh/soGiayTo"/>
					&#160;&#160;&#160;&#160;&#160;Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCap,'dd/mm/yyyy')"/>
					&#160;&#160;&#160;&#160;&#160;Nơi cấp: <xsl:value-of select="$tkchinh/tenNoiCap"/>
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;Họ tên: <xsl:value-of select="$tkchinh/hoTenNguoiMua"/>
					
					</td>
					</tr>
					<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> lập kế hoạch mua/mua bổ sung/đơn đề nghị mua tem như sau:
					</td>
					</tr>
					
				
			</table>
		<table width='100%'>
			<tr>
				<td class="align-r">
					<i>Đơn vị tính: Tem</i>
				</td>
			</tr>
		</table>
			<table class="tkhai_table">		
			
				
					<tr>
						   <td class="align-c"><b>STT</b></td>
						   
						   <td class="align-c"><b>Ký hiệu mẫu tem</b></td>
						   <td class="align-c"><b>Kế hoạch mua</b></td>
						   <td class="align-c"><b>Kế hoạch mua bổ sung</b></td>	
							<td class="align-c"><b>Số lượng tem đề nghị mua kỳ này</b></td>
							<td class="align-c"><b>Lý do</b></td>
					</tr>
					<tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
													
					</tr>
					<xsl:for-each select="$tkchinh/BangKHMuaTem/ChiTietKH">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									
									
									<td class="align-c"><xsl:value-of select="kyHieuMauTem"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(kHMuaNam)"/></td>									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(kHMuaBS)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sLDeNghiMua)"/></td>
									<td class="align-l"><xsl:value-of select="lyDo"/></td>	
								 	
								</tr>
					</xsl:for-each>
													 
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_02_TEM_TT31"/>
		
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>