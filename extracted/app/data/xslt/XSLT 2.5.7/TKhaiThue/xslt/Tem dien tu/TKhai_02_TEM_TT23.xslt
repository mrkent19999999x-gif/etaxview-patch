<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  23/2021/TT-BTC ngày 30/03/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_02_TEM">
		<xsl:with-param name="mauTKhai"   select="'02/TEM'"/>
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
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên loại tem điện tử</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu tem</b></td>
						   <td class="align-c"><b>Kế hoạch mua năm</b></td>
						   <td class="align-c"><b>Kế hoạch mua bổ sung trong năm</b></td>	
							
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
									<td class="align-l"><xsl:value-of select="tenTemDT"/></td>
									
									<td class="align-c"><xsl:value-of select="kyHieuMauTem"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(kHMuaNam)"/></td>									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(kHMuaBS)"/></td>
									
									<td class="align-l"><xsl:value-of select="lyDo"/></td>	
								 	
								</tr>
					</xsl:for-each>
													 
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_03_TEM_TT23"/>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>