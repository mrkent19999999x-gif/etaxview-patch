<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
			<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_03TB_ĐK">
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" /> 
		</xsl:call-template>	
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cục Thuế/Chi cục Thuế thông báo mã số thuế của cá nhân như sau:</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; The Tax Department of Province/City/district hereby would like to inform your TIN as follows:</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Mã số thuế: </b><xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Tax identification number</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Tên người nộp thuế: </b><xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Full name of Taxpayer</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Số CMND hoặc CCCD hoặc Hộ chiếu </b><xsl:value-of select="$ndungTBao/soID"/> <b> ngày cấp </b> <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCap,'dd/mm/yyyy')"/> <b> nơi cấp </b><xsl:value-of select="$ndungTBao/noiCap"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Number of identify card/citizen identification/passport <xsl:value-of select="$ndungTBao/soID"/> date of isue <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCap,'dd/mm/yyyy')"/> place of isue <xsl:value-of select="$ndungTBao/noiCap"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Địa chỉ thường trú: </b><xsl:value-of select="$ndungTBao/diaChiThuongTru"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Residential address</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Địa chỉ cư trú: </b> <xsl:value-of select="$ndungTBao/diaChiCuTru"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Current add</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>Ngày cấp mã số thuế: </b><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCapMST,'dd/mm/yyyy')"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Date of issue</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Yêu cầu người nộp thuế phải sử dụng mã số thuế theo đúng quy định kể từ ngày được cơ quan thuế cấp mã số thuế.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; You are required to use this Tax Identification Number in accordance with stipulated regulations as from the date of TIN issuance.</div>

		
					<table>
							<tr>
						        <td width="50%"></td>
						        <td width="10%"></td>			
							    <td width="40%" class="align-c" ><b>THỦ TRƯỞNG CƠ QUAN THUẾ</b></td>
							</tr>

							<tr>
								 <td width="50%"></td>
						        <td width="10%"></td>	
								<td width="40%" class="align-c">DIRECTOR OF TAX DEPARTMENT</td>
							</tr>
					</table>
			<br/>	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>