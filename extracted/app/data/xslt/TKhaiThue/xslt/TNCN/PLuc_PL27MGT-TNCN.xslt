<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 140/2012/TT-BTC ngày 21/8 /2012
 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 27MT-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL27MGT-TNCN">	
		<xsl:variable name="pl27mgt" select='HSoThueDTu/HSoKhaiThue/PLuc/PL27MGT-TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'27/MGT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'MIỄN  THUẾ THU NHẬP CÁ NHÂN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Bảng kê mẫu số 05A/BK-TNCN ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính)'"/>
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
							 <td class="align-c" rowspan="2">Thu nhập chịu thuế</td>
							 <td class="align-c" rowspan="2">Số thuế TNCN đã khấu trừ</td>
							 <td class="align-c" colspan="3">Chi tiết kết quả quyết toán thay cho cá nhân nộp thuế</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Tổng số thuế TNCN phải nộp</td>
							 <td class="align-c">Tổng số thuế TNCN được miễn </td>
                                           <td class="align-c">Tổng số thuế  TNCN còn phải nộp sau khi miễn</td>
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
							</tr>
						   <xsl:for-each select="$pl27mgt/CHITIETMIENGIAMTHUETNCN/chiTietChiTieuMGiamThueTNCN">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct07"/></td>
							 <td class="align-c"><xsl:value-of select="ct08"/></td>
							 <td class="align-r"><xsl:value-of select="ct09"/></td>
                                           <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="4" class="align-c"><b>Tổng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl27mgt/ct15)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl27mgt/ct16)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl27mgt/ct17)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl27mgt/ct18)"/></b></td>
                                          <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl27mgt/ct19)"/></b></td>
							</tr>
						   </table>
					</div>
					</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>						
			<xsl:call-template name="tkhaiFooter"/>	
			<div class="align-l"><b>Ghi chú:</b></div>
			<div class="align-l">[07] Họ và tên: là họ tên của những cá nhân có thu nhập tính thuế từ tiền lương, tiền công ở bậc 1 và uỷ quyền cho cơ quan chi trả quyết toán thay.</div>
			<div class="align-l">[10] Thu nhập tính thuế: là thu nhập tính thuế của những cá nhân có thu nhập tính thuế từ tiền lương, tiền công ở bậc 1 và uỷ quyền cho cơ quan chi trả quyết toán thay theo Bảng kê mẫu số 05A/BK-TNCN. (Thu nhập tính thuế nhỏ hơn hoặc bằng 60 triệu đồng/năm).</div>
			<div class="align-l">[12] Tổng số thuế TNCN phải nộp: là tổng số thuế phải nộp trước khi trừ số thuế được miễn theo Nghị quyết số 29/2012/QH13.</div>
			<div class="align-l">[13] Tổng số thuế TNCN được miễn: là tổng số thuế được miễn cả năm đối với cá nhân thu nhập tính thuế từ tiền lương, tiền công ở bậc 1 Biểu thuế luỹ tiến từng phần được xác định như sau:
Số thuế được miễn	=	(Thu nhập tính thuế cả năm 2012 ở bậc 1 x	Thuế suất theo Biểu thuế luỹ tiến từng phần)/12 tháng x 6 tháng</div>
			<div class="align-l">[14] Tổng số thuế TNCN còn phải nộp sau khi miễn = [12] -  [13]</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			

		</xsl:if>
	<!--end phu luc 27MT-TNCN-->
	</xsl:template>		
</xsl:stylesheet>