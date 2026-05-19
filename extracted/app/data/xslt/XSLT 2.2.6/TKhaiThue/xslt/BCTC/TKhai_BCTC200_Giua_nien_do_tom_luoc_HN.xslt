<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 200/2014/TT-BTC Ngày 22/12/2014 của Bộ Tài chính'" />
		<xsl:call-template name="tkhaiHeader-BCTC200_TL_HN">
		<xsl:with-param name="mauTKhai"   select="'B 01b– DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tính: đồng VN</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>TÀI SẢN </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối kỳ </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c" ><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5) </b></td>
        </tr>
<!-- Tai san -->
        <tr>
            <td class="align-c"><b>A – TÀI SẢN NGẮN HẠN </b><br/> (100=110+120+130+140+150) </td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct100)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct100)"/></b></td>
          </tr>
        <tr>
            <td class="align-l">I. Tiền và các khoản tương đương tiền</td>
            <td class="align-c">110</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct110)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct110)"/></td>
        </tr>
        <tr>
            <td class="align-l">II. Đầu tư tài chính ngắn hạn</td>
            <td class="align-c">120</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></td>
        </tr>
        <tr>
            <td class="align-l">III. Các khoản phải thu ngắn hạn</td>
            <td class="align-c">130</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct130)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct130)"/></td>
        </tr>
        <tr>
            <td class="align-l">IV. Hàng tồn kho</td>
            <td class="align-c">140</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct140)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct140)"/></td>
        </tr>
        <tr>
            <td class="align-l">V. Tài sản ngắn hạn khác</td>
            <td class="align-c">150</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct150)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct150)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B - TÀI SẢN DÀI HẠN</b> <br/> (200 = 210 + 220 + 240 + 250 + 260)</td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b><xsl:value-of select="$tkchinh/SoCuoiQuy/ct200"/></b></td>
            <td class="align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td class="align-l">I. Các khoản phải thu dài hạn </td>
            <td class="align-c">210</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></td>
            <td class="align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct210"/></td>
            <td class="align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct210"/></td>
        </tr>
        <tr>
            <td class="align-l">II. Tài sản cố định</td>
            <td class="align-c">220</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct220"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct220"/></td>
        </tr>
         <tr>
            <td class="align-l">III. Bất động sản đầu tư</td>
            <td class="align-c">240</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct240"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct240"/></td>
        </tr>
        <tr>
            <td class="align-l">IV. Các khoản đầu tư tài chính dài hạn</td>
            <td class="align-c">250</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct250"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct250"/></td>
        </tr>
       
        <tr>
            <td class="align-l">V. Tài sản dài hạn khác</td>
            <td class="align-c">260</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct260)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct260)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN (270 = 100 + 200)</b></td>
            <td class="align-c"><b>270</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct270"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct270)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct270)"/></b></td>
        </tr>
         <tr>
            <td class="align-c"><b>NGUỒN VỐN</b></td>
            <td class="align-c"></td>
            <td class="align-l"><b></b></td>
            <td class="align-r"><b></b></td>
            <td class="align-r"><b></b></td>
        </tr>
         <tr>
            <td class="align-c"><b>A - NỢ PHẢI TRẢ (300 = 310+ 330)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct300)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct300)"/></b></td>
        </tr>
          <tr>
            <td class="align-l">I. Nợ ngắn hạn</td>
            <td class="align-c">310</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct310"/></td>
        </tr>
        <tr>
            <td class="align-l">II. Nợ dài hạn</td>
            <td class="align-c">330</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct330"/></td>
        </tr>
       <tr>
            <td class="align-c"><b>B - VỐN CHỦ SỞ HỮU (400 = 410 + 430)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct400)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct400)"/></b></td>
        </tr>
          <tr>
            <td class="align-l">I. Vốn chủ sở hữu</td>
            <td class="align-c">410</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct410"/></td>
        </tr>
        <tr>
            <td class="align-l"> II. Nguồn kinh phí và quỹ khác</td>
            <td class="align-c">430</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct430"/></td>
        </tr>
       <tr>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN (440 = 300 + 400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct440"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct440)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct440)"/></b></td>
        </tr>  
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC_GND">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>