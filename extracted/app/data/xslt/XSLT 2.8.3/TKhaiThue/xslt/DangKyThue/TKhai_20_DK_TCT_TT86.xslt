<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_20DK_TCT_105">
		<xsl:with-param name="mauTKhai"   select="'20-ĐK-TCT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
            <div class="content">
            
          		
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Họ và tên người phụ thuộc</b></td>
						
						<td class="align-c"><b>Ngày, tháng, năm sinh</b></td>
						<td class="align-c"><b>MST (ghi trong trường hợp thay đổi thông tin)</b></td>
						<td class="align-c"><b>Quốc tịch</b></td>
						
						<td class="align-c"><b>Số định danh cá nhân</b></td>
						<td class="align-c"><b>Số Hộ chiếu</b></td>
						<td class="align-c"><b>Ngày cấp Hộ chiếu</b></td>
						<td class="align-c"><b>Nơi cấp Hộ chiếu</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ nơi thường trú</b></td>
						<td class="align-c" colspan="4"><b>Địa chỉ hiện tại</b></td>
						<td class="align-c"><b>Quan hệ với người nộp thuế</b></td>
						<td class="align-c"><b>Thời điểm bắt đầu tính giảm trừ (tháng/năm)</b></td>
						<td class="align-c"><b>Thời điểm kết thúc tính giảm trừ (tháng/năm)</b></td>
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
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)</td>
							   <td class="align-c" colspan="4">(10)</td>
							   <td class="align-c" colspan="4">(11)</td>
							   <td class="align-c">(12)</td>
							   <td class="align-c">(13)</td>
							   <td class="align-c">(14)</td>
							   
					</tr>
					<xsl:for-each select="$tkchinh/DSachNPTDaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
							 <td class="align-l"><xsl:value-of select="ct4"/></td>
							 <td class="align-c"><xsl:value-of select="ct5"/></td>
							 
							 <td class="align-l"><xsl:value-of select="soDinhDanh"/></td>
							 <td class="align-c">
							 <xsl:if test="CT6/ct6_ma!= '2080'">
								<xsl:value-of select="CT6/ct6_soGiayTo"/>
							</xsl:if>
							 </td>
							 <td class="align-l">
							 <xsl:if test="CT6/ct6_ma!= '2080'">
							 <xsl:value-of select="ihtkk:stringDatetime(CT6/ct6_ngayCap,'dd/mm/yyyy')"/>
							 </xsl:if>
							 </td>
							 <td class="align-l">
							 <xsl:if test="CT6/ct6_ma!= '2080'">
							 <xsl:value-of select="CT6/ct6_noiCap_ten"/>
							 </xsl:if>
							 </td>
							 
							 <td class="align-c" colspan="4">
							 <xsl:if test="DCThuongTru/ct24_ma= '5050307'">
							 <xsl:value-of select="DCThuongTru/ct21" />, <xsl:value-of select="DCThuongTru/ct23" />, <xsl:value-of select="DCThuongTru/ct22"/>
							 </xsl:if>
							<xsl:if test="DCThuongTru/ct24_ma!= '5050307'">
							 <xsl:value-of select="DCThuongTru/ct21" />, <xsl:value-of select="DCThuongTru/ct24" />, <xsl:value-of select="DCThuongTru/ct23" />, <xsl:value-of select="DCThuongTru/ct22"/>
							 </xsl:if>
							 </td>
							<td class="align-c" colspan="4">
							<xsl:if test="DCHienTai/ct28_ma= '5050307'">
							 <xsl:value-of select="DCHienTai/ct25" />, <xsl:value-of select="DCHienTai/ct27" />, <xsl:value-of select="DCHienTai/ct26" />
							 </xsl:if>
							 <xsl:if test="DCHienTai/ct28_ma!= '5050307'">
							 <xsl:value-of select="DCHienTai/ct25" />, <xsl:value-of select="DCHienTai/ct28" />, <xsl:value-of select="DCHienTai/ct27" />, <xsl:value-of select="DCHienTai/ct26" />
							 </xsl:if>
							
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
							 <td class="align-c"><xsl:value-of select="tuThangGiamTru"/></td>
							 <td class="align-c"><xsl:value-of select="denThangGiamTru"/></td>
							</tr>
					</xsl:for-each>
						</table>
				<br></br>
					
				
				  
				  
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

