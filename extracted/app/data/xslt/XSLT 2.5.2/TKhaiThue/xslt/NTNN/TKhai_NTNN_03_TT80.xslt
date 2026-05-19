<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader03_NTNN_TT80">
		<xsl:with-param name="mauTKhai"   select="'03/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với nhà thầu nước ngoài trực tiếp nộp thuế TNDN theo tỷ lệ % trên doanh thu tính thuế)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<table>		
			<tr>
				<td class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</td>
			</tr>
			<tr>
				<td>
					<table class="tkhai_table"  >
								 <thead>
								  <tr >
								   <td rowspan="2" width="150" class="align-c"><b>Nội dung công việc</b></td>
								   <td rowspan="2" width="150" class="align-c"><b>Tên ngành nghề</b></td>
								   <td rowspan="2" class="align-c"><b>Tên nhà thầu phụ (nếu có)</b></td>
								   <td rowspan="2" class="align-c"><b>Mã số thuế của nhà thầu phụ (nếu có)</b></td>
								   <td colspan="2" class="align-c"><b>Hợp đồng</b></td>
								   <td rowspan="2" class="align-c"><b>Số tiền thanh toán kỳ này</b></td>
								   <td rowspan="2" class="align-c"><b>Ngày thanh toán</b></td>
								   <td colspan="4" class="align-c"><b>Thuế thu nhập doanh nghiệp (TNDN)</b></td>
								  </tr>
								  <tr>
								   <td class="align-c"><b>Số</b></td>
								   <td class="align-c"><b>Ngày/tháng/Năm</b></td>
								   <td class="align-c"><b>Doanh thu tính thuế</b></td>
								   <td class="align-c"><b>Tỷ lệ % thuế TNDN</b></td>
								   <td class="align-c"><b>Số thuế được miễn giảm theo Hiệp định</b></td>
								   <td class="align-c"><b>Thuế TNDN phải nộp</b></td>
								  </tr>
								  <tr>
								   <td class="align-c">(1a)</td>
								   <td class="align-c">(1b)</td>
								   <td class="align-c">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								   <td class="align-c">(5)</td>
								   <td class="align-c">(6)</td>
								   <td class="align-c">(7)</td>
								   <td class="align-c">(8)</td>
								   <td class="align-c">(9)</td>
								   <td class="align-c">(10)</td>
								   <td class="align-c">{(11=(8x9)-10}</td>
								  </tr>
								 </thead>
								 <tbody id="tkhaitbody">
								 <xsl:for-each select="$tkchinh/BKThueNTNN/ThueNTNN">
								  <tr>
								   <td class="align-l" width="150"><xsl:value-of select="ct1a"/></td>
								   <td class="align-l" width="150"><xsl:value-of select="ct1b"/></td>
								   <td class="align-c"><xsl:value-of select="ct2"/></td>
								   <td class="align-l"><xsl:value-of select="ct3"/></td>
								   <td class="align-l"><xsl:value-of select="ct4"/></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct5,'dd/mm/yyyy')"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct7,'dd/mm/yyyy')"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct8)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct9)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct10)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct11)"/></td>
								  </tr>
								  </xsl:for-each>
								  <tr>
								   <td class="tkhaiheader"  colspan="6">Tổng cộng </td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct6)"/></b></td>
								   <td align="center"></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct8)"/></b></td>
								   <td align="center"></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct10)"/></b></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongct11)"/></b></td>
								   
								  </tr>
								 </tbody>
								 </table>
					  </td>
				  </tr>
				  <!-- <tr>
					<td >
						Tổng số thuế GTGT và thuế TNDN phải nộp kỳ này (viết bằng chữ): <b><xsl:value-of select="$tkchinh/tongThueVietBangChu"/></b>
					  </td>
				  </tr> -->
				  </table>
      </div>	
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>