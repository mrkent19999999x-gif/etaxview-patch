<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)
'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_01_1TNDN_VSP_TT80">
		<xsl:with-param name="mauTKhai"   select="'01-1/TNDN-VSP '"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với thu nhập từ tiền kết dư của phần dầu để lại)'"/>
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
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>						   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Thu nhập từ tiền kết dư phần dầu để lại></td>
							<td class="align-c">[27]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[28]</td>
							<td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Số thuế TNDN tạm tính phải nộp [29]=[27]x[28]</td>
							<td class="align-c">[29]</td>
						    <td class="align-c"><xsl:value-of select="($tkchinh/ten_donVi)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
   						  </tr>	
   						  <tr>
							<td class="align-c">4</td>
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
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.        </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Chỉ tiêu số [04]- Kỳ tính thuế là ngày, tháng, năm Hội đồng Liên doanh ra quyết nghị khoản tiền sử dụng không hết     </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Chỉ tiêu số [05]- Kỳ kết dư là khoảng thời gian Vietsovpetro xác định khoản tiền sử dụng không hết để báo cáo Hội đồng Liên doanh quyết nghị.   </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Tỷ giá quy đổi thực hiện theo quy định pháp luật về kế toán.       </i></div> 
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>