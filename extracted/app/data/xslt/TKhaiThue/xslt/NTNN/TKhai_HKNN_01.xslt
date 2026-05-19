<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>  
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
<xsl:variable name="ghiChuPL1" select="'(Dành cho vận tải hàng không quốc tế, kèm theo Tờ khai mẫu số 01/HKNN)'"/>
<xsl:variable name="ghiChuPL2" select="'(Dành cho trường hợp hoán đổi/ chia chỗ trong vận tải hàng không quốc tế, kèm theo Tờ khai mẫu số 01/HKNN)'"/>
		 <xsl:call-template name="tkhaiHeader-01HKNN">
		<xsl:with-param name="mauTKhai"   select="'01/HKNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div"> 
<div class="content">
				<div class="align-r">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</div>

					<table class="tkhai_table"  >
							<tr class="tkhaiheader" >
								   <td>STT</td>
								   <td>Chỉ tiêu</td>
								   <td> Mã chỉ tiêu</td>
								   <td>Số phát sinh quý này</td>
								   <td>Mã chỉ tiêu</td>
								   <td>Số lũy kế năm</td>
							</tr>
							<tr>
								   <td class="align-c">I</td>
								   <td>Tổng doanh thu  [24]=[26]+[27]+[28]</td>
								   <td class="align-c">[24]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
								   <td class="align-c">[25]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
							</tr>
							<tr>
								   <td class="align-c">1</td>
								   <td>Doanh thu bán vé hành khách</td>
								   <td class="align-c">[26]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">2</td>
								   <td>Doanh thu bán vận đơn hàng không</td>
								   <td class="align-c">[27]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">3</td>
								   <td>Doanh thu khác</td>
								   <td class="align-c">[28]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">II</td>
								   <td>Các khoản giảm trừ doanh thu [29]=[30]+[31]</td>
								   <td class="align-c">[29]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">1</td>
								   <td>Các khoản thu hộ</td>
								   <td class="align-c">[30]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">2</td>
								   <td>Chi hoàn do khách hàng trả lại vé</td>
								   <td class="align-c">[31]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">III</td>
								   <td>Doanh thu chịu thuế TNDN [32]=[24]-[29]</td>
								   <td class="align-c">[32]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
								   <td class="align-c">[33]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
							</tr>
							<tr>
								   <td class="align-c">IV</td>
								   <td>Tỷ lệ (%) thuế thu nhập doanh nghiệp tính trên doanh thu chịu thuế</td>
								   <td class="align-c">[34]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">V</td>
								   <td>Thuế thu nhập doanh nghiệp phát sinh trong kỳ [35]=[32]x[34]</td>
								   <td class="align-c">[35]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">VI</td>
								   <td>Số thuế miễn, giảm theo Hiệp định trong kỳ</td>
								   <td class="align-c">[36]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
								   <td class="align-c">[37]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
							</tr>
							<tr>
								   <td class="align-c">VII</td>
								   <td>Số thuế phải nộp trong kỳ [38]=[35]-[36]</td>
								   <td class="align-c">[38]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
								   <td class="align-c">[39]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
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