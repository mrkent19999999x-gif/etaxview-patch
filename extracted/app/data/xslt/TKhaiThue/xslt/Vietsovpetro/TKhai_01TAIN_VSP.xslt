<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 155/2011/TT-BTC ngày 11/11/2011 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-VSP">
		<xsl:with-param name="mauTKhai"   select="'01/TAIN-VSP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		            <div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				    </div>
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
							<td class="align-l">Sản lượng dầu thô xuất bán</td>
							<td class="align-c">[27]</td>
							<td class="align-c">thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr> 
					     <tr>
							<td class="align-c"><i>1.1</i></td>					     
            				<td class="align-l"><i> Tỷ lệ quy đổi từ thùng ra tấn</i></td>
							<td class="align-c"><i>[27a]</i></td>
							<td></td>														
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27a)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c"><i>1.2</i></td>					     					    
							<td class="align-l"> <i>Sản lượng dầu thô xuất bán theo tấn  [27b] = [27]x[27a]</i></td>
							<td class="align-c"><i>[27b]</i></td>
							<td class="align-c">Tấn</td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27b)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Giá tính thuế tài nguyên tạm tính</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD/thùng</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Doanh thu [29]=[27]x[28]</td>
							<td class="align-c">[29]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Tỷ lệ thuế tài nguyên </td>
							<td class="align-c">[30]</td>
							<td class="align-c">%</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số tiền thuế tài nguyên tạm tính phải nộp [31]=[29]x[30]</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
 			 </table>
		 </div>		
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div class="ghichu">
		<div><i><u><b>Ghi chú:</b></u> ngày, tháng, năm ở chỉ tiêu số [01] là ngày hoàn thành việc xuất dầu thô tại điểm giao nhận (đối với dầu thô bán tại Việt Nam); hoặc ngày làm xong thủ tục hải quan theo quy định của pháp luật về hải quan (đối với dầu thô xuất khẩu). </i></div><br/>
        <div><i> Hạch toán mục lục 3750, tiểu mục thu: 3751.</i></div>	
	    </div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>