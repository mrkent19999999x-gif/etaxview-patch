<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-pluc-02-1-BK-QTT-TNCN_tt80">
		<xsl:with-param name="mauTKhai"   select="'02-1/BK-QTT-TNCN'"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT NGƯỜI PHỤ THUỘC GIẢM TRỪ GIA CẢNH'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập cá nhân Mẫu số 02/QTT-TNCN )'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">      
							
                     <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên </b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế </b></td>
							<td class="align-c" rowspan="2"><b>Loại giấy tờ (Số CMND/ CCCD/ Hộ chiếu/GKS)</b></td>
							<td class="align-c" rowspan="2"><b>Số giấy tờ</b></td>
							<td class="align-c" rowspan="2"><b>Ngày sinh</b></td>
							
							<td class="align-c" rowspan="2"><b>Quan hệ với người nộp thuế </b></td>
							<td class="align-c" colspan="2"><b>Thời gian tính giảm trừ trong năm tính thuế</b></td>
							
						</tr>
						<tr>
							<td class="align-c" rowspan="1"><b>Từ tháng</b></td>
							<td class="align-c" rowspan="1"><b>Đến tháng</b></td>
						</tr>
						
						<tr>
							
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
						</tr>
					<xsl:for-each select="$PL/CTiet">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct10" /></td>
							  <td class="align-c"><xsl:value-of select="ct11" /></td>
							  <td class="align-c"><xsl:value-of select="ct12_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct13"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ct15_ten"/></td>
							  <td><xsl:value-of select="ct16" /></td>
							  <td><xsl:value-of select="ct17" /></td>
							</tr>
						</xsl:for-each>
					</table>
					<div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân; CCCD: Căn cước công dân, GKS: Giấy khai sinh)</i></div>
				</div>
			</div>
		<xsl:call-template name="tkhaiFooter"></xsl:call-template>
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>