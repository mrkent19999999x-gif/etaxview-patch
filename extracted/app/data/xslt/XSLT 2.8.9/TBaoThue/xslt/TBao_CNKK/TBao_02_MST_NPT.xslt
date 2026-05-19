<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_02MST_NPT">
			<xsl:with-param name="mauTBao"   select="'02/TB-MST-NPT'"/>
			<xsl:with-param name="thongtuTBao"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		
			<div>Cục Thuế thông báo Mã số thuế người phụ thuộc của người nộp thuế như sau:</div> <br/>
			
			<table class="tkhai_table">
				<tr>
					<td class="align-c">STT</td>
					<td class="align-c">Tên người phụ thuộc</td>
					<td class="align-c">Mã số thuế người phụ thuộc</td>
					<td class="align-c">Ngày cấp mã số thuế</td>
				</tr>
				<xsl:for-each select="$ndungTBao/BKeMSTCuaNPT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="tenNPT"/></td>
								<td class="align-c"><xsl:value-of select="mSTNPT"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayCapMST,'dd/mm/yyyy')"/></td>
	         				</tr>	
	         		</xsl:for-each>	
			</table> <br/>
			<div>Yêu cầu người nộp thuế phải sử dụng Mã số thuế người phụ thuộc theo đúng quy định kể từ ngày nhận được thông báo này./.</div>	<br/>
			<xsl:call-template name="tbaoFooter"/>
			<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>