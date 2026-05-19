<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeaderXangDau">
		<xsl:with-param name="mauTKhai"   select="'01'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Mã Nguồn mặt hàng</b></td>
						<td class="align-c" rowspan="2"><b>Tên nguồn mặt hàng</b></td>
						<td class="align-c" rowspan="2"><b>Mã Mặt hàng</b></td>
						<td class="align-c" rowspan="2"><b>Tên Mặt hàng</b></td>
						<td class="align-c" rowspan="2"><b>Lô hàng</b></td>
						<td class="align-c" rowspan="2"><b>Sản lượng (lit)</b></td>
						<td class="align-c" rowspan="2"><b>Mã Nguồn nhập/ nguồn mua</b></td>
						<td class="align-c" rowspan="2"><b>Tên Nguồn nhập/ nguồn mua</b></td>
						<td class="align-c" rowspan="2"><b>Ngày thông quan/ ngày mua hàng</b></td>
						<td class="align-c" rowspan="2"><b>Trị giá tính thuế NK/ trị giá mua hàng (VNĐ)</b></td>
						<td class="align-c" rowspan="2"><b>Thuế suất thuế NK (%)</b></td>
						<td class="align-c" colspan="4"><b>Các khoản thuế phải nộp khâu nhập khẩu (đồng)</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Thuế NK</b></td>
						<td class="align-c"><b>Thuế TTĐB</b></td>
						<td class="align-c"><b>Thuế GTGT</b></td>
						<td class="align-c"><b>Thuế khác</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>A</b></td>
						<td class="align-c"><b>B</b></td>
						<td class="align-c"><b>C</b></td>
						<td class="align-c"><b>D</b></td>
						<td class="align-c"><b>E</b></td>
						<td class="align-c"><b>F</b></td>
						<td class="align-c"><b>1</b></td>
						<td class="align-c"><b>G</b></td>
						<td class="align-c"><b>H</b></td>
						<td class="align-c"><b>I</b></td>
						<td class="align-c"><b>2</b></td>
						<td class="align-c"><b>3</b></td>
						<td class="align-c"><b>4</b></td>
						<td class="align-c"><b>5</b></td>
						<td class="align-c"><b>6</b></td>
						<td class="align-c"><b>7</b></td>
					</tr>
					 <xsl:for-each select="$tkchinh/BKeSanLuong/CTietBKeSanLuong">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ma_NguonMatHang"/></td>
							  <td class="align-l"><xsl:value-of select="ten_NguonMatHang"/></td>
							  <td class="align-l"><xsl:value-of select="ma_MatHang"/></td>
							  <td class="align-l"><xsl:value-of select="ten_MatHang"/></td>
							   <td class="align-l"><xsl:value-of select="loHang"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sanLuong)"/></td>
							  <td class="align-l"><xsl:value-of select="ma_NguonNhapNguonMua"/></td>
							   <td class="align-l"><xsl:value-of select="ten_NguonNhapNguonMua"/></td>
							   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayThongQuanMuaHang,'dd/mm/yyyy')"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(triGia)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueSuatThueNK)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueNK)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTTDB)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueKhac)"/></td>
							</tr>
						</xsl:for-each>
					</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Báo cáo này được lập cho chu kỳ từng tháng, chi tiết tới từng lô/chuyến hàng nhập; tổng nhóm theo từng mặt hàng và từng phương thức nhập mua</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Sản lượng tính theo lít tiêu chuẩn (theo vận đơn)</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Nguồn nhập/ nguồn mua: ghi rõ tên nước nhập khẩu đối với nguồn nhập khẩu/ ghi rõ tên doanh nghiệp sản xuất hoặc đơn vị đầu mối khác đối với nguồn mua trong nước</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Đối với xăng sinh học mua trong nước hoặc tự sản xuất chỉ báo cáo sản lượng</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Kỳ báo cáo được tính trong tháng, không tính lũy kế tới tháng báo cáo (ví dụ tháng 1 thì từ ngày 1/1 đến 31/1, tháng 2 thì từ ngày 1/2 đến ngày 28/2….)</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Thời hạn lập và gửi báo cáo quý: 		chậm nhất là ngày 30 của tháng tiếp sau tháng kết thúc quý báo cáo.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Thời hạn lập và gửi báo cáo tháng: 		chậm nhất là ngày 30 của tháng tiếp sau tháng kết thúc báo cáo.</i></div>
				
				<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

				</div>

		</div>

	</xsl:template>		
</xsl:stylesheet>

