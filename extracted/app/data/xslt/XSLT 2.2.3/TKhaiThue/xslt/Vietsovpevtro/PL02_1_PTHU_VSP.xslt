<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 176/2014/TT-BTC ngày 17/11/2014 của Bộ Tài chính
'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
        
<!-- Phụ lục 02-1/TAIN-VSP -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_PTHU_VSP">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_PTHU_VSP' />
			<xsl:call-template name="tkhaiHeader-pluc_02_1PTHU_VSP">
		<xsl:with-param name="mauTKhai"   select="'02-1/PTHU-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ SỐ PHỤ THU TẠM TÍNH ĐÃ NỘP'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán phụ thu)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">

						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Số lần xuất bán thứ</b></td>
							   <td class="align-c" rowspan="2"><b>Ngày xuất bán</b></td>
							   <td class="align-c" rowspan="2"><b>Ngày/tháng tờ khai phụ thu tạm tính</b></td>
							   <td class="align-c" colspan="2"><b>Số phụ thu tạm tính đã nộp</b></td>
							   <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							   <td class="align-c"><b>USD</b></td>
							   <td class="align-c"><b>VNĐ</b></td>
							</tr>
                            <tr>
								<td class="align-c"><b>(1)</b></td>
								<td class="align-c"><b>(2)</b></td>
								<td class="align-c"><b>(3)</b></td>
								<td class="align-c"><b>(4)</b></td>
								<td class="align-c"><b>(5)</b></td>
								<td class="align-c"><b>(6)</b></td>
								<td class="align-c"><b>(7)</b></td>								
							</tr>
							<tr>
							    <td class="align-l" colspan="7"><b>I. Đối với Phụ thu tạm tính theo từng lần xuất bán.</b></td>	    
							</tr>
							<xsl:for-each select="$pl01/BangKePThuLanXuatBan/CTietBangKePThuLanXuatBan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy') " /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct4,'dd/mm/yyyy')"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							  <td class="align-l"><xsl:value-of select="ct7"/></td>							  
							  </tr>
							</xsl:for-each>
							<tr>
							    <td class="align-l" colspan="5"><b>II. Phụ thu tạm tính đối với dầu lãi từ tiền kết dư</b></td>							    
							</tr>
							<xsl:for-each select="$pl01/BKePThuTienKetDu/CTietBKePThuTienKetDu">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct4,'dd/mm/yyyy')"/></td>
      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							  <td class="align-l"><xsl:value-of select="ct7"/></td>							  
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td class="align-c" colspan="3"><b>Tổng cộng:</b></td>
                               <td></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_ct5)"/></b></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01/tong_ct6)"/></b></td>
                               <td></td>                               
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
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>