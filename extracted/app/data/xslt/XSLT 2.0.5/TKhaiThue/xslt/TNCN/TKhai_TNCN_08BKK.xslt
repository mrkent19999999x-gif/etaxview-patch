<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'08B/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho nhóm cá nhân kinh doanh thực hiện nộp thuế theo kê khai )'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
   <table class="tkhai_table" > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">1</td>
						   <td>Doanh thu bán hàng hoá và cung cấp dịch vụ</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Các khoản giảm trừ doanh thu</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td>Chi phí sản xuất, kinh doanh hàng hoá, dịch vụ</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td><b>Thu nhập chịu thuế từ hoạt động kinh doanh [24]=[21]-[22]-[23]</b></td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td>Doanh thu hoạt động tài chính</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6</td>
						   <td>Chi phí tài chính</td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>7</b></td>
						   <td><b>Thu nhập từ hoạt động tài chính [27]=[25]-[26]</b></td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">8</td>
						   <td>Thu nhập khác </td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">9</td>
						   <td>Chi phí khác</td>
						   <td class="align-c"> <b>[29] </b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>10</b></td>
						   <td><b>Thu nhập chịu thuế khác [30]=[28]-[29]</b></td>
						   <td class="align-c"> <b>[30] </b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct30)"/></td>
						 </tr>  
                           <tr>
						   <td class="align-c"><b>11</b></td>
						   <td><b>Tổng thu nhập chịu thuế phát sinh trong kỳ</b></td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct31)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>12</b></td>
						   <td><b>Tổng thu nhập làm căn cứ tính giảm thuế trong kỳ</b></td>
						   <td class="align-c"> <b>[32]</b> </td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeNhom/ct32)"/></td>
						 </tr>  
			  </table><br/>
			  <div class="align-l"><b>CHI TIẾT THU NHẬP VÀ SỐ THUẾ CỦA CÁ NHÂN TRONG NHÓM </b> </div><br/>
			  	<table class="tkhai_table">
						<tr class="tkhaiheader">
							 <td class="align-c" rowspan="2">STT</td>
							 <td class="align-c" rowspan="2">Họ và tên</td>
							 <td class="align-c" rowspan="2">Mã số thuế</td>
							 <td class="align-c" rowspan="2">Tỷ lệ chia TNCT </td>
							 <td class="align-c" colspan="2">TNCT tương ứng</td>
							 <td class="align-c" rowspan="2">Các khoản giảm trừ</td>
							 <td class="align-c" rowspan="2">Thu nhập tính thuế</td>
							 <td class="align-c" rowspan="2">Thuế TNCN</td>
							 <td class="align-c" rowspan="2">Thuế TNCN được giảm</td>
							 <td class="align-c" rowspan="2">Thuế TNCN đã tạm nộp</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Tổng số</td>
							 <td class="align-c">Trong đó: thu nhập làm căn cứ tính giảm thuế</td>
							</tr>
							<tr class="tkhaiheader">
	  	                    <td class="align-c">[33]</td>
							<td class="align-c">[34]</td>
							<td class="align-c">[35]</td>
							<td class="align-c">[36]</td>
							<td class="align-c">[37]</td>
							<td class="align-c">[38]</td>
							<td class="align-c">[39]</td>
							<td class="align-c">[40]</td>
							<td class="align-c">[41]</td>
							<td class="align-c">[42]</td>
							<td class="align-c">[43]</td>
							</tr>
						   <xsl:for-each select="$tkchinh/BKeTungCNhan/CTietBKeTungCNhan">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct34"/></td>
							 <td class="align-c"><xsl:value-of select="ct35"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct36)"/></td>
			  			     <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct37)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct38)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct39)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct40)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct41)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct42)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct43)"/></td>							 
							</tr>
							</xsl:for-each >
						<tr>
							 <td colspan="3" class="align-c"><b>Tổng cộng</b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct44)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct45)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct46)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct47)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct48)"/></b></td>
						     <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct49)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct50)"/></b></td>
							 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BKeTungCNhan/ct51)"/></b></td>						 
							</tr>
						   </table>
		 </div>	
      </div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>	  
		<xsl:call-template name="tkhaiFooter"/>
		<div><i>(TNCT: Thu nhập chịu thuế; TNCN: Thu nhập cá nhân)</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
 	</xsl:template>		
</xsl:stylesheet>