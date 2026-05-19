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
		<xsl:with-param name="mauTKhai"   select="'TB04/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân kinh doanh phát hành hóa đơn đặt in, tự in)'"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayTBaoPHanhHDon,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayTBaoPHanhHDon,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayTBaoPHanhHDon,'yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đã có thông báo phát hành hoá đơn. Nay <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đăng ký thông tin thay đổi như sau:</div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT </b></td>
							<td class="align-c"><b>Thông tin thay đổi</b></td>
							<td class="align-c"><b>Thông tin cũ</b></td>
							<td class="align-c"><b>Thông tin mới</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/TTinThayDoi/ChiTietTTinThayDoi">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ihtkk:getTTThayDoi(thongTinThayDoi)"/></td>
								<td class="align-l"><xsl:value-of select="thongTinCu"/></td>
								<td class="align-l"><xsl:value-of select="thongTinMoi"/></td>
							</tr>
						</xsl:for-each>
			</table>
	        <br/>
	        <div><b>6. Thông tin đơn vị chủ quản (trường hợp tổ chức, cá nhân dùng hóa đơn của đơn vị chủ quản đặt in, tự in) </b></div><br/>
	        <div>- Tên đơn vị: <xsl:value-of select="$tkchinh/TTinDonViChuQuan/tenDViChuQuan"/></div><br/>
	        <div>- Mã số thuế: <xsl:value-of select="$tkchinh/TTinDonViChuQuan/mstDViChuQuan"/></div><br/>
	        <div><b>7. Tên cơ quan thuế tiếp nhận thông báo: </b> <xsl:value-of select="$tkchinh/tenCQTTiepNhanTBao"/></div><br/>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>	  
				<xsl:call-template name="tkhaiFooter-tb04ac"/>
				<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
