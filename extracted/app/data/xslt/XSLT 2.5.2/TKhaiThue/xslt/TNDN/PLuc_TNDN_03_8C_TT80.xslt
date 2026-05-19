<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_8_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8C_TNDN">	
			<xsl:variable name="pl03-8c" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8C_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-8C/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ THU NHẬP DOANH NGHIỆP PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG KINH DOANH XỔ SỐ ĐIỆN TOÁN'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">
					<div class="content">
						<table>
							<tr>
							   <tr>
								<td class="align-l"><b>[04]</b> Tổng số thuế TNDN phải nộp được phân bổ: <xsl:value-of select="ihtkk:formatNumber($pl03-8c/ct04)"/> đồng</td>
							</tr>
							<tr>
								<td class="align-l"><b>[05]</b> Tổng doanh thu bán vé thực tế: <xsl:value-of select="ihtkk:formatNumber($pl03-8c/ct05)"/> đồng</td>
							</tr>
							</tr>
						</table>
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh</b></td>
							   <td class="align-c" colspan="2"><b>Địa bàn hoạt động sản xuất, kinh doanh</b></td>
							   <td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							   <td class="align-c" colspan="2"><b>Xác định tỷ lệ phân bổ</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN phải nộp cả năm theo quyết toán cho từng tỉnh</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN đã tạm nộp cho từng tỉnh</b></td>
							   <td class="align-c" rowspan="2"><b>Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm </b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN còn phải nộp cho từng tỉnh</b></td>
							</tr>
							<tr>
                               <td class="align-c"><b>Huyện</b></td>
                               <td class="align-c"><b>Tỉnh</b></td>
							   <td class="align-c"><b>Doanh thu bán vé thực tế trên địa bàn</b></td>
                               <td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
							</tr>
                            <tr>
								<td class="align-c"><b>[06]</b></td>
								<td class="align-c"><b>[07]</b></td>
								<td class="align-c"><b>[08]</b></td>
								<td class="align-c"><b>[09]</b></td>
								<td class="align-c"><b>[10]</b></td>
								<td class="align-c"><b>[11]</b></td>
								<td class="align-c"><b>[12]</b></td>
								<td class="align-c"><b>[13]=[12]/[05]</b></td>
								<td class="align-c"><b>[14]= [13]x [04]</b></td>
								<td class="align-c"><b>[15]</b></td>
								<td class="align-c"><b>[16]</b></td>
								<td class="align-c"><b>[17]= [14]-[16]</b></td>
								<td class="align-c"><b>[18]= [14]- [15]- [16]</b></td>
							</tr>
							<xsl:for-each select="$pl03-8c/PhanBoThueTNDN/NoiDungBangPhanBo">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"><xsl:value-of select="stt"/></td>
									<td class="align-l"><xsl:value-of select="ct07"/></td>
									<td class="align-l"><xsl:value-of select="ct08"/></td>
									<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct10_ten"/></td>
									<td class="align-l"><xsl:value-of select="ct11_ten"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>	
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
								</tr>
							</xsl:for-each>
							<xsl:for-each select="$pl03-8c/Tong19_tungTinh/CTietTheoTinh">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"></td>
									<td class="align-c" colspan="7"><b>Cộng theo tỉnh <xsl:value-of select="ct19_ten"/> [19]</b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong14)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong15)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong16)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong17)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong18)"/></b></td>
								</tr>
							</xsl:for-each>
							<xsl:for-each select="$pl03-8c/Tong20_cacTinh">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-c"></td>
									<td class="align-c" colspan="7"><b>Cộng các tỉnh [20]</b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong14)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong15)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong16)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong17)"/></b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tong18)"/></b></td>
								</tr>
							</xsl:for-each>
							<tr>
								<td class="align-c"></td>
									<td class="align-c" colspan="7"><b>Số thuế phải nộp còn lại phân bổ cho Tỉnh nơi đóng trụ sở chính (= [04]-Cộng các tỉnh) [21]</b></td>
									<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl03-8c/Tong21_TruSoChinh/tong14)"/></b></td>
									<td class="align-c"></td>
									<td class="align-c"></td>
									<td class="align-c"></td>
									<td class="align-c"></td>
							</tr>
						</table>
					</div>
				</div>
									<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter-03TNDN-TT80"/>
			<div><b>_________________</b></div>
			<div><b><u><i>Ghi chú</i></u></b></div>
			<div><i>1. TNDN: Thu nhập doanh nghiệp;</i></div>
			<div>2. Cột  [07].</div>
			<div><i>- Tên đơn vị phụ thuộc khác tỉnh với nơi NNT đóng trụ sở chính</i>: Kê khai cho tỉnh nơi đơn vị phụ thuộc đóng trụ sở vào chỉ tiêu này. Trường hợp trong một tỉnh có nhiều đơn vị phụ thuộc ở nhiều huyện thì chọn 01 đơn vị phụ thuộc tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [07].</div>
			<div><i>- Tên địa điểm kinh doanh khác tỉnh với nơi NNT đóng trụ sở chính</i>: Kê khai cho tỉnh nơi có địa điểm kinh doanh nếu phát sinh doanh thu bán vé theo từng địa điểm kinh doanh. Trường hợp có nhiều địa điểm kinh doanh trên nhiều huyện thuộc một tỉnh thì chọn 01 địa điểm kinh doanh tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [07].</div>
			<div><i>-  Nơi không có đơn vị phụ thuộc, địa điểm kinh doanh</i>: Kê khai cho tỉnh nơi không có đơn vị phụ thuộc, địa điểm kinh doanh nhưng có phát sinh doanh thu bán vé. Trường hợp trong một tỉnh có phát sinh doanh thu bán vé ở nhiều huyện thì chọn 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [07].</div>
			<div>3. Cột <b>[09]</b> và <b>[10]</b>: Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé khác tỉnh với nơi người nộp thuế đóng trụ sở chính. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc một cơ quan thuế quản lý địa bàn nhận phân bổ là Cục Thuế thì chọn 1 đơn vị đại diện hoặc một huyện để kê khai vào chỉ tiêu này. Trường hợp có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc 1 cơ quan thuế quản lý địa bàn nhận phân bổ là Chi cục Thuế khu vực thì chọn 1 đơn vị đại diện hoặc 1 huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này</div>
			<div>4. Cột [15]: NNT kê khai số thuế TNDN nộp thừa kỳ trước chuyển sang bù trừ với số thuế TNDN phải nộp kỳ này.</div>
			<div>5. Cột [16]: NNT kê khai số thuế TNDN đã tạm nộp trong năm tính thuế đến thời hạn nộp hồ sơ khai quyết toán.</div>
								<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>