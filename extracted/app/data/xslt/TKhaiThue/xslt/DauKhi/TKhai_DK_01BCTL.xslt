<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-DK4">
		<xsl:with-param name="mauTKhai"   select="'01/BCTL-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
		<div class="content">
		 <table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" rowspan="2"><b>Nội dung</b></td>
				<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
				<td class="align-c" colspan="4"><b>Sản phẩm</b></td>
			 </tr> 
			<tr>
				<td class="align-c"><b>Dầu thô</b></td>
				<td class="align-c"><b>Condensate</b></td>
				<td class="align-c"><b>Khí thiên nhiên</b></td>
				<td class="align-c"><b>Ghi chú</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)</b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Sản lượng dầu khí dự kiến khai thác trong năm</td>
				<td class="align-c"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-l"></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"> - Tính theo thùng</td>
				<td class="align-c">thùng</td>
				<td class="number align-r" id="abc"><xsl:value-of select="$tkchinh/CT1/TinhTheoThung/dauTho_11"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT1/TinhTheoThung/condensate_11"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT1/TinhTheoThung/khiThienNhien_11"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT1/TinhTheoThung/ghiChu_11"/></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"> - Tính theo m3</td>
				<td class="align-c">m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT1/TinhTheom3/dauTho_12"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT1/TinhTheom3/condensate_12"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT1/TinhTheom3/khiThienNhien_12"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT1/TinhTheom3/ghiChu_12"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l"> Tổng số ngày khai thác dầu khí trong năm</td>
				<td class="align-c">ngày</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT2/dauTho_2"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT2/condensate_2"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT2/khiThienNhien_2"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT2/ghiChu_2"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l"> Sản lượng khai thác bình quân ngày</td>
				<td class="align-c"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-r"></td>
				<td class="align-l"></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l">  - Tính theo thùng/ngày</td>
				<td class="align-c">thùng/ngày</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheoThung/dauTho_31"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheoThung/condensate_31"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheoThung/khiThienNhien_31"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT3/TinhTheoThung/ghiChu_31"/></td>
			 </tr>
			 <tr>
				<td class="align-c"></td>
				<td class="align-l"> - Tính theo m3/ngày</td>
				<td class="align-c">m3/ngày</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheom3/dauTho_32"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheom3/condensate_32"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT3/TinhTheom3/khiThienNhien_32"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT3/TinhTheom3/ghiChu_32"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Tỷ lệ thuế tài nguyên tạm nộp </td>
				<td class="align-c">%</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT4/dauTho_4"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT4/condensate_4"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT4/khiThienNhien_4"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT4/ghiChu_4"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Tỷ lệ thuế xuất khẩu tạm nộp </td>
				<td class="align-c">%</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT5/dauTho_5"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT5/condensate_5"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT5/khiThienNhien_5"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT5/ghiChu_5"/></td>
			 </tr>
			 <tr>
				<td class="align-c">6</td>
				<td class="align-l">Tỷ lệ thuế thu nhập doanh nghiệp tạm nộp đối với trường hợp bán trong nước</td>
				<td class="align-c">%</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT6/dauTho_6"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT6/condensate_6"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT6/khiThienNhien_6"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT6/ghiChu_6"/></td>
			 </tr>
			 <tr>
				<td class="align-c">7</td>
				<td class="align-l">Tỷ lệ thuế thu nhập doanh nghiệp tạm nộp đối với trường hợp xuất khẩu</td>
				<td class="align-c">%</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT7/dauTho_7"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT7/condensate_7"/></td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/CT7/khiThienNhien_7"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/CT7/ghiChu_7"/></td>
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