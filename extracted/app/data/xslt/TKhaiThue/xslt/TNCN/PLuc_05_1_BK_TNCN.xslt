<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 05-1/BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK">	
		<xsl:variable name="pl05-1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05-1/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP CHỊU THUẾ VÀ THUẾ THU NHẬP CÁ NHÂN 
ĐỐI VỚI THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG CỦA CÁ NHÂN CƯ TRÚ CÓ KÝ HỢP ĐỒNG LAO ĐỘNG'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr class="tkhaiheader">
							 <td rowspan="3" class="align-c">STT</td>
							 <td rowspan="3" class="align-c">Họ và tên</td>
							 <td rowspan="3" class="align-c">Mã số thuế</td>
							 <td rowspan="3" class="align-c">Số CMND/Hộ chiếu</td>
							 <td rowspan="3" class="align-c">Cá nhân uỷ quyền quyết toán thay</td>
							 <td colspan="3" class="align-c">Thu nhập chịu thuế</td>
							 <td colspan="4" class="align-c">Các khoản giảm trừ</td>
							 <td rowspan="3" class="align-c">Thu nhập tính thuế</td>
							 <td rowspan="3" class="align-c">Số thuế TNCN đã khấu trừ</td>
							 <td rowspan="3" class="align-c">Số thuế TNCN được giảm do làm việc trong KKT</td>
							 <td colspan="3" class="align-c">Chi tiết kết quả quyết toán thay cho cá nhân nộp thuế</td>
							</tr>
							<tr class="tkhaiheader">
							 <td rowspan="2" class="align-c">Tổng số</td>
							 <td colspan="2" class="align-c">Trong đó: TNCT được giảm thuế </td>
							 <td rowspan="2"  class="align-c">Tổng số tiền  giảm trừ gia cảnh</td>
							 <td rowspan="2"  class="align-c">Từ thiện, nhân đạo, khuyến học</td>
							 <td rowspan="2"  class="align-c">Bảo hiểm bắt buộc</td>
							 <td rowspan="2"  class="align-c">Quĩ hưu trí tự nguyện được trừ</td>
							 <td rowspan="2"  class="align-c">Tổng số thuế phải nộp</td>
							 <td rowspan="2"  class="align-c">Số thuế đã nộp thừa</td>
							 <td rowspan="2"  class="align-c">Số thuế còn phải nộp</td>
							</tr>
							 <tr class="tkhaiheader">
							<td class="align-c">Làm việc trong KKT</td>
							 <td class="align-c">Theo Hiệp định</td>
							</tr>
							<tr class="tkhaiheader">
							<td class="align-c">[06]</td>
							<td class="align-c">[07]</td>
							<td class="align-c">[08]</td>
							<td class="align-c">[09]</td>
							<td class="align-c">[10]</td>
							<td class="align-c">[11]</td>
							<td class="align-c">[12]</td>
							<td class="align-c">[13]</td>
							<td class="align-c">[14]</td>
							<td class="align-c">[15]</td>
							<td class="align-c">[16]</td>
							<td class="align-c">[17]</td>
							<td class="align-c">[18]</td>
							<td class="align-c">[19]</td>
							<td class="align-c">[20]</td>
							<td class="align-c">[21]</td>
							<td class="align-c">[22]</td>
							<td class="align-c">[23]</td>
							</tr>
						<xsl:for-each select="$pl05-1/BKeThueTNCNCTruCoHDong/ChiTietBangKe">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-c"><xsl:value-of select="ct07"/></td>
							 <td class="align-c"><xsl:value-of select="ct08"/></td>
							 <td class="align-c"><xsl:value-of select="ct09"/></td>
							 <td class="align-c">
							 <xsl:if test="ct10 = 'true'">
							 [x]
							 </xsl:if>
							 <xsl:if test="ct10 = 'false'">
							 []
							 </xsl:if>						
							 </td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct11)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct12)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct13)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct14)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct15)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct16)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct17)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct21)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct22)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct23)"/></td>
							</tr>
							</xsl:for-each>
						<tr>
							 <td colspan="5" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct24)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct25)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct26)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct27)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct28)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct29)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct30)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct31)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct32)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct33)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct34)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct35)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-1/ct36)"/></b></td>
							</tr>
						   </table>
			</div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
		<div><i>(KKT: Khu kinh tế; TNCN: thu nhập cá nhân)</i></div>
	<!--end phu luc 05-1/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>