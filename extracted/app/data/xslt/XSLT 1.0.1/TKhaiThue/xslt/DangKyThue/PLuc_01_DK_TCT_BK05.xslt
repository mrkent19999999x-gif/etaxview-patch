<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_05_01_DK_TCT'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 105/2020/TT-BTC ngày 03/12/2020 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01_DK_TCT_BK05">
		<xsl:with-param name="mauTKhai"   select="'01-ĐK-TCT-BK05'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content">    
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="2" ><b>STT</b></td>
								<td class="align-c" rowspan="2"><b>Tên Nhà thầu, nhà đầu tư dầu khí</b></td>
								<td class="align-c" rowspan="2"><b>Quốc tịch</b></td>
								<td class="align-c" rowspan="2"><b>Mã số thuế của nhà thầu,<br/>nhà đầu tư dầu khí<br/>tại Việt Nam (nếu có)</b></td>
								<td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Giá trị hợp đồng</b></td>
								<td class="align-c" colspan="2"><b>Địa điểm thực hiện hợp đồng</b></td>
								<td class="align-c" rowspan="2"><b>Thời gian thực hiện hợp đồng</b></td>
							  </tr>
							  <tr>
								<td class="align-c"><b>Quận/huyện</b></td>
								<td class="align-c"><b>Tỉnh/thành phố</b></td>
							  </tr>
						<xsl:for-each select="$PL/NhaDauTu/ChiTietNhaDauTu">
												<xsl:variable name="currentRows" select='position()' />	
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"> <xsl:value-of select="tenNhaDauTu"/></td>
								<td class="align-c"> <xsl:value-of select="tenQuocTich"/></td>
								<td class="align-c"> <xsl:value-of select="mstNhaThauTaiVN"/></td>
								<td class="align-c"> <xsl:value-of select="soHD"/></td>
								<td class="align-c"> <xsl:value-of select="ihtkk:stringDatetime(ngayHD,'dd/mm/yyyy')"/></td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber(giaTriHD_so)"/> &#160;<xsl:value-of select="ma_loaiTien"/></td>
								<td class="align-c"> <xsl:value-of select="diaDiemHD/tenQuan"/></td>
								<td class="align-c"> <xsl:value-of select="diaDiemHD/tenTinh"/></td>
								<td class="align-l"> <xsl:value-of select="ihtkk:stringDatetime(thoiGianHD/Tu,'dd/mm/yyyy')"/>  - <xsl:value-of select="ihtkk:stringDatetime(thoiGianHD/Den,'dd/mm/yyyy')"/></td>
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