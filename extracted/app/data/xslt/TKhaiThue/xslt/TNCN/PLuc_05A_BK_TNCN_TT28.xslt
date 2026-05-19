<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư
số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 05A/BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL05A_BK-TNCN">	
		<xsl:variable name="pl05abk" select='HSoThueDTu/HSoKhaiThue/PLuc/PL05A_BK-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05A/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP CHỊU THUẾ VÀ THUẾ THU NHẬP CÁ NHÂN ĐỐI VỚI THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG CỦA CÁ NHÂN CƯ TRÚ CÓ KÝ HỢP ĐỒNG LAO ĐỘNG'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table">
							<tr class="tkhaiheader">
							 <td rowspan="2" class="align-c">STT</td>
							 <td rowspan="2" class="align-c">Họ và tên</td>
							 <td rowspan="2" class="align-c">Mã số thuế</td>
							 <td rowspan="2" class="align-c">Số CMND/Hộ chiếu</td>
							 <td rowspan="2" class="align-c">Cá nhân uỷ quyền quyết toán thay</td>
							 <td colspan="2" class="align-c">Thu nhập chịu thuế</td>
							 <td colspan="3" class="align-c">Các khoản giảm trừ</td>
							 <td rowspan="2" class="align-c">Thu nhập tính thuế</td>
							 <td rowspan="2" class="align-c">Số thuế TNCN đã khấu trừ</td>
							 <td rowspan="2" class="align-c">Số thuế TNCN phải khấu trừ</td>
							 <td colspan="3" class="align-c">Chi tiết kết quả quyết toán thay cho cá nhân nộp thuế</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Tổng số</td>
							 <td class="align-c">Trong đó: TNCT làm căn cứ tính giảm thuế</td>
							 <td class="align-c">Tổng số tiền  giảm trừ gia cảnh</td>
							 <td class="align-c">Từ thiện, nhân đạo, khuyến học</td>
							 <td class="align-c">Bảo hiểm bắt buộc</td>
							 <td class="align-c">Tổng số thuế phải nộp</td>
							 <td class="align-c">Số thuế đã nộp thừa</td>
							 <td class="align-c">Số thuế còn phải khấu trừ thêm</td>
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
							</tr>
						<xsl:for-each select="$pl05abk/CHITIETCHIUTHUETNCN/cacThongTinChiTieuThueTNCN">
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
							<xsl:if test="ct10 = '1'">
							 [x]
							 </xsl:if>
							 <xsl:if test="ct10 = '0'">
							 []
							 </xsl:if>						
							 </td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct11)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct12)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct13)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct14)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CacKhoanGiamTru/ct15)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct19)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct20)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChiTietKQQuyetToanThay/ct21)"/></td>
							</tr>
							</xsl:for-each>
						<tr>
							 <td colspan="5" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct22)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct23)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct24)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct25)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct26)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct27)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct28)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct29)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct30)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct31)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05abk/ct32)"/></b></td>
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
	<!--end phu luc 05A/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>