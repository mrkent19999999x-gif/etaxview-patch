<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>   
<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả các khoản thu nhập từ tiền lương, tiền công)'"/>
	  </xsl:call-template>
	  
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
			
					<table class="tkhai_table">
							 <tr>
								<td class="align-c">
								 <b>STT</b> </td>
							   <td class="align-c" colspan="2">
								 <b>Chỉ tiêu</b>
							   </td>
							   <td class="align-c">
								 <b>ĐVT </b>
							   </td>
							   <td class="align-c">
								 <b>Số người/Số tiền</b>
							   </td>
							 </tr>
							 <tr>
							   <td class="align-c"  rowspan="2"><b>1</b></td>
							   <td><b>Tổng số người lao động:</b></td>
							   <td class="align-c"><b>[21]</b></td>
							   <td class="align-c">Người</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongSoNguoiLaoDong/ct21)"/></td>
							 </tr>  
							 <tr>
							   <td>Trong đó: Cá nhân cư trú có hợp đồng lao động </td>
							   <td class="align-c"><b>[22]</b></td>
							   <td class="align-c">Người</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongSoNguoiLaoDong/ct22)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>2</b></td>
							   <td><b>Tổng số cá nhân đã khấu trừ thuế [23]=[24]+[25]</b></td>
							   <td class="align-c"><b>[23]</b></td>
							   <td class="align-c">Người</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongSoCaNhanDaKhauTru/ct23)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2.1</td>
							   <td>Cá nhân cư trú</td>
							   <td class="align-c"><b>[24]</b></td>
							   <td class="align-c">Người</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongSoCaNhanDaKhauTru/ct24)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2.2</td>
							   <td>Cá nhân không cư trú</td>
							   <td class="align-c"><b>[25]</b></td>
							   <td class="align-c">Người</td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongSoCaNhanDaKhauTru/ct25)"/></td>
							 </tr>  
							 
							 <tr>
								 <td class = "tkhaiheader">3</td>
								 <td><b>Tổng thu nhập chịu thuế (TNCT) trả cho cá nhân [26]=[27]+[28]+[29]</b></td>
								 <td class="align-c"><b>[26]</b></td>
								 <td class="align-c">VNĐ</td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraChoCaNhan/ct26)"/></td>
							 </tr>
							 <tr>
									<td class="align-c">3.1</td>
									<td>Cá nhân cư trú có hợp đồng lao động</td>
									<td class="align-c"><b>[27]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraChoCaNhan/ct27)"/></td>
								</tr>
							 
							 <tr>
									<td class="align-c">3.2</td>
									<td>Cá nhân cư trú không có hợp đồng lao động</td>
									<td class="align-c"><b>[28]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraChoCaNhan/ct28)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">3.3</td>
									<td>Cá nhân không cư trú</td>
									<td class="align-c"><b>[29]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraChoCaNhan/ct29)"/></td>
								</tr>
								
								<tr>
									<td class="tkhaiheader">4</td>
									<td class="b">Tổng TNCT trả cho cá nhân thuộc diện phải khấu trừ thuế [30]=[31]+[32]+[33] </td>
									<td class="align-c"><b>[30]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraCNhanThuocDienKTru/ct30)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">4.1</td>
									<td>Cá nhân cư trú có hợp đồ>ng lao động</td>
									<td class="align-c"><b>[31]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraCNhanThuocDienKTru/ct31)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">4.2</td>
									<td>Cá nhân cư trú không có hợp đồng lao động</td>
									<td class="align-c"><b>[32]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraCNhanThuocDienKTru/ct32)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">4.3</td>
									<td>Cá nhân không cư trú</td>
									<td class="align-c"><b>[33]</b></td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongTNCTTraCNhanThuocDienKTru/ct33)"/></td>
								</tr>
								
								<tr>
									<td class="tkhaiheader">5</td>
									<td class="b">Tổng số thuế thu nhập cá nhân đã khấu trừ [34]=[35]+[36]+[37]</td>
									<td class="tkhaiheader">[34]</td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongThueTNCNDaKhauTru/ct34)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">5.1</td>
									<td>Cá nhân cư trú có hợp đồng lao động</td>
									<td class="tkhaiheader">[35]</td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongThueTNCNDaKhauTru/ct35)"/></td>
								</tr>
								
								<tr>
									<td class="align-c">5.2</td>
									<td>Cá nhân cư trú không có hợp đồng lao động</td>
									<td class="tkhaiheader">[36]</td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongThueTNCNDaKhauTru/ct36)"/></td>
								</tr>
							 
							 <tr>
									<td class="align-c">5.3</td>
									<td>Cá nhân không cư trú</td>
									<td class="tkhaiheader">[37]</td>
									<td class="align-c">VNĐ</td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongThueTNCNDaKhauTru/ct37)"/></td>
								</tr>

						   </table>

      </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	

	</xsl:template>		
</xsl:stylesheet>