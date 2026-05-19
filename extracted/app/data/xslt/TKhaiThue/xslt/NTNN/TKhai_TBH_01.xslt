<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>  
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-01TBH">
		<xsl:with-param name="mauTKhai"   select="'01/TBH'"/>
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
								   <td>Mã chỉ tiêu</td>
								   <td>Số phát sinh quí này</td>
								   <td>Mã chỉ tiêu</td>
								   <td>Số luỹ kế năm</td>
							</tr>
							<tr>
								   <td class="tkhaiheader">I</td>
								   <td class="b">Tổng doanh thu [25]=[27]+[28]</td>
								   <td class="tkhaiheader">[25]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
								   <td class="tkhaiheader">[26]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
							</tr>
							<tr>
								   <td class="align-c">1</td>
								   <td>Doanh thu từ hoạt động tái bảo hiểm</td>
								   <td class="tkhaiheader">[27]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">2</td>
								   <td>Doanh thu khác</td>
								   <td class="tkhaiheader">[28]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="tkhaiheader">II</td>
								   <td class="b">Các khoản giảm trừ doanh thu [29]=[30]+[31]</td>
								   <td class="tkhaiheader">[29]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">1</td>
								   <td>Các khoản thu hộ</td>
								   <td class="tkhaiheader">[30]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">2</td>
								   <td>Các khoản chi khác </td>
								   <td class="tkhaiheader">[31]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="tkhaiheader">III</td>
								   <td class="b">Doanh thu chịu thuế thu nhập doanh nghiệp [32]=[25]-[29]</td>
								   <td class="tkhaiheader">[32]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
								   <td class="tkhaiheader">[33]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
							</tr>
							<tr>
								   <td class="tkhaiheader">IV</td>
								   <td class="b">Tỷ lệ (%) thuế thu nhập doanh nghiệp tính trên doanh thu chịu thuế</td>
								   <td class="tkhaiheader">[34]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">V</td>
								   <td class="b">Thuế thu nhập doanh nghiệp phát sinh trong kỳ [35]=[32]x[34]</td>
								   <td class="tkhaiheader">[35]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
							</tr>
							<tr>
								   <td class="align-c">VI</td>
								   <td class="b">Số thuế miễn, giảm trong kỳ [36]=[38]+[39]</td>
								   <td class="tkhaiheader">[36]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
								   <td class="tkhaiheader">[37]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)"/></td>
							</tr>
							<tr>
								   <td class="align-c">1</td>
								   <td>Số thuế miễn, giảm theo Hiệp định tránh đánh thuế hai lần</td>
								   <td class="tkhaiheader">[38]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)"/></td>
								   <td class="align-c"></td>
								   <td class="align-r"></td>
							</tr>
							<tr>
								   <td class="align-c">2</td>
								   <td>Số thuế miễn, giảm khác</td>
								   <td class="tkhaiheader">[39]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)"/></td>
								   <td class="align-c"></td>
								   <td class="align-r"></td>
							</tr>
							<tr>
								   <td class="tkhaiheader">VII</td>
								   <td class="b">Số thuế phải nộp trong kỳ [40]=[35]-[36]</td>
								   <td class="tkhaiheader">[40]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)"/></td>
								   <td class="tkhaiheader">[41]</td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)"/></td>
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