<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Nghị định số: 114/2020/NĐ-CP ngày 25/9/2020 của Chính phủ'"/>
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_ND114-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_ND114">	
		<xsl:variable name="pl_nd114" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_ND114'/>
			
		<xsl:call-template name="tkhaiHeader-pluc114">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC GIẢM THEO NGHỊ QUYẾT SỐ 116/2020/QH14 NGÀY 19 THÁNG 6 NĂM 2020'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>

	<div class="ndungtkhai_div">
	<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		    <table class="tkhai_table">
							 <tr>
							   <td class="align-c"></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Mã chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
							 </tr>
						<tr>
							 <td class="align-c">1.</td>
							 <td class="align-l"><b>Tổng số thuế TNDN phải nộp</b></td>
							 <td class="align-c"><b>[10]</b></td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct10"/></td>
						</tr>
						<tr>
							 <td></td>
							 <td class="align-l"><i>Trong đó</i></td>
							 <td></td>
							 <td></td>
						</tr>
						<tr>
							 <td class="align-c">1.1.</td>
							 <td class="align-l">Thuế TNDN phải nộp của hoạt động sản xuất, kinh doanh</td>
							 <td class="align-c">[11]</td> 
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct11"/></td>
						</tr>
						<tr>
							 <td class="align-c">1.2.</td>
							 <td class="align-l">Thuế TNDN phải nộp của hoạt động chuyển nhượng bất động sản</td>
							 <td class="align-c">[12]</td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct12"/></td>
						</tr>
						<tr>
							 <td class="align-c">1.3.</td>
							 <td class="align-l">Thuế TNDN phải nộp khác</td>
							 <td class="align-c">[13]</td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct13"/></td>
						</tr>
						<tr>
							 <td class="align-c"><b>2.</b></td>
							 <td class="align-l"><b>Số thuế TNDN được giảm</b></td>
							 <td class="align-c"><b>[14]</b></td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct14"/></td>
						</tr>
						<tr>
							 <td></td>
							 <td class="align-l"><i>Trong đó</i></td>
							 <td></td>
							 <td></td>
						</tr>
						<tr>
							 <td class="align-c">2.1</td>
							 <td class="align-l">Thuế TNDN được giảm của hoạt động sản xuất, kinh doanh</td>
							 <td class="align-c">[15]</td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct15"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.2</td>
							 <td class="align-l">Thuế TNDN được giảm của hoạt động chuyển nhượng bất động sản</td>
							 <td class="align-c">[16]</td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct16"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.3</td>
							 <td class="align-l">Thuế TNDN được giảm khác</td>
							 <td class="align-c">[17]</td>
							 <td class="number align-r"><xsl:value-of select="$pl_nd114/ct17"/></td>
						</tr>
				   </table>
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter_PL114">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
