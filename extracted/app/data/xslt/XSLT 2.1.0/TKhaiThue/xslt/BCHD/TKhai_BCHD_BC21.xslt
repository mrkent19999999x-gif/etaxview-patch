<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 39/2014/TT-BTC  ngày 31/3/2014 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BC21/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div>Hồi <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayHongHD,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayHongHD,'mi')"/> phút, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayHongHD,'dd/mm/yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> phát hiện bị mất, cháy, hỏng hóa đơn như sau:</div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên loại hóa đơn</b></td>
							<td class="align-c"><b>Mẫu số</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Liên hóa đơn</b></td>
							<td class="align-c"><b>Ghi chú</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenHDon"/></td>
								<td class="align-c"><xsl:value-of select="mauHDon"/></td>
								<td class="align-c"><xsl:value-of select="kyHieu"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="lien"/></td>
							    <td class="align-l">
										<xsl:variable name="ghiChu" select="ghiChu" />		
										
									<xsl:choose>
										<xsl:when test="$ghiChu =  '01'">
										  Mất hóa đơn chưa TBPH
										</xsl:when>
										<xsl:when test="$ghiChu = '02'">
										   Mất hóa đơn chưa sử dụng
										</xsl:when>										
										<xsl:when test="$ghiChu = '03'">
										   Mất hóa đơn đã viết chưa báo cáo sử dụng
										</xsl:when>
										<xsl:when test="$ghiChu = '04'">
										   Mất hóa đơn đã viết và đã báo cáo sử dụng kỳ trước
										</xsl:when>
										<xsl:when test="$ghiChu = '05'">
										   Mất hóa đơn mua hàng
										</xsl:when>
									</xsl:choose>
							    </td>
							
							</tr>
						</xsl:for-each>
			</table>
		<br/><div>Lý do mất, cháy, hỏng hoá đơn: <xsl:value-of select="$tkchinh/lyDo"/></div>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>	  
        <xsl:call-template name="tkhaiFooter-bc21ac"/> 
		<div id="sigDiv"></div>
		</td>
		</tr>
		</table>	
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
