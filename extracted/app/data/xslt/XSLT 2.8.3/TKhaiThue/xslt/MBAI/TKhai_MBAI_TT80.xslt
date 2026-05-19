<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_MBAI_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/LPMB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div>[09] Khai cho địa điểm kinh doanh mới thành lập trong năm  [<xsl:if test="$tkchinh/ct09 = 'true' ">X</xsl:if> <xsl:if test="$tkchinh/ct09 = '1' "> X </xsl:if>]</div><br/>
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Tên người nộp lệ phí hoặc tên địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Xã/phường/đặc khu</b></td>
				<td class="align-c"><b>Tỉnh/Thành phố</b></td>
				<td class="align-c"><b>Mã số thuế người nộp lệ phí hoặc mã số địa điểm kinh doanh</b></td>
				<td class="align-c"><b>Vốn điều lệ hoặc vốn đầu tư</b></td>
				<td class="align-c"><b>Mức lệ phí môn bài</b></td>
				<td class="align-c"><b>Số tiền lệ phí môn bài phải nộp</b></td>
				<td class="align-c"><b>Số tiền lệ phí môn bài được miễn</b></td>
				<td class="align-c"><b>Trường hợp miễn lệ phí môn bài</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(3a)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)</b></td>
				<td class="align-c"><b>(8)</b></td>
				<td class="align-c"><b>(9)</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b> 1</b></td>
				<td class="align-l" colspan="9"><b>Người nộp lệ phí môn bài</b></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct2"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ten_xa"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct3a_ten"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct4"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct5"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct6"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct7"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct8"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/NguoiNopLPMB/ct9_ten"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>2</b></td>
				<td class="align-l" colspan="9"><b>Địa điểm kinh doanh</b> (ghi rõ tên)</td>
			 </tr>
			 <xsl:for-each select="$tkchinh/DiaDiemKD/DiaDiemKinhDoanh">
					<!-- <xsl:variable name="currentRows" select='position()' /> -->
			<tr>
				<!-- <td class="align-c"><xsl:value-of select="$currentRows" /></td> -->
				<td class="align-r"></td>
				<td class="align-l"><xsl:value-of select="ct2"/></td>
				<td class="align-l"><xsl:value-of select="ten_xa"/></td>
				<td class="align-l"><xsl:value-of select="ct3a_ten"/></td>
				<td class="align-l"><xsl:value-of select="ct4"/></td>
				<td class="number align-r"><xsl:value-of select="ct5"/></td>
				<td class="number align-r"><xsl:value-of select="ct6"/></td>
				<td class="number align-r"><xsl:value-of select="ct7"/></td>
				<td class="number align-r"><xsl:value-of select="ct8"/></td>
				<td class="align-l"><xsl:value-of select="ct9_ten"/></td>
			</tr>
			</xsl:for-each>
			<tr>
				<td class="align-c"></td>
				<td class="align-l" colspan="6"><b>Tổng cộng các địa điểm kinh doanh: </b></td>
				<!-- <td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td> -->
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/tongcong_ddkd"/></b></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
			</tr>  
			<tr>
				<td class="align-c"></td>
				<td class="align-l" colspan="6"><b>Tổng cộng: </b></td>
				<!-- <td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-c"></td> -->
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/tong"/></b></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
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