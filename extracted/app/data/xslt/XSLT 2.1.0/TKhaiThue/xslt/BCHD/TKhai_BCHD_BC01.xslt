<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 26/2015/TT-BTC ngày 27/2/2015 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BC01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
	<div class="ndungtkhai_div">
    <div class="content">
	        <div>Kỳ báo cáo cuối cùng 
		                    <xsl:if test="$tkchinh/kyBaoCaoCuoiCung = 'true'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/kyBaoCaoCuoiCung = 'false'">[]</xsl:if>			
							 <xsl:if test="$tkchinh/kyBaoCaoCuoiCung = '1'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/kyBaoCaoCuoiCung = '0'">[]</xsl:if>		        
	        </div>
	        <table>
				<tr>
					<td>Ngày đầu kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayDauKyBaoCao,'dd/mm/yyyy')"/></td>
					<td>Ngày cuối kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCuoiKyBaoCao,'dd/mm/yyyy')"/></td>
				</tr>
			</table>
            <div class="align-r"><i>Đơn vị tính: Số</i></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" colspan="2"><b>Tổ chức, cá nhân đặt in/sử dụng phần mềm tự in hoá đơn</b></td>
							<td class="align-c" colspan="2"><b>Hợp đồng</b></td>
							<td class="align-c" rowspan="2"><b>Tên hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu mẫu hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Từ số</b></td>
							<td class="align-c" rowspan="2"><b>Đến số</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Mã số thuế </b></td>
							<td class="align-c"><b>Tên</b></td>
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
						</tr>
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="mst"/></td>
								<td class="align-l"><xsl:value-of select="ten"/></td>
								<td class="align-l"><xsl:value-of select="so"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay,'dd/mm/yyyy')"/></td>
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
        <xsl:call-template name="tkhaiFooter-bc01ac"/>
		<div id="sigDiv"></div>
		</td>
		</tr>
		</table>
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
