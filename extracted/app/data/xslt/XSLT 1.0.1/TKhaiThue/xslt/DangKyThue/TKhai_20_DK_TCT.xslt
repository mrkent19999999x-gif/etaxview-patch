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
		 <xsl:call-template name="tkhaiHeader_20DK_TCT_105">
		<xsl:with-param name="mauTKhai"   select="'20-ĐK-TCT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
            <xsl:if test="$tkchinh/dangKyThue='true' or $tkchinh/dangKyThue='1'">
          		<td><b>I. Người phụ thuộc đăng ký thuế bằng CMND/CCCD/Hộ chiếu:</b></td>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Họ và tên người phụ thuộc</b></td>
						<td class="align-c"><b>Ngày sinh</b></td>
						<td class="align-c"><b>Quốc tịch</b></td>
						<td class="align-c"><b>Sống ở nước ngoài</b></td>
						<td class="align-c"><b>Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</b></td>
						<td class="align-c"><b>Số</b></td>
						<td class="align-c"><b>Ngày cấp</b></td>
						<td class="align-c"><b>Nơi cấp</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ nơi thường trú</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ hiện tại</b></td>
						<td class="align-c"><b>Quan hệ với người nộp thuế</b></td>
					</tr>
					<!--<tr>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành</b></td>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
					</tr>-->
					<tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c"> </td>
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							   <td class="align-c" colspan="4">(10)</td>
							   <td class="align-c" colspan="4">(11)</td>
							   <td class="align-c">(12)</td>
							   <!--<td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(15)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>-->
					</tr>
					<xsl:for-each select="$tkchinh/DSachNPTDaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct5"/></td>
							 <td class="align-c">
							      <xsl:if test="songNuocNgoai = 'true'"> [x]</xsl:if>
							      <xsl:if test="songNuocNgoai = 'false'">[]</xsl:if>			
							      <xsl:if test="songNuocNgoai = '1'"> [x]</xsl:if>
							      <xsl:if test="songNuocNgoai = '0'">[]</xsl:if>				
							 </td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_ten"/></td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_soGiayTo"/></td>
							 <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(CT6/ct6_ngayCap,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="CT6/ct6_noiCap_ten"/></td>
							 <td class="align-c" colspan="4">
							<lable><xsl:value-of select="DCThuongTru/ct21" />, <xsl:value-of select="DCThuongTru/ct24"/>, <xsl:value-of select="DCThuongTru/ct23" />, <xsl:value-of select="DCThuongTru/ct22"/></lable>
							 </td>
							<td class="align-c" colspan="4">
							<xsl:value-of select="DCHienTai/ct25" />, <xsl:value-of select="DCHienTai/ct28" />, <xsl:value-of select="DCHienTai/ct27" />, <xsl:value-of select="DCHienTai/ct26" /> 
							</td>
							 <!--<td class="align-l"><xsl:value-of select="DCThuongTru/ct21"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct24"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct23"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct22"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct28"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct27"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct26"/></td>-->
							 <td class="align-l"><xsl:value-of select="ct7"/></td>
							</tr>
					</xsl:for-each>
						</table>
				<br></br>
					<td><b>II. Người phụ thuộc đăng ký thuế bằng giấy khai sinh:</b></td>
				<br></br>
					<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="3"><b>STT</b></td>
						<td class="align-c" rowspan="3"><b>Họ và tên</b></td>
						<td class="align-c" colspan="7"><b>Thông tin trên giấy khai sinh</b></td>
						
						<td class="align-c" rowspan="3"><b>Quốc tịch</b></td>
						<td class="align-c" rowspan="3"><b>Quan hệ với người nộp thuế</b></td>
						</tr>
					<tr>
						<td class="align-c" rowspan="2"><b>Ngày sinh</b></td>
						<td class="align-c" rowspan="2"><b>Số</b></td>
						<td class="align-c" rowspan="2"><b>Ngày cấp</b></td>
						<td class="align-c" colspan="4"><b>Nơi đăng ký</b></td>
						
					</tr>
					<tr>
						<td class="align-c"><b>Quốc gia</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
					</tr>
					<tr>
								<td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>
							   <td class="align-c">(19)</td>
							   <td class="align-c">(20)</td>
							   <td class="align-c">(21)</td>
							   <td class="align-c">(22)</td>
							   <td class="align-c">(23)</td>
							   <td class="align-c">(24)</td>
							   
					</tr>
			<xsl:for-each select="$tkchinh/DSachNPTChuaCoMST">
							<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct11"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct12,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct15"/></td>
							 <td class="align-l"><xsl:value-of select="ct16"/></td>
							 
							 <td class="align-l"><xsl:value-of select="ct17"/></td>
							 <td class="align-l"><xsl:value-of select="ct18"/></td>
							 <td class="align-l"><xsl:value-of select="ct19"/></td>
							 <td class="align-l"><xsl:value-of select="ct20"/></td>
						</tr>
							</xsl:for-each>
						</table>
				  </xsl:if>
				  
				  <xsl:if test="$tkchinh/thayDoiTTin='true' or $tkchinh/thayDoiTTin='1'">
          	<td><b>I. Người phụ thuộc đăng ký thuế bằng CMND/CCCD/Hộ chiếu:</b></td>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Họ và tên người phụ thuộc</b></td>
						<td class="align-c"><b>Ngày sinh</b></td>
						<td class="align-c"><b>MST (nếu có)</b></td>
						<td class="align-c"><b>Quốc tịch</b></td>
						<td class="align-c"><b>Sống ở nước ngoài</b></td>
						<td class="align-c"><b>CMND kê khai sai</b></td>
						<td class="align-c"><b>Loại giấy tờ tùy thân của cá nhân (CMND/CCCD/Hộ chiếu)</b></td>
						<td class="align-c"><b>Số</b></td>
						<td class="align-c"><b>Ngày cấp</b></td>
						<td class="align-c"><b>Nơi cấp</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ nơi thường trú</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ hiện tại</b></td>
						<td class="align-c"><b>Quan hệ với người nộp thuế</b></td>
					</tr>
					<!--<tr>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
						<td class="align-c"><b>Số nhà/ đường phố</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
					</tr>-->
					<tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c"> </td>
							   <td class="align-c"> </td>
							    <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							   <td class="align-c" colspan="4">(10)</td>
							   <td class="align-c" colspan="4">(11)</td>
							   <td class="align-c">(12)</td>
							 <!--  <td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(15)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>
							   <td class="align-c">(19)</td>
							   <td class="align-c">(20)</td>-->
					</tr>
                    <xsl:for-each select="$tkchinh/DSachNPTDaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							 <td class="align-c"><xsl:value-of select="ct2"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="ct4"/></td>
							 <td class="align-c"><xsl:value-of select="ct5"/></td>
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
							 <td class="align-c"><xsl:value-of select="CT6/ct6_ten"/></td>
							 <td class="align-c"><xsl:value-of select="CT6/ct6_soGiayTo"/></td>
							 <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(CT6/ct6_ngayCap,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="CT6/ct6_noiCap_ten"/></td>
							 <td class="align-c" colspan="4">
							<lable><xsl:value-of select="DCThuongTru/ct21" />, <xsl:value-of select="DCThuongTru/ct24"/>, <xsl:value-of select="DCThuongTru/ct23" />, <xsl:value-of select="DCThuongTru/ct22"/>
							</lable>
							 </td>
							<td class="align-c" colspan="4">
							<xsl:value-of select="DCHienTai/ct25" />, <xsl:value-of select="DCHienTai/ct28" />, <xsl:value-of select="DCHienTai/ct27" />, <xsl:value-of select="DCHienTai/ct26" /> 
							</td>
							 <!--<td class="align-l"><xsl:value-of select="DCThuongTru/ct21"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct24"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct23"/></td>
							 <td class="align-l"><xsl:value-of select="DCThuongTru/ct22"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct25"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct28"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct27"/></td>
							 <td class="align-l"><xsl:value-of select="DCHienTai/ct26"/></td>-->
							 <td class="align-l"><xsl:value-of select="ct7"/></td>
							</tr>
		
							</xsl:for-each>
							</table>
							<br></br>
							<td><b>II. Người phụ thuộc đăng ký thuế bằng giấy khai sinh:  </b></td>
				<table class="tkhai_table">
				<tr>
						<td class="align-c" rowspan="3"><b>STT</b></td>
						<td class="align-c" rowspan="3"><b>Họ và tên</b></td>
						<td class="align-c" rowspan="3"><b>MST (nếu có)</b></td>
						<td class="align-c" colspan="7"><b>Thông tin trên giấy khai sinh</b></td>
						<td class="align-c" rowspan="3"><b>Quốc tịch</b></td>
						<td class="align-c" rowspan="3"><b>Quan hệ với người nộp thuế</b></td>
						</tr>
					<tr>
						<td class="align-c" rowspan="2"><b>Ngày sinh</b></td>
						<td class="align-c" rowspan="2"><b>Số</b></td>
						<td class="align-c" rowspan="2"><b>Ngày cấp</b></td>
						<td class="align-c" colspan="4"><b>Nơi đăng ký</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Quốc gia</b></td>
						<td class="align-c"><b>Tỉnh, thành phố</b></td>
						<td class="align-c"><b>Quận, huyện</b></td>
						<td class="align-c"><b>Xã, phường</b></td>
					</tr>
					<tr>
							   
							   <td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   <td class="align-c">(15)</td>
							   <td class="align-c">(16)</td>
							   <td class="align-c">(17)</td>
							   <td class="align-c">(18)</td>
							   <td class="align-c">(19)</td>
							   <td class="align-c">(20)</td>
							   <td class="align-c">(21)</td>
							   <td class="align-c">(22)</td>
							   <td class="align-c">(23)</td>
							   <td class="align-c">(24)</td>
							   
					</tr>
							<xsl:for-each select="$tkchinh/DSachNPTChuaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct11"/></td>
							 <td class="align-l"><xsl:value-of select="mst"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct12,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct13"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct16,'dd/mm/yyyy')"/></td>
							 <td class="align-c"><xsl:value-of select="ct14"/></td>
							 <td class="align-l"><xsl:value-of select="ct15"/></td>
							 
							 <td class="align-l"><xsl:value-of select="ct16"/></td>
							 <td class="align-l"><xsl:value-of select="ct17"/></td>
							 <td class="align-l"><xsl:value-of select="ct18"/></td>
							 <td class="align-l"><xsl:value-of select="ct19"/></td>
							 <td class="align-l"><xsl:value-of select="ct20"/></td>
							</tr>
							</xsl:for-each>
			
						</table>
				  </xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_20DK_TCT"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

