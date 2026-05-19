<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/PLuc_3.10' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 39/2014/TT-BTC ngày 31/03/2014 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BK01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">	
			<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên loại hóa đơn</b></td>
							<td class="align-c"><b>Ký hiệu mẫu</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>							
						</tr>		
                        <xsl:for-each select="$tkchinh/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenHoaDon"/></td>
								<td class="align-r"><xsl:value-of select="kyHieuMau"/></td>
								<td class="align-r"><xsl:value-of select="kyHieuHD"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>									
							</tr>
						</xsl:for-each>
			      </table>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
			<td>	  
			<div><b><br/>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</b></div><br/>
			<xsl:call-template name="tkhaiFooter-bc26ac"/>
			<div id="sigDiv"></div>
			</td>
		</tr>
		<table>
	    </div>
	    </div>

	<!--end phu luc BK01/AC-->
	    <br/>
		<br/>
		<br/>
	</xsl:template>		
</xsl:stylesheet>
