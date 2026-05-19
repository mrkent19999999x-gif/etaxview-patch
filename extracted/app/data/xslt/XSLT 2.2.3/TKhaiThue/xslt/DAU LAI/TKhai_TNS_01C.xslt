<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Căn cứ Thông tư số 56/TT-BTC ngày 23/6/2008   của  BTC'" />
		 <xsl:call-template name="tkhaiHeader_01C_TNS">
		<xsl:with-param name="mauTKhai"   select="'01C/TNS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã chỉ tiêu</b></td>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Giá trị</b></td>
					</tr>
					<tr>
						<td class="align-c">1</td>
						<td>Khoản thu về hoa hồng dầu khí các loại</td>
						<td class="align-c">[24]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
					</tr>
					<tr>
						<td class="align-c">2</td>
						<td>Khoản thu về đọc và sử dụng tài liệu dầu khí</td>
						<td class="align-c">[25]</td>
						<td>USD</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
					</tr>
										</table>
					<xsl:call-template name="tkhaiFooter"/>
					<br/>
				
				<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>

				</div>

		</div>

	</xsl:template>		
</xsl:stylesheet>

