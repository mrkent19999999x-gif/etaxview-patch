<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_GTGT_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với người nộp thuế tính thuế theo phương pháp khấu trừ có hoạt động sản xuất kinh doanh)'"/>
	 </xsl:call-template>
		
		<div class="ndungtkhai_div">
		 <div class="content"> 
			<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
						<tr>
							<td class="align-l" colspan="5"><b>1. Nghĩa vụ thuế đã kê khai theo quý đối với hồ sơ khai thuế mẫu số </b>
							<xsl:value-of select="$tkchinh/NghiaVuThueTheoQuy/tenTKhai"/></td>
						</tr>
						<tr>
							<td class="align-c" >Mã giao dịch điện tử của hồ sơ khai thuế</td>
							<td class="align-c" >Lần nộp</td>
							<td class="align-c" >Ngày nộp</td>
							<td class="align-c" >Kỳ tính thuế quý</td>
							<td class="align-c" >Số thuế phải nộp [09]</td>
						</tr>
						<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoQuy">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td></td>
							  <td class="align-l"><xsl:value-of select="ma_giao_dich"/></td>
							  <td class="align-l"><xsl:value-of select="lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ngay_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ky_tinh_thue"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-l" colspan="4"><b>Cộng [10]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct10)"/></b></td>
						</tr>
						<tr>
							<td class="align-l" colspan="5"><b>2. Nghĩa vụ thuế xác định lại theo tháng</b>
						</tr>
						<tr>
							<td class="align-c" rowspan="2"><b>Kỳ tính thuế tháng</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp chênh lệch</b></td>
							<td class="align-c" rowspan="2"><b>Tiền chậm nộp (nếu có)</b></td>
						</tr>
						<tr>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
						</tr>
						<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/CongQuy/NoiDungCongQuy">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td></td>
							  <td class="align-l"><xsl:value-of select="thang"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-l"<b>Cộng [10]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct14)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct15)"/></b></td>
							<td></td>
						</tr>
						<tr>
							<td class="align-l"><b>Tổng cộng</b>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct15)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct17)"/></b></td>
						</tr>
 		</table>
	   </div>
       </div>	
<table style="page-break-inside: avoid;" >
	<tr>
		<td>	   
			<xsl:call-template name="tkhaiFooter"/>
				<div><b><u><i>Ghi chú: </i></u> </b></div>
				<div><i>1. Chỉ tiêu [01a]: Người nộp thuế lựa chọn một trong các hoạt động sau:</i></div>
				<div><i>- Hoạt động sản xuất kinh doanh thông thường</i></div>
				<div><i>- Hoạt động xổ số kiến thiết, xổ số điện toán</i></div>
				<div><i>- Hoạt động thăm dò khai thác dầu khí</i></div>
				<div><i>- Dự án đầu tư cơ sở hạ tầng, nhà để chuyển nhượng khác địa bàn tỉnh nơi đóng trụ sở chính</i></div>
				<div><i>- Nhà máy sản xuất điện khác địa bàn tỉnh nơi đóng trụ sở chính.</i></div>
				<div><i>2. Chỉ tiêu [09], [10], [11]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh đóng tại địa phương khác tỉnh nơi đóng trụ sở chính đối với các trường hợp quy định tại điểm b, c khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
				<div><i>3. Chỉ tiêu [32a]: Khai giá trị hàng hóa, dịch vụ thuộc trường hợp không phải kê khai, tính nộp thuế giá trị gia tăng theo quy định của pháp luật thuế giá trị gia tăng.</i></div>
				<div><i>4. Chỉ tiêu [37] và [38]: Khai theo số thuế được khấu trừ điều chỉnh tăng/giảm tại chỉ tiêu II trên Tờ khai bổ sung. Riêng trường hợp cơ quan thuế, cơ quan có thẩm quyền đã ban hành kết luận, quyết định xử lý về thuế có điều chỉnh tương ứng các kỳ tính thuế trước thì khai vào hồ sơ khai thuế của kỳ tính thuế nhận được kết luận, quyết định xử lý về thuế (không phải khai bổ sung hồ sơ khai thuế).</i></div>
				<div><i>5. Chỉ tiêu [39a]: Khai số thuế GTGT còn được khấu trừ chưa đề nghị hoàn của dự án đầu tư chuyển cho người nộp thuế tiếp tục khấu trừ (là số thuế GTGT còn được khấu trừ, không đủ điều kiện hoàn, không hoàn mà người nộp thuế đã kê khai riêng tờ khai thuế dự án đầu tư) khi dự án đầu tư đi vào hoạt động hoặc số thuế GTGT còn được khấu trừ chưa đề nghị hoàn của hoạt động sản xuất kinh doanh của đơn vị phụ thuộc khi chấm dứt hoạt động,…</i></div>
				<div><i>6. Chỉ tiêu [40b]: Khai tổng số thuế đã khai tại chỉ tiêu [28a] và [28b] của các Tờ khai mẫu số 02/GTGT./.</i></div>
		<div id="sigDiv"></div>
		</td>
</tr>
</table>		
	</xsl:template>	

		
</xsl:stylesheet>