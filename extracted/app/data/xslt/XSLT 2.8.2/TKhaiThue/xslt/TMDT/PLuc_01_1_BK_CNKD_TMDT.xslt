<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định số 117-NĐ-CP/2025/NĐ-CP ngày 09 tháng 06 năm 2025 của Chính Phủ'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
		<!-- Phụ lục 01-2/BK_HDKD -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT' />
			<xsl:call-template name="tkhaiHeader_pluc_01_1_CNKD_TMDT">
		<xsl:with-param name="mauTKhai"   select="'01-1/BK-CNKD-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT SỐ THUẾ ĐÃ KHẤU TRỪ CỦA HỘ, CÁ NHÂN CÓ HOẠT ĐỘNG KINH DOANH TRÊN NỀN TẢNG THƯƠNG MẠI ĐIỆN TỬ'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<br></br>
				
					<div class="align-r">Đơn vị tính: <xsl:value-of select="$tkchinh/KKThueGTGT_TNCN/ten_loaitien"/>
		</div>
							<br/>
						<table class="tkhai_table">
							  <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c " rowspan="2"><b>Tên nền tảng thương mại điện tử</b></td>
							<td class="align-c" rowspan="2"><b>Mã quản lý trên nền tảng thương mại điện tử của người bán là hộ, cá nhân </b></td>
							<td class="align-c" rowspan="2"><b>Tên gian hàng/ Tên tài khoản trên nền tảng thương mại điện tử</b></td>
							<td class="align-c" rowspan="2"><b>Tên hộ/ Họ và tên cá nhân </b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/ Số định danh cá nhân (Số CCCD)/ Số hộ chiếu/Số giấy tờ định danh của hộ, cá nhân </b></td>
							<td class="align-c" rowspan="2"><b>Cá nhân không cư trú</b></td>
							<td class="align-c" rowspan="2"><b>Nhóm ngành nghề</b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu của hộ, cá nhân </b></td>
							
							<td class="align-c" colspan ='3'><b>Số thuế đã khấu trừ</b></td>
							
							
							
						</tr>
						<tr>
								<td class="align-c"><b>Số thuế GTGT </b> <br/></td>
								<td class="align-c"><b>Số thuế TNCN </b><br/></td>
								<td class="align-c"><b>Tổng cộng</b><br/></td>	
						</tr>
						<tr>
								<td class="align-c">(01)<br/></td>
								<td class="align-c">(02)<br/></td>
								<td class="align-c">(03)<br/></td>
								<td class="align-c">(04)<br/></td>
								<td class="align-c">(05)<br/></td>
								<td class="align-c">(06)<br/></td>
								<td class="align-c">(07)<br/></td>
								<td class="align-c">(08)<br/></td>
								<td class="align-c">(09)<br/></td>
								<td class="align-c">(10)<br/></td>
								<td class="align-c">(11)<br/></td>
								<td class="align-c">(12) = (10) +(11)<br/></td>
						</tr>
							<tr>
								<td class="align-c"><b>I</b></td>
								<td colspan="7"><b>Người Việt Nam</b></td>
							</tr>
						<xsl:for-each select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/BKeCNKD-NguoiVN/CTietCNKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct02"/></td>
								<td class="align-c"><xsl:value-of select="ct03"/></td>
								<td class="align-c"><xsl:value-of select="ct04"/></td>
								<td class="align-c"><xsl:value-of select="ct05"/></td>
								<td class="align-c"><xsl:value-of select="ct06"/></td>
								<td class="align-c">
								
								<xsl:if test="ct07='false'">
								                             
									<input type="checkbox"></input> 
								</xsl:if>
								<xsl:if test="ct07='0'">
									<input type="checkbox" ></input> 
								</xsl:if>
								<xsl:if test="ct07='true'">
									<input type="checkbox" checked="true"></input>  
								</xsl:if>
								<xsl:if test="ct07='1'">
									<input type="checkbox" checked="true" ></input>   
								</xsl:if>
								
								</td>
								<td class="align-c"><xsl:value-of select="ct08_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="7"><b>Người nước ngoài</b></td>
					</tr>
						<xsl:for-each select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/BKeCNKD_NguoiNN/CTietCNKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct02"/></td>
								<td class="align-c"><xsl:value-of select="ct03"/></td>
								<td class="align-c"><xsl:value-of select="ct04"/></td>
								<td class="align-c"><xsl:value-of select="ct05"/></td>
								<td class="align-c"><xsl:value-of select="ct06"/></td>
								<td class="align-c">
								<xsl:if test="ct07='false'">
									[ ]  
								</xsl:if>
								<xsl:if test="ct07='0'">
									[ ]  
								</xsl:if>
								<xsl:if test="ct07='true'">
									[X]  
								</xsl:if>
								<xsl:if test="ct07='1'">
									[X]  
								</xsl:if>
								</td>
								<td class="align-c"><xsl:value-of select="ct08_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="8"><b>Tổng cộng cung cấp hàng hóa</b></td>
						
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongHangHoa/ct13)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongHangHoa/ct14)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongHangHoa/ct15)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongHangHoa/ct16)"/></b></td>
					</tr>
					<tr>
						<td class="align-c" colspan="8"><b>Tổng cộng Cung cấp dịch vụ</b></td>
						
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongDichVu/ct13)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongDichVu/ct14)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongDichVu/ct15)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongDichVu/ct16)"/></b></td>
					</tr>
					<tr>
						<td class="align-c" colspan="8"><b>Vận tải, dịch vụ có gắn với hàng hóa</b></td>
						
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongVanTai/ct13)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongVanTai/ct14)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongVanTai/ct15)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongVanTai/ct16)"/></b></td>
					</tr>
					<tr>
						<td class="align-c" colspan="8"><b>Hoạt động kinh doanh khác</b></td>
						
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongKinhDoanhKhac/ct13)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongKinhDoanhKhac/ct14)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongKinhDoanhKhac/ct15)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD_TMDT/TongCongKinhDoanhKhac/ct16)"/></b></td>
					</tr>
	         		
					
				
						</table>
						
						
					<xsl:call-template name="tkhaiFooter"/>
					
	</div>		
			</div>

</xsl:if>
		<!-- Kết thúc PL 01-2/BK-HDKD -->
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>