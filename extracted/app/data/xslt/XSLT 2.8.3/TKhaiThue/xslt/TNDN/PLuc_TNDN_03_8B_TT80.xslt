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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8B_TNDN">	
			<xsl:variable name="pl03-8b" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_8B_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-8B/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ THU NHẬP DOANH NGHIỆP (TNDN) PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG SẢN XUẤT THỦY ĐIỆN '"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
								
					<div class="ndungtkhai_div">
					<div class="content">
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" rowspan="2"><b>Mã số thuế/Mã địa điểm kinh doanh</b></td>
							   <td class="align-c" colspan="3"><b>Địa bàn hoạt động sản xuất, kinh doanh</b></td>
							   <td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN phải nộp của nhà máy</b></td>
							   <td class="align-c" rowspan="2"><b>Tỷ lệ  phân bổ (%)</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN phải nộp cho từng tỉnh</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN đã tạm nộp cho từng tỉnh đến thời điểm khai quyết toán</b></td>
							   <td class="align-c" rowspan="2"><b>Số thuế TNDN còn phải nộp cho từng tỉnh</b></td>
							</tr>
							<tr>
								<td class="align-c"><b>Xã/phường/đặc khu</b></td>
                               <td class="align-c"><b>Huyện</b></td>
                               <td class="align-c"><b>Tỉnh</b></td>
							</tr>
                            <tr>
								<td class="align-c"><b>[04]</b></td>
								<td class="align-c"><b>[05]</b></td>
								<td class="align-c"><b>[06]</b></td>
								<td class="align-c"><b>[07.1]</b></td>
								<td class="align-c"><b>[07]</b></td>
								<td class="align-c"><b>[08]</b></td>
								<td class="align-c"><b>[09]</b></td>
								<td class="align-c"><b>[10]</b></td>
								<td class="align-c"><b>[11]</b></td>
								<td class="align-c"><b>[12]= [10] x [11]</b></td>
								<td class="align-c"><b>[13]</b></td>
								<td class="align-c"><b>[14]</b></td>
								<td class="align-c"><b>[15]= [12] - [13] - [14]</b></td>
							</tr>
							<xsl:for-each select="$pl03-8b/TenNhaMay">
								<xsl:variable name="currentRows" select="position()"/>
									<tr>
										<td class="align-c"><xsl:value-of select="sTT"/>.</td>
										<td class="align-l"><xsl:value-of select="ten_nhaMay"/></td>
										<td class="align-l"><xsl:value-of select="ma_nhaMay"/></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct10_a)"/></b></td>
										<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct11)"/></b></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								<xsl:for-each select="DiaBanPhanBo">
									<xsl:variable name="currentRows1" select='position()'/>
									<tr>
										<td class="align-c"><xsl:value-of select="sTT"/></td>
										<td class="align-l"><xsl:value-of select="ct05"/></td>
										<td></td>
										<td class="align-l"><xsl:value-of select="ten_xa"/></td>
										<td class="align-l"><xsl:value-of select="ct07_ten"/></td>
										<td class="align-l"><xsl:value-of select="ct08_ten"/></td>
										<td class="align-l"><xsl:value-of select="ct09_ten"/></td>
										<td></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>	
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
									</tr>
								</xsl:for-each>	       				 
							</xsl:for-each>
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
			<div><i>2. Cột chỉ tiêu [07], [08]: Khai tên huyện, tỉnh nơi có văn phòng điều hành nhà máy thủy điện và nơi có nhà máy thủy điện. Trường hợp một nhà máy đóng trên nhiều huyện do cùng một cơ quan thuế quản lý thì chọn 1 huyện trong các huyện nơi có nhà máy để kê khai vào chỉ tiêu này.</i></div>
								<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_8_TNDN-->
	</xsl:template>		
</xsl:stylesheet>