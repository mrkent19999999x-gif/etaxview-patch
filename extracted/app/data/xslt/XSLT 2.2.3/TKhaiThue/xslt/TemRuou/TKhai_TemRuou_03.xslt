<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 160/2013/TT-BTC ngày 14/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_TemRuou">
		<xsl:with-param name="mauTKhai"   select="'03'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Ký hiệu mẫu</b></td>
							<td class="align-c"><b>Tên tem rượu</b></td>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Từ số - Đên số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Ghi chú</b></td>
							
							</tr>
							<tr>
							<td class="align-c"><i>(1)</i></td>
							<td class="align-c"><i>(2)</i></td>
							<td class="align-c"><i>(3)</i></td>
							<td class="align-c"><i>(4)</i></td>
							<td class="align-c"><i>(5)</i></td>
							<td class="align-c"><i>(6)</i></td>
							<td class="align-c"><i>(7)</i></td>
						</tr>
						<div>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatTemRuou,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatTemRuou,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayMatTemRuou,'yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> phát hiện bị mất tem rượu như sau:</div>
				<xsl:for-each select="$tkchinh/BangKe/ChiTietBangKe">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5a)"/> - <xsl:value-of select="ihtkk:formatNumber(ct5b)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-l">
										<xsl:variable name="ct7" select="ct7" />		
									<xsl:choose>
										<xsl:when test="$ct7 =  '02'">
										  Chưa sử dụng
										</xsl:when>
										<xsl:when test="$ct7 = '03'">
										   Đã dùng nhưng chưa báo cáo sử dụng
										</xsl:when>										
										<xsl:when test="$ct7 = '04'">
										   Đã dùng và đã báo cáo sử dụng
										</xsl:when>
										
									</xsl:choose>
							    </td>
							</tr>
						</xsl:for-each>
									</table> <br/>
						<div>Lý do mất tem rượu: <xsl:value-of select="$tkchinh/lyDoMat"/></div>
                        <div>Nay đơn vị báo cáo với <xsl:value-of select="$tkchinh/tenCQTTiepNhan"/> để phối hợp truy tìm, ngăn chặn lợi dụng và thông báo số tem rượu trên không còn giá trị sử dụng.</div>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>	  
        <xsl:call-template name="tkhaiFooter_TemRuou_03"/> 
		<div id="sigDiv"></div>
		<div><i>(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân sản xuất rượu</i></div>
		</td>
		</tr>
		</table>	
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
