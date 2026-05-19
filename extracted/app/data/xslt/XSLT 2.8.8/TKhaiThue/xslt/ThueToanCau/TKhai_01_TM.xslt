<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TM"/>	
		<xsl:variable name="pl01_tm" select='HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TM' />
		<xsl:call-template name="tkhaiHeader_01_TM">
			<xsl:with-param name="mauTKhai"   select="'01/TM'"/>
		</xsl:call-template>
	    
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[09] Đồng tiền sử dụng lập Báo cáo tài chính hợp nhất của công ty mẹ tối cao: </b> <xsl:value-of select="$tkchinh/ten_DonViTien"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$pl01_tm/giam_TruTrachNhiem= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2612;</xsl:if>
				<xsl:if test="$pl01_tm/giam_TruTrachNhiem= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2610;</xsl:if>
					
				<xsl:if test="$pl01_tm/giam_TruTrachNhiem= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2612;</xsl:if>
				<xsl:if test="$pl01_tm/giam_TruTrachNhiem= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2610;</xsl:if>
			</label>
		</div><br/>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>TT</b></td>
				<td class="align-c"><b>Mã số thuế đơn vị hợp thành</b></td>
				<td class="align-c"><b>Tên đơn vị hợp thành</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã số chỉ tiêu</b></td>
				<td class="align-c"><b>Số liệu trên Báo cáo tài chính của đơn vị hợp thành</b></td>
				<td class="align-c"><b>Số liệu trên Báo cáo số liệu tài chính phục vụ mục đích hợp nhất của Công ty mẹ tối cao</b></td>
				<td class="align-c"><b>Chênh lệch</b></td>
				<td class="align-c"><b>Nguyên nhân chênh lệch</b></td>
			</tr>
			<tr>
				<td class="align-c">(1)</td>
				<td class="align-c">(2)</td>
				<td class="align-c">(3)</td>
				<td class="align-c">(4)</td>
				<td class="align-c">(5)</td>
				<td class="align-c">(6)</td>
				<td class="align-c">(7)</td>
				<td class="align-c">(8) = (7) - (6)</td>
				<td class="align-c">(9)</td>
			</tr>				
			<xsl:for-each select="$pl01_tm/ChiTiet">
			<xsl:variable name="currentRows1" select='position()'/>																
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
				<td class="align-c"><xsl:value-of select="mst_DVHT"/></td>
				<td class="align-j"><xsl:value-of select="ten_DVHT"/></td>
				<td class="align-j"><xsl:value-of select="ten_ChiTieu"/></td>
				<td class="align-j"><xsl:value-of select="ma_ChiTieu"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLieu_DVHT)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLieu_CongTyMe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_ChenhLech)"/></td>
				<td class="align-j"><xsl:value-of select="nguyen_NhanChenhLech"/></td>
			</tr>														 
			</xsl:for-each>
		</table><br/>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan số liệu, tài liệu khai trên là đúng và chịu trách nhiệm 
		trước pháp luật về những số liệu, tài liệu đã khai.</div>
		
		<xsl:call-template name="tkhaiFooter_01_TM"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>
