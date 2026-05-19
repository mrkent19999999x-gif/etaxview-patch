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
		 <xsl:call-template name="tkhaiHeader-BienLaiTT303_1">
		<!--<xsl:with-param name="mauTKhai"   select="'TB01/AC'"/>
		
	<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' '"/> -->
	  </xsl:call-template>
	  <br></br>
	  <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThangNam,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThangNam,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThangNam,'yyyy')"/>, (cơ quan thu phí, lệ phí) đã có 
 thông báo phát hành biên lai. Nay (cơ quan thu phí, lệ phí) đăng ký thông tin thay đổi như sau:
</div>
<br></br>
		<div class="ndungtkhai_div">
            <div class="content">
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT </b></td>
							<td class="align-c"><b>Thông tin thay đổi</b></td>
							<td class="align-c"><b>Thông tin cũ</b></td>
							<td class="align-c"><b>Thông tin mới</b></td>
						</tr>
					
					          <xsl:for-each select="$tkchinh/BienLai/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ttinThayDoi"/></td>
								<td class="align-l"><xsl:value-of select="tTinCu"/></td>
								<td class="align-l"><xsl:value-of select="tTinMoi"/></td>
							</tr>
						</xsl:for-each>
			</table>
			<br></br>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4. Tên cơ quan thuế tiếp nhận thông báo</b>: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div>

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
