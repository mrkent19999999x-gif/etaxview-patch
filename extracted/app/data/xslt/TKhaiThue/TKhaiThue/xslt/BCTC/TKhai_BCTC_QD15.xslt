<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Quyết định số 15/2006/QĐ-BTC Ngày 20/03/2006 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC">
		<xsl:with-param name="mauTKhai"   select="'B-01/DN'"/>
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
            <td class="align-c"><b>Số năm nay </b></td>
            <td class="align-c"><b>Số năm trước </b></td>
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
            <td><b>A - Tài sản ngắn hạn (100=110+120+130+140+150)</b></td>
            <td class="align-c"><b>100</b></td>
            <td></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct100_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct100_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Tiền và các khoản tương đương tiền (110=111+112)</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct110_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct110_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Tiền</td>
            <td class="align-c">111</td>
            <td class="align-c">V.01</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct111_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct111_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Các khoản tương đương tiền</td>
            <td class="align-c">112</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct112_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct112_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Các khoản đầu tư tài chính ngắn hạn (120=121+129)</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-c"><b>V.02</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct120_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct120_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư ngắn hạn</td>
            <td class="align-c">121</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct121_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct121_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Đầu tư dự phòng giảm giá đầu tư ngắn hạn (*)(2)</td>
            <td class="align-c">129</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct129_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct129_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Các khoản phải thu ngắn hạn (130=131+132+133+134+135+139)</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct130_nNay"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct130_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải thu cho khách hàng</td>
            <td class="align-c">131</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct131_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct131_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Phải trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct132_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct132_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Phải thu nội bộ ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct133_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct133_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Phải thu theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td class="align-c">134</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct134_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct134_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Các khoản phải thu khác</td>
            <td class="align-c">135</td>
            <td class="align-c">V.03</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct135_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct135_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">139</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct139_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct139_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Hàng tồn kho (140=141+149)</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct140_nNay"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct140_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Hàng tồn kho</td>
            <td class="align-c">141</td>
            <td class="align-c">V.04</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct141_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct141_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Dự phòng giảm giá hàng tồn kho (*)</td>
            <td class="align-c">149</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct149_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct149_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>V. Tài sản ngắn hạn khác (150=151+152+154+158)</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct150_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct150_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Chi phí trả trước ngắn hạn</td>
            <td class="align-c">151</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct151_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct151_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thuế GTGT được khấu trừ</td>
            <td class="align-c">152</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct152_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct152_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">154</td>
            <td class="align-c">V.05</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct154_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct154_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Tài sản ngắn hạn khác</td>
            <td class="align-c">158</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct158_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct158_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B - Tài sản dài hạn (200=210+220+240+250+260)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct200_nNay"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct200_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Các khoản phải thu dài hạn (210=211+212+213+218+219)</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct210_nNay"/></b></td>
            <td class="align-r"><b  class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct210_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải thu dài hạn của khách hàng</td>
            <td class="align-c">211</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct211_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct211_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">212</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct212_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct212_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Phải thu dài hạn nội bộ</td>
            <td class="align-c">213</td>
            <td class="align-c">V.06</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct213_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct213_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Phải thu dài hạn khác</td>
            <td class="align-c">218</td>
            <td class="align-c">V.07</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct218_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct218_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td class="align-c">219</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct219_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct219_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Tài sản cố định (220=221+224+227+230)</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct220_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct220_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>1. Tài sản cố định hữu hình (221=222+223)</b></td>
            <td class="align-c"><b>221</b></td>
            <td class="align-c">V.08</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct221_nNay"/></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct221_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Nguyên giá</td>
            <td class="align-c">222</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct222_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct222_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Giá trị hao mòn lũy kế(*)</td>
            <td class="align-c">223</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct223_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct223_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td><b>2. Tài sản cố định thuê tài chính (224=225+226)</b></td>
            <td class="align-c"><b>224</b></td>
            <td class="align-c">V.09</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct224_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct224_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Nguyên giá</td>
            <td class="align-c">225</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct225_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct225_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Giá trị hao mòn lũy kế(*)</td>
            <td class="align-c">226</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct226_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct226_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>3</b></td>
            <td><b>3. Tài sản cố định vô hình (227=228+229)</b></td>
            <td class="align-c"><b>227</b></td>
            <td class="align-c">V.10</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct227_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct227_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Nguyên giá</td>
            <td class="align-c">228</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct228_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct228_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Giá trị hao mòn lũy kế(*)</td>
            <td class="align-c">229</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct229_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct229_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>4</b></td>
            <td><b>4. Chi phí xây dựng dở dang</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-c">V.11</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct230_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct230_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Bất động sản đầu tư (240=241+242)</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-c">V.12</td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct240_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct240_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Nguyên giá</td>
            <td class="align-c">241</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct241_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct241_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>-Giá trị hao mòn lũy kế(*)</td>
            <td class="align-c">242</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct242_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct242_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Các khoản đầu tư tài chính dài hạn (250=251+252+258+259)</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct250_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct250_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư vào công ty con</td>
            <td class="align-c">251</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct251_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct251_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Đầu tư vào công ty liên kết, liên doanh</td>
            <td class="align-c">252</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct252_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct252_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Đầu tư dài hạn khác</td>
            <td class="align-c">258</td>
            <td class="align-c">V.13</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct258_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct258_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Dự phòng giảm giá đầu tư tài chính dài hạn(*) </td>
            <td class="align-c">259</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct259_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct259_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>V. Tài sản dài hạn khác (260=261+262+268)</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct260_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct260_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Chi phí trả trước dài hạn</td>
            <td class="align-c">261</td>
            <td class="align-c">V.14</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct261_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct261_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Tài sản thuế thu nhập hoãn lại</td>
            <td class="align-c">262</td>
            <td class="align-c">V.21</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct262_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct262_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Tài sản dài hạn khác</td>
            <td class="align-c">268</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct268_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct268_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG TÀI SẢN (270=100+200)</b></td>
            <td class="align-c"><b>270</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct270_nNay"/></b></td>
            <td class="align-r"><b class="270"><xsl:value-of select="$tkchinh/SoNamNgoai/ct270_nNgoai"/></b></td>
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
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct300_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct300_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Nợ ngắn hạn (310=311+312+...+319+320+323)</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct310_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct310_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Vay và nợ ngắn hạn</td>
            <td class="align-c">311</td>
            <td class="align-c">V.15</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct311_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct311_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Phải trả người bán</td>
            <td class="align-c">312</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct312_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct312_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Người mua trả tiền trước</td>
            <td class="align-c">313</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct313_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct313_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Thuế và các khoản phải nộp Nhà nước </td>
            <td class="align-c">314</td>
            <td class="align-c">V.16</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct314_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct314_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Phải trả người lao động</td>
            <td class="align-c">315</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct315_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct315_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Chi phí phải trả</td>
            <td class="align-c">316</td>
            <td class="align-c">V.17</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct316_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct316_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Phải trả nội bộ</td>
            <td class="align-c">317</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct317_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct317_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Phải trả theo tiến độ hợp đồng xây dựng</td>
            <td class="align-c">318</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct318_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct318_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Các khoản phải trả, phải nộp ngắn hạn khác </td>
            <td class="align-c">319</td>
            <td class="align-c">V.18</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct319_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct319_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Dự phòng phải trả ngắn hạn  </td>
            <td class="align-c">320</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct320_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct320_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>11. Quỹ khen thưởng, phúc lợi </td>
            <td class="align-c">323</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct323_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct323_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Nợ dài hạn (330=331+332+...+338+339)</b></td>
            <td class="align-c"><b>330</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct330_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct330_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải trả dài hạn người bán</td>
            <td class="align-c">331</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct331_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct331_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Phải trả dài hạn nội bộ</td>
            <td class="align-c">332</td>
            <td class="align-c">V.19</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct332_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct332_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Phải trả dài hạn khác</td>
            <td class="align-c">333</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct333_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct333_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Vay và nợ dài hạn </td>
            <td class="align-c">334</td>
            <td class="align-c">V.20</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct334_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct334_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Thuế thu nhập hoãn lại phải trả</td>
            <td class="align-c">335</td>
            <td class="align-c">V.21</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct335_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct335_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự phòng trợ cấp mất việc làm</td>
            <td class="align-c">336</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct336_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct336_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Dự phòng phải trả dài hạn</td>
            <td class="align-c">337</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct337_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct337_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Doanh thu chưa thực hiện</td>
            <td class="align-c">338</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct338_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct338_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">339</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct339_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct339_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B-VỐN CHỦ SỞ HỮU (400=410+430)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct400_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct400_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Vốn chủ sở hữu(410=411+412+...+420+421+422)</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-c">V.22</td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct410_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct410_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct411_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct411_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct412_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct412_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Vốn khác của chủ sở hữu</td>
            <td class="align-c">413</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct413_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct413_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Cổ phiếu quỹ (*) </td>
            <td class="align-c">414</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct414_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct414_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Chênh lệch đánh giá lại tài sản </td>
            <td class="align-c">415</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct415_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct415_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Chênh lệch tỷ giá hối đoái </td>
            <td class="align-c">416</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct416_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct416_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Quỹ đầu tư phát triển</td>
            <td class="align-c">417</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct417_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct417_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Quỹ dự phòng tài chính </td>
            <td class="align-c">418</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct418_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct418_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Quỹ khác thuộc vốn chủ sở hữu  </td>
            <td class="align-c">419</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct419_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct419_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">420</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct420_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct420_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>11. Nguồn vốn đầu tư xây dựng cơ bản </td>
            <td class="align-c">421</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct421_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct421_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">12</td>
            <td>12. Quỹ hỗ trợ sắp xếp doanh nghiệp</td>
            <td class="align-c">422</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct422_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct422_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Nguồn kinh phí và quỹ khác (430=432+433)</b></td>
            <td class="align-c"><b>430</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct430_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct430_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Nguồn kinh phí</td>
            <td class="align-c">432</td>
            <td class="align-c">V.23</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct432_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct432_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Nguồn kinh phí đó hình thành từ TSCĐ</td>
            <td class="align-c">433</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ct433_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ct433_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG TÀI SẢN (440=300+400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ct440_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ct440_nNgoai"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>CHỈ TIÊU NGOÀI BẢNG </b></td>
        </tr>		
        <tr>
            <td class="align-c">1</td>
            <td>1. Tài sản thuê ngoài</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/tsantNgoai_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/tsantNgoai_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Vật tư, hàng hóa nhận giữ hộ, nhận gia công</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/hangGCong_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/hangGCong_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Hàng hóa nhận bán hộ, nhận ký gửi</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/hangKGui_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/hangKGui_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Nợ khó đòi đã xử lý</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/noKDoi_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/noKDoi_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Ngoại tệ các loại</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ngoaiTe_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ngoaiTe_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự toán chi hoạt động</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/duToanChi_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/duToanChi_nNgoai"/></td>
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
<br/><br/><br/>
		
<div><b><i>Ghi chú (*): </i></b> <br/>(1)	Những chỉ tiêu không có số liệu có thể không phải trình bày nhưng không được đánh lại số thứ tự chỉ tiêu và “Mã số“. <br/>
(2)	Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (...).<br/>
(3)	Đối với doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì “Số cuối năm“ có thể ghi là “31.12.X“; “Số đầu năm“ có thể ghi là “01.01.X“. 
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>
