<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBao/DLTBao' />
		<xsl:variable name="NNhanTBaoThue" select='TBao/DLTBao/TNNT' />
<!-- 		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' /> -->
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định 70/2025/NĐ-CP ngày 20 tháng 3 năm 2025 của Bộ trưởng Bộ Tài chính'"/>
<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_107_TB_BSTT_PL">
			<xsl:with-param name="mauTBao"   select="'01/TB-BSTT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
		<table class="tkhai_table">
						<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ số tiêu chí</b></td>
							<td class="align-c"><b>Nội dung tiêu chí</b></td>
							<td class="align-c"><b>Kỳ tổng hợp dữ liệu/ Ngày phân tích</b></td>
							<td class="align-c"><b>Thông tin hệ thống</b></td>	
							<td class="align-c"><b>Số liệu giải trình (nếu có)</b></td>
							<td class="align-c"><b>Nội dung giải trình chi tiết (nếu có)</b></td>
						</tr>
						
				<xsl:for-each select="TBao/PLuc/NDGTBSung/NDGTBSCTiet">
						<xsl:variable name="currentRows1" select='position()'/>	
					    <xsl:for-each select="DSNDGTCSTChi/NDGTCSTCCTiet">
					    	<xsl:variable name="currentRows2" select='position()'/>	
					        <xsl:if test="$currentRows2 = 1">
								<tr>
						          <td rowspan="{last()+1}" class="align-l">
						            <xsl:value-of select="ancestor::NDGTBSCTiet[1]/MCSTChi"/>
						          </td>
						          <td rowspan="{last()+1}" class="align-l">
						            <xsl:value-of select="ancestor::NDGTBSCTiet[1]/TCSTChi"/>
						          </td>
								</tr>
					        </xsl:if>
					          <tr>
								<td class="align-c"><xsl:value-of select="TNDTChi"/></td>
								<td class="align-c"><xsl:value-of select="KTHDLieu"/></td>
								<td class="align-r"><xsl:value-of select="TTHThong"/></td>
								<td></td>
								<td></td>
					          </tr>
					       
					    </xsl:for-each>
				</xsl:for-each>
			</table>

		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>