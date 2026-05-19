<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 133/2016/TT-BTC ngày 26/8/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC133_B01a">
		 
		<xsl:with-param name="mauTKhai"   select="'B01a - DNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho doanh nghiệp đáp ứng giả định hoạt động liên tục)'"/>
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
            <td class="align-c"><b>(1)</b></td>
            <td class="align-c"><b>(2)</b></td>
            <td class="align-c"><b>(3)</b></td>
            <td class="align-c"><b>(4)</b></td>
            <td class="align-c"><b>(5)</b></td>
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
            <td><b> I. Tiền và các khoản tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></b></td>
        </tr>
        <tr>
            <td><b>II. Đầu tư tài chính</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>          
            <td>1. Chứng khoán kinh doanh</td>
            <td class="align-c">121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td>2. Đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">122</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct122"/></td>
        </tr>
        <tr>   
            <td>3. Đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">123</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct123"/></td>
        </tr>
        <tr>
            <td>4. Dự phòng tổn thất đầu tư tài chính (*)</td>
              <td class="align-c">124</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct124"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct124"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct124"/></td>
        </tr>
        <tr>         
            <td><b>III. Các khoản phải thu</b></td>
             <td class="align-c"><b>130</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td>1. Phải thu của khách hàng</td>
             <td class="align-c">131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td>2. Trả trước cho người bán</td>
             <td class="align-c">132</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct132"/></td>
        </tr>
        <tr>
            <td>3. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></td>
        </tr>
        <tr> 
            <td>4. Phải thu khác</td>
            <td class="align-c">134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td>5. Tài sản thiếu chờ xử lý</td>
            <td class="align-c">135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td>6. Dự phòng phải thu khó đòi (*)</td>
            <td class="align-c">136</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct136"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct136"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct136"/></td>
        </tr>
        <tr>
            <td>7. Phải thu của hoạt động tín dụng nội bộ</td>
            <td class="align-c">137</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct137"/></td>
        </tr>
        <tr> 
            <td><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></b></td>
        </tr>
         <tr>
            <td>1. Hàng tồn kho</td>
            <td class="align-c">141</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct141"/></td>
        </tr>
        <tr>
            <td>2. Dự phòng giảm giả hàng tồn kho (*)</td>
            <td class="align-c">142</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct142"/></td>
        </tr>   
        <tr>
            <td><b>V. Tài sản cố định </b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></b></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">151</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn lũy kế</td>
            <td class="align-c">152</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct152"/></td>
        </tr>
        <tr>
            <td><b>VI. Bất động sản đầu tư</b></td>
            <td class="align-c"><b>160</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct160"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct160"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct160"/></b></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">161</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct161"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct161"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct161"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">162</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct162"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct162"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct162"/></td>
        </tr>
        <tr>
            <td><b>VII. XDCB dở dang</b></td>
            <td class="align-c"><b>170</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct170"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct170"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct170"/></b></td>
        </tr>
        <tr>
            <td><b>VIII. Tài sản khác</b></td>
            <td class="align-c"><b>180</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct180"/></b></td>
        </tr>
        <tr>
            <td>1. Thuế GTGT được khấu trừ</td>
            <td class="align-c">181</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct181"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct181"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct181"/></td>
        </tr>
           <tr>
            <td>2. Tài sản khác</td>
            <td class="align-c">182</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct182"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct182"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct182"/></td>
        </tr>
          <tr>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN (200=110+120+130+140+150+160+170+180)</b></td>
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
            <td><b>I. Nợ phải trả</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán</td>
            <td class="align-c">311</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct311"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước</td>
            <td class="align-c">312</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct312"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">313</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct313"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct313"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct313"/></td>
        </tr>
        <tr>
            <td>4. Phải trả người lao động</td>
            <td class="align-c">314</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct314"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct314"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct314"/></td>
        </tr>
        <tr>
            <td>5. Phải trả khác</td>
            <td class="align-c">315</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct315"/></td>
        </tr>
        <tr>
            <td>6. Vay và nợ thuê tài chính</td>
            <td class="align-c">316</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct316"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct316"/></td>
        </tr>
        <tr>
            <td>7. Phải trả nội bộ về vốn kinh doanh</td>
            <td class="align-c">317</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct317"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct317"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct317"/></td>
        </tr>
        <tr>
            <td>8. Dự phòng phải trả</td>
            <td class="align-c">318</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct318"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct318"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct318"/></td>
        </tr>
         <tr>
            <td>9. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">319</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct319"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct319"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct319"/></td>
        </tr>
         <tr>
            <td>10. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct320"/></td>
        </tr>
          <tr>
            <td>11. Phải trả của hoạt động tín dụng nội bộ</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct370"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct370"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct370"/></td>
        </tr>
         <tr>
            <td>12. Khoản trợ cấp, hỗ trợ của Nhà nước phải hoàn lại</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct380"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct380"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct380"/></td>
        </tr>
         <tr>
            <td>13. Quỹ dự phòng rủi ro tín dụng</td>
            <td class="align-c">390</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct390"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct390"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct390"/></td>
        </tr>
        <tr>
            <td><b>II. Vốn chủ sở hữu</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct400"/></b></td>
        </tr>
         <tr>
            <td>1. Vốn góp của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411"/></td>
        </tr>
         <tr>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct412"/></td>
        </tr>
         <tr>
            <td>3. Vốn khác của chủ sở hữu</td>
            <td class="align-c">413</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct413"/></td>
        </tr>
         <tr>
            <td>4. Cổ phiếu quỹ (*)</td>
            <td class="align-c">414</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct414"/></td>
        </tr>
         <tr>
            <td>5. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">415</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct415"/></td>
        </tr>
         <tr>
            <td>6. Các quỹ thuộc vốn chủ sở hữu</td>
            <td class="align-c">416</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct416"/></td>
        </tr>
         <tr>
            <td>7. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">417</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct417"/></td>
        </tr>
         <tr>
            <td>8. Nguồn vốn nhận trợ cấp, hỗ trợ không hoàn lại của Nhà nước</td>
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
<div><i><b>Ghi chú:</b></i></div>
<div><i>(1) Những chỉ tiêu không có số liệu được miễn trình bày nhưng không được đánh lại “Mã số” chỉ tiêu.</i></div>
<div><i>(2) Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (…).</i></div>
<div><i>(3) Đối với doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì “Số cuối năm” có thể ghi là “31.12.X”; “Số đầu năm” có thể ghi là “01.01.X”.</i></div>
<div><i>(4) Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>