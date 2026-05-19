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
			
	<!--start phu luc 05-2/BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK">	
		<xsl:variable name="pl05-2" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_2_BK' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05-2/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP CHỊU THUẾ VÀ THUẾ THU NHẬP CÁ NHÂN 
ĐÃ KHẤU TRỪ ĐỐI VỚI THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG  CỦA CÁ NHÂN CƯ TRÚ KHÔNG KÝ HỢP ĐỒNG LAO ĐỘNG HOẶC 
CÓ HỢP ĐỒNG LAO ĐỘNG DƯỚI 3 THÁNG VÀ CÁ NHÂN KHÔNG CƯ TRÚ '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 			<table class="tkhai_table">
						<tr class="tkhaiheader">
							 <td class="align-c" rowspan="3">STT</td>
							 <td class="align-c" rowspan="3">Họ và tên</td>
							 <td class="align-c" rowspan="3">Mã số thuế</td>
							 <td class="align-c" rowspan="3">Số CMND/Hộ chiếu</td>
							 <td class="align-c" rowspan="3">Cá nhân không cư trú</td>
							 <td class="align-c" colspan="3">Thu nhập chịu thuế (TNCT)</td>
							 <td class="align-c" rowspan="3">Số thuế thu nhập cá nhân (TNCN) đã khấu trừ</td>
							 <td class="align-c" rowspan="3">Số thuế TNCN được giảm do làm việc tại KKT</td>
							</tr>
							<tr class="tkhaiheader">
							 <td rowspan="2" class="align-c">Tổng số</td>
							 <td colspan="2" class="align-c">Trong đó: TNCT được giảm thuế </td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Làm việc tại KKT</td>
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
							</tr>
						   <xsl:for-each select="$pl05-2/BKeThueTNCNCNhanKhongCuTru/chiTietBangKe">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct07"/></td>
							 <td class="align-c"><xsl:value-of select="ct08"/></td>
							 <td class="align-r"><xsl:value-of select="ct09"/></td>
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
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThuNhapChiuThue/ct13)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="5" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-2/ct16)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-2/ct17)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-2/ct18)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-2/ct19)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05-2/ct20)"/></b></td>
							</tr>
						   </table>
			</div>
			</div>
			<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>
			<xsl:call-template name="tkhaiFooter"/>
			<div><i>(KKT: Khu kinh tế)</i></div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
	<!--end phu luc 05-2/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>