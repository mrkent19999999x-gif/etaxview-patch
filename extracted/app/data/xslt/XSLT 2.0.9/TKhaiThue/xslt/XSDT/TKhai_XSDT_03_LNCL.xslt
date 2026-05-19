<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo công văn số 4311/TCT-DNL ngày 3/10/2014 của Tổng cục Thuế'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'03/LNCL-XSĐT'"/>
	<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'Áp dụng cho Công ty TNHH MTV xổ số điện toán Việt Nam'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
	        <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
            <table class="tkhai_table"  > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã số</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr  class="tkhaiheader">
						   <td class="align-c">[a]</td>
						   <td class="align-c">[b]</td>
						   <td class="align-c">[c]</td>
						   <td class="align-c">[d]</td>
						 </tr>						 
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td><b>Lợi nhuận sau thuế TNDN</b></td>
						   <td class="align-c">[21]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>2</b></td>
						   <td><b>Các khoản phân phối, trích lập các quỹ theo quy định được trừ ([22] = [23] + [24] + [25] + [26] + [27] + [28])</b></td>
						   <td class="align-c">[22]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td>Chia lãi cho các thành viên góp vốn liên kết theo quy định của hợp đồng (nếu có).</td>
						   <td class="align-c">[23]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td>Bù đắp các khoản lỗ của các năm trước đã hết thời hạn được trừ vào lợi nhuận trước thuế.</td>
						   <td class="align-c">[24]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td>Quỹ đầu tư phát triển.</td>
						   <td class="align-c">[25]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.4</td>
						   <td>Quỹ khen thưởng, phúc lợi.</td>
						   <td class="align-c">[26]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.4</td>
						   <td>Quỹ thưởng viên chức quản lý doanh nghiệp.</td>
						   <td class="align-c">[27]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.5</td>
						   <td>Trích các quỹ đặc thù từ lợi nhuận sau thuế theo quy định của pháp luật (nếu có).</td>
						   <td class="align-c">[28]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>3</b></td>
						   <td><b>Lợi nhuận còn lại phải nộp NSNN ([29] = [21] - [22])</b></td>
						   <td class="align-c">[29]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)"/></td>
						 </tr>  
						 </table>
      </div>		
      </div>		
		<xsl:call-template name="tkhaiFooter"/>
		 <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>			
		<div>* Mẫu này chỉ Áp dụng phân bổ thuế TNCN đối với hoa hồng trả cho đại lý xổ số.</div>
	<div id="sigDiv"></div>
</td>
</tr>
</table>
 	</xsl:template>		
</xsl:stylesheet>