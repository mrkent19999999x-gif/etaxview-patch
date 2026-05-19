<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_02_04_DK_TCT'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 95/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_04_DK_TCT_BK02">
		<xsl:with-param name="mauTKhai"   select="'04-ĐK-TCT-BK02'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content">     	
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>STT</b></td>
								<td class="align-c" rowspan="1"><b>Tên Ngân hàng</b><br/><i>(Ghi rõ chi nhánh/Phòng giao dịch) <br/>Name of Bank <br/>(Declare branch/transaction)</i></td>
								<td class="align-c" rowspan="1"><b>Số tài khoản</b><br/> Account number</td>
							  </tr>
						<xsl:for-each select="$PL/TaiKhoanNHang/ChiTietTaiKhoanNH">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"> <xsl:value-of select="tenNH"/></td>
								<td class="align-l"> <xsl:value-of select="soTaiKhoan"/></td>					
								</tr>
								</xsl:for-each>
							   
		
</table>
  </div>
</div>  
	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter_pluc_04_BK">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table> 

</xsl:template>		
</xsl:stylesheet>