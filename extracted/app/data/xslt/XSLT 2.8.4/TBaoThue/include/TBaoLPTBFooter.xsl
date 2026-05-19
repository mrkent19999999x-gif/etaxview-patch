<?xml version='1.0' encoding='UTF-8' ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 <xsl:include href="../common/common.xsl"/> 
 
 	<xsl:template name="TBaoLPTBFooter">
	<table >
			<tr>
				<td width="100"/>
				<td colspan="1">
					<i> <b> Nơi nhận: </b></i></td>
			</tr>
			<tr>
				<td width="5%"/>
				<td style ="font: 10pt Times New Roman"> <xsl:value-of select= "TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue/tenNNhan"/>								
				</td>
			</tr>
				<tr>
				<td width="5%"/>
				<td  style ="font: 10pt Times New Roman"> Lưu: Cổng thông tin điện tử của TCT.</td>		
			</tr>	
						
			
			<tr>
				<td width="10%"></td>
				<td > &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</td>	
			 <br/>
				<br/>
				
				<td  width="100">
					<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/CanCuThongBao/ongBa"/>
				</td>
				<td width="10%" class="align-c">
	
					<b>THỦ TRƯỞNG CƠ QUAN THUẾ BAN HÀNH THÔNG BÁO </b>
					<br/>
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i> <br/>
					<xsl:value-of select="TBaoThueDTu/TBaoThue/TTinChung/chuKy/thuTruongCQTKy"/>
				</td>
				<td width="10%"></td>
			</tr>
			<tr>
				<td width="10%"/>
				<td width="25%"/>
				<td width="30%"/>
				<td colspan="1" width="30%" class="align-c"></td>
			</tr>
		</table> <br/>
		</xsl:template>
	
</xsl:stylesheet>
