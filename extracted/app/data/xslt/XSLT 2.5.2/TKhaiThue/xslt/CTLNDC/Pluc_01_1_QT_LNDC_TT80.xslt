<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
<xsl:include href="../../include/TKhaiFooter.xsl"/>    
<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="'(Kèm theo Tờ khai quyết toán lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ngân sách nhà nước của doanh nghiệp do Nhà nước nắm giữ 100% vốn điều lệ mẫu số 01/QT-LNCL)'"/>
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_QT_LNCL"/>	
		<xsl:variable name="pl01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_QT_LNCL' />
		<xsl:call-template name="tkhaiHeader_PL_01_1_QT_LNCL_TT80">
			<xsl:with-param name="mauTKhai"   select="'01-1/QT-LNCL'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ LỢI NHUẬN SAU THUẾ CÒN LẠI PHẢI NỘP
ĐỐI VỚI HOẠT ĐỘNG KINH DOANH XỔ SỐ ĐIỆN TOÁN'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ngân sách nhà nước của doanh nghiệp do Nhà nước nắm giữ 100% vốn điều lệ mẫu số 01/QT-LNCL)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên đơn vị phụ thuộc, địa điểm kinh doanh, tên tỉnh nơi phát sinh doanh thu bán vé thực tế (khác tỉnh nơi đóng trụ sở chính) </b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh (nếu có)</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu  bán vé thực tế theo địa bàn</b></td>
							<td class="align-c" rowspan="2"><b>Tỷ lệ doanh thu bán vé thực tế theo địa bàn (%)</b></td>
							<td class="align-c" rowspan="2"><b>Số lợi nhuận sau thuế còn lại phải nộp cho từng tỉnh theo quyết toán</b></td>
							<td class="align-c" rowspan="2"><b>Số lợi nhuận sau thuế còn lại nộp thừa kỳ trước chuyển sang kỳ này</b></td>
							<td class="align-c" rowspan="2"><b>Số lợi nhuận sau thuế còn lại đã tạm nộp cho từng tỉnh</b></td>
							<td class="align-c" rowspan="2"><b>Chênh lệch giữa số phải nộp và số đã tạm nộp trong năm </b></td>
							<td class="align-c" rowspan="2"><b>Số lợi nhuận sau thuế còn lại còn phải nộp cho từng tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Huyện</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13] =[12]/ [05]*100%</b></td>
							<td class="align-c"><b>[14] =[04]*[13]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17] =[14]- [16]</b></td>
							<td class="align-c"><b>[18]= [14]- [15] -[16]</b></td>
						</tr>
						<xsl:for-each select="$pl01_1/NoiDungBangPhanBo">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct07"/></td>
							  <td class="align-l"><xsl:value-of select="ct08"/></td>
							  <td class="align-l"><xsl:value-of select="ct09_huyen_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct10_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct11_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							  </tr>
						</xsl:for-each>	
						<tr>
							<xsl:for-each select="$pl01_1/cong_ct19">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td></td>
									<td class="align-l" colspan="3"><b>Cộng theo từng tỉnh </b></td>
									<td class="align-l"><xsl:value-of select="ct19_tinh_ten"/></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19_1)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19_2)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19_3)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19_4)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19_5)"/></td>
								</tr>
							</xsl:for-each>	
                        </tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Cộng các tỉnh khác nơi NNT đóng trụ sở chính [20]=∑[19] </b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/CT20/ct20_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/CT20/ct20_2)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/CT20/ct20_3)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/CT20/ct20_4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/CT20/ct20_5)"/></b></td>
						</tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Tỉnh  <xsl:value-of select="$pl01_1/TruSoChinh/ct21_tinh_ten"/> nơi đóng trụ sở chính [21] (=[04]- [20])</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/TruSoChinh/ct21_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/TruSoChinh/ct21_2)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/TruSoChinh/ct21_3)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/TruSoChinh/ct21_4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_1/TruSoChinh/ct21_5)"/></b></td>
						</tr>
					</table>
			</div>

		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
						<xsl:call-template name="tkhaiFooter_TT80"/>
					</div>
					<div><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<u><i>Ghi chú:</i></u></b></div>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Cột  [07] :</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên đơn vị phụ thuộc khác tỉnh với nơi NNT đóng trụ sở chính:</i> Kê khai cho tỉnh nơi đơn vị phụ thuộc đóng trụ sở vào chỉ tiêu này. Trường hợp trong một tỉnh có nhiều đơn vị phụ thuộc ở nhiều huyện thì chọn 01 đơn vị phụ thuộc tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào chỉ tiêu huyện tại cột [07].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên địa điểm kinh doanh khác tỉnh với nơi NNT đóng trụ sở chính:</i> Kê khai cho tỉnh nơi có địa điểm kinh doanh nếu phát sinh doanh thu bán vé theo từng địa điểm kinh doanh. Trường hợp có nhiều địa điểm kinh doanh trên nhiều huyện thuộc một tỉnh thì chọn 01 địa điểm kinh doanh tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [7].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Nơi không có đơn vị phụ thuộc, địa điểm kinh doanh:</i> Kê khai cho tỉnh nơi không có đơn vị phụ thuộc, địa điểm kinh doanh nhưng có phát sinh doanh thu bán vé. Trường hợp trong một tỉnh có phát sinh doanh thu bán vé ở nhiều huyện thì chọn 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [7].</div>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Cột [09] và ([10]: Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé khác tỉnh với nơi người nộp thuế đóng trụ sở chính. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc một cơ quan thuế quản lý địa bàn nhận phân bổ là Cục Thuế thì chọn 1 đơn vị đại diện hoặc một huyện để kê khai vào chỉ tiêu này. Trường hợp có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc 1 cơ quan thuế quản lý địa bàn nhận phân bổ là Chi cục Thuế khu vực thì chọn 1 đơn vị đại diện hoặc 1 huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này</div>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Cột [15]: NNT kê khai số lợi nhuận sau thuế còn lại nộp thừa kỳ trước chuyển sang bù trừ với số lợi nhuận sau thuế còn lại phải nộp kỳ này.</div>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Cột [16]: NNT kê khai số số lợi nhuận sau thuế còn lại phải nộp đã tạm nộp trong năm tính thuế đến thời hạn nộp hồ sơ khai quyết toán.</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

