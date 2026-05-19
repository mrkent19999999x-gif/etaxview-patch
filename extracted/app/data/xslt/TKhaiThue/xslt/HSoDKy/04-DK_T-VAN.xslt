<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    	
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttchungdk" select='DKyThue/TTinChung' />	
		<xsl:variable name="ndungdk" select='DKyThue/NDungDKy' />	
		<xsl:call-template name="tkhaiHeaderDKThue_HS">
			<xsl:with-param name="mauTKhai" select="'04/ĐK-T-VAN'"/>
		</xsl:call-template>
		<div style="padding-left:100px"><b><i><u> Kính gửi </u></i></b>:  <xsl:value-of select="$ttchungdk/CQT/tenCQT"/></div>
	<div style="padding-left:100px"> Tên người nộp thuế:  <xsl:value-of select="$ttchungdk/TTinDKyThue/tenNNT"/></div>		
	<div style="padding-left:100px;"> Mã số thuế: <xsl:value-of select="$ttchungdk/TTinDKyThue/tIN"/></div><br/>
		<div>Cơ sở chúng tôi xin đăng ký các loại hồ sơ khai thuế ngừng nộp qua tổ chức cung cấp dịch vụ giá trị gia
tăng về giao dịch điện tử trong lĩnh vực thuế (T-VAN).</div><br/>
		<div class="ndungtkhai_div">
			<div class="content">            
				 <div><b>1. Tổ chức cung cấp dịch vụ T-VAN: <xsl:value-of select="$ndungdk/ten_T_VAN"/><br/></b></div>
				 <div><b>2. Danh sách hồ sơ khai thuế đăng ký ngừng nộp qua dịch vụ T-VAN:</b></div><br/>
				 
				 <table class="tkhai_table">
                        <tr>
							<td class="align-left"><b>Mã hồ sơ</b></td>
							<td class="align-left"><b>Tên hồ sơ</b></td>
							<td class="align-left"><b>Kỳ tính thuế bắt đầu ngừng nộp</b></td>
						</tr>
                        <xsl:for-each select="$ndungdk/DSachHSoNgungNop/NoiDungChiTiet">
						    <tr>
								        <td><xsl:value-of select="maHSo"/></td>
										<td><xsl:value-of select="tenHSo"/></td>
										<td><xsl:value-of select="kyNgung"/></td>
							</tr>
									</xsl:for-each>
						    </table>
				 
				 
   	</div>
	</div>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>