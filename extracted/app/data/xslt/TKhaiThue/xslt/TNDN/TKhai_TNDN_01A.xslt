<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-01ATNDN">
		<xsl:with-param name="mauTKhai"   select="'01A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho người nộp thuế khai theo thu nhập thực tế phát sinh)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						 </tr>						 
						  <tr >
							<td class="align-c" >1</td>
							<td class="align-l">Doanh thu phát sinh trong kỳ</td>
							<td class="align-c">[21]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						  </tr> 
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Chi phí phát sinh trong kỳ</td>
							<td class="align-c">[22]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Lợi nhuận phát sinh trong kỳ ([23]=[21]-[22])</td>
							<td class="align-c">[23]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						  </tr>      
						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Điều chỉnh tăng lợi nhuận theo pháp luật thuế</td>
							<td class="align-c">[24]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						  </tr>     
						   <tr>
							<td class="align-c">5</td>
							<td class="align-l">Điều chỉnh giảm lợi nhuận theo pháp luật thuế</td>
							<td class="align-c">[25]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Thu nhập chịu thuế ([26]=[23]+[24]-[25])</td>
							<td class="align-c">[26]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr>
						  <tr>
           					<td class="align-c">7</td>
							<td class="align-l">Thu nhập miễn thuế</td>
							<td class="align-c">[27]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
						  <tr >
							<td class="align-c">8</td>
							<td class="align-l">Số lỗ chuyển kỳ này</td>
							<td class="align-c">[28]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">9</td>
							<td class="align-l">Thu nhập tính thuế ([29]=[26]-[27]-[28])</td>
							<td class="align-c">[29]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">9.1</td>
							<td class="align-l">Trong đó: + Thu nhập tính thuế áp dụng thuế suất 20%</td>
							<td class="align-c">[30]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">9.2</td>
							<td class="align-l">+ Thu nhập tính thuế áp dụng thuế suất 22%</td>
							<td class="align-c">[31]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">9.3</td>
							<td class="align-l">+ Thu nhập tính thuế áp dụng thuế suất ưu đãi</td>
							<td class="align-c">[32]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>
						  <tr>
							<td></td>
							<td class="align-l">+ Thuế suất ưu đãi (%)</td>
							<td class="align-c">[32a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32a)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">9.4</td>
							<td class="align-l">+ Thu nhập tính thuế áp dụng thuế suất khác </td>
							<td class="align-c">[33]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></td>
						  </tr>
						  <tr>
							<td></td>
							<td class="align-l">+ Thuế suất khác (%)</td>
							<td class="align-c">[33a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33a)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">10</td>
							<td class="align-l">Thuế TNDN phát sinh [34] = ([30] x 20%) + ([31]x22%) + ([32] x [32a]) + ([33] x [33a])</td>
							<td class="align-c">[34]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">11</td>
							<td class="align-l">Thuế TNDN dự kiến miễn, giảm </td>
							<td class="align-c">[35]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">11.1</td>
							<td class="align-l">Trong đó: + số thuế TNDN được miễn, giảm theo Hiệp định (nếu có)</td>
							<td class="align-c">[35a]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35a)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">11.2</td>
							<td class="align-l">+ Miễn, giảm khác ngoài Luật Thuế TNDN (nếu có)</td>
							<td class="align-c">[35b]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35b)"/></td>
						  </tr>						  						  						  				
						  <tr>
							<td class="align-c">12</td>
							<td class="align-l">Thuế TNDN phải nộp trong kỳ ([36]= [34]-[35])</td>
							<td class="align-c">[36]</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)"/></td>
						  </tr>					
 			 </table>
 			 <div></div>
 				<div class="align-l" >[37] Đối tượng được gia hạn [<xsl:if test="$tkchinh/ct37 = 'true'"> x </xsl:if>]</div>	 
 				<div class="align-l" >[37a] Trường hợp được gia hạn nộp thuế TNDN theo:   <xsl:value-of select="$tkchinh/ct37a"/></div>	 
 				<div class="align-l" >[37b] Thời hạn được gia hạn: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct37b, 'dd/mm/yyyy')"/></div>	 
 				<div class="align-l" >[37c] Số thuế TNDN được gia hạn:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37c)"/></div>	 
 				<div class="align-l" >[37d] Số thuế TNDN không được gia hạn:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37d)"/></div>	  				
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/>
		<br/>
		<div class="align-l">
		   <b><i><u>Hộ trợ hạch toán MLNSNN</u></i></b>
		   <br/>
		     Hạch toán chỉ tiêu [36] vào mục 1050 tiểu mục <xsl:value-of select="$tkchinh/tieuMucHachToan"/>
		</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		

	</xsl:template>		
</xsl:stylesheet>