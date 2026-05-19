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
			
	<!--start phu luc 02_1/BK-BH-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_BH">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_BH' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'02-1/BK-BH'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP CHỊU THUẾ VÀ THUẾ THU NHẬP CÁ NHÂN 
ĐÃ KHẤU TRỪ ĐỐI VỚI THU NHẬP CỦA ĐẠI LÝ BẢO HIỂM'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập cá nhân mẫu số 02/KK-BHĐC)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
				<table class="tkhai_table">
                                          <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Họ và tên đại lý</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Số CMND/ Hộ chiếu</b></td>
							<td class="align-c"><b>Thu nhập chịu thuế</b></td>
							<td class="align-c"><b>Thu nhập làm căn cứ tính giảm thuế</b></td>
							<td class="align-c"><b>Số thuế được giảm</b></td>
							<td class="align-c"><b>Số thuế đã khấu trừ</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
						</tr>
                        <xsl:for-each select="$pl02/BangThuNhapDLyBaoHiem/chiTietTNhapDLyBHiem">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct07"/></td>
								<td class="align-c"><xsl:value-of select="ct08"/></td>
								<td class="align-c"><xsl:value-of select="ct09"/></td> 
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
                                <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							</tr>
			</xsl:for-each>
						<tr>
							<td class="align-c" colspan="4"><b>Tổng cộng:</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct14)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct15)"/></b></td>
                             <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct16)"/></b></td>
                            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/ct17)"/></b></td>
						</tr>
			      </table>
			</div>
			</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
	<!--end phu luc 02_1/KK-BH-->	
	</xsl:template>		
</xsl:stylesheet>