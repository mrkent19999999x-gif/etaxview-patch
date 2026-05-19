<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  23/2021/TT-BTC ngày 30/03/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_07_TEM">
		<xsl:with-param name="mauTKhai"   select="'07/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table width='100%'>
			<tr>
				<td class="align-r">
					<i>Đơn vị tính: Tem</i>
				</td>
			</tr>
		</table>
			<table class="tkhai_table">		
					
				
					<tr>
						   <td rowspan='2' class="align-c"><b>STT</b></td>
						   <td rowspan='2' class="align-c"><b>Tên loại tem</b></td>
						   <td rowspan='2' class="align-c"><b>Ký hiệu mẫu tem</b></td>
						   <td rowspan='2' class="align-c"><b>Ký hiệu tem</b></td>
						   <td rowspan='2' class="align-c"><b>Số lượng tem tồn đầu kỳ</b></td>	
						   <td rowspan='2' class="align-c"><b>Số lượng tem mua trong kỳ</b></td>
							<td rowspan='2' class="align-c"><b>Tổng số tem sử dụng, mất, cháy, hủy</b></td>
							<td colspan='3' class="align-c"><b>Trong đó</b></td>
							<td rowspan='2' class="align-c"><b>Tồn cuối kỳ</b></td>
							<td rowspan='2' class="align-c"><b>Ghi chú</b></td>
					</tr>
					<tr>
						   <td class="align-c"><b>Sử dụng</b></td>
						   <td class="align-c"><b>Mất cháy</b></td>
						   <td class="align-c"><b>Hủy</b></td>
						   
					</tr>
					<tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>
						   <td class="align-c"><b>(6)</b></td>
						   <td class="align-c"><b>(7)=(8)+(9)+(10)</b></td>
						   <td class="align-c"><b>(8)</b></td>
						   <td class="align-c"><b>(9)</b></td>
						   <td class="align-c"><b>(10)</b></td>
						   <td class="align-c"><b>(11)=(5)+(6)-(7)</b></td>
						   <td class="align-c"><b>(12)</b></td>
						   
													
					</tr>
					<xsl:for-each select="$tkchinh/BangTem/ChiTietTem">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenTemDT"/></td>
									
									<td class="align-c"><xsl:value-of select="kyHieuMauTem"/></td>
									<td class="align-c"><xsl:value-of select="kyHieuTem"/></td>									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(slTonDauKy)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(slMuaTrongKy)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSuDung)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(temSuDung)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(temMatChay)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(temHuy)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(temTonCuoiKy)"/></td>
									<td class="align-l"><xsl:value-of select="ghiChu"/></td>		
								 	
								</tr>
					</xsl:for-each>
													 
			</table>
			
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_07_TEM_TT23"/>
		
		
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>