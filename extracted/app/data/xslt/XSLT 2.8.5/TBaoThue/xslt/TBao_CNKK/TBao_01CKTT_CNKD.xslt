<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">,
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)
'" />
		<xsl:call-template name="tbaoHeader_01_CKTT_CNKD">
			<xsl:with-param name="mauTBao"   select="'01/CKTT-CNKD'"/>

			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		
		
		<div>
		<div>Năm: <xsl:value-of select="$ndungTBao/nam" /></div>
		<div>Công khai mức dự kiến : [<xsl:if test="$ndungTBao/congKhaiMucDKien='true'">x</xsl:if>] </div>
		<div>Công khai mức chính thức : [<xsl:if test="$ndungTBao/congKhaiMucCThuc='true'">x</xsl:if>]  </div>
		
		
		
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"><b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Tên hộ kinh doanh</b></td>
						<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
						<td class="align-c" rowspan="2"><b>Địa chỉ kinh doanh</b></td>
						<td class="align-c" rowspan="2"><b>Ngành nghề kinh doanh</b></td>
						<td class="align-c" colspan="2"><b>Cá nhân kê khai</b></td>
						<td class="align-c" colspan="2"><b>Cơ quan thuế tính</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Doanh thu</b></td>
						<td class="align-c"><b>Thuế phải nộp</b></td>
						<td class="align-c"><b>Doanh thu</b></td>
						<td class="align-c"><b>Thuế phải nộp</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>[01]</b></td>
						<td class="align-c"><b>[02]</b></td>
						<td class="align-c"><b>[03]</b></td>
						<td class="align-c"><b>[04]</b></td>
						<td class="align-c"><b>[05]</b></td>
						<td class="align-c"><b>[06]</b></td>
						<td class="align-c"><b>[07]</b></td>
						<td class="align-c"><b>[08]</b></td>
						<td class="align-c"><b>[09]</b></td>
					</tr>
					
					<xsl:for-each select="$ndungTBao/BangCKhaiTTin/CTietBangCKhaiTTin">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct02" /></td>
							  <td class="align-c"><xsl:value-of select="ct03" /></td>		
							  	<td ><xsl:value-of select="ct04"/></td>	
							  	<td><xsl:value-of select="ct05"/></td>	
							  	<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct06)"/></td>		
							   <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>		
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct08)"/></td>		
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>		
							  </tr>
							</xsl:for-each>	
				</table>
</div>
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
</xsl:template>		


</xsl:stylesheet>
