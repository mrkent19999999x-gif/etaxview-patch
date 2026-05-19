<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_04_DK_TCT'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 95/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_04_DK_TCT_BK01">
		<xsl:with-param name="mauTKhai"   select="'04-ĐK-TCT-BK01'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content">     	
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>STT</b></td>
								<td class="align-c" rowspan="1"><b>Tên nhà thầu phụ <br/>Name of sub-contractor</b></td>
								<td class="align-c" rowspan="1"><b>Quốc tịch <br/>Nationality</b></td>
								<td class="align-c" rowspan="1"><b>Mã số đăng ký ĐTNT tại VN (nếu có) <br/>Taxapayer identification number in Vietnam (if any)</b></td>
								<td class="align-c" rowspan="1"><b>Số hợp đồng <br/>Sub-contract number </b></td>
								<td class="align-c" rowspan="1"><b>Giá trị hợp đồng <br/>Sub-contract value </b></td>
								<td class="align-c" rowspan="1"><b>Địa điểm thực hiện <br/>Location of business according to the sub-contract </b></td>
								<td class="align-c" rowspan="1"><b>Số lượng lao động <br/>Employees hired in the sub-contract </b></td>
							  </tr>
						<xsl:for-each select="$PL/NhaThauPhu/ChiTietNhaThauPhu">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"> <xsl:value-of select="tenNhaThauPhu"/></td>
								<td class="align-l"> <xsl:value-of select="tenQuocTich"/></td>
								<td class="align-l"> <xsl:value-of select="mstDangKyTaiVN"/></td>
								<td class="align-l"> <xsl:value-of select="soHD"/></td>
								<td class="align-l"> <xsl:value-of select="giaTriHD_so"/>&#160; <xsl:value-of select="ma_loaiTien"/></td>
								<td class="align-l"> <xsl:value-of select="diaDiemHD"/></td>
								<td class="align-l"> <xsl:value-of select="soLuongLD"/></td>								
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