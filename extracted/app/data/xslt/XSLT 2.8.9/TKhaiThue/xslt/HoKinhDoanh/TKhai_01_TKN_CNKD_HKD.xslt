<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư … của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_02_CNKD_HKD">
		<xsl:with-param name="mauTKhai"   select="'01/TKN-CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân trực tiếp ký hợp đồng làm đại lý xổ số, bảo hiểm, bán hàng đa cấp, hoạt động kinh doanh khác chưa khấu trừ, nộp thuế trong năm)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
        <div class="content">
		<div  class="align-l"><b>I. XÁC ĐỊNH TỔNG DOANH THU TRONG NĂM</b></div>
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
						<td class="align-c"><b>[11]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct11)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct11)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>2</b></td>
						<td><b>Hoạt động đại lý bảo hiểm</b></td>
						<td class="align-c"><b>[12]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct12)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct12)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>3</b></td>
						<td><b>Hoạt động bán hàng đa cấp</b></td>
						<td class="align-c"><b>[13]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct13)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct13)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>4</b></td>
						<td><b>Hoạt động kinh doanh được trả thu nhập từ nước ngoài</b></td>
						<td class="align-c"><b>[14]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongDoanhThuTrongNam/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNop/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNop/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTDaKhauTruTamNop/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNDaKhauTruTamNop/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTPhaiNopThem/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNPhaiNopThem/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueGTGTNopThua/ct14)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThueTNCNNopThua/ct14)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>5</b></td>
						<td><b>Hoạt động kinh doanh khác</b></td>
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
						<td class="align-c"><b>6</b></td>
						<td><b>Tổng cộng</b></td>
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
				</table>
				<div  class="align-l">B. HỖ TRỢ THÔNG TIN NỘP THUẾ</div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Mục</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Cơ quan thu</b></td>
						<td class="align-c"><b>Hạn nộp thuế</b></td>
						
					</tr>
					<tr>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ma_muc"/>-<xsl:value-of select="ten_muc"/></td>
							<td class="align-c"><xsl:value-of select="ma_tieumuc"/>-<xsl:value-of select="ten_tieumuc"/></td>
						
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTien)"/></td>
							<td class="align-c"><xsl:value-of select="ten_coquanthu"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(hanNopThue,'dd/mm/yyyy')"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						
						<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r"><b>[19]</b>&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tong_sotien)"/></td>
						<td></td>
						<td></td>
						
						
					</tr>
				</table>
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80_HKD"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

	</xsl:template>		
</xsl:stylesheet>
