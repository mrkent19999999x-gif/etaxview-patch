<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_01_PTHU_DK_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/PTHU-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Sản lượng dầu lãi được chia tạm tính</td>
							<td class="align-c">[23]</td>
							<td class="align-c">Thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá cơ sở của năm</td>
							<td class="align-c">[24]</td>
							<td class="align-c">USD/thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Giá bán dầu thô trung bình</td>
							<td class="align-c">[25]</td>
						   <td class="align-c">USD/thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Xác định số phụ thu tạm tính:</td>
							<td class="align-c"></td>
							<td class="align-c"></td>
							<td class="align-r"></td>
   						  </tr>		
   						    <tr>
							<td class="align-c">4.1</td>
							<td class="align-l">Đối với dự án dầu khí khuyến khích đầu tư: [26] = 30%*{[25]–1,2*[24]}*[23]</td>
							<td class="align-c">[26]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
   						  </tr>		
   						  <tr>
							<td class="align-c">4.2</td>
							<td class="align-l">Đối với các dự án dầu khí không thuộc khoản 4.1:</td>
							<td class="align-c"></td>
							<td class="align-c"></td>
							<td class="align-r"></td>
   						  </tr>
   						   <tr>
							<td class="align-c"></td>
							<td class="align-l">a) Trường hợp {1,2*[24]} &lt; [25] ≤ &lt;{1,5*[24]}: [27] = 50%*{[25]–1,2*[24]}*[23]</td>
							<td class="align-c">[27]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
   						  </tr>
   						  <tr>
							<td class="align-c"></td>
							<td class="align-l">b) Trường hợp [25] > {1,5*[24]}:</td>
							<td class="align-c"></td>
							<td class="align-c"></td>
							<td class="align-r"></td>
   						  </tr>
   						   <tr>
							<td class="align-c"></td>
							<td class="align-l">- Phụ thu theo mức 50% [28] = 50%*{1,5*[24]–1,2*[24]}*[23]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
   						  </tr>
   						    <tr>
							<td class="align-c"></td>
							<td class="align-l">- Phụ thu theo mức 60% [29] = 60%*{[25]–1,5*[24]}*[23]</td>
							<td class="align-c">[29]</td>
							<td class="align-c">USD</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>
   						   <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số phụ thu tạm tính phải nộp:</td>
							<td class="align-c">[30]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_DonVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
   						  </tr>	
   						   <tr>
							<td class="align-c"></td>
							<td class="align-l">a) Đối với trường hợp thuộc khoản 4.1: [30] = [26]</td>
							<td class="align-c"></td>
							<td class="align-c"></td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30a)"/></td>
   						  </tr>	
   						     <tr>
							<td class="align-c"></td>
							<td class="align-l">b) Đối với trường hợp thuộc điểm a khoản 4.2: 
[30] = [27]</td>
							<td class="align-c"></td>
							<td class="align-c"></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30b)"/></td>
   						  </tr>	
   						     <tr>
							<td class="align-c"></td>
							<td class="align-l">c) Đối với trường hợp thuộc điểm b khoản 4.2: 
[30] = [28]+[29]</td>
							<td class="align-c"></td>
							<td class="align-c"></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30c)"/></td>
   						  </tr>
   						     <tr>
							<td class="align-c">6</td>
							<td class="align-l">Tỷ giá quy đổi</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD/VNĐ</td>							
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
   						  </tr>
   						  
   					</table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu [23] do người nộp phụ thu tự xác định.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Trường hợp dầu thô, condensate bán tại thị trường Việt Nam hoặc Chính phủ có quy định khác thì đồng tiền nộp phụ thu là đồng Việt Nam; tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán. </i></div>
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>