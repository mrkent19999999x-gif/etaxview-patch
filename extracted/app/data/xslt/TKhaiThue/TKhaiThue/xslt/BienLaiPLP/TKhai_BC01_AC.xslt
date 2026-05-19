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
		 <xsl:call-template name="tkhaiHeader-BC01-BL">
		<xsl:with-param name="mauTKhai"   select="'BC01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
	<div class="ndungtkhai_div">
    <div class="content">
            <div class="align-r"><i>Đơn vị tính: Số</i></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="3"><b>Tổ chức, cá nhân đặt in/sử dụng phần mềm tự in biên lai/sử dụng giải pháp biên lai điện tử</b></td>
							<td class="align-c" colspan="2"><b>Hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu mẫu biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Tên loại biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu biên lai</b></td>
							<td class="align-c" rowspan="2"><b>Từ số</b></td>
							<td class="align-c" rowspan="2"><b>Đến số</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Mã số thuế </b></td>
							<td class="align-c"><b>Tên</b></td>
							<td class="align-c"><b>Địa chỉ</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày</b></td>
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
                        <xsl:for-each select="$tkchinh/BKeNhanInBienLai/CTietBKeNhanInBienLai">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="mst"/></td>
								<td class="align-l"><xsl:value-of select="ten"/></td>
								<td class="align-l"><xsl:value-of select="diaChi"/></td>
								<td class="align-l"><xsl:value-of select="soHopDong"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayHopDong,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMauBienLai"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuBienLai"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
							</tr>
						</xsl:for-each>
	    </table>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
        <xsl:call-template name="tkhaiFooter-BC01-BLai"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
