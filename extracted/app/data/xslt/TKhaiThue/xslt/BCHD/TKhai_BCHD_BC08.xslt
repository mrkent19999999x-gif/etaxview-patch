<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo quyết định số 30/2001/QĐ-BTC ngày 13 tháng 04 năm 2001 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BC08/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
	        <div class="align-r"><i>Đơn vị tính: Số</i></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu Chứng từ</b></td>
							<td class="align-c" rowspan="2"><b>Tên ấn chỉ</b></td>
							<td class="align-c" rowspan="2"><b>Đơn vị tính</b></td>
							<td class="align-c" colspan="3"><b>Tháng trước</b></td>
							<td class="align-c" rowspan="2"><b>Số nhập trong tháng</b></td>
							<td class="align-c" colspan="7"><b>Số xuất trong tháng</b></td>
							<td class="align-c" colspan="4"><b>Còn lại cuối tháng</b></td>
							<td class="align-c" rowspan="2"><b>Ghi chú</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Ở</b></td>
							<td class="align-c"><b>Ở</b></td>
							<td class="align-c"><b>Tổng cộng</b></td>
							<td class="align-c"><b>Tổng cộng</b></td>
							<td class="align-c"><b>Số đã dùng</b></td>
							<td class="align-c"><b>Số xóa bỏ</b></td>
							<td class="align-c"><b>Thiếu hụt khi nhận ở cục</b></td>
							<td class="align-c"><b>Tổn thất được thanh toán</b></td>
							<td class="align-c"><b>Trả lại</b></td>
							<td class="align-c"><b>Số hủy</b></td>
							<td class="align-c"><b>Ở chi cục</b></td>
							<td class="align-c"><b>Ở cán bộ</b></td>
							<td class="align-c"><b>Tổng cộng</b></td>
							<td class="align-c"><b>Trong đó tổn thất chưa thanh toán</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)</b></td>
							<td class="align-c"><b>(13)</b></td>
							<td class="align-c"><b>(14)</b></td>
							<td class="align-c"><b>(15)</b></td>
							<td class="align-c"><b>(16)</b></td>
							<td class="align-c"><b>(17)</b></td>
							<td class="align-c"><b>(18)=(7)+(8)-(9)</b></td>
							<td class="align-c"><b>(19)</b></td>
							<td class="align-c"><b>(20)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuAC"/></td>
								<td class="align-l"><xsl:value-of select="tenAC"/></td>
								<td class="align-c"><xsl:value-of select="donViTinh"/></td>
								<td class="number align-r"><xsl:value-of select="tuSoThangTruoc"/></td>
								<td class="number align-r"><xsl:value-of select="denSoThangTruoc"/></td>
								<td class="number align-r"><xsl:value-of select="tongCongThangTruoc"/></td>
								<td class="number align-r"><xsl:value-of select="soNhapTrongThang"/></td>
								<td class="number align-r"><xsl:value-of select="tongCongTrongThang"/></td>
								<td class="number align-r"><xsl:value-of select="soDaDung"/></td>
								<td class="number align-r"><xsl:value-of select="soXoaBo"/></td>
								<td class="number align-r"><xsl:value-of select="thieuHut"/></td>
								<td class="number align-r"><xsl:value-of select="tonThatDuocTToan"/></td>
								<td class="number align-r"><xsl:value-of select="traLai"/></td>
								<td class="number align-r"><xsl:value-of select="soHuy"/></td>
								<td class="number align-r"><xsl:value-of select="oChiCuc"/></td>
								<td class="number align-r"><xsl:value-of select="oCanBo"/></td>
								<td class="number align-r"><xsl:value-of select="tongCongCuoiThang"/></td>
								<td class="number align-r"><xsl:value-of select="tonThatChuaTT"/></td>
								<td class="align-r"><xsl:value-of select="ghiChu"/></td>
							</tr>
						</xsl:for-each>
			</table>
	        <br/>
			<table style="page-break-inside: avoid;width:100%" >
				<tr>
				<td>	  
	        <div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
	        <table>
	        <td style="width:60%"></td>
              <td class="align-c" style="width:40%">								
                                    <i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'yyyy')"/></i><br/>
									<b>ĐẠI DIỆN THEO PHÁP LUẬT</b><br/><i>Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i>
									<br/>
									<br/>
									<br/>
									<br/><xsl:value-of select="$tkchinh/nguoiDaiDien"/>
									<br/>
			</td>
			</table>
			<div id="sigDiv"></div>
			</td>
			</tr>
			</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
