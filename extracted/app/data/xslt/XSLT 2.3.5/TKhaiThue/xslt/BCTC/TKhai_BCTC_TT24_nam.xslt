<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 24/2017/ TT-BTC ngày 28/3/2017 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC133_B01a">
		 
		<xsl:with-param name="mauTKhai"   select="'B01 - HTX'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BÁO CÁO TÌNH HÌNH TÀI CHÍNH -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>CHỈ TIÊU </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
<!-- Tai san -->
        <tr>
            <td class="align-c"><b>TÀI SẢN</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
        </tr>
        <tr>
            <td> 1. Tiền </td>
            <td class="align-c">110</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></td>
        </tr>
        <tr>
            <td>2. Đầu tư tài chính</td>
            <td class="align-c">120</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></td>
        </tr>
        <tr>          
            <td>3. Các khoản phải thu</td>
            <td class="align-c">130</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></td>
        </tr>
        <tr>
            <td><i>Trong đó: Phải thu của hoạt động tín dụng nội bộ</i></td>
            <td class="align-c"><i>137</i></td>
            <td class="align-l"><i><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></i></td>
            <td class="align-r"><i class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct137"/></i></td>
            <td class="align-r"><i class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct137"/></i></td>
        </tr>
        <tr>   
            <td>4. Hàng tồn kho</td>
            <td class="align-c">140</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></td>
        </tr>
        <tr>
            <td>5. Giá trị còn lại của tài sản cố định</td>
              <td class="align-c">150</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></td>
        </tr>
        <tr>         
            <td>6. Tài sản khác</td>
             <td class="align-c">160</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct160"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct160"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct160"/></td>
        </tr>
        <tr>
            <td>7. Dự phòng tổn thất tài sản</td>
             <td class="align-c">170</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct170"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct170"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct170"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN (200=110+120+130+140+150+160+170)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>NGUỒN VỐN</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
        </tr>
        <tr>
            <td><b>I. Nợ phải trả (300= 310 + 320 + 330 + 340 + 350 + 360 + 370 + 380 + 390)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán</td>
            <td class="align-c">310</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct310"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct320"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">330</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct330"/></td>
        </tr>
        <tr>
            <td>4. Phải trả người lao động</td>
            <td class="align-c">340</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct340"/></td>
        </tr>
        <tr>
            <td>5. Phải trả nợ vay</td>
            <td class="align-c">350</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct350"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct350"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct350"/></td>
        </tr>
        <tr>
            <td>6. Phải trả khác</td>
            <td class="align-c">360</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct360"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct360"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct360"/></td>
        </tr>
        <tr>
            <td>7. Phải trả của hoạt động tín dụng nội bộ</td>
            <td class="align-c">370</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct370"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct370"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct370"/></td>
        </tr>
        <tr>
            <td>8. Khoản trợ cấp, hỗ trợ của Nhà nước phải hoàn lại</td>
            <td class="align-c">380</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct380"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct380"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct380"/></td>
        </tr>
         <tr>
            <td>9. Quỹ dự phòng rủi ro tín dụng</td>
            <td class="align-c">390</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct390"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct390"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct390"/></td>
        </tr>
         <tr>
            <td><b>II. Vốn chủ sở hữu (400=410 + 420 + 430 + 440)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct400"/></b></td>
        </tr>
         <tr>
            <td>1. Vốn góp của chủ sở hữu</td>
            <td class="align-c">410</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct410"/></td>
        </tr>
         <tr>
            <td>2. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">420</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct420"/></td>
        </tr>
         <tr>
            <td>3. Các quỹ thuộc vốn chủ sở hữu</td>
            <td class="align-c">430</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct430"/></td>
        </tr>
         <tr>
            <td>4. Nguồn vốn nhận trợ cấp, hỗ trợ không hoàn lại của Nhà nước</td>
            <td class="align-c">440</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct440"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct440"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct440"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN (500=300+400)</b></td>
            <td class="align-c"><b>500</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct500"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct500"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct500"/></b></td>
        </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC133">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>