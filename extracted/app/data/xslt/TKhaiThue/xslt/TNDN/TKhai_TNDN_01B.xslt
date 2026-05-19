<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01ATNDN">
		<xsl:with-param name="mauTKhai"   select="'01B/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho người nộp thuế khai theo tỷ lệ thu nhập chịu thuế trên doanh thu)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						 <tr>
						   <td class="align-c" colspan="2"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c" colspan="2">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						 </tr>
						  <tr >
							<td class="align-c" ><b>1</b></td>
							<td></td>
							<td class="align-l">Doanh thu phát sinh trong kỳ</td>
							<td class="align-c">[21]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						  </tr> 
						  <tr>
            			    <td></td>
							<td class="align-c"><b>a</b></td>
							<td class="align-l">Doanh thu theo thuế suất không ưu đãi:</td>
							<td class="align-c">[22]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						  </tr>
					     <tr>
            			    <td rowspan="3"></td>
            			    <td rowspan="3"></td>
							<td class="align-l">Doanh thu theo thuế suất không ưu đãi: 20% </td>
							<td class="align-c">[22a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22a)"/></td>
   						  </tr>						  
					     <tr>
            				<td class="align-l">Doanh thu theo thuế suất không ưu đãi: 22% </td>
							<td class="align-c">[22b]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22b)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-l">Doanh thu theo thuế suất không ưu đãi khác</td>
							<td class="align-c">[22c]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22c)"/></td>
						  </tr>						  
						  <tr>
						    <td></td>
							<td class="align-c"><b>b</b></td>
							<td class="align-l">Doanh thu của hoạt động được ưu đãi về thuế suất</td>
							<td class="align-c">[23]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr>      
						  <tr>
							<td class="align-c"><b>2</b></td>
							<td></td>
							<td class="align-l">Tỷ lệ thu nhập chịu thuế trên doanh thu (%)</td>
							<td class="align-c">[24]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c"><b>3</b></td>
							<td></td>
							<td class="align-l">Thuế suất </td>
							<td class="align-c">[25]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						  </tr>
						  <tr>
							<td rowspan="3"></td>
							<td rowspan="3"><b>a</b></td>
							<td class="align-l">Thuế suất không ưu đãi: 20%</td>
							<td class="align-c">[25a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25a)"/></td>
						  </tr>
  						  <tr>
							<td class="align-l">Thuế suất không ưu đãi: 22%</td>
							<td class="align-c">[25b]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25b)"/></td>
						  </tr>
						  <tr>
							<td class="align-l">Thuế suất không ưu đãi khác (%):</td>
							<td class="align-c">[25c]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25c)"/></td>
						  </tr>
						  <tr>
						    <td></td>
							<td class="align-c"><b>b</b></td>
							<td class="align-l">Thuế suất ưu đãi (%) </td>
							<td class="align-c">[26]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr>      
						  <tr>
           					<td class="align-c"><b>4</b></td>
           					<td></td>
							<td class="align-l">Thuế thu nhập doanh nghiệp (TNDN) phát sinh trong kỳ ([27]= [28]+[29])</td>
							<td class="align-c">[27]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
						  <tr>
						    <td></td>
							<td class="align-c"><b>a</b></td>
							<td class="align-l">Thuế TNDN của hoạt động không ưu đãi  ([28]=[22a]x[24] x [25a]+[22b]x[24] x [25b]+[22c]x[24] x [25c])</td>
							<td class="align-c">[28]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
						  <tr>
						    <td></td>
							<td class="align-c"><b>b</b></td>
							<td class="align-l">Thuế TNDN của hoạt động được ưu đãi về thuế suất ([29]= [23]x[24]x[26])</td>
							<td class="align-c">[29]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>
						  <tr>
							<td class="align-c"><b>5</b></td>
							<td></td>
							<td class="align-l">Thuế thu nhập doanh nghiệp dự kiến miễn, giảm</td>
							<td class="align-c">[30]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>
						  <tr>
						    <td></td>
							<td class="align-c"><b>a</b></td>
							<td class="align-l">Trong đó: + số thuế TNDN được miễn, giảm theo Hiệp định</td>
							<td class="align-c">[30a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30a)"/></td>
						  </tr>
						  <tr>
						    <td></td>
							<td class="align-c"><b>b</b></td>
							<td class="align-l"> + Miễn, giảm khác ngoài Luật Thuế TNDN (nếu có)</td>
							<td class="align-c">[30b]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30b)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c"><b>6</b></td>
							<td></td>
							<td class="align-l">Thuế TNDN phải nộp trong kỳ ([31]= [27]–[30])</td>
							<td class="align-c">[31]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
 			 </table>
 			 <div></div>
 				<div class="align-l" >[32] Đối tượng được gia hạn   [<xsl:if test="$tkchinh/ct32 = 'true'"> x </xsl:if>]</div>	 
 				<div class="align-l" >[32a] Trường hợp được gia hạn nộp thuế TNDN theo: <xsl:value-of select="$tkchinh/ct32a"/></div>	 
 				<div class="align-l" >[32b] Thời hạn được gia hạn: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct32b, 'dd/mm/yyyy')"/></div>	 
 				<div class="align-l" >[32c] Số thuế TNDN được gia hạn : <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32c)"/></div>	 
 				<div class="align-l" >[32d] Số thuế TNDN không được gia hạn: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32d)"/></div>	  				
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">
		<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/>
		</div>
		<br/>
		<div class="align-l">
		   <b><i><u>Hộ trợ hạch toán MLNSNN</u></i></b>
		   <br/>
		     Hạch toán chỉ tiêu [31] vào mục 1050 tiểu mục <xsl:value-of select="$tkchinh/tieuMucHachToan"/>
		</div>	
 <div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>