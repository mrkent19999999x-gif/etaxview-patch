<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK_QTT">	
		<xsl:variable name="pl03" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_3_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc_tt80">
		<xsl:with-param name="mauTKhai"   select="'05-3/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT NGƯỜI PHỤ THUỘC GIẢM TRỪ GIA CẢNH'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên người nộp thuế là người lao động tại tổ chức trả thu nhập </b></td>
							<td class="align-c" rowspan="2"><b>MST của người nộp thuế là người lao động tại tổ chức trả thu nhập</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên người phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>Ngày sinh người phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>MST của người phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>Loại giấy tờ (Số CMND/ CCCD/Hộ chiếu/GKS) người phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>Số giấy tờ </b></td>
							<td class="align-c" rowspan="2"><b>Quan hệ với người nộp thuế </b></td>
							<td class="align-c" colspan="2"><b>Thời gian tính giảm trừ trong năm tính thuế</b></td>
							
						</tr>
						<tr>
							<td class="align-c" rowspan="1"><b>Từ tháng</b></td>
							<td class="align-c" rowspan="1"><b>Đến tháng</b></td>
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
							</tr>
						</xsl:for-each>
					</table>
					<div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân; CCCD: Căn cước công dân, GKS: Giấy khai sinh)</i></div>
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