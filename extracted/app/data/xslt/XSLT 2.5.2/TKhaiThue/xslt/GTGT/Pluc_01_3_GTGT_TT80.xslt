<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'(Kèm theo tờ khai thuế giá trị gia tăng mẫu số 01/GTGT)'"/>
	  <!-- Phụ lục 01-3/GTGT TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_GTGT"/>	
		<xsl:variable name="pl01_3" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_GTGT'/>
		<xsl:call-template name="tkhaiHeader_PL_01_3_GTGT_TT80">
			<xsl:with-param name="mauTKhai"   select="'01-3/GTGT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ GIÁ TRỊ GIA TĂNG PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG KINH DOANH XỔ SỐ ĐIỆN TOÁN'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế giá trị gia tăng mẫu số 01/GTGT)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu bán vé thực tế theo từng tỉnh</b></td>
							<td class="align-c" rowspan="2"><b>Tỷ lệ doanh thu bán vé thực tế theo từng tỉnh (%)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế GTGT phải nộp cho từng tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Huyện</b></td>
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]=[13]/[06]x100%</b></td>
							<td class="align-c"><b>[15]= chỉ tiêu [40]x[14]</b></td>
						</tr>
						<xsl:for-each select="$pl01_3/NoiDungBangPhanBo">
							<xsl:variable name="currentRows" select="position()"/>
								<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct08"/></td>
							  <td class="align-l"><xsl:value-of select="ct09"/></td>
							  <td class="align-l"><xsl:value-of select="ct10_huyen_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct11_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct12_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							  </tr>
						</xsl:for-each>	       				 					 											
						<tr>
							<xsl:for-each select="$pl01_3/cong_ct16">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td></td>
									<td class="align-l" colspan="3"><b>Cộng theo từng tỉnh ∑[16] </b></td>
									<td class="align-l"><xsl:value-of select="ct16_tinh_ten"/></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								</tr>
							</xsl:for-each>	
                        </tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Cộng các tỉnh khác nơi NNT đóng trụ sở chính [17]=∑[16]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_3/ct17)"/></b></td>
						</tr>
						<tr>
							<td></td>
							<td class="align-l" colspan="7"><b>Số thuế phải nộp cho nơi NNT đóng trụ sở chính ([18]= chỉ tiêu [40]-[17])</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_3/ct18)"/></b></td>
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
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

