<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'19/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cá nhân có thu nhập từ kinh doanh, đầu tư vốn, bản quyền,
nhượng quyền thương mại, trúng thưởng từ nước ngoài)'"/>
		 </xsl:call-template>
		<div class="ndungtkhai_div">
				<div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
						<table class="tkhai_table">
							<tr class="tkhaiheader">
								<td>STT</td>
								<td colspan="2">Chỉ tiêu</td>
								<td>Số tiền</td>
							</tr>
							<tr>
								<td class="tkhaiheader">I</td>
								<td colspan="3" class="b">Thu nhập từ kinh doanh của cá nhân không cư trú</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td>Tổng thu nhập tính thuế</td>
								<td class="tkhaiheader">[21]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCuTru/ct21)"/></td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td>Thuế suất</td>
								<td class="tkhaiheader">[22]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCuTru/ct22)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td>Tổng số thuế thu nhập cá nhân phải nộp [23]=[21]*[22]</td>
								<td class="tkhaiheader">[23]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCaNhanKhongCuTru/ct23)"/></td>
							</tr>
							<tr>
								<td class="tkhaiheader">II</td>
								<td colspan="3" class="b">Thu nhập từ đầu tư vốn</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td>Tổng thu nhập chịu thuế</td>
								<td class="tkhaiheader">[24]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct24)"/></td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td>Tổng số thuế phải nộp </td>
								<td class="tkhaiheader">[25]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct25)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td>Tổng số thuế đã nộp ở nước ngoài </td>
								<td class="tkhaiheader">[26]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct26)"/></td>
							</tr>
							<tr>
								<td class="align-c">4</td>
								<td>Số thuế còn phải nộp [27]=[25]-[26]</td>
								<td class="tkhaiheader">[27]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct27)"/></td>
							</tr>
							<tr>
								<td class="tkhaiheader">III</td>
								<td colspan="3" class="b">Thu nhập từ bản quyền, nhượng quyền thương mại</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td>Tổng thu nhập chịu thuế</td>
								<td class="tkhaiheader">[28]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct28)"/></td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td>Tổng số thuế phải nộp</td>
								<td class="tkhaiheader">[29]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct29)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td>Tổng số thuế đã nộp ở nước ngoài </td>
								<td class="tkhaiheader">[30]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct30)"/></td>
							</tr>
							<tr>
								<td class="align-c">4</td>
								<td>Số thuế còn phải nộp [31]=[29]-[30]</td>
								<td class="tkhaiheader">[31]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuNhuongQuyenTMai/ct31)"/></td>
							</tr>
							<tr>
								<td class="tkhaiheader">IV</td>
								<td colspan="3" class="b">Thu nhập từ trúng thưởng</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td>Tổng thu nhập chịu thuế</td>
								<td class="tkhaiheader">[32]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct32)"/></td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td>Tổng số thuế phải nộp</td>
								<td class="tkhaiheader">[33]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct33)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td>Tổng số thuế đã nộp ở nước ngoài </td>
								<td class="tkhaiheader">[34]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct34)"/></td>
							</tr>
							<tr>
								<td class="align-c">4</td>
								<td>Số thuế còn phải nộp [35]=[33]-[34]</td>
								<td class="tkhaiheader">[35]</td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct35)"/></td>
							</tr>

					
				</table>
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>
</xsl:stylesheet>