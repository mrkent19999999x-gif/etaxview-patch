<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_CANHAN_TTS">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_CANHAN_TTS' />
			<xsl:call-template name="tkhaiHeader_pluc_CNKD_BDS_TCKT">
		<xsl:with-param name="mauTKhai"   select="'02/BK-KTBĐS '"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CHO THUÊ BẤT ĐỘNG SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai 01/TCKT áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho cá nhân cho thuê bất động sản)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Họ tên bên cho thuê bất động sản</b></td>
				<td class="align-c"><b>Mã số thuế/Số định danh cá nhân của bên cho thuê bất động sản</b></td>
				<td class="align-c"><b>Địa chỉ bất động sản cho thuê (Số nhà, đường phố/xóm/ấp/ thôn)</b></td>
				<td class="align-c"><b>Tổng doanh thu phát sinh trong kỳ</b></td>
				<td class="align-c"><b>Doanh thu được trừ để xác định doanh thu tính thuế</b></td>
				<td class="align-c"><b>Cá nhân thuộc diện không phải nộp thuế</b></td>
				<td class="align-c"><b>Số thuế GTGT phải nộp</b></td>
				<td class="align-c"><b></b><b>Số thuế TNCN phải nộp</b></td>
				
			</tr>
			<tr>
			    <td class="align-c">[04]</td>
			    <td class="align-c">[05]</td>
				<td class="align-c">[06]</td>
				<td class="align-c">[07]</td>
				<td class="align-c">[08]</td>
				<td class="align-c">[09]</td>
				<td class="align-c">[10]</td>
				<td class="align-c">[11]=[08]x5%</td>
				<td class="align-c">[12]=([08]-[09])x5%</td>
			</tr>
				<!--	<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Họ tên cá nhân</b></td>
				<td class="align-c"><b>Mã số thuế/Số định danh cá nhân </b></td>
				<td class="align-c"><b>Doanh thu trong năm</b></td>
				<td class="align-c"><b>Doanh thu thuộc diện khấu trừ thuế trong năm</b></td>
				<td class="align-c"><b>Số thuế đã khấu trừ trong năm</b></td>
				
			</tr>
			<tr>
				<td class="align-c">[06]</td>
				<td class="align-c">[07]</td>
				<td class="align-c">[08]</td>
				<td class="align-c">[09]</td>
				<td class="align-c">[10]</td>
				<td class="align-c">[11]</td>
				
			</tr>-->
			
				<xsl:for-each select="$pl01/CTietBKeCNTTS">
					<xsl:variable name="currentRows" select='position()' />
						<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td><xsl:value-of select="ct05"/></td>
							  <td class="align-c"><xsl:value-of select="ct06"/></td>
							   <td class="align-c"><xsl:value-of select="ct07_diaChi"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct08)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							  <td class="align-c"><xsl:if test="ct10='true' or ct10='1'">[x]</xsl:if></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							 
						</tr>
				</xsl:for-each>
						
							<tr>
				
				<td colspan="4" class="align-c"><b>TỔNG CỘNG</b></td>
				                <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_doanhThu)"/></b></td>
				                <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_duocTru)"/></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_thueGTGT)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_thueTNCN)"/></b></td>
			</tr>
							
			
		</table>
</div>
</div>
<xsl:call-template name="tkhaiFooter_PL_01TCKT_BDS">
	</xsl:call-template>
	</xsl:if><table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>