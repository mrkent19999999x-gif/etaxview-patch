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
		 <xsl:call-template name="tkhaiHeader-VSP2">
		<xsl:with-param name="mauTKhai"   select="'01-2/TNDN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với thu nhập từ chi phí sử dụng không hết)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 <div class="align-r"><i>Đơn vị tính: USD</i></div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Giá trị</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>					   
						 </tr>
						  <tr>
							<td class="align-c">1</td>
							<td class="align-l">Thu nhập chịu thuế.</td>
							<td class="align-c">[24]</td>
							<td class="align-r"><xsl:value-of select="$tkchinh/ct24"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Thuế suất thuế TNDN (50%)</td>
							<td class="align-c">[25]</td>						
							<td class="align-r"><xsl:value-of select="$tkchinh/ct25"/></td>
						  </tr>
					     <tr>
							<td class="align-c">3</td>
							<td class="align-l">Số thuế TNDN tạm tính phải nộp [26]=[24]x[25]</td>
							<td class="align-c">[26]</td>
							<td class="align-r"><xsl:value-of select="$tkchinh/ct26"/></td>
   						  </tr>						  
					    
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u> - Chỉ tiêu số [01]- Kỳ tính thuế là ngày, tháng, năm Hội đồng Liên doanh ra quyết nghị khoản chi phí sử dụng không hết tại Văn kiện kỳ họp Hội đồng Liên doanh. <br/>
								- Chỉ tiêu số [02]- Kỳ kết dư là khoảng thời gian Vietsovpetro xác định khoản chi phí sử dụng không hết để báo cáo Hội đồng Liên doanh phê duyệt.</i></div><br/>
        <div><i>Hạch toán mục 3750, tiểu mục: 3752.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>