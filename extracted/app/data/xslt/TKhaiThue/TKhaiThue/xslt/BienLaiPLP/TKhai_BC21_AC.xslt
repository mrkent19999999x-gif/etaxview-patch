<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 303/2016/TT-BTC ngày 15/11/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC21-BL">
		<xsl:with-param name="mauTKhai"   select="'BC21/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div>Căn cứ Biên bản mất, cháy, hỏng biên lai.</div>
            <div>Hồi <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayBLai,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayBLai,'mi')"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayBLai,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayBLai,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatChayBLai,'yyyy')"/>, (tổ chức, cá nhân) xảy ra việc mất, cháy, hỏng biên lai như sau: </div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên biên lai</b></td>
							<td class="align-c"><b>Mẫu số</b></td>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Từ số … đến số …</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Liên biên lai</b></td>
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
						</tr>
                        <xsl:for-each select="$tkchinh/BKeBLaiMatChay/ChiTietBKeBLaiMatChay">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMauBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuBienLai"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/> - <xsl:value-of select="denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="lienBLai"/></td>
								 <td class="align-l">
							      <xsl:variable name="ghiChu" select="ghiChu" />		
										
									<xsl:choose>
										
										<xsl:when test="$ghiChu = '02'">
										   Chưa sử dụng
										</xsl:when>										
										<xsl:when test="$ghiChu = '03'">
										   Đã viết nhưng chưa báo cáo sử dụng
										</xsl:when>
										<xsl:when test="$ghiChu = '04'">
										   Đã viết và đã báo cáo sử dụng 
										</xsl:when>
										
									</xsl:choose>
							    </td>
								
								
							</tr>
						</xsl:for-each>
			</table>
		<br/><div>Lý do mất, cháy, hỏng biên lai: <xsl:value-of select="$tkchinh/lyDoMatChayBLai"/></div>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>	  
	<xsl:call-template name="tkhaiFooter-BC21-BLai"/>  
		<div id="sigDiv"></div>
		</td>
		</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
