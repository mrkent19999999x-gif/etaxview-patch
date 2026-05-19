<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01TNK_XSHBDC">
		<xsl:with-param name="mauTKhai"   select="'01/TKN-XSBHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân làm đại lý bảo hiểm, đại lý xổ số, bán hàng đa cấp, 
hoạt động kinh doanh khác chưa khấu trừ, nộp thuế trong năm)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Nội dung</b></td>
						<td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Tổng doanh thu  trong năm</b></td>
						<td class="align-c"><b>Số thuế TNCN phải nộp</b></td>
						<td class="align-c"><b>Số thuế đã khấu trừ, đã tạm nộp</b></td>
						<td class="align-c"><b>Số thuế TNCN phải nộp bổ sung</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>(a)</b></td>
						<td class="align-c"><b>(b)</b></td>
						<td class="align-c"><b>(c)</b></td>
						<td class="align-c"><b>(d)=(b)-(c)</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Hoạt động đại lý xổ số</td>
						<td class="align-c"><b>[22] </b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct22)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct22)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaKhauTruTamNop/ct22)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopBoSung/ct22)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Hoạt động đại lý bảo hiểm </td>
						<td class="align-c"><b>[23] </b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct23)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct23)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaKhauTruTamNop/ct23)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopBoSung/ct23)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Hoạt  động bán hàng đa cấp</td>
						<td class="align-c"><b>[24]  </b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct24)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct24)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaKhauTruTamNop/ct24)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopBoSung/ct24)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Hoạt động kinh doanh khác</td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct25)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct25)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaKhauTruTamNop/ct25)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopBoSung/ct25)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>5</b></td>
						<td><b>Tổng cộng</b></td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct26)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct26)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueDaKhauTruTamNop/ct26)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopBoSung/ct26)"/></b></td>
					</tr>
				</table>
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

	</xsl:template>		
</xsl:stylesheet>
