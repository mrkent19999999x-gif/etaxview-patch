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
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_XSBHDC_TT40">
		<xsl:with-param name="mauTKhai"   select="'01/XSBHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với doanh nghiệp xổ số, bảo hiểm, bán hàng đa cấp trả tiền hoa hồng cho cá nhân trực tiếp ký hợp đồng làm đại lý bán đúng giá; doanh nghiệp bảo hiểm trả phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác) '"/>
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
						<td class="align-c"><b>[13]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct13)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct13)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[14]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct14)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct14)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh</td>
						<td class="align-c"><b>[15]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct15)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct15)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[16]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct16)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct16)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="4"><b>Doanh thu từ hoạt động đại lý bảo hiểm</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu trả trong kỳ</td>
						<td class="align-c"><b>[17]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct17)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct17)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[18]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct18)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct18)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh</td>
						<td class="align-c"><b>[19]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct19)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct19)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[20]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct20)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct20)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>III</b></td>
						<td colspan="4"><b>Thu nhập từ tiền phí tích lũy bảo hiểm nhân thọ, bảo hiểm không bắt buộc khác</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						<td class="align-c"><b>[21]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct21)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct21)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng số thuế TNCN phát sinh</td>
						<td class="align-c"><b>[22]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct22)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct22)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[23]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct23)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct23)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>IV</b></td>
						<td colspan="4"><b>Doanh thu từ hoạt động bán hàng đa cấp</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Tổng doanh thu trả trong kỳ</td>
						<td class="align-c"><b>[24]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct24)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct24)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Tổng doanh thu thuộc diện khấu trừ thuế</td>
						<td class="align-c"><b>[25]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct25)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct25)"/></td>
					</tr>
					<tr>
						<td class="align-c">3</td>
						<td>Tổng số thuế TNCN phát sinh </td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct26)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct26)"/></td>
					</tr>
					<tr>
						<td class="align-c">4</td>
						<td>Tổng số thuế TNCN đã khấu trừ</td>
						<td class="align-c"><b>[27]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct27)"/> </td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct27)"/></td>
					</tr>
					<tr>
						<td class="align-c"><b>V</b></td>
						<td><b>Tổng số thuế TNCN đã khấu trừ [28]=[16]+[20]+[23]+[27]</b></td>
						<td class="align-c"><b>[28]</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($soPSinh/ct28)"/></b> </td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($SoLKe/ct28)"/></b></td>
					</tr>
				</table>
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

	</xsl:template>		
</xsl:stylesheet>
