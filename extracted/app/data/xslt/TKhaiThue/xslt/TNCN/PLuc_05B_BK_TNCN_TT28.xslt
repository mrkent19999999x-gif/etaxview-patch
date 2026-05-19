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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL05B_BK-TNCN">	
		<xsl:variable name="pl05bbk" select='HSoThueDTu/HSoKhaiThue/PLuc/PL05B_BK-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05B/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP CHỊU THUẾ VÀ THUẾ THU NHẬP CÁ NHÂN 
ĐÃ KHẤU TRỪ ĐỐI VỚI THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG  CỦA CÁ NHÂN CƯ TRÚ KHÔNG KÝ HỢP ĐỒNG LAO ĐỘNG HOẶC CÓ HỢP ĐỒNG LAO ĐỘNG DƯỚI 3 THÁNG VÀ CÁ NHÂN KHÔNG CƯ TRÚ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 			<table class="tkhai_table">
						<tr class="tkhaiheader">
							 <td class="align-c" rowspan="2">STT</td>
							 <td class="align-c" rowspan="2">Họ và tên</td>
							 <td class="align-c" rowspan="2">Mã số thuế</td>
							 <td class="align-c" rowspan="2">Số CMND/Hộ chiếu</td>
							 <td class="align-c" rowspan="2">Cá nhân không cư trú</td>
							 <td class="align-c" colspan="2">Thu nhập chịu thuế</td>
							 <td class="align-c" rowspan="2">Số thuế TNCN đã khấu trừ</td>
							 <td class="align-c" rowspan="2">Số thuế TNCN phải khấu trừ</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Tổng số</td>
							 <td class="align-c">Trong đó: TNCT làm căn cứ tính giảm thuế</td>
							</tr>
							<tr class="tkhaiheader">
							<td class="align-c">(06)</td>
							<td class="align-c">(07)</td>
							<td class="align-c">(08)</td>
							<td class="align-c">(09)</td>
							<td class="align-c">(10)</td>
							<td class="align-c">(11)</td>
							<td class="align-c">(12)</td>
							<td class="align-c">(13)</td>
							<td class="align-c">(14)</td>
							</tr>
						   <xsl:for-each select="$pl05bbk/CHITIETTHUETNCNCUACANHANKHONGCOHDLD/chiTietThueTNCNCuaCNKhongCTru">
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
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="5" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05bbk/ct15)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05bbk/ct16)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05bbk/ct17)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05bbk/ct18)"/></b></td>
							</tr>
						   </table>
			</div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	<div id="sigDiv"></div>
</td>
</tr>
</table>
			
		</xsl:if>
	<!--end phu luc 05B/BK-TNCN-->	
	</xsl:template>		
</xsl:stylesheet>