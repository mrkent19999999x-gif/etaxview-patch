<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 105/TT-BTC ngày 03/12/2020 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_20DK_TH_105">
		<xsl:with-param name="mauTKhai"   select="'20-ĐK-TH-TCT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
            <xsl:if test="$tkchinh/dangKyThue='true' or $tkchinh/dangKyThue='1'">
          		<td><b>I. Người phụ thuộc đăng ký thuế bằng CMND/CCCD/Hộ chiếu:</b></td>
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2">STT</td>
						<td class="align-c" rowspan="2">Họ và tên người nộp thuế</td>
						<td class="align-c" rowspan="2">Ngày sinh</td>
						<td class="align-c" rowspan="2">Quốc tịch</td>
						<td class="align-c" rowspan="2">Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</td>
						<td class="align-c" rowspan="2">Số</td>
						<td class="align-c" rowspan="2">Ngày cấp</td>
						<td class="align-c" rowspan="2">Nơi cấp</td>
						<td class="align-c" colspan="4">Địa chỉ nơi thường trú</td>
						<td class="align-c" colspan="4">Địa chỉ hiện tại</td>
						<td class="align-c" rowspan="2"><b>Quan hệ với cá nhân có thu nhập được giảm trừ gia cảnh</b></td>
						<td class="align-c" rowspan="2"><b>Tên cá nhân có thu nhập</b></td>
						<td class="align-c" rowspan="2"><b>Mã số thuế của cá nhân có thu nhập</b></td>
					</tr>
					<tr>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
					</tr>	
					<tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							   <td class="align-c">(10)</td>
							   <td class="align-c">(11)</td>
							   <td class="align-c">(12)</td>
							   <td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(15)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>
							   <td class="align-c">(19)</td>
							   <td class="align-c">(20)</td>
					</tr>
					<xsl:for-each select="$tkchinh/DSachNPTDaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct5"/></td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_ten"/></td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_soGiayTo"/></td>
							 <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(CT6/ct6_ngayCap,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="CT6/ct6_noiCap_ten"/></td>
							 
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct28"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct27"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct26"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct29"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct32"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct31"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct30"/></td>
							 <td class="align-l"><xsl:value-of select="ct7"/></td>
							 <td class="align-l"><xsl:value-of select="ct8"/></td>
							 <td class="align-l"><xsl:value-of select="ct9"/></td>
							</tr>
							</xsl:for-each>
						</table>
				
					<td><b>II. Người phụ thuộc đăng ký thuế bằng giấy khai sinh:</b></td>
					<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="3">STT</td>
						<td class="align-c" rowspan="3">Họ và tên</td>
						<td class="align-c" colspan="7">Thông tin trên giấy khai sinh</td>
						
						<td class="align-c" rowspan="3">Quốc tịch</td>
						<td class="align-c" rowspan="3">Quan hệ với cá nhân có thu nhập được giảm trừ gia cảnh</td>
						<td class="align-c" rowspan="3">Tên cá nhân có thu nhập</td>
						<td class="align-c" rowspan="3">MST của cá nhân có thu nhập</td>
						</tr>
					<tr>
						<td class="align-c" rowspan="2">Ngày sinh</td>
						<td class="align-c" rowspan="2">Số</td>
						<td class="align-c" rowspan="2">Ngày cấp</td>
						<td class="align-c" colspan="4">Nơi đăng ký</td>
					</tr>
					<tr>
						<td class="align-c">Quốc gia</td>
						<td class="align-c">Tỉnh, thành phố</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Xã, phường</td>
					</tr>
					<tr>
							   <td class="align-c">(21)</td>
							   <td class="align-c">(22)</td>
							   <td class="align-c">(23)</td>
							   <td class="align-c">(24)</td>
							   <td class="align-c">(25)</td>
							   <td class="align-c">(26)</td>
							   <td class="align-c">(27)</td>
							   <td class="align-c">(28)</td>
							   <td class="align-c">(29)</td>
							   <td class="align-c">(30)</td>
							   <td class="align-c">(31)</td>
							   <td class="align-c">(32)</td>
							   <td class="align-c">(33)</td>
							   <td class="align-c">(34)</td>
					</tr>
			<xsl:for-each select="$tkchinh/DSachNPTChuaCoMST">
							<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct15"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct16,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct17"/></td>
							 <td class="align-l"><xsl:value-of select="ct18"/></td>
							 
							 <td class="align-l"><xsl:value-of select="ct19"/></td>
							 <td class="align-l"><xsl:value-of select="ct20"/></td>
							 <td class="align-l"><xsl:value-of select="ct21"/></td>
							 <td class="align-l"><xsl:value-of select="ct22"/></td>
							 <td class="align-l"><xsl:value-of select="ct23"/></td>
							 <td class="align-l"><xsl:value-of select="ct24"/></td>
						</tr>
							</xsl:for-each>
						</table>
				  </xsl:if>
				  
				  <xsl:if test="$tkchinh/thayDoiTTin='true' or $tkchinh/thayDoiTTin='1'">
          	<td><b>I. Người phụ thuộc đăng ký thuế bằng CMND/CCCD/Hộ chiếu:</b></td>
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2">STT</td>
						<td class="align-c" rowspan="2">Họ và tên người nộp thuế</td>
						<td class="align-c" rowspan="2">MST (ghi trong trường hợp thay đổi thông tin)</td>
						<td class="align-c" rowspan="2">Ngày sinh</td>
						<td class="align-c" rowspan="2">Quốc tịch</td>
						<td class="align-c" rowspan="2">CMND kê khai sai</td>
						<td class="align-c" rowspan="2">Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</td>
						<td class="align-c" rowspan="2">Số</td>
						<td class="align-c" rowspan="2">Ngày cấp</td>
						<td class="align-c" rowspan="2">Nơi cấp</td>
						<td class="align-c" colspan="4">Địa chỉ nơi thường trú</td>
						<td class="align-c" colspan="4">Địa chỉ hiện tại</td>
						<td class="align-c" rowspan="2"><b>Quan hệ với cá nhân có thu nhập được giảm trừ gia cảnh</b></td>
						<td class="align-c" rowspan="2"><b>Tên cá nhân có thu nhập</b></td>
						<td class="align-c" rowspan="2"><b>Mã số thuế của cá nhân có thu nhập</b></td>
					</tr>
					<tr>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
						<td class="align-c">Số nhà/ đường phố</td>
						<td class="align-c">Xã, phường</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Tỉnh, thành phố</td>
					</tr>
					<tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							   <td class="align-c">(10)</td>
							   <td class="align-c">(11)</td>
							   <td class="align-c">(12)</td>
							   <td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(15)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>
							   <td class="align-c">(19)</td>
							   <td class="align-c">(20)</td>
							   <td class="align-c">(21)</td>
							   
					</tr>
                    <xsl:for-each select="$tkchinh/DSachNPTDaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							 <td class="align-c"><xsl:value-of select="ct2"/></td>
							 <td class="align-l"><xsl:value-of select="ct4"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct5"/></td>
							 <td class="align-c">
							      <xsl:if test="cmndKeKhaiSai = 'true'"> [x]</xsl:if>
							      <xsl:if test="cmndKeKhaiSai = 'false'">[]</xsl:if>			
							      <xsl:if test="cmndKeKhaiSai = '1'"> [x]</xsl:if>
							      <xsl:if test="cmndKeKhaiSai = '0'">[]</xsl:if>				
							 </td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_ten"/></td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_soGiayTo"/></td>
							 <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(CT6/ct6_ngayCap,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="CT6/ct6_noiCap_ten"/></td>
							 
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct28"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct27"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct26"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct29"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct32"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct31"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct30"/></td>
							 <td class="align-l"><xsl:value-of select="ct7"/></td>
							 <td class="align-l"><xsl:value-of select="ct8"/></td>
							 <td class="align-l"><xsl:value-of select="ct9"/></td>
							</tr>
		
							</xsl:for-each>
							</table>
							<td><b>II. Người phụ thuộc đăng ký thuế bằng giấy khai sinh:</b></td>
				<table class="tkhai_table">
				<tr>
						<td class="align-c" rowspan="3">STT</td>
						<td class="align-c" rowspan="3">Họ và tên</td>
						<td class="align-c" colspan="7">Thông tin trên giấy khai sinh</td>
						
						<td class="align-c" rowspan="3">Quốc tịch</td>
						<td class="align-c" rowspan="3">Quan hệ với cá nhân có thu nhập được giảm trừ gia cảnh</td>
						<td class="align-c" rowspan="3">Tên cá nhân có thu nhập</td>
						<td class="align-c" rowspan="3">MST của cá nhân có thu nhập</td>
						</tr>
					<tr>
						<td class="align-c" rowspan="2">Ngày sinh</td>
						<td class="align-c" rowspan="2">Số</td>
						<td class="align-c" rowspan="2">Ngày cấp</td>
						<td class="align-c" colspan="4">Nơi đăng ký</td>
					</tr>
					<tr>
						<td class="align-c">Quốc gia</td>
						<td class="align-c">Tỉnh, thành phố</td>
						<td class="align-c">Quận, huyện</td>
						<td class="align-c">Xã, phường</td>
					</tr>
					<tr>
							   <td class="align-c">(22)</td>
							   <td class="align-c">(23)</td>
							   <td class="align-c">(24)</td>
							   <td class="align-c">(25)</td>
							   <td class="align-c">(26)</td>
							   <td class="align-c">(27)</td>
							   <td class="align-c">(28)</td>
							   <td class="align-c">(29)</td>
							   <td class="align-c">(30)</td>
							   <td class="align-c">(31)</td>
							   <td class="align-c">(32)</td>
							   <td class="align-c">(33)</td>
							   <td class="align-c">(34)</td>
							   
					</tr>
							<xsl:for-each select="$tkchinh/DSachNPTChuaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct15"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct16,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct17"/></td>
							 <td class="align-l"><xsl:value-of select="ct18"/></td>
							 
							 <td class="align-l"><xsl:value-of select="ct19"/></td>
							 <td class="align-l"><xsl:value-of select="ct20"/></td>
							 <td class="align-l"><xsl:value-of select="ct21"/></td>
							 <td class="align-l"><xsl:value-of select="ct22"/></td>
							 <td class="align-l"><xsl:value-of select="ct23"/></td>
							 <td class="align-l"><xsl:value-of select="ct24"/></td>
							</tr>
							</xsl:for-each>
						</table>
				  </xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_20DK_TH"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

