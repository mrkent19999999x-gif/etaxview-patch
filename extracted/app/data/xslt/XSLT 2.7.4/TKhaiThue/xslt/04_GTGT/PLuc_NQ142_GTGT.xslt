<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
      <!-- Phụ lục PL_NQ101_GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_NQ142_GTGT">	
		<xsl:variable name="pl_nq101" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_NQ142_GTGT'/>
			
		<xsl:call-template name="tkhaiHeader-pluc142GTGT">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 142/2024/QH15'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
				<td class="align-l">I. Hàng hóa, dịch vụ mua vào trong kỳ được áp dụng mức thuế suất thuế giá trị gia tăng 8% (áp dụng cho người nộp thuế kê khai theo phương pháp khấu trừ thuế)</td>
				<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên hàng hóa, dịch vụ</b></td>
							   <td class="align-c"><b>Giá trị hàng hóa, dịch vụ mua vào chưa có thuế GTGT được khấu trừ trong kỳ</b></td>
							  
							   <td class="align-c"><b>Thuế GTGT của hàng hóa, dịch vụ mua vào được khấu trừ trong kỳ</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								
							</tr>
							<xsl:for-each select="$pl_nq101/HH_DV_MuaVaoTrongKy/BangKeTenHHDV">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenHHDVMuaVao"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriHHDVMuaVao)" /></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTHHDV)" /></td>
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td></td>
                               <td class="align-c"><b>Tổng cộng:</b></td>
                               
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl_nq101/HH_DV_MuaVaoTrongKy/tongCongGiaTriHHDVMuaVao)"/></b></td>
                               
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl_nq101/HH_DV_MuaVaoTrongKy/tongCongThueGTGTHHDV)"/></b></td>
                               
        				</tr>
					</table>  
				
				<td class="align-l">II. Hàng hóa, dịch vụ bán ra trong kỳ</td>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên hàng hóa, dịch vụ</b></td>
							   <td class="align-c"><b>Giá trị hàng hóa dịch vụ chưa có thuế GTGT/Doanh thu hàng hóa, dịch vụ chịu thuế</b></td>
							   <td class="align-c"><b>Thuế suất/ Tỷ lệ tính thuế GTGT theo quy định</b></td>
							   <td class="align-c"><b>Thuế suất/ Tỷ lệ tính thuế GTGT sau giảm</b></td>
							   <td class="align-c"><b>Thuế GTGT của hàng hóa, dịch vụ bán ra được giảm</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)=(4)x80%</td>
								<td class="align-c">(6)=(3)x[(4)-(5)]</td>
							</tr>
							<xsl:for-each select="$pl_nq101/HH_DV_BanRaTrongKy/BangKeTenHHDV">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenHHDV"/></td>
							 
							 
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriHHDV)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(thueSuatTheoQuyDinh)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(thueSuatSauGiam)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTDuocGiam)" /></td>
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td></td>
                               <td class="align-c"><b>Tổng cộng:</b></td>
                               
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl_nq101/HH_DV_BanRaTrongKy/tongCongGiaTriHHDV)"/></b></td>
                               <td></td>
                                <td></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl_nq101/HH_DV_BanRaTrongKy/tongCongThueGTGTDuocGiam )"/></b></td>
                               
        				</tr>
					</table>  
					<tr>
                               <td></td>
                               <td class="align-c">III. Chênh lệch thuế GTGT của hàng hoá, dịch vụ bán ra và mua vào trong kỳ được áp dụng mức thuế suất thuế giá trị gia tăng 8%: <b>[09] = [08] - [06]: </b></td>
                               
                               <td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($pl_nq101/ChenhLech/ct9)"/> đồng</td>
                              
                               
        				</tr>
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter_PL114"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>		
		<!-- Kết thúc PL_NQ101_GTGT -->
		
	</xsl:template>		
</xsl:stylesheet>