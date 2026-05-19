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
		 <xsl:call-template name="tkhaiHeader-BCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 01 – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
 
<!-- BẢNG CÂN ĐỐI KẾ TOÁN Áp dụng cho doanh nghiệp đáp ứng giả định hoạt động liên tục --> 

 <xsl:if test="$tkchinh/hoatDongLienTuc = 'true' or $tkchinh/hoatDongLienTuc = '1'">
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-l"><b>Đơn vị tính: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/donViTinh_ten"/></b></div><br/>
<div class="align-l"><b>Tỷ giá quy đổi: </b><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/tyGiaQuyDoi"/></b></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>TÀI SẢN </b></td>
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
<!-- A - TÀI SẢN NGẮN HẠN-->
        <tr>
            <td><b>A - TÀI SẢN NGẮN HẠN (100 = 110+ 120 + 130 + 140 + 150) </b></td>
            <td class="align-c"><b>100</b></td>
            <td></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct100"/></b></td>
        </tr>
        <tr>
            <td><b>I. Tiền và các khoản tương đương tiền (110 = 111 + 112)</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct110"/></b></td>
        </tr>
        <tr>
            <td>1. Tiền</td>
            <td class="align-c">111</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct111"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct111"/></td>
        </tr>
        <tr>
            <td>2. Các khoản tương đương tiền</td>
            <td class="align-c">112</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct112"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct112"/></td>
        </tr>
        <tr>
            <td><b>II. Đầu tư tài chính ngắn hạn (120 = 121 + 122 + 123)</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>
            <td>1. Chứng khoán kinh doanh</td>
            <td class="align-c">121</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td>2. Dự phòng giảm giá chứng khoán kinh doanh (*) (2)</td>
            <td class="align-c">122</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct122"/></td>
        </tr>
        <tr>
            <td>3. Đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">123</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct123"/></td>
        </tr>
        <tr>
            <td><b>III. Các khoản phải thu ngắn hạn (130 = 131 + 132 +…+ 137 + 139)</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td>1. Phải thu ngắn hạn của khách hàng </td>
            <td class="align-c">131</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td>2. Trả trước cho người bán ngắn hạn</td>
            <td class="align-c">132</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct132"/></td>
        </tr>
        <tr>
            <td>3. Phải thu nội bộ ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td>4. Phải thu theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td class="align-c">134</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td>5. Phải thu về cho vay ngắn hạn</td>
            <td class="align-c">135</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td>6. Phải thu ngắn hạn khác</td>
            <td class="align-c">136</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct136"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct136"/></td>
        </tr>
                <tr>
            <td>7. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">137</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct137"/></td>
        </tr>
                <tr>
            <td>8. Tài sản thiếu chờ xử lý</td>
            <td class="align-c">139</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct139"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct139"/></td>
        </tr>
        <tr>
            <td><b>IV. Hàng tồn kho (140 = 141 + 149)</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct140"/></b></td>
        </tr>
        <tr>
            <td>1. Hàng tồn kho</td>
            <td class="align-c">141</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct141"/></td>
        </tr>
        <tr>
            <td>2. Dự phòng giảm giá hàng tồn kho (*)</td>
            <td class="align-c">149</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct149"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct149"/></td>
        </tr>
        <tr>
            <td><b>V. Tài sản ngắn hạn khác (150= 151 + 152 + …+ 155)</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct150"/></b></td>
        </tr>
        <tr>
            <td>1. Chi phí trả trước ngắn hạn </td>
            <td class="align-c">151</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td>2. Thuế GTGT được khấu trừ</td>
            <td class="align-c">152</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct152"/></td>
        </tr>
                <tr>
            <td>3. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">153</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct153"/></td>
        </tr>
        <tr>
            <td>4. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">154</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct154"/></td>
        </tr>
        <tr>
            <td>5. Tài sản ngắn hạn khác</td>
            <td class="align-c">155</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct155"/></td>
        </tr>
        <tr>
            <td><b>B - TÀI SẢN DÀI HẠN (200= 210 + 220 + 230 + 240 + 250 + 260)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct200"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td><b>I- Các khoản phải thu dài hạn (210 = 211 + 212 +….+ 216 + 219)</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct210"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct210"/></b></td>
        </tr>
        <tr>
            <td>1. Phải thu dài hạn của khách hàng</td>
            <td class="align-c">211</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct211"/></td>
        </tr>
        <tr>
            <td>2. Trả trước cho người bán dài hạn</td>
            <td class="align-c">212</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct212"/></td>
        </tr>
        <tr>
            <td>3. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">213</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct213"/></td>
        </tr>
        <tr>
            <td>4. Phải thu nội bộ dài hạn</td>
            <td class="align-c">214</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct214"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct214"/></td>
        </tr>
        <tr>
            <td>5. Phải thu về cho vay dài hạn</td>
            <td class="align-c">215</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct215"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct215"/></td>
        </tr>
        <tr>
            <td>6. Phải thu dài hạn khác</td>
            <td class="align-c">216</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct216"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct216"/></td>
        </tr>
        <tr>
            <td>7. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td class="align-c">219</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct219"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct219"/></td>
        </tr>
        <tr>
            <td><b>II. Tài sản cố định ( 220 = 221 + 224 + 227)</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct220"/></b></td>
        </tr>
        <tr>
            <td><b>1. Tài sản cố định hữu hình (221 = 222 + 223)</b></td>
            <td class="align-c"><b>221</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct221"/></b></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">222</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct222"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">223</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct223"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct223"/></td>
        </tr>
        <tr>
              <td><b>2. Tài sản cố định thuê tài chính (224 = 225 + 226)</b></td>
            <td class="align-c"><b>224</b></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct224"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct224"/></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">225</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct225"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct225"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">226</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct226"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct226"/></td>
        </tr>
        <tr>
            <td><b>3. Tài sản cố định vô hình (227 = 228 + 229)</b></td>
            <td class="align-c"><b>227</b></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct227"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct227"/></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">228</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct228"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct228"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">229</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct229"/></td>
        </tr>
       <tr>
            <td><b>III. Bất động sản đầu tư (230 = 231 + 232)</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct230"/></b></td>
        </tr>
        <tr>
            <td>- Nguyên giá</td>
            <td class="align-c">231</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct231"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct231"/></td>
        </tr>
        <tr>
            <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">232</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct232"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct232"/></td>
        </tr>
        <tr>
            <td><b>IV. Tài sản dang dở dài hạn (240 = 241 + 242)</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct240"/></b></td>
        </tr>
        <tr>
            <td>1. Chi phí sản xuất, kinh doanh dở dang dài hạn </td>
            <td class="align-c">241</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct241"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct241"/></td>
        </tr>
        <tr>
            <td>2. Chi phí xây dựng cơ bản dở dang</td>
            <td class="align-c">242</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct242"/></td>
        </tr>
        <tr>
            <td><b>V. Đầu tư tài chính dài hạn (250 = 251 + …+ 255)</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct250"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct250"/></b></td>
        </tr>
        <tr>
            <td>1. Đầu tư vào công ty con </td>
            <td class="align-c">251</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct251"/></td>
        </tr>
        <tr>
            <td>2. Đầu tư vào công ty liên kết, liên doanh</td>
            <td class="align-c">252</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct252"/></td>
        </tr>
        <tr>
            <td>3. Đầu tư khác vào đơn vị khác</td>
            <td class="align-c">253</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct253"/></td>
        </tr>
        <tr>
            <td>4. Dự phòng đầu tư tài chính dài hạn (*)</td>
            <td class="align-c">254</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct254"/></td>
        </tr>
        <tr>
            <td>5. Đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">255</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct255"/></td>
        </tr>
        <tr>
            <td><b>V. Tài sản dài hạn khác (260 = 261 + 262 + 263 + 268)</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct260"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct260"/></b></td>
        </tr>
        <tr>
            <td>1. Chi phí trả trước dài hạn</td>
            <td class="align-c">261</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct261"/></td>
        </tr>
        <tr>
            <td>2. Tài sản thuế thu nhập hoãn lại</td>
            <td class="align-c">262</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct262"/></td>
        </tr>
        <tr>
            <td>3. Thiết bị, vật tư, phụ tùng thay thế dài hạn</td>
            <td class="align-c">263</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct263"/></td>
        </tr>
        <tr>
            <td>4. Tài sản dài hạn khác</td>
            <td class="align-c">268</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct268"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct268"/></td>
        </tr>
        <tr>
            <td><b>TỔNG CỘNG TÀI SẢN (270 = 100 + 200)</b></td>
            <td class="align-c"><b>270</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct270"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct270"/></b></td>
        </tr>

<!--Nguon von-->

        <tr>
            <td><b>C - NỢ PHẢI TRẢ (300= 310 + 330)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td><b>I. Nợ ngắn hạn (310 = 311 + 312 +…+ 323 + 324)</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct310"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct310"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán ngắn hạn</td>
            <td class="align-c">311</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct311"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước ngắn hạn</td>
            <td class="align-c">312</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct312"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">313</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct313"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct313"/></td>
        </tr>
        <tr>
            <td>4. Phải trả người lao động</td>
            <td class="align-c">314</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct314"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct314"/></td>
        </tr>
        <tr>
            <td>5. Chi phí phải trả ngắn hạn</td>
            <td class="align-c">315</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct315"/></td>
        </tr>
        <tr>
            <td>6. Phải trả nội bộ ngắn hạn</td>
            <td class="align-c">316</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct316"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct316"/></td>
        </tr>
        <tr>
            <td>7. Phải trả theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td class="align-c">317</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct317"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct317"/></td>
        </tr>
        <tr>
            <td>8. Doanh thu chưa thực hiện ngắn hạn </td>
            <td class="align-c">318</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct318"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct318"/></td>
        </tr>
        <tr>
            <td>9. Phải trả ngắn hạn khác</td>
            <td class="align-c">319</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct319"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct319"/></td>
        </tr>
        <tr>
            <td>10. Vay và nợ thuê tài chính ngắn hạn</td>
            <td class="align-c">320</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct320"/></td>
        </tr>
                <tr>
            <td>11. Dự phòng phải trả ngắn hạn </td>
            <td class="align-c">321</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct321"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct321"/></td>
        </tr>
                <tr>
            <td>12. Quỹ khen thưởng, phúc lợi </td>
            <td class="align-c">322</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct322"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct322"/></td>
        </tr>
        <tr>
            <td>13. Quỹ bình ổn giá</td>
            <td class="align-c">323</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct323"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct323"/></td>
        </tr>
        <tr>
            <td>14. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">324</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct324"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct324"/></td>
        </tr>
        <tr>
            <td><b>II. Nợ dài hạn (330 = 331 + 332 +…+ 342 + 343)</b></td>
            <td class="align-c"><b>330</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct330"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct330"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán dài hạn</td>
            <td class="align-c">331</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct331"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước dài hạn</td>
            <td class="align-c">332</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct332"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct332"/></td>
        </tr>
        <tr>
            <td>3. Chi phí phải trả dài hạn</td>
            <td class="align-c">333</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct333"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct333"/></td>
        </tr>
        <tr>
            <td>4. Phải trả nội bộ về vốn kinh doanh</td>
            <td class="align-c">334</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct334"/></td>
        </tr>
        <tr>
            <td>5. Phải trả nội bộ dài hạn</td>
            <td class="align-c">335</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct335"/></td>
        </tr>
        <tr>
            <td>6. Doanh thu chưa thực hiện dài hạn </td>
            <td class="align-c">336</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct336"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct336"/></td>
        </tr>
        <tr>
            <td>7. Phải trả dài hạn khác</td>
            <td class="align-c">337</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct337"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct337"/></td>
        </tr>
        <tr>
            <td>8. Vay và nợ thuê tài chính dài hạn </td>
            <td class="align-c">338</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct338"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct338"/></td>
        </tr>
        <tr>
            <td>9. Trái phiếu chuyển đổi</td>
            <td class="align-c">339</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct339"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct339"/></td>
        </tr>
                <tr>
            <td>10. Cổ phiếu ưu đãi</td>
            <td class="align-c">340</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct340"/></td>
        </tr>
                <tr>
            <td>11. Thuế thu nhập hoãn lại phải trả </td>
            <td class="align-c">341</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct341"/></td>
        </tr>
                <tr>
            <td>12. Dự phòng phải trả dài hạn </td>
            <td class="align-c">342</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct342"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct342"/></td>
        </tr>
                <tr>
            <td>13. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">343</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct343"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct343"/></td>
        </tr>
        <tr>
            <td><b>D - VỐN CHỦ SỞ HỮU (400 = 410 + 430)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct400"/></b></td>
        </tr>
        <tr>
            <td><b>I. Vốn chủ sở hữu (410 = 411 + 412 +…+ 421 + 422)</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct410"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct410"/></b></td>
        </tr>
        <tr>
            <td>1. Vốn góp của chủ sở hữu (411 = 411a + 411b)</td>
            <td class="align-c">411</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct411"/></td>
        </tr>
                <tr>
            <td>- Cổ phiếu phổ thông có quyền biểu quyết</td>
            <td class="align-c">411a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct411a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct411a"/></td>
        </tr>
                <tr>
            <td>- Cổ phiếu ưu đãi</td>
            <td class="align-c">411b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct411b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct411b"/></td>
        </tr>
        <tr>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct412"/></td>
        </tr>
        <tr>
            <td>3. Quyền chọn chuyển đổi trái phiếu</td>
            <td class="align-c">413</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct413"/></td>
        </tr>
        <tr>
            <td>4. Vốn khác của chủ sở hữu </td>
            <td class="align-c">414</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct414"/></td>
        </tr>
        <tr>
            <td>5. Cổ phiếu quỹ (*)</td>
            <td class="align-c">415</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct415"/></td>
        </tr>
        <tr>
            <td>6. Chênh lệch đánh giá lại tài sản</td>
            <td class="align-c">416</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct416"/></td>
        </tr>
        <tr>
            <td>7. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">417</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct417"/></td>
        </tr>
        <tr>
            <td>8. Quỹ đầu tư phát triển</td>
            <td class="align-c">418</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct418"/></td>
        </tr>
        <tr>
            <td>9. Quỹ hỗ trợ sắp xếp doanh nghiệp</td>
            <td class="align-c">419</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct419"/></td>
        </tr>
        <tr>
            <td>10. Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-c">420</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct420"/></td>
        </tr>
        <tr>
            <td>11. Lợi nhuận sau thuế chưa phân phối (421 =421a + 421b)</td>
            <td class="align-c">421</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct421"/></td>
        </tr>
                <tr>
            <td>- LNST chưa phân phối lũy kế đến cuối kỳ trước</td>
            <td class="align-c">421a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct421a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct421a"/></td>
        </tr>
                <tr>
            <td>- LNST chưa phân phối kỳ này</td>
            <td class="align-c">421b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct421b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct421b"/></td>
        </tr>
        <tr>
            <td>12. Nguồn vốn đầu tư XDCB</td>
            <td class="align-c">422</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct422"/></td>
        </tr>
        <tr>
            <td><b>II. Nguồn kinh phí và quỹ khác (430 = 431 + 432)</b></td>
            <td class="align-c"><b>430</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct430"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct430"/></b></td>
        </tr>
        <tr>
            <td>1. Nguồn kinh phí</td>
            <td class="align-c">431</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct431"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct431"/></td>
        </tr>
        <tr>
            <td>2. Nguồn kinh phí đã hình thành TSCĐ</td>
            <td class="align-c">432</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct432"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct432"/></td>
        </tr>
        <tr>
            <td><b>TỔNG CỘNG NGUỒN VỐN (440 = 300 + 400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoCuoiNam/ct440"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/SoDauNam/ct440"/></b></td>
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
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/donViCCapDVuKToan"/></b></div><br/>		<br/>
<div><b><i>Ghi chú: </i></b> <br/>(1)   Những chỉ tiêu không có số liệu được miễn trình bày nhưng không được đánh lại “Mã số” chỉ tiêu.<br/>
(2)   Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (...).<br/>
(3)   Đối với doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì “Số cuối năm“ có thể ghi là “31.12.X“; “Số đầu năm“ có thể ghi là “01.01.X“. <br/>
(4) Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề,  tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>	
	<!-- BẢNG CÂN ĐỐI KẾ TOÁN Áp dụng cho doanh nghiệp không đáp ứng giả định hoạt động liên tục --> 

 <xsl:if test="$tkchinh/hoatDongKhongLienTuc = 'true' or $tkchinh/hoatDongKhongLienTuc = '1'">
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-l"><b>Đơn vị tính: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/donViTinh_ten"/></b></div><br/>
<div class="align-l"><b>Tỷ giá quy đổi: </b> <b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/tyGiaQuyDoi"/></b></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>TÀI SẢN </b></td>
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
<!-- A - TÀI SẢN NGẮN HẠN-->
        <tr>
            <td><b>A. TÀI SẢN</b></td>
            <td class="align-c"><b>100</b></td>
            <td></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct100"/></b></td>
        </tr>
        <tr>
            <td><b>I. Tiền và các khoản tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct110"/></b></td>
        </tr>
        <tr>
            <td>1. Tiền</td>
            <td class="align-c">111</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct111"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct111"/></td>
        </tr>
        <tr>
            <td>2. Các khoản tương đương tiền</td>
            <td class="align-c">112</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct112"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct112"/></td>
        </tr>
        <tr>
            <td><b>II. Đầu tư tài chính</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>
            <td>1. Chứng khoán kinh doanh</td>
            <td class="align-c">121</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td>2. Đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">122</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct122"/></td>
        </tr>
        <tr>
            <td>3. Đầu tư vào công ty con</td>
            <td class="align-c">123</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct123"/></td>
        </tr>
                <tr>
            <td>4. Đầu tư vào công ty liên doanh, liên kết</td>
            <td class="align-c">124</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct124"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct124"/></td>
        </tr>
                <tr>
            <td>5. Đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">125</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct125"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct125"/></td>
        </tr>
        <tr>
            <td><b>III. Các khoản phải thu</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td>1. Phải thu của khách hàng</td>
            <td class="align-c">131</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td>2. Trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct132"/></td>
        </tr>
        <tr>
            <td>3. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">133</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td>4. Phải thu nội bộ </td>
            <td class="align-c">134</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td>5. Phải thu về cho vay</td>
            <td class="align-c">135</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td>6. Phải thu theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td class="align-c">136</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct136"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct136"/></td>
        </tr>
                <tr>
            <td>7. Phải thu khác</td>
            <td class="align-c">137</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct137"/></td>
        </tr>
                <tr>
            <td>8. Tài sản thiếu chờ xử lý</td>
            <td class="align-c">138</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct138"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct138"/></td>
        </tr>
        <tr>
            <td><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct140"/></b></td>
        </tr>
        <tr>
            <td><b>V. Tài sản cố định</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct150"/></b></td>
        </tr>
        <tr>
            <td>1. Tài sản cố định hữu hình</td>
            <td class="align-c">151</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td>2. Tài sản cố định thuê tài chính</td>
            <td class="align-c">152</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct152"/></td>
        </tr>
                <tr>
            <td>3. Tài sản cố định vô hình</td>
            <td class="align-c">153</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct153"/></td>
        </tr>
        <tr>
            <td><b>VI. Bất động sản đầu tư</b></td>
            <td class="align-c"><b>160</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct160"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct160"/></b></td>
        </tr>
                <tr>
            <td><b>VII. Chi phí xây dựng cơ bản dở dang</b></td>
            <td class="align-c"><b>170</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct170"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct170"/></b></td>
        </tr>
                <tr>
            <td><b>VIII. Tài sản khác</b></td>
            <td class="align-c"><b>180</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct180"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct180"/></b></td>
        </tr>
        <tr>
            <td>1. Chi phí trả trước </td>
            <td class="align-c">181</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct181"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct181"/></td>
        </tr>
        <tr>
            <td>2. Thuế GTGT được khấu trừ</td>
            <td class="align-c">182</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct182"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct182"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">183</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct183"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct183"/></td>
        </tr>
        <tr>
            <td>4. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">184</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct184"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct184"/></td>
        </tr>
        <tr>
            <td>5. Tài sản thuế thu nhập hoãn lại</td>
            <td class="align-c">185</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct185"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct185"/></td>
        </tr>
        <tr>
            <td>6. Tài sản khác</td>
            <td class="align-c">186</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct186"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct186"/></td>
        </tr>
   

<!--Nguon von-->

        <tr>
            <td><b>B. NỢ PHẢI TRẢ</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán </td>
            <td class="align-c">311</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct311"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước </td>
            <td class="align-c">312</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct312"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">313</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct313"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct313"/></td>
        </tr>
        <tr>
            <td>4. Phải trả người lao động</td>
            <td class="align-c">314</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct314"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct314"/></td>
        </tr>
        <tr>
            <td>5. Chi phí phải trả </td>
            <td class="align-c">315</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct315"/></td>
        </tr>
        <tr>
            <td>6. Phải trả nội bộ về vốn kinh doanh</td>
            <td class="align-c">334</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct334"/></td>
        </tr>
        <tr>
            <td>7. Phải trả nội bộ khác</td>
            <td class="align-c">316</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct316"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct316"/></td>
        </tr>
        <tr>
            <td>8. Phải trả theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td class="align-c">317</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct317"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct317"/></td>
        </tr>
        <tr>
            <td>9. Doanh thu chưa thực hiện </td>
            <td class="align-c">318</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct318"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct318"/></td>
        </tr>
        <tr>
            <td>10. Phải trả khác</td>
            <td class="align-c">319</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct319"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct319"/></td>
        </tr>
        <tr>
            <td>11. Vay và nợ thuê tài chính </td>
            <td class="align-c">320</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct320"/></td>
        </tr>
                <tr>
            <td>12. Trái phiếu chuyển đổi</td>
            <td class="align-c">339</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct339"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct339"/></td>
        </tr>
        <tr>
            <td>13. Cổ phiếu ưu đãi</td>
            <td class="align-c">340</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct340"/></td>
        </tr>
        <tr>
            <td>14. Thuế thu nhập hoãn lại phải trả</td>
            <td class="align-c">341</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct341"/></td>
        </tr>
        <tr>
            <td>15. Dự phòng phải trả </td>
            <td class="align-c">321</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct321"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct321"/></td>
        </tr>
        <tr>
            <td>16. Quỹ khen thưởng, phúc lợi </td>
            <td class="align-c">322</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct322"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct322"/></td>
        </tr>
        <tr>
            <td>17. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">343</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct343"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct343"/></td>
        </tr>
        <tr>
            <td>18. Quỹ bình ổn giá</td>
            <td class="align-c">323</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct323"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct323"/></td>
        </tr>
        <tr>
            <td>19. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">324</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct324"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct324"/></td>
        </tr>
        <tr>
            <td><b>C - VỐN CHỦ SỞ HỮU</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct400"/></b></td>
        </tr>
        <tr>
            <td><b>I. Vốn chủ sở hữu</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct410"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct410"/></b></td>
        </tr>
        <tr>
            <td>1. Vốn góp của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct411"/></td>
        </tr>
                <tr>
            <td>- Cổ phiếu phổ thông có quyền biểu quyết</td>
            <td class="align-c">411a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct411a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct411a"/></td>
        </tr>
                <tr>
            <td>- Cổ phiếu ưu đãi</td>
            <td class="align-c">411b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct411b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct411b"/></td>
        </tr>
        <tr>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct412"/></td>
        </tr>
        <tr>
            <td>3. Quyền chọn chuyển đổi trái phiếu</td>
            <td class="align-c">413</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct413"/></td>
        </tr>
        <tr>
            <td>4. Vốn khác của chủ sở hữu </td>
            <td class="align-c">414</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct414"/></td>
        </tr>
        <tr>
            <td>5. Cổ phiếu quỹ (*)</td>
            <td class="align-c">415</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct415"/></td>
        </tr>

        <tr>
            <td>6. Quỹ đầu tư phát triển</td>
            <td class="align-c">418</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct418"/></td>
        </tr>
        <tr>
            <td>7. Quỹ hỗ trợ sắp xếp doanh nghiệp</td>
            <td class="align-c">419</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct419"/></td>
        </tr>
        <tr>
            <td>8. Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-c">420</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct420"/></td>
        </tr>
        <tr>
            <td>9. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">421</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct421"/></td>
        </tr>
                <tr>
            <td>- LNST chưa phân phối lũy kế đến cuối kỳ trước</td>
            <td class="align-c">421a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct421a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct421a"/></td>
        </tr>
                <tr>
            <td>- LNST chưa phân phối kỳ này</td>
            <td class="align-c">421b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct421b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct421b"/></td>
        </tr>
        <tr>
            <td>10. Nguồn vốn đầu tư XDCB</td>
            <td class="align-c">422</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct422"/></td>
        </tr>
        <tr>
            <td><b>II. Nguồn kinh phí và quỹ khác</b></td>
            <td class="align-c"><b>430</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct430"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct430"/></b></td>
        </tr>
        <tr>
            <td>1. Nguồn kinh phí </td>
            <td class="align-c">431</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct431"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct431"/></td>
        </tr>
        <tr>
            <td>2. Nguồn kinh phí đã hình thành TSCĐ</td>
            <td class="align-c">432</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct432"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct432"/></td>
        </tr>
        <tr>
            <td><b>Tổng cộng nguồn vốn (440 = 300 + 400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoCuoiNam/ct440"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/SoDauNam/ct440"/></b></td>
        </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC200-KoLienTuc">   
</xsl:call-template>
<br/>
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/soChungChiHanhNghe"/></b></div><br/>		<br/>
		
<div><b><i>Ghi chú: </i></b> <br/>(1)   Những chỉ tiêu không có số liệu được miễn trình bày nhưng không được đánh lại “Mã số” chỉ tiêu.<br/>
(2)   Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (...).<br/>
(3)   Đối với doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì “Số cuối năm“ có thể ghi là “31.12.X“; “Số đầu năm“ có thể ghi là “01.01.X“. <br/>
(4) Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề,  tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
