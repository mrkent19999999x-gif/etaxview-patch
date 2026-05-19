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
        <xsl:variable name="ghiChuPL1"   select="'(Dành cho trường hợp doanh nghiệp khai thác tàu, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL2"   select="'(Dành cho trường hợp hoán đổi/chia chỗ, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL3"   select="'(Kèm theo Tờ khai 01/VTNN)'"/>
			
	<!--start phu luc 01-2/VTNN - BẢNG KÊ THU NHẬP VẬN TẢI QUỐC TẾ  -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN' />	
	<xsl:call-template name="tkhaiHeaderPL01-2_VTNN">
		<xsl:with-param name="mauTKhai"   select="'01-2/VTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP VẬN TẢI QUỐC TẾ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>Chứng từ vận chuyển</b></td>
							<td class="align-c" colspan="2"><b>Hoá đơn</b></td>
							<td class="align-c" rowspan="2"><b>Cảng đi</b></td>
							<td class="align-c" rowspan="2"><b>Cảng đến</b></td>
							<td class="align-c" rowspan="2"><b>Khách hàng <br/></b>(tên, mã số thuế, địa chỉ)</td>
							<td class="align-c" rowspan="2"><b>Số chỗ hoán đổi/chia </b><br/>(theo thoả thuận hoán đổi/chia chỗ)</td>
							<td class="align-c" rowspan="2"><b>Số chỗ hoán đổi thực tế </b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu quy đổi</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế thu nhập doanh nghiệp phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế thu nhập doanh nghiệp miễn, giảm theo Hiệp định</b></td>
						</tr> 
						<tr>
							<td class="align-c">Số</td>
							<td class="align-c">Ngày, tháng năm phát hành</td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2a)</b></td>
							<td class="align-c"><b>(2b)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
						</tr>
				        <xsl:for-each select="$pluc02/BKeTNhapVTaiQTe/ChiTietBKeTNhapVTaiQTe">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="ct1"/></td>
								<td class="align-c"><xsl:value-of select="ct2a"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct2b,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							    <td colspan="7" class="tkhaiheader">Tổng cộng</td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/tongCot7)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/tongCot8)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/tongCot9)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/tongCot10)"/></b></td>
						</tr>		
			      </table>	
</div>
</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	
		<xsl:call-template name="tkhaiFooter"/>
 <div class="ghichu">
             <u><b>Ghi chú:</b></u><br/>
             - Cột (1) đến (5) ghi trên cơ sở vận đơn xuất cho khách hàng<br/>
             - Cột (6) ghi số TEU hoặc số chỗ được sử dụng miễn phí quy định trong thoả thuận hoán đổi/chia chỗ <br/>
             - Cột (7) ghi số TEU hoạc số chỗ đã thực tế sử dụng trên tàu của hãng đối tác<br/>
             - Cột (8) ghi doanh thu quy đổi đã là số tiền thu được từ khách hàng đối với số chỗ đã sử dụng thực tế không vượt quá hạn mức được sử dụng <br/>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:if>
	<!--end phu luc 01-2/VTNN-->

	</xsl:template>		
</xsl:stylesheet>