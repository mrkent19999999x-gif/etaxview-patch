<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_02_01_DK_TCT'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_02_DK_TCT_BK02">
		<xsl:with-param name="mauTKhai"   select="'01-ĐK-TCT-BK02'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content">     	
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>STT</b></td>
								<td class="align-c" rowspan="1"><b>Tên đơn vị phụ thuộc</b></td>
								<td class="align-c" rowspan="1"><b>Số nhà, đường phố (thôn xóm)</b></td>
								<td class="align-c" rowspan="1"><b>Phường/xã</b></td>
								<td class="align-c" rowspan="1"><b>Quận/huyện</b></td>
								<td class="align-c" rowspan="1"><b>Tỉnh/thành phố</b></td>
								<td class="align-c" rowspan="1"><b>Số Quyết định thành lập</b></td>
								<td class="align-c" rowspan="1"><b>Ngày ban hành Quyết định thành lập</b></td>
							  </tr>
						<xsl:for-each select="$PL/DonViPhuThuoc/ChiTietDonViPhuThuoc">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"> <xsl:value-of select="tenDViPhuThuoc"/></td>
								<td class="align-l"> <xsl:value-of select="soNha"/></td>
								<td class="align-c"> <xsl:value-of select="tenPhuong"/></td>
								<td class="align-c"> <xsl:value-of select="tenQuan"/></td>
								<td class="align-c"> <xsl:value-of select="tenTinh"/></td>
								<td class="align-l"> <xsl:value-of select="soQuyetDinh"/></td>
								<td class="align-c"> <xsl:value-of select="ihtkk:stringDatetime(ngayBanHanhQD,'dd/mm/yyyy')"/></td>
								</tr>
								</xsl:for-each>
							   
		
</table>
  </div>
</div>  
	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter_pluc_01_BK_105">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table> 

</xsl:template>		
</xsl:stylesheet>