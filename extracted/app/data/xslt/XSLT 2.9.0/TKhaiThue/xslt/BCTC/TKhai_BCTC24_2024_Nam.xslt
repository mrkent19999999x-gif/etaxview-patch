<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
 
 	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 24/2024/TT-BTC ngày 17/4/2024 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC24_Nam">
		<xsl:with-param name="mauTKhai"   select="'B01/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
 
 <br/>
<div class="ndungtkhai_div">
<div class="content">
 
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"> STT</td>
			<td class="align-c"><b>Chỉ tiêu</b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh</b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
            <td class="align-c"><b>Số đầu năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>D</b></td>
            <td class="align-c"><b>1</b></td>
			<td class="align-c"><b>2</b></td>
        </tr>
      
        
<!-- A - TÀI SẢN NGẮN HẠN-->
        <tr>
            <td></td>
            <td class="align-l"><b>TÀI SẢN</b></td>
            <td></td>
            <td></td>
            <td></td>
			<td></td>
        </tr>
		<tr>
            <td></td>
			<td><b>A. TÀI SẢN NGẮN HẠN</b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct100"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
			<td><b>Tiền và tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></b></td>
        </tr>
       
        <tr>
           <td class="align-c"><b>II</b></td>
		   <td><b>Đầu tư tài chính ngắn hạn</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td>Đầu tư tài chính ngắn hạn</td>
            <td class="align-c">121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
			<td>Dự phòng tổn thất đầu tư tài chính ngắn hạn</td>
            <td class="align-c">122</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct122"/></td>
        </tr>
        
        <tr>
            <td class="align-c"><b>III</b></td>
			<td><b>Các khoản phải thu ngắn hạn</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td>Phải thu của khách hàng ngắn hạn</td>
            <td class="align-c">131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
			<td>Phải thu kinh phí được cấp</td>
            <td class="align-c">132</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct132"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
			<td>Trả trước cho người bán ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
			<td>Các khoản phải thu ngắn hạn khác</td>
            <td class="align-c">134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
			<td>Dự phòng phải thu ngắn hạn khó đòi</td>
            <td class="align-c">135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></td>
        </tr>
        
        <tr>
            <td class="align-c"><b>IV</b></td>

			<td><b>Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></b></td>
        </tr>
        <tr>
           <td class="align-c">1</td>
		   		   
		   <td>Hàng tồn kho</td>
            <td class="align-c">141</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct141"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
			<td>Dự phòng giảm giá hàng tồn kho</td>
            <td class="align-c">142</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct142"/></td>
        </tr>
        <tr>
           <td class="align-c"><b>V</b></td>
		   <td><b>Tài sản ngắn hạn khác</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></b></td>
        </tr>
        
        <tr>
            <td class="align-c"><b></b></td>
			<td><b>B. TÀI SẢN DÀI HẠN</b></td>
            <td class="align-c"><b>160</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct160"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct160"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct160"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
			<td><b>Đầu tư tài chính dài hạn</b></td>
            <td class="align-c"><b>170</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct170"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct170"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct170"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td>Đầu tư tài chính dài hạn</td>
            <td class="align-c">171</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct171"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
			<td>Dự phòng tổn thất đầu tư tài chính dài hạn</td>
            <td class="align-c">172</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct172"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct172"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct172"/></td>
        </tr>
       
        <tr>
            <td class="align-c"><b>II</b></td>
			<td><b>Các khoản phải thu dài hạn</b></td>
            <td class="align-c"><b>180</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct180"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct180"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td><b>Phải thu của khách hàng dài hạn</b></td>
            <td class="align-c">181</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct181"/></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct181"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct181"/></b></td>
        </tr>
       
        <tr>
              <td class="align-c">2</td>
			  <td><b>Trả trước cho người bán dài hạn</b></td>
            <td class="align-c">182</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct182"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct182"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct182"/></td>
        </tr>
       <tr>
              <td class="align-c">3</td>
			  <td><b>Các khoản phải thu dài hạn khác</b></td>
            <td class="align-c">183</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct183"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct183"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct183"/></td>
        </tr>
        <tr>
              <td class="align-c">4</td>
			  <td><b>Dự phòng phải thu dài hạn khó đòi</b></td>
            <td class="align-c">184</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct184"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct184"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct184"/></td>
        </tr>
       
       <tr>
            <td class="align-c"><b>III</b></td>
			<td><b>Tài sản cố định của đơn vị</b></td>
            <td class="align-c"><b>190</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct190"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct190"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct190"/></b></td>
        </tr>
        <tr>
              <td class="align-c">1</td>
			  <td><b>Tài sản cố định hữu hình</b></td>
            <td class="align-c">191</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct191"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct191"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct191"/></td>
        </tr>
        <tr>
            <td></td>
			<td>- Nguyên giá</td>
            <td class="align-c">192</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct192"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct192"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct192"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">193</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct193"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct193"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct193"/></td>
        </tr>
        
        <tr>
            <td class="align-c">2</td>
			<td>Tài sản cố định vô hình</td>
            <td class="align-c">194</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct194"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct194"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct194"/></td>
        </tr>
        
		 <tr>
            <td></td>
			<td>- Nguyên giá</td>
            <td class="align-c">195</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct195"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct195"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct195"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">196</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct196"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct196"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct196"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
			<td><b>Tài sản kết cấu hạ tầng đơn vị trực tiếp khai thác, sử dụng</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td>Tài sản cố định hữu hình </td>
            <td class="align-c">201</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct201"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct201"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct201"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Nguyên giá</td>
            <td class="align-c">202</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct202"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct202"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct202"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">203</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct203"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct203"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct203"/></td>
        </tr>
         <tr>
            <td class="align-c">2</td>
			<td>Tài sản cố định vô hình</td>
            <td class="align-c">204</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct204"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct204"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct204"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Nguyên giá</td>
            <td class="align-c">205</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct205"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct205"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct205"/></td>
        </tr>
		<tr>
            <td></td>
			<td>- Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">206</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct206"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct206"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct206"/></td>
        </tr>
        
        <tr>
            <td class="align-c"><b>V</b></td>
			<td><b>Mua sắm, đầu tư xây dựng dở dang</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct210"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
			<td>Mua sắm, nâng cấp tài sản cố định</td>
            <td class="align-c">211</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct211"/></td>
        </tr>
         <tr>
            <td class="align-c">2</td>
			<td>Đầu tư, xây dựng dở dang</td>
            <td class="align-c">212</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct212"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
			<td>Dự án, công trình đầu tư xây dựng đã bàn giao, chờ phê duyệt quyết toán</td>
            <td class="align-c">213</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct213"/></td>
        </tr>
        
       <tr>
            <td class="align-c"><b>VI</b></td>
			<td><b>Tài sản dài hạn khác</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct220"/></b></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td><b>TỔNG CỘNG TÀI SẢN</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct230"/></b></td>
        </tr>
<!-- NGUỒN VỐN-->
        <tr>
            <td></td>
            <td class="align-l"><b>NGUỒN VỐN</b></td>
            <td></td>
            <td></td>
            <td></td>
			<td></td>
        </tr>  
		<tr>
            <td></td>
			<td><b>A. NỢ PHẢI TRẢ</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct240"/></b></td>
        </tr>	
		<tr>
            <td class="align-c"><b>I</b></td>
			<td><b>Nợ ngắn hạn</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct250"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct250"/></b></td>
        </tr>
	   <tr>
            <td class="align-c">1</td>
			<td>Phải trả người bán ngắn hạn</td>
            <td class="align-c">251</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct251"/></td>
        </tr>
         <tr>
            <td class="align-c">2</td>
			<td>Các khoản nhận trước của khách hàng ngắn hạn</td>
            <td class="align-c">252</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct252"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
			<td>Các khoản nhận trước kinh phí được cấp</td>
            <td class="align-c">253</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct253"/></td>
        </tr>
         <tr>
            <td class="align-c">4</td>
			<td>Phải trả nợ vay ngắn hạn</td>
            <td class="align-c">254</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct254"/></td>
        </tr>      
		 <tr>
            <td class="align-c">5</td>
			<td>Dự phòng phải trả ngắn hạn</td>
            <td class="align-c">255</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct255"/></td>
        </tr> 
        <tr>
            <td class="align-c">6</td>
			<td>Các Quỹ phải trả</td>
            <td class="align-c">256</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct256"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct256"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct256"/></td>
        </tr> 
        <tr>
            <td class="align-c">7</td>
			<td>Các khoản nợ phải trả ngắn hạn khác</td>
            <td class="align-c">257</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct257"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct257"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct257"/></td>
        </tr> 
        <tr>
            <td class="align-c"><b>II</b></td>
			<td><b>Nợ dài hạn</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct260"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct260"/></b></td>
        </tr>
       <tr>
            <td class="align-c">1</td>
			<td>Phải trả người bán dài hạn</td>
            <td class="align-c">261</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct261"/></td>
        </tr> 
        <tr>
            <td class="align-c">2</td>
			<td>Các khoản nhận trước của khách hàng dài hạn</td>
            <td class="align-c">262</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct262"/></td>
        </tr> 
        <tr>
            <td class="align-c">3</td>
			<td>Phải trả nợ vay dài hạn</td>
            <td class="align-c">263</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct263"/></td>
        </tr> 
        <tr>
            <td class="align-c">4</td>
			<td>Dự phòng phải trả dài hạn</td>
            <td class="align-c">264</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct264"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct264"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct264"/></td>
        </tr> 
         <tr>
            <td class="align-c">5</td>
			<td>Các khoản nợ phải trả dài hạn khác</td>
            <td class="align-c">265</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct265"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct265"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct265"/></td>
        </tr> 
		 <tr>
            <td class="align-c"></td>
			<td><b>B. TÀI SẢN THUẦN</b></td>
            <td class="align-c"><b>280</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct280"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct280"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct280"/></b></td>
        </tr>
		<tr>
            <td class="align-c">1</td>
			<td>Vốn góp</td>
            <td class="align-c">281</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct281"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct281"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct281"/></td>
        </tr> 
               <tr>
            <td class="align-c">2</td>
			<td>Thặng dư/thâm hụt lũy kế</td>
            <td class="align-c">282</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct282"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct282"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct282"/></td>
        </tr>
            <tr>
            <td class="align-c">3</td>
			<td>Quỹ thuộc đơn vị</td>
            <td class="align-c">283</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct283"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct283"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct283"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
			<td>Kinh phí mang sang năm sau</td>
            <td class="align-c">284</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct284"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct284"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct284"/></td>
        </tr>
         <tr>
            <td class="align-c">5</td>
			<td>Tài sản thuần khác</td>
            <td class="align-c">285</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct285"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct285"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct285"/></td>
        </tr>
		<tr>
            <td class="align-c"></td>
			<td><b>TỔNG CỘNG NGUỒN VỐN</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
		      
           
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC24-LienTuc">   
</xsl:call-template>

<div id="sigDiv"></div>
</td>
</tr>
</table>

	</xsl:template>		
</xsl:stylesheet>
