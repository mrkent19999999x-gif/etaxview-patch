<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'(Trừ hoạt động sản xuất thủy điện, hoạt động kính doanh xổ số điện toán)'"/>
		<xsl:variable name="ghiChuPL1" select="'(Kèm theo Tờ khai mẫu số 01/GTGT)'"/>
	  <!-- Phụ lục 01-6/GTGT TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_6_GTGT"/>	
		<xsl:variable name="pl01_6_2" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_6_GTGT_DVVT'/>
		<xsl:call-template name="tkhaiHeader_PL_01_6_2_GTGT_TT80">
			<xsl:with-param name="mauTKhai"   select="'01-6/GTGT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ GIÁ TRỊ GIA TĂNG PHẢI NỘP'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Trừ hoạt động sản xuất thủy điện, hoạt động kính doanh xổ số điện toán)'"/>
			<xsl:with-param name="ghiChuPL1"   select="'(Kèm theo Tờ khai mẫu số 01/GTGT)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-l" colspan="9"><b>Số thuế phải nộp của dịch vụ viễn thông cước trả sau</b></td>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_6_GTGT_DVVT/ct06)" /></b></td>
						</tr>
						<tr>
							<td class="align-l" colspan="9"><b>Tổng doanh thu chưa có thuế giá trị gia tăng của sản phẩm sản xuất ra</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_6_GTGT_DVVT/ct07)" /></b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh (nếu có)</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản xuất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" colspan="3"><b>Doanh thu dịch vụ viễn thông cước trả sau (chưa có thuế giá trị gia tăng)</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp cho từng tỉnh nơi có đơn vị phụ thuộc kinh doanh dịch vụ viễn thông cước trả sau</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp cho từng tỉnh nơi có cơ sở sản xuất trong trường hợp [06] &lt; ([19]+[20]) </b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Xã/phường/đặc khu</b></td>
						
							<td class="align-c"><b>Tỉnh</b></td>
							<td class="align-c"><b>Hàng hóa chịu thuế suất 5%</b></td>
							<td class="align-c"><b>Hàng hóa chịu thuế suất 10%</b></td>
							<td class="align-c"><b>Tổng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]=[14]+[15]</b></td>
							<td class="align-c"><b>[17]=1%x[14]+2%x[15]</b></td>
							<td class="align-c"><b>[21]=([06]x([16]/[07])</b></td>
						</tr>
						<xsl:for-each select="$pl01_6_2/NoiDungBangPhanBo">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct09"/></td>
							  <td class="align-l"><xsl:value-of select="ct10"/></td>
							  <td class="align-l"><xsl:value-of select="ten_xa"/></td>
							
							  <td class="align-l"><xsl:value-of select="ct12_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct13_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct21)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<xsl:for-each select="$pl01_6_2/cong_ct18">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-l" colspan="5"><b>Cộng theo từng tỉnh [18];  [22]</b></td>
									<td class="align-l" colspan="4"><xsl:value-of select="ct18_tinh_ten"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct22)"/></td>
								</tr>
							</xsl:for-each>	
                        </tr>
						<tr>
							<td class="align-l" colspan="9"><b>Cộng các tỉnh [19]=∑[18]; [23]=∑[22]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_6_2/CongCacTinh/ct19)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_6_2/CongCacTinh/ct23)"/></b></td>
						</tr>
						<tr>
							<td class="align-l" colspan="9"><b>Số thuế phải nộp cho nơi NNT đóng trụ sở chính <br></br>([20]=[06]-[19] hoặc [24]=[06]-[23])</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_6_2/SoThuePhaiNop/ct20)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01_6_2/SoThuePhaiNop/ct24)"/></b></td>
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
