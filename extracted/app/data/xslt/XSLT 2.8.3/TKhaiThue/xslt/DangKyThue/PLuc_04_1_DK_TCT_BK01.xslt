<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_04_1_DK_TCT'/>
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ Trưởng Bộ Tài chính
'" />
		 <xsl:call-template name="tkhaiHeader_04_1_DK_TCT_BK">
		<xsl:with-param name="mauTKhai"   select="'04.1-ĐK-TCT-BK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content">    
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="2"><b>STT</b></td>
								
								<td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Giá trị hợp đồng (số tiền hoặc tỷ lệ %)</b></td>
								<td class="align-c" rowspan="2"><b>Mã số thuế của nhà thầu nước ngoài, nhà thầu phụ nước ngoài (nếu có)</b></td>
								<td class="align-c" rowspan="2"><b>Tên nhà thầu nước ngoài, nhà thầu phụ nước ngoài</b></td>
								<td class="align-c" colspan="2"><b>Địa điểm tiến hành công việc theo hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Thời gian thực hiện hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>NTNN đề nghị cấp MST (đánh dấu “x”)</b></td>
							  </tr>
							<tr>
								<td class="align-c"><b>Xã/phường/đặc khu</b></td>
								<td class="align-c"><b>Tỉnh/thành phố</b></td>
							</tr>
						<xsl:for-each select="$PL/NhaThauNN/ChiTietNhaThauNN">
												<xsl:variable name="currentRows" select='position()' />	
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								
								<td class="align-l"> <xsl:value-of select="soHD"/></td>
								<td class="align-l"> <xsl:value-of select="ihtkk:stringDatetime(ngayHD,'dd/mm/yyyy')"/></td>
								<td class="align-r"> <xsl:value-of select="giaTriHD_text"/><xsl:value-of select="ihtkk:formatNumber(giaTriHD_so)"/> &#160; <xsl:value-of select="ma_loaiTien"/></td>
								<td class="align-c"> <xsl:value-of select="mstNhaThauNN"/></td>
								<td class="align-l"> <xsl:value-of select="tenNhaThauNN"/></td>
								<td class="align-c"> <xsl:value-of select="diaDiemHD/tenQuan"/></td>
								<td class="align-c"> <xsl:value-of select="diaDiemHD/tenTinh"/></td>
								<td class="align-l"> <xsl:value-of select="ihtkk:stringDatetime(thoiGianHD/Tu,'dd/mm/yyyy')"/> - <xsl:value-of select="ihtkk:stringDatetime(thoiGianHD/Den,'dd/mm/yyyy')"/></td>
								<td class="align-c">
							      <xsl:if test="deNghiCapMa13 = 'true'"> [x]</xsl:if>
							      <xsl:if test="deNghiCapMa13 = 'false'">[]</xsl:if>			
							      <xsl:if test="deNghiCapMa13 = '1'"> [x]</xsl:if>
							      <xsl:if test="deNghiCapMa13 = '0'">[]</xsl:if>				
							 </td>
								</tr>
								</xsl:for-each>
							
						
							   
		
</table>
  </div>
</div>  
	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter_pluc_01_BK_105">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table> 

</xsl:template>		
</xsl:stylesheet>