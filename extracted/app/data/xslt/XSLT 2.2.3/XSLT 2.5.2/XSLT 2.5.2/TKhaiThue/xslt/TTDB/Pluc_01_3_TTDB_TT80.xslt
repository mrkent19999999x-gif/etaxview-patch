<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
<xsl:include href="../../include/TKhaiFooter.xsl"/>    
<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="'Kèm theo tờ khai thuế tài nguyên mẫu số 01/TAIN hoặc tờ khai quyết toán thuế tài nguyên mẫu số 02/TAIN'"/>
	  <!-- Phụ lục 01-3/TTDB TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_3_TTDB"/>	
		<xsl:variable name="pl01_3" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_TTDB' />
		<xsl:call-template name="tkhaiHeader_PL_01_3_TTDB_TT80">
			<xsl:with-param name="mauTKhai"   select="'01-3/TTDB'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ TIÊU THỤ ĐẶC BIỆT PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG KINH DOANH XỔ SỐ ĐIỆN TOÁN'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế Tiêu thụ đặc biệt mẫu số 01/TTĐB)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh (nếu có)</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản xuất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu bán vé thực tế theo từng tỉnh</b></td>
							<td class="align-c" rowspan="2"><b>Tỷ lệ doanh thu bán vé thực tế theo từng tỉnh (%)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TTĐB phải nộp cho từng tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Huyện</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]=[14]/[07]x100%</b></td>
							<td class="align-c"><b>[16]= [06]x[15]</b></td>
						</tr>
						<xsl:for-each select="$pl01_3/BangPhanBoDoiVoiHDKDXSDT/NoiDungBangPhanBo">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct09"/></td>
							  <td class="align-l"><xsl:value-of select="t10"/></td>
							  <td class="align-l"><xsl:value-of select="DiaBanHDSXKD/ct11_huyen_ten"/></td>
							  <td class="align-l"><xsl:value-of select="DiaBanHDSXKD/ct12_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct13_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							  </tr>
						</xsl:for-each>	
						<tr>
							<xsl:for-each select="$pl01_3/BangPhanBoDoiVoiHDKDXSDT/NoiDungBangPhanBo">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td></td>
									<td class="align-l" colspan="3"><b>Cộng theo từng tỉnh </b></td>
									<td class="align-l"><xsl:value-of select="DiaBanHDSXKD/ct12_tinh_ten"/></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								</tr>
							</xsl:for-each>	
                        </tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Cộng các tỉnh khác nơi NNT đóng trụ sở chính [18]=∑[17] </b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_3/BangPhanBoDoiVoiHDKDXSDT/ct18)"/></b></td>
						</tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Số thuế phải nộp cho nơi NNT đóng trụ sở chính ([19]= [06]-[18]) </b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_3/BangPhanBoDoiVoiHDKDXSDT/ct19)"/></b></td>
						</tr>
					</table>
			</div>

		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
						<xsl:call-template name="tkhaiFooter"/>
					</div>
					<div><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<u><i>Ghi chú:</i></u></b></div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Cột [9] :</i></div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên đơn vị phụ thuộc khác tỉnh với nơi NNT đóng trụ sở chính:</i> Kê khai cho tỉnh nơi đơn vị phụ thuộc đóng trụ sở vào chỉ tiêu này. Trường hợp trong một tỉnh có nhiều đơn vị phụ thuộc ở nhiều huyện thì chọn 01 đơn vị phụ thuộc tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào chỉ tiêu huyện tại cột [9].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên địa điểm kinh doanh khác tỉnh với nơi NNT đóng trụ sở chính:</i> Kê khai cho tỉnh nơi có địa điểm kinh doanh nếu phát sinh doanh thu bán vé theo từng địa điểm kinh doanh. Trường hợp có nhiều địa điểm kinh doanh trên nhiều huyện thuộc một tỉnh thì chọn 01 địa điểm kinh doanh tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [9].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Nơi không có đơn vị phụ thuộc, địa điểm kinh doanh:</i> Kê khai cho tỉnh nơi không có đơn vị phụ thuộc, địa điểm kinh doanh nhưng có phát sinh doanh thu bán vé. Trường hợp trong một tỉnh có phát sinh doanh thu bán vé ở nhiều huyện thì chọn 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [9].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Chỉ tiêu [11], [12]:</i> Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé khác tỉnh với nơi người nộp thuế đóng trụ sở chính. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc một cơ quan thuế quản lý địa bàn nhận phân bổ là Cục Thuế thì chọn 1 đơn vị đại diện hoặc một huyện để kê khai vào chỉ tiêu này. Trường hợp có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc 1 cơ quan thuế quản lý địa bàn nhận phân bổ là Chi cục Thuế khu vực thì chọn 1 đơn vị đại diện hoặc 1 huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

