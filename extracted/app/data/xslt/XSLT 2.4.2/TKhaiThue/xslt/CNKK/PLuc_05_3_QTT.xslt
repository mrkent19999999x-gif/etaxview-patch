<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK_QTT">	
		<xsl:variable name="pl03" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05-3/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THÔNG TIN NGƯỜI PHỤ THUỘC GIẢM TRỪ GIA CẢNH '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="3"><b>STT</b></td>
							<td class="align-c" rowspan="3"><b>Họ và tên người nộp thuế</b></td>
							<td class="align-c" rowspan="3"><b>MST của người nộp thuế</b></td>
							<td class="align-c" rowspan="3"><b>Họ và tên người phụ thuộc</b></td>
							<td class="align-c" rowspan="3"><b>Ngày sinh người phụ thuộc</b></td>
							<td class="align-c" rowspan="3"><b>MST của người phụ thuộc</b></td>
							<td class="align-c" rowspan="3"><b>Quốc tịch người phụ thuộc</b></td>
							<td class="align-c" rowspan="3"><b>CMND/ Hộ chiếu của người phụ thuộc </b></td>
							<td class="align-c" rowspan="3"><b>Quan hệ với người nộp thuế </b></td>
							<td class="align-c" colspan="6"><b>Thông tin trên giấy khai sinh của người phụ thuộc (Nếu người phụ thuộc không có MST, CMND và Hộ chiếu)</b></td>
							<td class="align-c" colspan="2"  rowspan="2"><b>Thời gian tính giảm trừ  </b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="2">Số</td>
							<td class="align-c" rowspan="2">Quyển số</td>
							<td colspan="4" align="c">Nơi đăng ký</td>
						</tr>
						<tr>
							<td class="align-c">Quốc gia</td>
							<td class="align-c">Tỉnh/ Thành phố</td>
							<td class="align-c">Quận/ Huyện</td>
							<td class="align-c">Phường / Xã</td>
							<td class="align-c">Từ tháng</td>
							<td class="align-c">Đến tháng</td>
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
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
						</tr>
					<xsl:for-each select="$pl03/BKeTTinNPT">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td><xsl:value-of select="ct09" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct10,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ct11"/></td>
							  <td><xsl:value-of select="ct12_ten" /></td>
							  <td><xsl:value-of select="ct13" /></td>
							  <td class="align-c"><xsl:value-of select="ct14_ten"/></td>
							  <td><xsl:value-of select="ct15" /></td>
							  <td><xsl:value-of select="ct16" /></td>
							  <td><xsl:value-of select="ct17_ten" /></td>
							  <td><xsl:value-of select="ct18_ten" /></td>
							  <td><xsl:value-of select="ct19_ten" /></td>
							  <td><xsl:value-of select="ct20_ten" /></td>
							  <td><xsl:value-of select="ct21" /></td>
							  <td><xsl:value-of select="ct22" /></td>
							</tr>
						</xsl:for-each>
					</table>
					<div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân)</i></div>
				</div>
			</div>
		</xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		 
	</xsl:template>		
</xsl:stylesheet>