<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<!--<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 303/2016/TT-BTC ngày 15/11/2016 của Bộ Tài chính'" /> -->
		 <xsl:call-template name="tkhaiHeader-BienLaiTT303">
		<!--<xsl:with-param name="mauTKhai"   select="'TB01/AC'"/>
		
	<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' '"/> -->
	  </xsl:call-template>
		
		<div class="ndungtkhai_div">
            <div class="content">
              <br></br>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT </b></td>
							<td class="align-c"><b>Tên loại biên lai</b></td>
							<td class="align-c"><b>Ký hiệu mẫu</b></td>
							<td class="align-c"><b>Ký hiệu biên lai</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							</tr>
					
					          <xsl:for-each select="$tkchinh/BienLai/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiBLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMau"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuBLai"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-r"><xsl:value-of select="tuSo"/></td>
								<td class="align-r"><xsl:value-of select="denSo"/></td>
							
							</tr>
						</xsl:for-each>
			</table>

<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  		
	    <xsl:call-template name="tkhaiFooter_BienLaiTT303"/> 
<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
