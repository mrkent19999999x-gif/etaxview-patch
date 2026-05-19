<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <!--<xsl:variable name="moTaBieuMau" select="" />-->
		 <xsl:call-template name="tkhaiHeader_05DK_TH_CBT">
		<!--<xsl:with-param name="mauTKhai"   select="'05-ĐK-TH-TCT'"/>-->
		<!--<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>-->
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
            <xsl:if test="$tkchinh/dangKyThue='true' or $tkchinh/dangKyThue='1'">
          	
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"> <b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Họ và tên người nộp thuế</b></td>
						<td class="align-c" rowspan="2"><b>Ngày sinh</b></td>
						<td class="align-c" rowspan="2"><b>Giới tính</b></td>
						<td class="align-c" rowspan="2"><b>Quốc tịch</b></td>
						<td class="align-c" rowspan="2"><b>Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</b></td>
						<td class="align-c" rowspan="2"><b>Số giấy tờ</b></td>
						<td class="align-c" rowspan="2"><b>Ngày cấp</b></td>
						<td class="align-c" rowspan="2"><b>Nơi cấp</b></td>
						<td class="align-c" colspan="5"><b>Địa chỉ nơi thường trú</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ hiện tại</b></td>
						<td class="align-c" rowspan="2"><b>Điện thoại liên hệ</b></td>
						<td class="align-c" rowspan="2"><b>Email</b></td>
					</tr>
				
					<tr>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
						<td class="align-c"><b>Quốc gia</b></td>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
					</tr>
                    <xsl:for-each select="$tkchinh/DSachCNDangkyMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct08"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct09,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct10"/></td>
							 <td class="align-c"><xsl:value-of select="ct11"/></td>
							 <td class="align-l"><xsl:value-of select="ct12_ten"/></td>
							 <td class="align-l"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="ct15_ten"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct18"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct21"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct20"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct19"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct22"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct23"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct26"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct24"/></td>
							 <td class="align-l"><xsl:value-of select="ct27"/></td>
							 <td class="align-l"><xsl:value-of select="ct28"/></td>
							</tr>
							</xsl:for-each>
						</table>
				  </xsl:if>
				  
				  <xsl:if test="$tkchinh/thayDoiTTin='true' or $tkchinh/thayDoiTTin='1'">
          	
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"> <b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Mã số thuế (ghi trong trường hợp thay đổi thông tin</b></td>
						<td class="align-c" rowspan="2"><b>Họ và tên người nộp thuế</b></td>
						<td class="align-c" rowspan="2"><b>Ngày sinh</b></td>
						<td class="align-c" rowspan="2"><b>Giới tính</b></td>
						<td class="align-c" rowspan="2"><b>Quốc tịch</b></td>
						<td class="align-c" rowspan="2"><b>Sống ở nước ngoài</b></td>
						<td class="align-c" rowspan="2"><b>CMND kê khai sai</b></td>
						<td class="align-c" rowspan="2"><b>Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</b></td>
						<td class="align-c" rowspan="2"><b>Số giấy tờ</b></td>
						<td class="align-c" rowspan="2"><b>Ngày cấp</b></td>
						<td class="align-c" rowspan="2"><b>Nơi cấp</b></td>
						<td class="align-c" colspan="5"><b>Địa chỉ nơi thường trú</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ hiện tại</b></td>
						<td class="align-c" rowspan="2"><b>Điện thoại liên hệ</b></td>
						<td class="align-c" rowspan="2"><b>Email</b></td>
					</tr>
				
					<tr>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
						<td class="align-c">Quốc gia</td>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
					</tr>
                    <xsl:for-each select="$tkchinh/DSachCNDangkyMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-c"><xsl:value-of select="ct07"/></td>
							 <td class="align-l"><xsl:value-of select="ct08"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct09,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct10"/></td>
							 <td class="align-c"><xsl:value-of select="ct11"/></td>
							 <td class="align-c">
							      <xsl:if test="songNuocNgoai = 'true'"> [x]</xsl:if>
							      <xsl:if test="songNuocNgoai = 'false'">[]</xsl:if>			
							      <xsl:if test="songNuocNgoai = '1'"> [x]</xsl:if>
							      <xsl:if test="songNuocNgoai = '0'">[]</xsl:if>				
							 </td>
							 <td class="align-c">
							      <xsl:if test="cmndKeKhaiSai = 'true'"> [x]</xsl:if>
							      <xsl:if test="cmndKeKhaiSai = 'false'">[]</xsl:if>			
							      <xsl:if test="cmndKeKhaiSai = '1'"> [x]</xsl:if>
							      <xsl:if test="cmndKeKhaiSai = '0'">[]</xsl:if>				
							 </td>
							 <td class="align-l"><xsl:value-of select="ct12_ten"/></td>
							 <td class="align-l"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="ct15_ten"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct18"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct21"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct20"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct19"/></td>
							 <td class="align-l"><xsl:value-of select="DChokhau/ct22"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct23"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct26"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCcutru/ct24"/></td>
							 <td class="align-l"><xsl:value-of select="ct27"/></td>
							 <td class="align-l"><xsl:value-of select="ct28"/></td>
							</tr>
							</xsl:for-each>
						</table>
				  </xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_05DK_TH_CBT"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

