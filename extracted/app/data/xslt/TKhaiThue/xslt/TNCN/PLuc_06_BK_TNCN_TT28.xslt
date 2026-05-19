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
			
	<!--start phu luc 06BK-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc06_BK-TNCN">	
		<xsl:variable name="pl06bk" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc06_BK-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'06/BK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT GIÁ TRỊ CHUYỂN NHƯỢNG VÀ THUẾ 
THU NHẬP CÁ NHÂN ĐÃ KHẤU TRỪ ĐỐI VỚI THU NHẬP TỪ CHUYỂN NHƯỢNG CHỨNG KHOÁN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 06/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						 	<table class="tkhai_table">
						<tr class="tkhaiheader">
							 <td class="align-c">STT</td>
							 <td class="align-c">Họ và tên</td>
							 <td class="align-c">Mã số thuế</td>
							 <td class="align-c">Số CMND/Hộ chiếu</td>
							 <td class="align-c">Tổng giá trị chuyển nhượng trong kỳ</td>
							 <td class="align-c">Thuế TNCN đã khấu trừ</td>
							</tr>
							<tr class="tkhaiheader">
							<td class="align-c">[06]</td>
							<td class="align-c">[07]</td>
							<td class="align-c">[08]</td>
							<td class="align-c">[09]</td>
							<td class="align-c">[10]</td>
							<td class="align-c">[11]</td>
							</tr>
						   <xsl:for-each select="$pl06bk/BANGCHITIETTNCNCHUYENHUONGCK/CTietThueTNCNTuCNhuongCKhoan">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct07"/></td>
							 <td class="align-c"><xsl:value-of select="ct08"/></td>
							 <td class="align-r"><xsl:value-of select="ct09"/></td>
                                               <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="4" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl06bk/ct12)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl06bk/ct13)"/></b></td>
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
	<!--end phu luc 27MT-TNCN-->
	</xsl:template>		
</xsl:stylesheet>