<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Kèm theo Nghị định số 139/2016/NĐ-CP ngày 04 tháng 10 năm 2016 của Chính phủ'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_MBAI_ND39">
		<xsl:with-param name="mauTKhai"   select="'01/MBAI'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div>[21] Khai bổ sung cho cơ sở mới thành lập trong năm (đánh dấu “X” nếu có)  [<xsl:if test="$tkchinh/ct21 = 'true' ">X</xsl:if> <xsl:if test="$tkchinh/ct21 = '1' "> X </xsl:if>]</div><br/>
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Vốn điều lệ hoặc vốn đầu tư, doanh thu</b></td>
				<td class="align-c"><b>Mức lệ phí môn bài</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b> 1</b></td>
				<td class="align-l"><b>Người nộp lệ phí môn bài</b></td>
				<td class="align-c">[22]</td>
				<td class="align-r"></td>
				<td class="align-r"></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT22/ct2"/></td>
				<td class="align-c"></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT22/ct4"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT22/ct5"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l"><b>Đơn vị trực thuộc hạch toán phụ thuộc cùng địa phương</b> (ghi rõ tên, địa chỉ)</td>
				<td class="align-c">[23]</td>
				<td class="align-c"></td>
				<td class="align-r"></td>
			 </tr>
			 <xsl:for-each select="$tkchinh/CT23/DonViTrucThuocHToanDiaPhuong">
					<xsl:variable name="currentRows" select='position()' />
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows" /></td>
				<td class="align-l">Mã số thuế:  <xsl:value-of select="ct2_ma" />,  Tên đơn vị: <xsl:value-of select="ct2_ten" /></td>
				<td class="align-c"></td>
				<td class="number align-r"><xsl:value-of select="ct4" /></td>
				<td class="number align-r"><xsl:value-of select="ct5" /></td>
			</tr>
			</xsl:for-each>
			<tr>
				<td class="align-c"><b>3</b></td>
				<td class="align-l"><b>Tổng số thuế môn bài phải nộp</b></td>
				<td class="align-c">[24]</td>
				<td class="align-c"></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct24"/></b></td>
			</tr>    
		</table>
		</div>
       </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 
	</xsl:template>		
</xsl:stylesheet>