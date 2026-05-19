<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo QĐ số  48/2006/QĐ-BTC ngày  14/09/2006 của Bộ trưởng BTC
'" />
		 <xsl:call-template name="tkhaiHeader-BCTC">
		<xsl:with-param name="mauTKhai"   select="'B-01/DNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->

<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
            <td class="align-c"><b>Số đầu năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5) </b></td>
            <td class="align-c"><b>(6)</b></td>
        </tr>
<!-- Tai san -->
        <tr>
            <td><b></b></td>
            <td colspan="5"><b>TÀI SẢN</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td><b>A - TÀI SẢN NGẮN HẠN (100=110+120+130+140+150)</b></td>
            <td class="align-c"><b>100</b></td>
            <td></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct100_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct100_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Tiền và các khoản tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-c"><b>(III.01)</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct110_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Đầu tư tài chính ngắn hạn</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-c"><b>(III.05)</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct120_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư tài chính ngắn hạn</td>
            <td class="align-c">121</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct121_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Dự phòng giảm giá đầu tư tài chính ngắn hạn (*)</td>
            <td class="align-c">129</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct129_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct129_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Các khoản phải thu ngắn hạn</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct130_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải thu của khách hàng </td>
            <td class="align-c">131</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct132_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct132_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Các khoản phải thu khác </td>
            <td class="align-c">138</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct138_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct138_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">139</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct139_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct139_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct140_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Hàng tồn kho </td>
            <td class="align-c">141</td>
            <td class="align-c">(III.02)</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct141_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct141_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Dự phòng giảm giá hàng tồn kho (*)</td>
            <td class="align-c">149</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct149_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct149_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>V. Tài sản ngắn hạn khác</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct150_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Thuế giá trị gia tăng được khấu trừ</td>
            <td class="align-c">151</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct151_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct151_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">152</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct152_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct152_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">157</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct157_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct157_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Tài sản ngắn hạn khác </td>
            <td class="align-c">158</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct158_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct158_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B - TÀI SẢN DÀI HẠN(200 = 210+220+230+240)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct200_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Tài sản cố định</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-c"><b>(III.03.04)</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct210_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct210_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 1. Nguyên giá </td>
            <td class="align-c">211</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct211_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct211_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2. Giá trị hao mòn luỹ kế (*) </td>
            <td class="align-c">212</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct212_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct212_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td> 3. Chi phí xây dựng cơ bản dở dang </td>
            <td class="align-c">213</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct213_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct213_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Bất động sản đầu tư</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct220_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct220_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 1. Nguyên giá</td>
            <td class="align-c">221</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct221_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct221_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2. Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">222</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct222_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct222_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Các khoản đầu tư tài chính dài hạn</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-c">(III.05)</td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct230_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct230_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư tài chính dài hạn</td>
            <td class="align-c">231</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct231_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct231_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Dự phòng giảm giá đầu tư tài chính dài hạn (*)</td>
            <td class="align-c">239</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct239_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct239_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Tài sản dài hạn khác</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct240_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct240_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải thu dài hạn </td>
            <td class="align-c">241</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct241_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct241_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Tài sản dài hạn khác</td>
            <td class="align-c">248</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct248_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct248_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td class="align-c">249</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct249_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct249_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG TÀI SẢN (250 = 100 + 200)</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct250_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct250_nNgoai"/></b></td>
        </tr>

<!--Nguon von-->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>NGUỒN VỐN </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td><b>A. NỢ PHẢI TRẢ (300=310+330)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Nợ ngắn hạn</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct310_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct310_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 1. Vay ngắn hạn </td>
            <td class="align-c">311</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct311_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct311_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2. Phải trả cho người bán </td>
            <td class="align-c">312</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct312_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct312_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td> 3. Người mua trả tiền trước</td>
            <td class="align-c">313</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct313_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct313_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td> 4. Thuế và các khoản phải nộp Nhà nước </td>
            <td class="align-c">314</td>
            <td class="align-c">III.06</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct314_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct314_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td> 5. Phải trả người lao động</td>
            <td class="align-c">315</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct315_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct315_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td> 6. Chi phí phải trả</td>
            <td class="align-c">316</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct316_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Các khoản phải trả ngắn hạn khác</td>
            <td class="align-c">318</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct318_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct318_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">323</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct323_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct323_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">327</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct327_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct327_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Doanh thu chưa thực hiện ngắn hạn</td>
            <td class="align-c">328</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct328_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct328_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>11. Dự phòng phải trả ngắn hạn</td>
            <td class="align-c">329</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct329_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct329_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Nợ dài hạn </b></td>
            <td class="align-c"><b>330</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct330_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct330_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 1. Vay và nợ dài hạn </td>
            <td class="align-c">331</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct331_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct331_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2. Quỹ dự phòng trợ cấp mất việc làm</td>
            <td class="align-c">332</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct332_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct332_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Doanh thu chưa thực hiện dài hạn</td>
            <td class="align-c">334</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct334_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct334_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">336</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct336_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct336_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td> 5. Phải trả, phải nộp dài hạn khác</td>
            <td class="align-c">338</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct338_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct338_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự phòng phải trả dài hạn</td>
            <td class="align-c">339</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct339_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct339_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B-VỐN CHỦ SỞ HỮU (400=410+430)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct400_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct400_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Vốn chủ sở hữu</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-c"><b>III.07</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct410_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct410_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct411_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct412_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct412_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Vốn khác của chủ sở hữu</td>
            <td class="align-c">413</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct413_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct413_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Cổ phiếu quỹ (*)</td>
            <td class="align-c">414</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct414_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct414_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">415</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct415_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct415_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Các quỹ thuộc vốn chủ sở hữu</td>
            <td class="align-c">416</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct416_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct416_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">417</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct417_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct417_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG NGUỒN VỐN (440 = 300 + 400 )</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct440_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct440_nNgoai"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>CHỈ TIÊU NGOÀI BẢNG </b></td>
        </tr>		
        <tr>
            <td class="align-c">1</td>
            <td>1- Tài sản thuê ngoài</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoCuoiNam/taiSanThueNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoDauNam/taiSanThueNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2- Vật tư, hàng hoá nhận giữ hộ, nhận gia công</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoCuoiNam/hangHoaNhanGiuHo"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoDauNam/hangHoaNhanGiuHo"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3- Hàng hoá nhận bán hộ, nhận ký gửi, ký cược</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoCuoiNam/hangHoaNhanBanHo"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoDauNam/hangHoaNhanBanHo"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4- Nợ khó đòi đã xử lý</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoCuoiNam/noKhoDoiDaXLy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoDauNam/noKhoDoiDaXLy"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5- Ngoại tệ các loại</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoCuoiNam/ngoaiTeCacLoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/NgoaiBangCDKT/SoDauNam/ngoaiTeCacLoai"/></td>
        </tr>
    </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC">   
</xsl:call-template>
<div class="ghichu">
<div><b>Ghi chú:</b></div>
<div>(1) Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (...).</div>
<div>(2) Các chỉ tiêu không có số liệu thì không phải báo cáo nhưng không được đánh lại "Mã số".</div>
<div>(3) Doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì "Số cuối năm" có thể ghi là  "31.12.X"; "Số đầu năm" có thể ghi là "01.01.X".</div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
		

	</xsl:template>		
</xsl:stylesheet>
