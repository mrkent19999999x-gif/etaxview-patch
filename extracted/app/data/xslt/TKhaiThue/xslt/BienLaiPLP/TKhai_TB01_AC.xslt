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
		 <xsl:call-template name="tkhaiHeader-TB01">
		<xsl:with-param name="mauTKhai"   select="'TB01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' '"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>5. Các loại biên lai đã phát hành: </b></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT </b></td>
							<td class="align-c" rowspan="2"><b>Tên loại biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu mẫu biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng</b></td>
							<td class="align-c" rowspan="2"><b>Từ số</b></td>
							<td class="align-c" rowspan="2"><b>Đến số</b></td>
							<td class="align-c" rowspan="2"><b>Ngày bắt đầu sử dụng</b></td>
							<td class="align-c" colspan="2"><b>Hợp đồng in/Hợp đồng cung ứng phần mềm tự in Biên lai</b></td>
							<td class="align-c" colspan="2"><b>Doanh nghiệp in hoặc cung ứng phần mềm in biên lai</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày</b></td>
							<td class="align-c"><b>Tên</b></td>
							<td class="align-c"><b>MST</b></td>
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
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/BKeBienLai/ChiTietBKeBienLai">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMauBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuBienLai"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayBDauSDung,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="soHDongInBLai"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayHDongInBLai,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ten"/></td>
								<td class="align-c"><xsl:value-of select="mst"/></td>
							</tr>
						</xsl:for-each>
			</table>
	        <br/>
	        <div><b>6. Tên cơ quan thuế tiếp nhận thông báo: </b> <xsl:value-of select="$tkchinh/tenCQTTNhanTBao"/></div><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  		
	    <xsl:call-template name="tkhaiFooter-TB01-BLai"/> 
<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
