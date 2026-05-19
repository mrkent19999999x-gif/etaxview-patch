<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP1">
		<xsl:with-param name="mauTKhai"   select="'02/PTHU-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		            <div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				    </div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Đơn vị</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>						   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Tổng số phụ thu tạm tính đối với dầu lãi theo từng lần xuất bán.</td>
							<td class="align-c">[23]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Số phụ thu đối với dầu lãi từ số tiền kết dư của phần dầu để lại.</td>
							<td class="align-c">[24]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Tổng số phụ thu phải nộp [25] = [23]+[24]</td>
							<td class="align-c">[25]</td>
							<td class="align-c">thùng</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
   						  </tr>						  
				 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">
        <div><i>Hạch toán mục 3700, tiểu mục 3706</i></div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
        </div>		
        

	</xsl:template>		
</xsl:stylesheet>