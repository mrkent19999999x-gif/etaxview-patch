<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
	  <!-- Phụ lục 02-1/PHLNG TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_PHLPNG"/>	
		<xsl:variable name="pl02_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_PHLPNG' />
		<xsl:call-template name="tkhaiHeader_PL_02_1_PHLPNG_TT80">
			<xsl:with-param name="mauTKhai"   select="'02-1/PHLPNG'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG KÊ PHÍ, LỆ PHÍ VÀ CÁC KHOẢN THU KHÁC PHẢI NỘP THEO TỪNG CƠ QUAN ĐẠI DIỆN NƯỚC CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM Ở NƯỚC NGOÀI THỰC HIỆN THU'"/>
			<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán phí, lệ phí và các khoản thu khác mẫu số 02/PHLPNG)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <table>		
			
			<tr>
				<td>
					<table class="tkhai_table"  >
							<thead>
							 <tr class="tkhaiheader"> 
							  <td class="align-c" >STT</td>
							  <td class="align-c" >Tên cơ quan đại diện Việt Nam ở nước ngoài</td>
							  <td class="align-c" >Loại phí, lệ phí và các khoản thu khác</td>							      
							  <td class="align-c" >Đơn vị tiền</td>
							  <td class="align-c" >Số tiền thu được</td>
							  <td class="align-c" >Tỷ lệ trích để lại theo chế độ (%)</td>
							  <td class="align-c" >Số tiền trích để lại theo chế độ</td>
							  <td class="align-c" >Số tiền phải nộp NSNN</td>
							  <td class="align-c" >Ghi chú</td>							  
							</tr>
							  
							  <td class="align-c" >(1)</td>          
							  <td class="align-c" >(2)</td>
							  <td class="align-c" >(3)</td>
							  <td class="align-c" >(4)</td>
							  <td class="align-c" >(5)</td>
							  <td class="align-c" >(6)</td>
							  <td class="align-c" >(7)=(5)x(6)</td>
							  <td class="align-c" >(8)=(5)–(7)</td>
							  <td class="align-c" >(9)</td>							  
							   
							</thead>
							 <xsl:for-each select="$pl02_1/NoiDungBang">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							   <td class="align-l"><xsl:value-of select="ten_CQDaiDien"/></td>
							   <td class="align-l"><xsl:value-of select="loai_khoanThu"/></td>							  
							   <td class="align-c"><xsl:value-of select="ma_DVTien"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThuDuoc)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLe)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienTrichDeLai)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienPhaiNop)"/></td>
							   <td class="align-r"><xsl:value-of select="ghiChu"/></td>							   
							  </tr>
							  </xsl:for-each>
							  

							  
							  <xsl:for-each select="$pl02_1/TongCongTheoLoaiPhi">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td colspan="2">
							   <i>Tổng cộng theo từng loại phí, lệ phí và các khoản thu khác</i></td>
							   <td class="align-c"><xsl:value-of select="ten_LoaiPhi"/></td>
							   <td class="align-c"><b><xsl:value-of select="ten_DonViTien"/></b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCongSTThuDuoc)"/></td>
							   <td></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCongSTTrichTheoCheDo)"/></td>
							    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCongSTPhaiNop)"/></td>								
							  <td></td>
							  </tr>
							  </xsl:for-each>	
							  
							  <xsl:for-each select="$pl02_1/TongCongTheoLoaiTien">
									<xsl:variable name="currentRows" select='position()' />
							  <tr>
							   <td colspan="3">
							   <b>Tổng cộng</b></td>							  
							   <td class="align-c"><b><xsl:value-of select="ten_DonViTien"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTThuDuoc)"/></b></td>
							   <td></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTTrichTheoCheDo)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCongSTPhaiNop)"/></b></td>								
							  <td></td>
							  </tr>
							  </xsl:for-each>	
							  
							 </table>
</td>
								   </tr>
													 
									</table>

		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
						<xsl:call-template name="tkhaiFooter_TT80"/>
					</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

