<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TCtrathunhap' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_01_TNCN">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c" colspan="12"> <b></b></td>
						<td class="align-c" colspan="5"><b>Địa chỉ đăng ký theo hộ khẩu</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ cư trú</b></td>
						<td class="align-c" colspan="3"><b></b></td>
					</tr>
					<tr>
						<td class="align-c">STT</td>
						<td class="align-c">Mã số thuế</td>
						<td class="align-c">Họ và tên</td>
						<td class="align-c">Ngày sinh</td>
						<td class="align-c">Giới tính</td>
						<td class="align-c">Quốc tịch</td>
						<td class="align-c">Số chứng minh thư</td>
						<td class="align-c">Ngày cấp</td>
						<td class="align-c">Nơi cấp</td>
						<td class="align-c">Số hộ chiếu</td>
						<td class="align-c">Ngày cấp</td>
						<td class="align-c">Nơi cấp</td>
						<td class="align-c">Số nhà/đường phố, thôn xóm</td>
						<td class="align-c">Tỉnh/Thành phố</td>
						<td class="align-c">Quận/Huyện</td>
						<td class="align-c">Xã/Phường</td>
						<td class="align-c">Quốc gia</td>
						<td class="align-c">Số nhà/đường phố, thôn xóm</td>
						<td class="align-c">Tỉnh/Thành phố</td>
						<td class="align-c">Quận/Huyện</td>
						<td class="align-c">Xã/Phường</td>
						<td class="align-c">Điện thoại liên hệ</td>
						<td class="align-c">Email</td>
						<td class="align-c">Ngày đăng ký</td>
					</tr>
					<xsl:for-each select="$tkchinh/DSachCNDangkyMST">
									<xsl:variable name="currentRows" select='position()' />
					<tr>
					     <td class="align-c"><xsl:value-of select="$currentRows" /></td>
						<td class="align-c"><xsl:value-of select="ct07"/></td>
						<td class="align-l"><xsl:value-of select="ct08"/></td>
						<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct09, 'dd/mm/yyyy')"/></td>
						<td class="align-c"><xsl:value-of select="ct10"/></td>
						<td class="align-l"><xsl:value-of select="ct11"/></td>
						<td class="align-l"><xsl:value-of select="ct12"/></td>
						<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct13, 'dd/mm/yyyy')"/></td>
						<td class="align-l"><xsl:value-of select="ct14"/></td>
						<td class="align-l"><xsl:value-of select="ct15"/></td>
						<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct16, 'dd/mm/yyyy')"/></td>
						<td class="align-l"><xsl:value-of select="ct17"/></td>
						<td class="align-l"><xsl:value-of select="DChokhau/ct18"/></td>
						<td class="align-l"><xsl:value-of select="DChokhau/ct19"/></td>
						<td class="align-l"><xsl:value-of select="DChokhau/ct20"/></td>
						<td class="align-l"><xsl:value-of select="DChokhau/ct21"/></td>
						<td class="align-l"><xsl:value-of select="DChokhau/ct22"/></td>
						<td class="align-l"><xsl:value-of select="DCcutru/ct23"/></td>
						<td class="align-l"><xsl:value-of select="DCcutru/ct24"/></td>
						<td class="align-l"><xsl:value-of select="DCcutru/ct25"/></td>
						<td class="align-l"><xsl:value-of select="DCcutru/ct26"/></td>
						<td class="align-l"><xsl:value-of select="ct27"/></td>
						<td class="align-l"><xsl:value-of select="ct28"/></td>
						<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct29, 'dd/mm/yyyy')"/></td>
					</tr>
					</xsl:for-each>	
				</table>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   

	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

