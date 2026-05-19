<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="soPSinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/SoPSinhTKy' />
		<xsl:variable name="SoLKe" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/SoLuyKe' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_XSBHDC_HKD">
		<xsl:with-param name="mauTKhai"   select="'01/XSBHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với doanh nghiệp xổ số, bảo hiểm, bán hàng đa cấp trả tiền hoa hồng cho hộ kinh doanh, cá nhân kinh doanh trực tiếp ký hợp đồng làm đại lý bán đúng giá; doanh nghiệp bảo hiểm trả phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác) '"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã chỉ tiêu</b></td>
						<td class="align-c"><b>Số phát sinh trong kỳ</b></td>
						<td class="align-c"><b>Số luỹ kế</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>I</b></td>
						<td colspan="4"><b>Doanh thu từ hoạt động đại lý xổ số</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu trả trong kỳ</td>
						<td class="align-c"><b>[08]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct08)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct08)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[09]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct09)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct09)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh </td>
						<td class="align-c"><b>[10]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct10)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct10)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ </td>
						<td class="align-c"><b>[11]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct11)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct11)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="4"><b>Doanh thu từ hoạt động đại lý bảo hiểm</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu trả trong kỳ</td>
						<td class="align-c"><b>[12]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct12)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct12)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[13]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct13)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct13)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh </td>
						<td class="align-c"><b>[14]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct14)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct14)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ</td>
						<td class="align-c"><b>[15]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct15)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct15)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>III</b></td>
						<td colspan="4"><b>Thu nhập từ tiền phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						<td class="align-c"><b>[16]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct16)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct16)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng số thuế TNCN phát sinh</td>
						<td class="align-c"><b>[17]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct17)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct17)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[18]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct18)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct18)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IV</b></td>
						<td colspan="4"><b>Doanh thu từ hoạt động bán hàng đa cấp</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu trả trong kỳ</td>
						<td class="align-c"><b>[19]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct19)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct19)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[20]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct20)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct20)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh </td>
						<td class="align-c"><b>[21]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct21)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct21)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[22]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct22)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct22)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>V</b></td>
						<td><b>Tổng số thuế TNCN đã khấu trừ[23]=[11]+[15]+[18]+[22]</b></td>
						<td class="align-c"><b>[23]</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct23)"/></b> </td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct23)"/></b></td>
					</tr>
				</table>
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80_HKD_XSBHDC"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

	</xsl:template>		
</xsl:stylesheet>
