<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader01_NTNN_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/NTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với Bên Việt nam khấu trừ và nộp thuế thay cho Nhà thầu nước ngoài)'"/>
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
								 <thead class="tkhaiheader">
								  <tr >
								   <td rowspan="2" width="150" class="align-c">Tên nhà thầu</td>
								   <td rowspan="2" width="150" class="align-c">Tên ngành nghề</td>
								   <td rowspan="2" class="align-c">Mã số thuế của NTNN tại Việt Nam (nếu có)</td>
								   <td colspan="2" class="align-c">Hợp đồng</td>
								   <td rowspan="2" class="align-c">Doanh thu chưa bao gồm thuế GTGT</td>
								   <td rowspan="2" class="align-c">Ngày thanh toán</td>
								   <td colspan="3" class="align-c">Thuế giá trị gia tăng (GTGT)</td>
								   <td colspan="4" class="align-c">Thuế thu nhập doanh nghiệp (TNDN)</td>
								   <td rowspan="2" class="align-c">Tổng số thuế phải nộp vào Ngân sách Nhà nước</td>
								  </tr>
								  <tr>
								   <td class="align-c">Số</td>
								   <td class="align-c">Ngày/tháng/Năm</td>
								   <td class="align-c">Doanh thu tính thuế</td>
								   <td class="align-c">Tỷ lệ giá trị gia tăng</td>
								   <td class="align-c">Thuế GTGT phải nộp</td>
								   <td class="align-c">Doanh thu tính thuế</td>
								   <td class="align-c">Tỷ lệ  thuế thu nhập doanh nghiệp</td>
								   <td class="align-c">Số thuế được miễn giảm theo Hiệp định</td>
								   <td class="align-c">Thuế TNDN phải nộp</td>
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
								   <td class="align-c">(9=7x8)</td>
								   <td class="align-c">(10)</td>
								   <td class="align-c">(11)</td>
								   <td class="align-c">(12)</td>
								   <td class="align-c">[13=(10x11)-(12)]</td>
								   <td class="align-c">(14)=(9)+(13)</td>
								  </tr>
								 </thead>
								 <tbody id="tkhaitbody">
								 <xsl:for-each select="$tkchinh/BKThueNTNN/ThueNTNN">
								  <tr>
								   <td class="align-l" width="150"><xsl:value-of select="ct1a"/></td>
								   <td class="align-l" width="150"><xsl:value-of select="ct1b"/></td>
								   <td class="align-c"><xsl:value-of select="ct2"/></td>
								   <td class="align-l"><xsl:value-of select="ct3"/></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct4,'dd/mm/yyyy')"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct6,'dd/mm/yyyy')"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct7)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct8)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueGTGT/ct9)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct10)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct11)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct12)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThueTNDN/ct13)"/></td>
								   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								  </tr>
								  </xsl:for-each>
								  <tr>
								   <td class="tkhaiheader"  colspan="5">Tổng cộng </td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct5)"/></b></td>
								   <td align="center"></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct7)"/></b></td>
								   <td align="center"></td> 
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct9)"/></b></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct10)"/></b></td>
								   <td></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct12)"/></b></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct13)"/></b></td>
								   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_ct14)"/></b></td>
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