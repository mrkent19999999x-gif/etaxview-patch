<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_01TKN_CNKD">
		<xsl:with-param name="mauTKhai"   select="'01/TKN-CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân trực tiếp ký hợp đồng làm đại lý xổ số, bảo hiểm, bán hàng đa cấp, hoạt động kinh doanh khác chưa khấu trừ, nộp thuế trong năm)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
        <div class="content">
			
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="3"><b>STT</b></td>
						<td class="align-c" rowspan="3"><b>Chỉ tiêu</b></td>
						<td class="align-c" rowspan="3"><b>Mã chỉ tiêu</b></td>
						<td class="align-c" rowspan="2"><b>Tổng doanh thu trong năm</b></td>
						<td class="align-c" colspan="2"><b>Số thuế phải nộp</b></td>
						<td class="align-c" colspan="2"><b>Số thuế đã khấu trừ, đã tạm nộp</b></td>
						<td class="align-c" colspan="2"><b>Số thuế phải nộp thêm</b></td>
						<td class="align-c" colspan="2"><b>Số thuế nộp thừa</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>GTGT</b></td>
						<td class="align-c"><b>TNCN</b></td>
						<td class="align-c"><b>GTGT</b></td>
						<td class="align-c"><b>TNCN</b></td>
						<td class="align-c"><b>GTGT</b></td>
						<td class="align-c"><b>TNCN</b></td>
						<td class="align-c"><b>GTGT</b></td>
						<td class="align-c"><b>TNCN</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>(a)</b></td>
						<td class="align-c"><b>(b)</b></td>
						<td class="align-c"><b>(c)</b></td>
						<td class="align-c"><b>(d)</b></td>
						<td class="align-c"><b>(đ)</b></td>
						<td class="align-c"><b>(e)=(b)-(d)</b></td>
						<td class="align-c"><b>(g)=(c)-(đ)</b></td>
						<td class="align-c"><b>(h)=(d)-(b)</b></td>
						<td class="align-c"><b>(i)=(đ)-(c)</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>1</b></td>
						<td><b>Hoạt động đại lý xổ số</b></td>
						<td class="align-c"><b>[15]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct15)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct15)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>2</b></td>
						<td><b>Hoạt động đại lý bảo hiểm</b></td>
						<td class="align-c"><b>[16]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct16)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct16)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>3</b></td>
						<td><b>Hoạt động bán hàng đa cấp</b></td>
						<td class="align-c"><b>[17]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct17)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct17)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>4</b></td>
						<td><b>Hoạt động kinh doanh được trả thu nhập từ nước ngoài</b></td>
						<td class="align-c"><b>[18]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct18)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct18)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>5</b></td>
						<td><b>Hoạt động kinh doanh khác</b></td>
						<td class="align-c"><b>[19]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct19)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct19)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>6</b></td>
						<td><b>Tổng cộng</b></td>
						<td class="align-c"><b>[20]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct20)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct20)"/></td>
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
