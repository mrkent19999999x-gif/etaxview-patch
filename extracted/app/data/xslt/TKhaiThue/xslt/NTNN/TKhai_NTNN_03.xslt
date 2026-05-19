<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>  
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'03/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho nhà thầu nước ngoài trực tiếp nộp thuế TNDN theo tỷ lệ % trên doanh thu tính thuế)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<div class="align-r">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</div>
					<table class="tkhai_table"  >
						 <thead>
						  <tr class="tkhaiheader">
						   <td rowspan="2" width="150" class="align-c">Nội dung công việc</td>
						   <td rowspan="2" class="align-c">Mã số thuế</td>
						   <td rowspan="2" class="align-c">Hợp đồng số..ngày... tháng...</td>
						   <td rowspan="2" class="align-c">Số tiền thanh toán kỳ này</td>
						   <td rowspan="2" class="align-c">Ngày thanh toán</td>
						   <td colspan="4" class="align-c">Thuế TNDN</td>
						  </tr>
						  <tr class="tkhaiheader">
						   <td class="align-c">Doanh thu tính thuế</td>
						   <td class="align-c">Tỷ lệ thuế TNDN</td>
						   <td class="align-c">Số thuế được miễn giảm theo Hiệp định</td>
						   <td class="align-c">Thuế TNDN phải nộp</td>
						  </tr>
						  <tr class="tkhaiheader">
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td> 
						   <td class="align-c">(9=6x7-8)</td>
						  </tr>
						 </thead>
						 <tbody id="tkhaitbody">
						 <xsl:for-each select="$tkchinh/BKThueNTNN/ThueNTNN">
						  <tr>
						   <td class="align-l" width="150"><xsl:value-of select="ct1"/></td>
						   <td class="align-c"><xsl:value-of select="ct2"/></td>
						   <td class="align-l"><xsl:value-of select="ct3"/></td>
						   <td class="align-r"><xsl:value-of select="ct4"/></td>
						   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct5,'dd/mm/yyyy')"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct6)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct7)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct8)"/></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct9)"/></td>
						  </tr>
						  </xsl:for-each>
						  <tr>
						   <td class="align-c" colspan="3"><b>Cộng</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct4)"/></b></td>
						   <td></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct6)"/></b></td>
						   <td></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct8)"/></b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct9)"/></b></td>
						  </tr>
						 </tbody>
						 </table>
						 <br/>
						 
								<div>Tổng số thuế TNDN phải nộp kỳ này (viết bằng chữ): <xsl:value-of select="$tkchinh/tongThueVietBangChu"/> </div>

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