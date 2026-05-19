<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 32/2011/TT-BTC ngày 14/3/2011 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-TB01-HDDT">
		<xsl:with-param name="mauTKhai"   select="'TB01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>5. Các loại hóa đơn phát hành: </b></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT </b></td>
							<td class="align-c"><b>Tên loại hóa đơn</b></td>
							<td class="align-c"><b>Mẫu số</b></td>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Ngày bắt đầu sử dụng</b></td>
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
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenLoaiHDon"/></td>
								<td class="align-c"><xsl:value-of select="mauSo"/></td>
								<td class="align-c"><xsl:value-of select="kyHieu"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayBDauSDung,'dd/mm/yyyy')"/></td>
							</tr>
						</xsl:for-each>
			</table>
			</div>
			</div>
	        <br/>
	        <div><b>6. Tên cơ quan thuế tiếp nhận thông báo: </b> <xsl:value-of select="$tkchinh/tenCQTTiepNhan"/></div><br/>
	        		    <div>7. Ghi rõ “Đăng ký sử dụng dấu phân cách là dấu phẩy (,) sau chữ số hàng nghìn, triệu, tỷ, nghìn tỷ, triệu tỷ, tỷ tỷ và sử dụng dấu chấm (.) sau chữ số hàng đơn vị để ghi chữ số sau chữ số hàng đơn vị” trong trường hợp tổ chức khởi tạo hóa đơn điện tử sử dụng dấu phân cách là dấu phẩy (,) sau chữ số hàng nghìn, triệu, tỷ, nghìn tỷ, triệu tỷ, tỷ tỷ và sử dụng dấu chấm (.) sau chữ số hàng đơn vị. </div>
		<table style="page-break-inside: avoid;width:100%" >

			<tr>
			<td>	  
	    <xsl:call-template name="tkhaiFooter-tb01ac-hddt"/>
		<div id="sigDiv"></div>
			</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
