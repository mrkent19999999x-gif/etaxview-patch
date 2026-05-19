<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_04_NNG_TNCN_283">
			<xsl:with-param name="mauTKhai"   select="'04/NNG-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân không cư trú có thu nhập từ kinh doanh, cá nhân có thu nhập từ đầu tư vốn, bản quyền, nhượng quyền thương mại, trúng thưởng được trả từ nước ngoài)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td  class="align-c"><b>STT</b></td>
						<td  class="align-c"><b>Chỉ tiêu</b></td>
						<td  class="align-c"><b>Mã chỉ tiêu</b></td>
						<td  class="align-c"><b>Số tiền</b></td>
					</tr>
					<tr>
						<td  class="align-c"><b>I</b></td>
						<td colspan="3"><b>Thu nhập từ kinh doanh của cá nhân không cư trú</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td class="align-l">Tổng thu nhập tính thuế</td>
						<td class="align-c"><b>[23]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuKinhDoanh/ct23)"/></td>	
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Thuế suất</td>
						<td  class="align-c"><b>[24]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuKinhDoanh/ct24)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Tổng số thuế thu nhập cá nhân phải nộp [25]=[23]*[24]</td>
						<td  class="align-c"><b>[25]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuKinhDoanh/ct25)"/></td>
					</tr>
					<tr>
						<td  class="align-c"><b>II</b></td>
						<td colspan="3"><b>Thu nhập từ đầu tư vốn</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td class="align-l">Tổng thu nhập chịu thuế</td>
						<td class="align-c"><b>[26]</b></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuDauTuVon/ct26)"/></td>
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Tổng số thuế phải nộp</td>
						<td  class="align-c"><b>[27]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuDauTuVon/ct27)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Tổng số thuế đã nộp ở nước ngoài </td>
						<td  class="align-c"><b>[28]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuDauTuVon/ct28)"/></td>
					</tr>
					<tr>
						<td  class="align-c">4</td>
						<td  class="align-l">Số thuế còn phải nộp [29]=[27]-[28]</td>
						<td  class="align-c"><b>[29]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuDauTuVon/ct29)"/></td>
					</tr>
					<tr>
						<td  class="align-c"><b>III</b></td>
						<td colspan="3"><b>Thu nhập từ bản quyền, nhượng quyền thương mại</b></td>
					</tr>
					<tr>
						<td  class="align-c">1</td>
						<td  class="align-l">Tổng thu nhập chịu thuế</td>
						<td  class="align-c"><b>[30]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuBanQuyen/ct30)"/></td>
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Tổng số thuế phải nộp</td>
						<td  class="align-c"><b>[31]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuBanQuyen/ct31)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Tổng số thuế đã nộp ở nước ngoài</td>
						<td  class="align-c"><b>[32]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuBanQuyen/ct32)"/></td>
					</tr>
					<tr>
						<td  class="align-c">4</td>
						<td  class="align-l">Số thuế còn phải nộp [33]=[31]-[32]</td>
						<td  class="align-c"><b>[33]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuBanQuyen/ct33)"/></td>
					</tr>
					<tr>
						<td  class="align-c"><b>IV</b></td>
						<td colspan="3"><b>Thu nhập từ trúng thưởng</b></td>
					</tr>
					<tr>
						<td  class="align-c">1</td>
						<td  class="align-l">Tổng thu nhập chịu thuế</td>
						<td  class="align-c"><b>[34]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuTrungThuong/ct34)"/></td>
					</tr>
					<tr>
						<td  class="align-c">2</td>
						<td  class="align-l">Tổng số thuế phải nộp</td>
						<td  class="align-c"><b>[35]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuTrungThuong/ct35)"/></td>
					</tr>
					<tr>
						<td  class="align-c">3</td>
						<td  class="align-l">Tổng số thuế đã nộp ở nước ngoài</td>
						<td  class="align-c"><b>[36]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuTrungThuong/ct36)"/></td>
					</tr>
					<tr>
						<td  class="align-c">4</td>
						<td  class="align-l">Số thuế còn phải nộp [37]=[35]-[36]</td>
						<td  class="align-c"><b>[37]</b></td>
						<td  class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNHapTuTrungThuong/ct37)"/></td>
					</tr>
				</table>	
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_TT80"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
