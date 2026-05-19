<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  23/2021/TT-BTC ngày 30/03/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01_TEM">
		<xsl:with-param name="mauTKhai"   select="'01/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table>		
			
			<tr>
				<td>
					<table>
														
							  <tr>
							   <td class="align-l">Căn cứ Giấy phép sản xuất sản phẩm thuốc lá hoặc Giấy phép sản xuất sản phẩm rượu số <xsl:value-of select="$tkchinh/soGiayPhepSX"/>
							   do <xsl:value-of select="$tkchinh/noiCapGiayPhep"/>
							   cấp ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayGiayPhepSX,'dd/mm/yyyy')"/>
							   (đính kèm theo Tờ khai này), trong đó có quy định:
							   </td>
							   
							  </tr>							  						  
							  <tr>
								<td>
								- Sản lượng thuốc lá hoặc sản lượng rượu được phép sản xuất để tiêu thụ trong nước là: <xsl:value-of select="ihtkk:formatNumber($tkchinh/sanLuong)"/>
								</td>
							  </tr>
							   <tr>
								<td>
								- Thời hạn được phép sản xuất là: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/thoiHan,'dd/mm/yyyy')"/>
								</td>
							  </tr>
							  <tr>
								<td>
								Theo Thông tư số <xsl:value-of select="$tkchinh/soThongTu"/> 
								
								ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongTu,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongTu,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongTu,'yyyy')"/>
								của Bộ Tài chính, chúng tôi thuộc đối tượng sử dụng tem điện tử. Chúng tôi đăng ký/thay đổi thông tin đã đăng ký với cơ quan thuế về việc sử dụng tem điện tử như sau:
								</td>
							  </tr>
							   <tr>
								<td>
								- Áp dụng tem điện tử:
								</td>
							  </tr>
							   <tr>
								<td>
								[<xsl:if test="$tkchinh/temDienTuRuou='true' or $tkchinh/temDienTuRuou='1' ">x</xsl:if>]Tem điện tử rượu.<br/>
								</td>
							  </tr>
							  <tr>
								<td>
								[<xsl:if test="$tkchinh/temDienTuThuocLa='true' or $tkchinh/temDienTuThuocLa='1' ">x</xsl:if>]Tem điện tử thuốc lá.<br/>
								</td>
							  </tr>
							 					 
					</table>
				</td>
			</tr>
													 
		</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_01_TEM_TT23"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>