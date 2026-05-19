<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_03_NCCNN">
		<xsl:with-param name="mauTKhai"   select="'03/NCCNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho Ngân hàng thương mại, tổ chức cung ứng dịch vụ trung gian thanh toán không thể thực hiện khấu trừ, nộp thay)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<table>		
			<tr>
				<td>
					<table class="tkhai_table"  >
						<thead class="tkhaiheader">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên nhà cung cấp nước ngoài</b></td>
							<td class="align-c" rowspan="2"><b>Địa chỉ</b></td>
							<td class="align-c" colspan="3"><b>Thuế giá trị gia tăng (GTGT)</b></td>
							<td class="align-c" colspan="4"><b>Thuế thu nhập doanh nghiệp (TNDN) Corporate Income Tax (CIT)</b></td>
							<td class="align-c" rowspan="2"><b>Tổng số thuế phải nộp vào ngân sách nhà nước</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Doanh thu tính thuế</b></td>
							<td class="align-c"><b>Tỷ lệ % thuế GTGT trên doanh thu</b></td>
							<td class="align-c"><b>Thuế giá trị gia tăng phải nộp</b></td>
							<td class="align-c"><b>Doanh thu tính thuế</b></td>
							<td class="align-c"><b>Tỷ lệ % thuế TNDN trên doanh thu</b></td>
							<td class="align-c"><b>Số thuế  được miễn giảm theo Hiệp định</b></td>
							<td class="align-c"><b>Thuế thu nhập doanh nghiệp phải nộp</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6=4x5)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>[10=(7x8)-(9)]</b></td>
							<td class="align-c"><b>(11)=(6)+(10)</b></td>
						</tr>
						</thead>
						<tbody id="tkhaitbody">
								 <xsl:for-each select="$tkchinh/TTNCCNN/CTietThongTinNCCNN">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="tenNhaCCNN"/></td>
							  <td class="align-l"><xsl:value-of select="diaChi"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuTinhThue_GTGT)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLeThueGTGTTrenDT)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTPhaiNop)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuTinhThue_TNDN)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLeThueTNDNTrenDT)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueMienGiam)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTPhaiNop)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThueNopVaoNSNN)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTNCCNN/ct12)"/></b></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTNCCNN/ct13)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTNCCNN/ct14)"/></b></td>
						</tr>
						</tbody>
					</table>
				<tr>
					<td>Tổng số thuế GTGT và thuế TNDN phải nộp kỳ này<i> (Viết bằng chữ): </i><xsl:value-of select="$tkchinh/TTNCCNN/tongThueGTGT_TNDNPhaiNop"/></td>
				</tr>
				</td>
			</tr>
		</table>
      </div>	
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_NCCNN"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>