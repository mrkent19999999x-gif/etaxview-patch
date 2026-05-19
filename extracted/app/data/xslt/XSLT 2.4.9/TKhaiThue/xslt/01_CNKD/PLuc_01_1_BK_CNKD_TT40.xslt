<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021 của Bộ trưởng Bộ Tài Chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
		<!-- Phụ lục 01-1/BK_CNKD -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_BK_CNKD' />
			<xsl:call-template name="tkhaiHeader_pluc_01_1_CNKD_TT40">
		<xsl:with-param name="mauTKhai"   select="'01-1/BK-CNKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT HỘ KINH DOANH, CÁ NHÂN KINH DOANH'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo Tờ khai 01/CNKD áp dụng đối với tổ chức, cá nhân khai thuế thay, nộp thuế thay cho cá nhân; cá nhân hợp tác kinh doanh với tổ chức; tổ chức chi trả cho cá nhân đạt doanh số; tổ chức là chủ sở hữu sàn giao dịch thương mại điện tử; tổ chức tại Việt Nam là đối tác của nhà cung cấp nền tảng số ở nước ngoài)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
			
			<!--<div>Nhóm ngành nghề: <xsl:value-of select="$pl01/tenNhomNNghe"/>  </div>-->
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div> 
					
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="1"><b>STT</b></td>
							<td class="align-c" rowspan="1"><b>Họ và tên hộ kinh doanh, cá nhân kinh doanh</b></td>
							<td class="align-c" rowspan="1"><b>Mã số thuế hộ kinh doanh, cá nhân kinh doanh</b></td>
							<!--<td class="align-c" rowspan="2"><b>Số CMND/ Hộ chiếu</b></td>-->
							<td class="align-c" rowspan="1"><b>Doanh thu</b></td>
							<td class="align-c" rowspan="1"><b>Nhóm ngành nghề</b></td>
							<!--<td class="align-c" colspan="2"><b>Doanh thu thuộc diện chịu thuế</b></td>-->
							<td class="align-c" rowspan="1"><b>Số thuế GTGT</b></td>
							<td class="align-c" rowspan="1"><b>Số thuế TNCN</b></td>
							<td class="align-c" rowspan="1"><b>Tổng số thuế GTGT, TNCN</b></td>
							<!--<td class="align-c" rowspan="2"><b>Số thuế TNCN được giảm trong khu kinh tế</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Tổng số thuế phải nộp</b></td>-->
						</tr>
						<!--<tr>
							<td class="align-c"><b>Tổng số</b></td>
							<td class="align-c"><b>Trong đó: Làm việc trong KKT</b></td>
						</tr>-->
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[09a]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]=[10]+[11]</b></td>
						
							<!--<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]=[14]-[15]</b></td>
							<td class="align-c"><b>[17]=[13]+[16]</b></td>-->
						</tr>
						<xsl:for-each select="$pl01/BKeCNKD/CTietCNKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="ct07"/></td>
								<td class="align-c"><xsl:value-of select="ct08"/></td>
								<!--<td><xsl:value-of select="ct09"/></td>-->
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
								<td class="align-l"><xsl:value-of select="ct09a_ten"/></td>
								<!--<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>-->
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					<!--<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>-->
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="3"><b>Tổng cộng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct13)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="$pl01/ct13a"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct14)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct15)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct16)"/></b></td>
						<!--<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct22)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct23)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct24)"/></b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct25)"/></b></td>-->
					</tr>
					<xsl:call-template name="tkhaiFooter"/>
					</table>
	</div>		
			</div>

</xsl:if>
		<!-- Kết thúc PL 01-1/GTGT -->
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>