<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày  6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/MBAI'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div>[21] Khai bổ sung cho cơ sở mới thành lập trong năm (đánh dấu “X” nếu có)      [<xsl:if test="$tkchinh/ct21 = 'true' "> X </xsl:if>]</div><br/>
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Vốn đăng ký, mức thu nhập bình quân tháng</b></td>
				<td class="align-c"><b>Bậc môn bài</b></td>
				<td class="align-c"><b>Mức thuế môn bài</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b> I</b></td>
				<td class="align-l"><b>Người nộp thuế môn bài</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-c"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT22/ct2"/></td>
				<td class="align-c"></td>
				<td class=" number align-r"><xsl:value-of select="$tkchinh/CT22/ct4"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/CT22/ct5"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT22/ct6"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>II</b></td>
				<td class="align-l"><b>Đơn vị trực thuộc hạch toán phụ thuộc cùng địa phương (ghi rõ tên, địa chỉ)</b></td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-c"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
			 </tr>
			 <xsl:for-each select="$tkchinh/CT23/DonViTrucThuocHToanDiaPhuong">
					<xsl:variable name="currentRows" select='position()' />
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows" /></td>
				<td class="align-l">- Tên đơn vị: <xsl:value-of select="ct2_Ten" />
				     <br/>- Địa chỉ: <xsl:value-of select="ct2_DiaChi" /></td>
				<td class="align-l"></td>
				<td class="number align-r"><xsl:value-of select="ct4" /></td>
				<td class="align-c"><xsl:value-of select="ct5" /></td>
				<td class="number align-r"><xsl:value-of select="ct6" /></td>
			</tr>
			</xsl:for-each>
			<tr>
				<td class="align-c"><b>III</b></td>
				<td class="align-l"><b>Tổng số thuế môn bài phải nộp</b></td>
				<td class="align-c"><b>[24]</b></td>
				<td class="align-c"></td>
				<td class="align-r"></td>
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