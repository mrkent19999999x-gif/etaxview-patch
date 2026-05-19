<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 39/2014/TT-BTC ngày 31/3/2014 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-TB03">
		<xsl:with-param name="mauTKhai"   select="'TB03/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <br/>
            <div>Phương pháp hủy hóa đơn: <xsl:value-of select="$tkchinh/phuongPhapHuy"/></div><br/>
            <div>Hồi <xsl:value-of select="ihtkk:stringDatetime($tkchinh/thoiGian,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tkchinh/thoiGian,'mi')"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/thoiGian,'dd/mm/yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> thông báo hủy hóa đơn như sau: </div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT </b></td>
							<td class="align-c"><b>Tên loại hóa đơn</b></td>
							<td class="align-c"><b>Mẫu số</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenHDon"/></td>
								<td class="align-c"><xsl:value-of select="mauHDon"/></td>
								<td class="align-c"><xsl:value-of select="kyHieu"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
							</tr>
						</xsl:for-each>
			</table>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>	  
				<xsl:call-template name="tkhaiFooter-bc26ac"/>
				<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
