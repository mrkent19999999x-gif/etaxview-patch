<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 176/2014/TT-BTC ngày 17/11/2014 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-02TAIN_VSP">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-VSP'"/>
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
							<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên trong kỳ tính thuế  [26]=[26a]+[26b]</td>
							<td class="align-c">[26]</td>
							<td class="align-c">Thùng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						  </tr> 
					     <tr>
							<td class="align-c"><i>1.1</i></td>					     
            				<td class="align-l"><i>Sản lượng xuất khẩu</i></td>
							<td class="align-c"><i>[26a]</i></td>
							<td class="align-c"><i>Thùng; m3</i></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26a)"/></td>
						  </tr>						  
					    <tr>
							<td class="align-c"><i>1.2</i></td>					     					    
							<td class="align-l"> <i>Sản lượng xuất bán tại Việt Nam</i></td>
							<td class="align-c"><i>[26b]</i></td>
							<td class="align-c"><i>Thùng; m3</i></td>																					
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26b)"/></td>
						  </tr>						  
						  <tr>
							<td class="align-c">2</td>
							<td class="align-l">Tổng doanh thu xuất bán trong kỳ tính thuế</td>
							<td class="align-c">[27]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">3</td>
							<td class="align-l">Giá tính thuế tài nguyên trong kỳ tính thuế [28]=[27]/[26]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">USD/thùng; USD/m3</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">4</td>
							<td class="align-l">Thuế tài nguyên bằng dầu khí phải nộp trong kỳ tính thuế  </td>
							<td class="align-c">[29]</td>
							<td class="align-c">Thùng; m3</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">5</td>
							<td class="align-l">Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [30]=[28]x[29]</td>
							<td class="align-c">[30]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">6</td>
							<td class="align-l">Số tiền thuế tài nguyên tạm tính đã kê khai trong kỳ tính thuế</td>
							<td class="align-c">[31]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						  </tr>
						  <tr>
							<td class="align-c">7</td>
							<td class="align-l">Chênh lệch giữa số tiền thuế phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [32]=[30]-[31]</td>
							<td class="align-c">[32]</td>
							<td class="align-c">USD</td>								
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)"/></td>
						  </tr>
 			 </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>
		  
		<xsl:call-template name="tkhaiFooter"/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Trường hợp Liên doanh khai thác đồng thời dầu thô, condensate, khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.      </i>
        	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>