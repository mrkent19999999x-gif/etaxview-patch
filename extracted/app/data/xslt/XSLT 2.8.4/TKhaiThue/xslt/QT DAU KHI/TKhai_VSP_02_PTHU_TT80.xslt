<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>

		 <xsl:call-template name="tkhaiHeader-02PTHU_VSP">
		<xsl:with-param name="mauTKhai"   select="'02/PTHU-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
		
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
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
							<td class="align-c">[25]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Số phụ thu đối với dầu lãi từ số tiền kết dư của phần dầu để lại</td>
							<td class="align-c">[26]</td>
							<td class="align-c">USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Tổng số phụ thu phải nộp trong kỳ tính thuế [27] = [25]+[26]</td>
							<td class="align-c">[27]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Tổng số phụ thu tạm tính đã kê khai trong kỳ tính thuế</td>
							<td class="align-c">[28]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Chênh lệch giữa số phụ thu phải nộp theo quyết toán với số phụ thu đã kê khai trong kỳ tính thuế</td>
							<td class="align-c">[29]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>	
                         <tr>
							<td class="align-c">6</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[30]</td>
							<td class="align-c">VND/USD</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>						  
				 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 

        
<div id="sigDiv"></div>
</td></tr>
</table>		

        

	</xsl:template>		
</xsl:stylesheet>