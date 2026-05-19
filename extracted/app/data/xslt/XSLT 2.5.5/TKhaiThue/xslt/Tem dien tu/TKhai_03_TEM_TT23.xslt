<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  23/2021/TT-BTC ngày 30/03/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_03_TEM">
		<xsl:with-param name="mauTKhai"   select="'03/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table width='100%'>
			<tr>
				<td class="align-r">
					<i>Đơn vị tính: Tem</i>
				</td>
			</tr>
		</table>
			<table class="tkhai_table">		
			
				
					<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên loại tem điện tử</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu tem</b></td>
						   <td class="align-c"><b>Số lượng tem tồn đầu kỳ</b></td>
						   <td class="align-c"><b>Số lượng tem mua kỳ này</b></td>	
							<td class="align-c"><b>Số lượng tem được sử dụng</b></td>
							<td class="align-c"><b>Lý do</b></td>
					</tr>
					<tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)=(4)+(5)</b></td>
							<td class="align-c"><b>(7)</b></td>							
					</tr>
					<xsl:for-each select="$tkchinh/BangMuaTem/ChiTietMuaTem">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenTemDT"/></td>
									
									<td class="align-c"><xsl:value-of select="kyHieuMauTem"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sL_TonDauKy)"/></td>									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sL_MuaKyNay)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sL_SuDung)"/></td>
									<td class="align-l"><xsl:value-of select="lyDo"/></td>	
								 	
								</tr>
					</xsl:for-each>
													 
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_03_TEM_TT23"/>
		<div><i>(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân</i></div>
		<div><i>(2) Trường hợp ủy quyền cho người khác nhận tem phải có giấy ủy quyền của tổ chức, cá nhân có Giấy phép sản xuất theo quy định.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>