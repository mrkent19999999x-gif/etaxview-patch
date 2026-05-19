<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính))'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_BDS">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_BDS' />
			<xsl:call-template name="tkhaiHeader_pluc_01_BK_BDS">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT BẤT ĐỘNG SẢN CHO THUÊ'"/>
		<xsl:with-param name="ghiChuPL"   select="'( Kèm theo tờ khai 01/BĐS áp dụng đối với trường hợp cá nhân khai thuế đối với hoạt động cho thuê bất động sản)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" colspan="3"><b>Địa chỉ bất động sản cho thuê</b></td>
				<td class="align-c" colspan="2"><b>Thông tin hợp đồng cho thuê</b></td>
				<td class="align-c" rowspan="2"><b>Tổng doanh thu phát sinh trong kỳ</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu được trừ để xác định doanh thu tính thuế</b></td>
				<td class="align-c" rowspan="2"><b>Tiền phạt tiền bồi thường</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế GTGT phải nộp</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Địa chỉ</b></td>
				<td class="align-c"><b>Xã/phường/đặc khu</b></td>
				<td class="align-c"><b>Tỉnh/TP</b></td>	
				<td class="align-c"><b>Tổng giá trị hợp đồng</b></td>
				<td class="align-c"><b>Thời gian cho thuê của hợp đồng</b></td>
			</tr>

			<tr>
				<td class="align-c"><b>[03]</b></td>
				<td class="align-c"><b>[04]</b></td>
				<td class="align-c"><b>[05]</b></td>
				<td class="align-c"><b>[06]</b></td>
				<td class="align-c"><b>[07]</b></td>
				<td class="align-c"><b>[08]</b></td>
				<td class="align-c"><b>[09]</b></td>
				<td class="align-c"><b>[10]</b></td>
				<td class="align-c"><b>[11]</b></td>
				<td class="align-c"><b>[12]=[09]x5%</b></td>
				<td class="align-c"><b>[13]=([09]-[10]+[11])x5%</b></td>
			</tr>
			
				<xsl:for-each select="$pl01/CTietBKeBDS">
					<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ct04_diaChi"/></td>
							<td class="align-c"><xsl:value-of select="ct05_ten"/></td>
							<td class="align-c"><xsl:value-of select="ct06_ten"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct08_tuNgay,'dd/mm/yyyy')"/> - <xsl:value-of select="ihtkk:stringDatetime(ct08_denNgay,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12_soThue)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13_soThue)"/></td>
						</tr>
				</xsl:for-each>
						
			<tr>
				
				<td colspan="4" class="align-l"><b>TỔNG CỘNG</b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT14)"/></b></td>
				<td></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT15)"/></b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT16)"/></b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT17)"/></b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT18)"/></b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/TongCong/tongCT19)"/></b></td>
			</tr>
			<tr>
				<td colspan="10" class="align-l"><b>Số thuế TNCN được miễn</b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/soThueTNCNMienCT20)"/></b></td>
			</tr>
			<tr>
				<td colspan="9" class="align-l"><b>Số thuế còn phải nộp</b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/SoThueConPhaiNop/soThueGTGT_ct21)"/></b></td>
				<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/SoThueConPhaiNop/soThueTNCN_ct22)"/></b></td>
			</tr>
							
			
		</table>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</div>
		<br/>
</div>
</div>
<xsl:call-template name="tkhaiFooter_01_BK_STK">
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