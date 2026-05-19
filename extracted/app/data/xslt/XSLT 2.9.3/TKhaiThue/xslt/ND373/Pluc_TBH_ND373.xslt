<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định số 373/2025/NĐ-CP ngày 31 tháng 12 năm 2025 của Chính phủ'" />
		 <xsl:variable name="ghiChuPL" select="''"/>
	  <!-- Phụ lục 01-1/TBH TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01-1_TBH_TB"/>	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01-1_TBH_TB' />
			<xsl:call-template name="tkhaiHeader-Pluc01-TBH-ND373">
		<xsl:with-param name="mauTKhai"   select="'01-1/TBH'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'HỢP ĐỒNG TÁI BẢO HIỂM, CHỨNG TỪ TÁI BẢO HIỂM THEO TỔ CHỨC NHẬN TÁI BẢO HIỂM NƯỚC NGOÀI'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai thuế mẫu: 01/TBH)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<table>
			<tr>
				<td>
					<table class="tkhai_table"  >
								 <thead>
								  <tr>
								   <td rowspan="2" class="align-c"><b>STT</b></td>
								   <td rowspan="2" class="align-c"><b>Tên tổ chức nhận tái bảo hiểm nước ngoài</b></td>
								   <td rowspan="2" class="align-c"><b>Nước cư trú</b></td>
								   <td rowspan="2" class="align-c"><b>Địa chỉ trụ sở chính ở nước ngoài</b></td>
								   <td rowspan="2" class="align-c"><b>Loại Hợp đồng</b></td>
								   <td colspan="2" class="align-c"><b>Hợp đồng/Chứng từ tái bảo hiểm</b></td>
								   <td colspan="2" class="align-c"><b>Thời gian thực hiện hợp đồng</b></td>
								   <td rowspan="2" class="align-c"><b>Phí bảo hiểm</b></td>
								   <td rowspan="2" class="align-c"><b>Doanh thu từ hoạt động tái bảo hiểm</b></td>
								  </tr>
								  <tr>
								   <td class="align-c"><b>Số</b></td>
								   <td class="align-c"><b>Ngày</b></td>
								   <td class="align-c"><b>Từ ngày</b></td>
								   <td class="align-c"><b>Đến ngày</b></td>
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
								  </tr>
								 </thead>
								 
						<xsl:for-each select="$pl01/Tentochuc">
							<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-l"><xsl:value-of select="$currentRows"/>.</td>
									<td class="align-l"><xsl:value-of select="ten_ToChuc"/></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
						<xsl:for-each select="ChiTietHopDong">
							<xsl:variable name="currentRows1" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows1"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
	         					<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct7,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct8,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct9,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         				</tr>	
							</xsl:for-each>	       				 
						</xsl:for-each>	
								<tr>
								   <td class="align-c"></td>
								   <td class="align-c">Tổng cộng</td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:formatNumber($pl01/tongCong)"/></td>
								</tr>	
						
						 </table>
				</td>
			</tr>
				  
		</table>
      </div>	
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>