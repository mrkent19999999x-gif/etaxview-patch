<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
 
 	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC200_Nam">
		<xsl:with-param name="mauTKhai"   select="'Mẫu số B01 – CTQ'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
 

 
<!-- BẢNG CÂN ĐỐI KẾ TOÁN Áp dụng cho doanh nghiệp đáp ứng giả định hoạt động liên tục --> 
 
<div class="ndungtkhai_div">
<div class="content">

<div class="align-r">Đơn vị tính: Đồng Việt Nam</div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh</b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
            <td class="align-c"><b>Số đầu năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
      
        
<!-- A - TÀI SẢN -->
        
        <tr>
            <td><b>A - TÀI SẢN(100 = 110 + 120 + 130 + 140 + 150 + 160 + 170 + 180)</b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct100"/></b></td>
        </tr>
        <tr>
            <td><b>I. Tiền và các khoản tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></b></td>
        </tr>
        <tr>
            <td>1. Tiền</td>
            <td class="align-c">111</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct111"/></b></td>
        </tr>
        <tr>
            <td>2. Các khoản tương đương tiền</td>
            <td class="align-c">112</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct112"/></b></td>
        </tr>
        <tr>
            <td><b>II. Các Khoản đầu tư</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>
            <td>1. Đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">121</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct121"/></b></td>
        </tr>
        <tr>
            <td>  a. Tiền gửi có kỳ hạn</td>
            <td class="align-c">121a</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct121a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct121a"/></b></td>
        </tr>
        <tr>
            <td>  b. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">121b</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct121b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct121b"/></b></td>
        </tr>
		<tr>
            <td> c. Đầu tư trái phiếu</td>
            <td class="align-c">121c</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct121c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct121c"/></b></td>
        </tr>
		<tr>
            <td> d. Các Khoản đầu tư khác nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">121d</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct121d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct121d"/></b></td>
        </tr>
		
        <tr>
            <td><b>2. Cho Vay</b></td>
            <td class="align-c"><b>122</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct122"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct122"/></b></td>
        </tr>
		<tr>
            <td><b>a. Cho vay</b></td>
            <td class="align-c"><b>122a</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct122a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct122a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct122a"/></b></td>
        </tr>
		<tr>
            <td><b>b. Dự phòng rủi ro cho vay (*)</b></td>
            <td class="align-c"><b>122b</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct122b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct122b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct122b"/></b></td>
        </tr>
		<tr>
            <td><b>3. Đầu tư góp vốn vào đơn vị khác</b></td>
            <td class="align-c"><b>123</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct123"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct123"/></b></td>
        </tr>
		<tr>
            <td><b>a. Đầu tư vào công ty con</b></td>
            <td class="align-c"><b>123a</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct123a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct123a"/></b></td>
        </tr>
		<tr>
            <td><b>b. Đầu tư vào công ty liên doanh, liên kết</b></td>
            <td class="align-c"><b>123b</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct123b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct123b"/></b></td>
        </tr>
		<tr>
            <td><b>c. Đầu tư góp vốn vào đơn vị khác</b></td>
            <td class="align-c"><b>123c</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct123c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct123c"/></b></td>
        </tr>
		<tr>
            <td><b>d. Dự phòng tổn thất đầu tư vào đơn vị khác (*)</b></td>
            <td class="align-c"><b>123d</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct123d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct123d"/></b></td>
        </tr>
		<tr>
            <td> III. Các Khoản phải thu</td>
            <td class="align-c">130</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td>  1. Phải thu khách hàng  </td>
            <td class="align-c">131</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></b></td>
        </tr>
		<tr>
            <td> a. Phải thu lãi tiền gửi, lãi cho vay </td>
            <td class="align-c">131a</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131a"/></b></td>
        </tr>
		<tr>
            <td> b. Phải thu từ hoạt động đầu tư trực tiếp</td>
            <td class="align-c">131b</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131b"/></b></td>
        </tr>
		<tr>
            <td> c. Phải thu từ thanh lý, nhượng bán các Khoản đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">131c</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131c"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131c"/></b></td>
        </tr>
		<tr>
            <td> d. Phải thu phí hoạt động nhận ủy thác, phí quản lý hợp vốn</td>
            <td class="align-c">131d</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131d"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131d"/></b></td>
        </tr>
		<tr>
            <td>e. Phải thu hoạt động nghiệp vụ khác</td>
            <td class="align-c">131e</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct131e"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131e"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct131e"/></b></td>
        </tr>
        <tr>
            <td>2. Trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct132"/></b></td>
        </tr>
        <tr>
            <td>3. Phải thu nội bộ ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></b></td>
        </tr>
        <tr>
            <td>  4. Phải thu hoạt động nghiệp vụ</td>
            <td class="align-c">134</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct134"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct134"/></b></td>
        </tr>
        <tr>
            <td>  5. Các khoản phải thu khác</td>
            <td class="align-c">135</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct135"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></b></td>
        </tr>
        <tr>
            <td>  6. Phải thu khác</td>
            <td class="align-c">136</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct136"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct136"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct136"/></b></td>
        </tr>
		<tr>
            <td> 7. Tài sản thiếu chờ xử lý</td>
            <td class="align-c">137</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct137"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct137"/></b></td>
        </tr>
		<tr>
            <td> 8. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">138</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct138"/></b></td>
        </tr>
        <tr>
            <td>9. Dự phòng phải thu khó đòi (*)</td>
            <td class="align-c">139</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct139"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct139"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct139"/></b></td>
        </tr>
        <tr>
            <td><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></b></td>
        </tr>
		<tr>
            <td><b>1. Hàng tồn kho</b></td>
            <td class="align-c"><b>141</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct141"/></b></td>
        </tr>
        <tr>
            <td><b>2. Dự phòng giảm giá hàng tồn kho (*)</b></td>
            <td class="align-c"><b>149</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct149"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct149"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct149"/></b></td>
        </tr>
        <tr>
            <td><b>V. Tài sản cố định</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></b></td>
        </tr>
        <tr>
            <td>1. Tài sản cố định hữu hình</td>
            <td class="align-c">151</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct151"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct151"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct151"/></b></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">152</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct152"/></b></td>
        </tr>
           <tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">153</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct153"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct153"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct153"/></b></td>
        </tr>   
        <tr>
            <td>2. Tài sản cố định thuê tài chính</td>
            <td class="align-c">154</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct154"/></b></td>
        </tr>
		<tr>
            <td>- Nguyên giá</td>
            <td class="align-c">155</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct155"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct155"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct155"/></b></td>
        </tr>
		<tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">156</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct156"/></b></td>
        </tr>
		
        <tr>
            <td>3. Tài sản cố định vô hình</td>
            <td class="align-c">157</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct157"/></b></td>
        </tr>
		<tr>
            <td>- Nguyên giá</td>
            <td class="align-c">158</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct158"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct158"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct158"/></b></td>
        </tr>
		<tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">159</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct159"/></b></td>
        </tr>
		
		<tr>
            <td>VI. Bất động sản đầu tư</td>
            <td class="align-c">160</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct160"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct160"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct160"/></b></td>
        </tr>
		<tr>
            <td>- Nguyên giá</td>
            <td class="align-c">161</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct161"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct161"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct161"/></b></td>
        </tr>
		<tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">162</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct162"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct162"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct162"/></b></td>
        </tr>
		
		<tr>
            <td>VII. Tài sản dở dang</td>
            <td class="align-c">170</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct170"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct170"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct170"/></b></td>
        </tr>
		<tr>
            <td>1. Chi phí sản xuất, kinh doanh dở dang</td>
            <td class="align-c">171</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct171"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct171"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct171"/></b></td>
        </tr>
		<tr>
            <td>2. Chi phí xây dựng cơ bản dở dang</td>
            <td class="align-c">172</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct172"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct172"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct172"/></b></td>
        </tr>
		
		<tr>
            <td>VIII. Tài sản khác</td>
            <td class="align-c">180</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct180"/></b></td>
        </tr>
		<tr>
            <td>1. Thuế GTGT được khấu trừ</td>
            <td class="align-c">181</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct181"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct181"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct181"/></b></td>
        </tr>
		<tr>
            <td>2. Thuế và các Khoản khác phải thu Nhà nước</td>
            <td class="align-c">182</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct182"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct182"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct182"/></b></td>
        </tr>
		<tr>
            <td>3. Chi phí trả trước</td>
            <td class="align-c">183</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct183"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct183"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct183"/></b></td>
        </tr>
		<tr>
            <td>4. Thiết bị, vật tư, phụ tùng thay thế</td>
            <td class="align-c">184</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct184"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct184"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct184"/></b></td>
        </tr>
		<tr>
            <td>5. Tài sản thuế thu nhập hoãn lại</td>
            <td class="align-c">185</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct185"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct185"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct185"/></b></td>
        </tr>
		<tr>
            <td>6. Tài sản gán nợ đã chuyển quyền sở hữu chờ xử lý</td>
            <td class="align-c">186</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct186"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct186"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct186"/></b></td>
        </tr>
		<tr>
            <td>7. Tài sản khác</td>
            <td class="align-c">188</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct188"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct188"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct188"/></b></td>
        </tr>
        <tr>
            <td><b>B - NỢ PHẢI TRẢ (200 = 210 + 220 + 240)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td><b>I. Nhận ủy thác, nhận hợp vốn cho vay (210=211+212+213+214+215)</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct210"/></b></td>
        </tr>
        <tr>
            <td> 1. Vốn nhận ủy thác cấp phát đầu tư</td>
            <td class="align-c">211</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct211"/></b></td>
        </tr>
        <tr>
            <td> 2. Vốn nhận ủy thác hỗ trợ lãi suất</td>
            <td class="align-c">212</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct212"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct212"/></b></td>
        </tr>
        <tr>
            <td>3. Vốn nhận ủy thác cho vay đầu tư</td>
            <td class="align-c">213</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct213"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct213"/></b></td>
        </tr>
        <tr>
            <td> 4. Vốn nhận ủy thác ứng vốn</td>
            <td class="align-c">214</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct214"/></b></td>
        </tr>
        <tr>
            <td>5. Nhận hợp vốn cho vay đầu tư</td>
            <td class="align-c">215</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct215"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct215"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct215"/></b></td>
        </tr>
        
        <tr>
            <td><b>II. Các Khoản phải trả( 220=221+222+223+224+...+234)</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct220"/></b></td>
        </tr>
        <tr>
            <td><b>1. Phải trả người bán</b></td>
            <td class="align-c"><b>221</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct221"/></b></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước</td>
            <td class="align-c">222</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct222"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct222"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct222"/></b></td>
        </tr>
        <tr>
            <td>3. Phải trả lãi, chi phí huy động vốn</td>
            <td class="align-c">223</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct223"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct223"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct223"/></b></td>
        </tr>
        <tr>
              <td><b>4. Thuế và các Khoản phải nộp Nhà nước</b></td>
            <td class="align-c"><b>224</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct224"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct224"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct224"/></b></td>
        </tr>
        <tr>
            <td>5. Phải trả người lao động</td>
            <td class="align-c">225</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct225"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct225"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct225"/></b></td>
        </tr>
        <tr>
            <td>6. Chi phí phải trả</td>
            <td class="align-c">226</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct226"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct226"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct226"/></b></td>
        </tr>
        <tr>
            <td><b>7. Phải trả nội bộ</b></td>
            <td class="align-c"><b>227</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct227"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct227"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct227"/></b></td>
        </tr>
        <tr>
            <td>8. Doanh thu chưa thực hiện</td>
            <td class="align-c">228</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct228"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct228"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct228"/></b></td>
        </tr>
        <tr>
            <td>9. Phải trả khác</td>
            <td class="align-c">229</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct229"/></b></td>
        </tr>
       <tr>
            <td><b> 10. Thuế thu nhập hoãn lại phải trả</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct230"/></b></td>
        </tr>
        
		<tr>
            <td><b>11. Dự phòng phải trả</b></td>
            <td class="align-c"><b>231</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct231"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct231"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct231"/></b></td>
        </tr>
		<tr>
            <td><b>12. Quỹ khen thưởng, phúc lợi</b></td>
            <td class="align-c"><b>232</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct232"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct232"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct232"/></b></td>
        </tr>
		<tr>
            <td><b>13. Quỹ phát triển khoa học và công nghệ</b></td>
            <td class="align-c"><b>233</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct233"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct233"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct233"/></b></td>
        </tr>
		<tr>
            <td><b>14. Phải trả nội bộ về vốn kinh doanh</b></td>
            <td class="align-c"><b>234</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct234"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct234"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct234"/></b></td>
        </tr>
        <tr>
            <td><b>III. Vay và nợ thuê tài chính</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct240"/></b></td>
        </tr>
        <tr>
            <td>1. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">241</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct241"/></b></td>
        </tr>
        <tr>
            <td>2. Nợ vay</td>
            <td class="align-c">242</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct242"/></b></td>
        </tr>
        <tr>
            <td><b>3. Trái phiếu phát hành</b></td>
            <td class="align-c"><b>243</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct243"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct243"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct243"/></b></td>
        </tr>
        <tr>
            <td>4. Các Khoản nợ thuê tài chính</td>
            <td class="align-c">244</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct244"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct244"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct244"/></b></td>
        </tr>
        <tr>
            <td>C- VỐN CHỦ SỞ HỮU</td>
            <td class="align-c">300</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td>1. Vốn góp của chủ sở hữu</td>
            <td class="align-c">311</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct311"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct311"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct311"/></b></td>
        </tr>
       
        <tr>
            <td>2. Vốn khác của chủ sở hữu</td>
            <td class="align-c">312</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct312"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct312"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct312"/></b></td>
        </tr>
        <tr>
            <td>3. Chênh lệch đánh giá lại tài sản</td>
            <td class="align-c">313</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct313"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct313"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct313"/></b></td>
        </tr>
        <tr>
            <td>4. Quỹ đầu tư phát triển</td>
            <td class="align-c">314</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct314"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct314"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct314"/></b></td>
        </tr>
        <tr>
            <td>5. Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-c">315</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct315"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct315"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct315"/></b></td>
        </tr>
        <tr>
            <td>6. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">316</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct316"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct316"/></b></td>
        </tr>
		<tr>
            <td>- LNST chưa phân phối lũy kế đến cuối kỳ trước</td>
            <td class="align-c">316a</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct316a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316a"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct316a"/></b></td>
        </tr>
		<tr>
            <td>- LNST chưa phân phối kỳ này</td>
            <td class="align-c">316b</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct316b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316b"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct316b"/></b></td>
        </tr>
        <tr>
            <td>7. Nguồn vốn đầu tư XDCB</td>
            <td class="align-c">317</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct317"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct317"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct317"/></b></td>
        </tr>
        
        <tr>
            <td>II. Nguồn kinh phí và quỹ khác</td>
            <td class="align-c">320</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct320"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct320"/></b></td>
        </tr>
        <tr>
            <td>1. Nguồn kinh phí</td>
            <td class="align-c">321</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct321"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct321"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct321"/></b></td>
        </tr>
        <tr>
            <td>2. Nguồn kinh phí đã hình thành TSCĐ</td>
            <td class="align-c">322</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct322"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct322"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct322"/></b></td>
        </tr>
        
        <tr>
            <td>TỔNG CỘNG NỢ PHẢI TRẢ VÀ VỐN CHỦ SỞ HỮU (330 = 200+300)</td>
            <td class="align-c">330</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/c330"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/c330"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/c330"/></b></td>
        </tr>
        
      
           
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>

<div id="sigDiv"></div>
</td>
</tr>
</table>

	</xsl:template>		
</xsl:stylesheet>
