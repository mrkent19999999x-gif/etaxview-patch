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
		 <xsl:call-template name="tkhaiHeader-TB01">
		<xsl:with-param name="mauTKhai"   select="'TB01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân kinh doanh đặt in, tự in)'"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>5. Các loại hóa đơn phát hành: </b></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT </b></td>
							<td class="align-c" rowspan="2"><b>Tên loại hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Mẫu số</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng</b></td>
							<td class="align-c" rowspan="2"><b>Từ số</b></td>
							<td class="align-c" rowspan="2"><b>Đến số</b></td>
							<td class="align-c" rowspan="2"><b>Ngày bắt đầu sử dụng</b></td>
							<td class="align-c" colspan="2"><b>Doanh nghiệp in/Doanh nghiệp cung cấp phần mềm</b></td>
							<td class="align-c" colspan="2"><b>Hợp đồng đặt in/cung cấp phần mềm</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Tên</b></td>
							<td class="align-c"><b>MST</b></td>
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
								<td class="align-l"><xsl:value-of select="DoanhNghiepIn/ten"/></td>
								<td class="align-c"><xsl:value-of select="DoanhNghiepIn/mst"/></td>
								<td class="align-l"><xsl:value-of select="HopDongDatIn/so"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(HopDongDatIn/ngay,'dd/mm/yyyy')"/></td>
							</tr>
						</xsl:for-each>
			</table>
	        <br/>
	        <div><b>6. Thông tin đơn vị chủ quản (trường hợp tổ chức, cá nhân dùng hóa đơn của đơn vị chủ quản đặt in, tự in) </b></div><br/>
	        <div>- Tên đơn vị: <xsl:value-of select="$tkchinh/DonViChuQuan/ten"/></div><br/>
	        <div>- Mã số thuế: <xsl:value-of select="$tkchinh/DonViChuQuan/mst"/></div><br/>
	        <div><b>7. Tên cơ quan thuế tiếp nhận thông báo: </b> <xsl:value-of select="$tkchinh/tenCQTTiepNhan"/></div><br/>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
			<td>	  
	    <xsl:call-template name="tkhaiFooter-tb01ac"/>
		<div id="sigDiv"></div>
			</td>
			</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
