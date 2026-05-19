<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo thông tư số 95/2008/TT-BTC ngày 24 tháng 10 năm 2008  của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC">
		<xsl:with-param name="mauTKhai"   select="'B01-CTCK'"/>
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
            <td class="align-c"><b>Số năm nay</b></td>
            <td class="align-c"><b>Số năm trước</b></td>
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
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct100"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct100"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Tiền và các khoản tương đương tiền (110=111+112)</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Tiền</td>
            <td class="align-c">111</td>
            <td class="align-c">V.01</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct111"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct111"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Các khoản tương đương tiền</td>
            <td class="align-c">112</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct112"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct112"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Các khoản đầu tư tài chính ngắn hạn (120=121+129)</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-c"><b>V.02</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư ngắn hạn</td>
            <td class="align-c">121</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Dự phòng giảm giá đầu tư ngắn hạn (*)</td>
            <td class="align-c">129</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct129"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct129"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Các khoản phải thu ngắn hạn (130=131+132+133+135+138+139)</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-c"><b>V.11</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Phải thu của khách hàng</td>
            <td class="align-c">131</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct132"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct132"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Phải thu nội bộ ngắn hạn </td>
            <td class="align-c">133</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Phải thu hoạt động giao dịch chứng khoán</td>
            <td class="align-c">135</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Các khoản phải thu khác</td>
            <td class="align-c">138</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct138"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct138"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">139</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct139"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct139"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-c"><b>V.02</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>V. Tài sản ngắn hạn khác (150=151+152+154+157+158)</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Chi phí trả trước ngắn hạn</td>
            <td class="align-c">151</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thuế GTGT được khấu trừ </td>
            <td class="align-c">152</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct152"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Thuế và các khoản phải thu Nhà nước</td>
            <td class="align-c">154</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct154"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">157</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct157"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Tài sản ngắn hạn khác</td>
            <td class="align-c">158</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct158"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct158"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B - TÀI SẢN DÀI HẠN (200=210+220+240+250+260)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Các khoản phải thu dài hạn (210=211+212+213+218+219)</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-c"><b>V.11</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct210"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 1. Phải thu dài hạn của khách hàng  </td>
            <td class="align-c">211</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct211"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2.Vốn kinh doanh ở đơn vị trực thuộc </td>
            <td class="align-c">212</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct212"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td> 3. Phải thu dài hạn nội bộ </td>
            <td class="align-c">213</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct213"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Phải thu dài hạn khác</td>
            <td class="align-c">218</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct218"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct218"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td> 5. Dự phòng phải thu dài hạn khó đòi (*) </td>
            <td class="align-c">219</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct219"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct219"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>II. Tài sản cố định (220=221+224+227+230)</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct220"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td>  <b>1. Tài sản cố định hữu hình (221=222+223)</b></td>
            <td class="align-c"><b>221</b></td>
            <td class="align-c"><b>V.05</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct221"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td> - Nguyên giá </td>
            <td class="align-c">222</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct222"/></td>
        </tr>
         <tr>
            <td class="align-c">-</td>
            <td>- Giá trị hao mòn luỹ kế(*)</td>
            <td class="align-c">223</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct223"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct223"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td>  <b> 2. Tài sản cố định thuê tài chính (224=225+226)</b></td>
            <td class="align-c"><b>224</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct224"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct224"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Nguyên giá</td>
            <td class="align-c">225</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct225"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct225"/></td>
        </tr>
         <tr>
            <td class="align-c">-</td>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">226</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct226"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct226"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>3</b></td>
            <td>  <b> 3. Tài sản cố định vô hình (27=228+229)</b></td>
            <td class="align-c"><b>227</b></td>
            <td class="align-c"><b>V.06</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct227"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct227"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Nguyên giá</td>
            <td class="align-c">228</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct228"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct228"/></td>
        </tr>
         <tr>
            <td class="align-c">-</td>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">229</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct229"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>4</b></td>
            <td>  <b>4. Chi phí đầu tư xây dựng cơ bản dở dang</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct230"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct230"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>III. Bất động sản đầu tư (240=241+242)</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct240"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct240"/></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Nguyên giá</td>
            <td class="align-c">241</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct241"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct241"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">242</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct242"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>IV. Các khoản đầu tư tài chính dài hạn  (250=251+252+258+259)</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct250"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct250"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Đầu tư vào công ty con</td>
            <td class="align-c">251</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct251"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Đầu tư vào công ty liên kết, liên doanh</td>
            <td class="align-c">252</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct252"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Đầu tư chứng khoán dài hạn </td>
            <td class="align-c">253</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct253"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Chứng khoán sẵn sàng để bán </td>
            <td class="align-c">254</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct254"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Chứng khoán nắm giữ đến ngày đáo hạn </td>
            <td class="align-c">255</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct255"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Đầu tư dài hạn khác</td>
            <td class="align-c">258</td>
            <td class="align-c">V.04</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct258"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct258"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Dự phòng giảm giá đầu tư tài chính dài hạn (*)</td>
            <td class="align-c">259</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct259"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct259"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>V. Tài sản dài hạn khác (260=261+262+263+268)</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct260"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct260"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Chi phí trả trước dài hạn </td>
            <td class="align-c">261</td>
            <td class="align-c">V.07</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct261"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Tài sản thuế thu nhập hoãn lại </td>
            <td class="align-c">262</td>
            <td class="align-c">V.09</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct262"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Tiền nộp Quỹ hỗ trợ thanh toán</td>
            <td class="align-c">263</td>
            <td class="align-c">V.10</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct263"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Tài sản dài hạn khác</td>
            <td class="align-c">268</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct268"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct268"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG TÀI SẢN (270=100+200)</b></td>
            <td class="align-c"><b>270</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct270"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct270"/></b></td>
        </tr>

<!--Nguon von-->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>NGUỒN VỐN </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td><b>A - NỢ PHẢI TRẢ (300=310+330)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I. Nợ ngắn hạn 310=311+..+317+319+..+323+327+328+329)</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct310"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct310"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Vay và  nợ ngắn hạn</td>
            <td class="align-c">311</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct311"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td> 2. Phải trả người bán </td>
            <td class="align-c">312</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct312"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td> 3. Người mua trả tiền trước</td>
            <td class="align-c">313</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct313"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct313"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td> 4. Thuế và các khoản phải nộp Nhà nước   </td>
            <td class="align-c">314</td>
            <td class="align-c">V.08</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct314"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct314"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>	5. Phải trả người lao động</td>
            <td class="align-c">315</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct315"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Chi phí phải trả</td>
            <td class="align-c">316</td>
            <td class="align-c">V.12</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct316"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct316"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>	7. Phải trả nội bộ</td>
            <td class="align-c">317</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct317"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct317"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>	8. Các khoản phải trả, phải nộp ngắn hạn khác</td>
            <td class="align-c">319</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct319"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct319"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Phải trả hoạt động giao dịch chứng khoán </td>
            <td class="align-c">320</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct320"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Phải trả hộ cổ tức, gốc và lãi trái phiếu    </td>
            <td class="align-c">321</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct321"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct321"/></td>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>	11. Phải trả tổ chức phát hành chứng khoán</td>
            <td class="align-c">322</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct322"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct322"/></td>
        </tr>
        <tr>
            <td class="align-c">12</td>
            <td>		12. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">323</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct323"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct323"/></td>
        </tr>
        <tr>
            <td class="align-c">13</td>
            <td>		13. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">327</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct327"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct327"/></td>
        </tr>
        <tr>
            <td class="align-c">14</td>
            <td>		14. Doanh thu chưa thực hiện ngắn hạn</td>
            <td class="align-c">328</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct328"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct328"/></td>
        </tr>
        <tr>
            <td class="align-c">15</td>
            <td>		15. Dự phòng phải trả ngắn hạn</td>
            <td class="align-c">329</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct329"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct329"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>	II. Nợ dài hạn (330=331+..+335+…+339+359)</b></td>
            <td class="align-c"><b>330</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct330"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct330"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td> 	1. Phải trả dài hạn người bán </td>
            <td class="align-c">331</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct331"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Phải trả dài hạn nội bộ </td>
            <td class="align-c">332</td>
            <td class="align-c">V.14</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct332"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct332"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Phải trả dài hạn khác</td>
            <td class="align-c">333</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct333"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct333"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Vay và nợ dài hạn</td>
            <td class="align-c">334</td>
            <td class="align-c">V.15</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct334"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Thuế thu nhập hoãn lại phải trả</td>
            <td class="align-c">335</td>
            <td class="align-c">V.09</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct335"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Dự phòng trợ cấp mất việc làm</td>
            <td class="align-c">336</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct336"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct336"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Dự phòng phải trả dài hạn</td>
            <td class="align-c">337</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct337"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct337"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Doanh thu chưa thực hiện dài hạn</td>
            <td class="align-c">338</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct338"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct338"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">339</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct339"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct339"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Dự phòng bồi thường thiệt hại cho nhà đầu tư</td>
            <td class="align-c">359</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct359"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct359"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>B - VỐN CHỦ SỞ HỮU (400=410+430)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct400"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>I - Vốn chủ sở hữu</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct410"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct410"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct412"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Vốn khác của chủ sở hữu</td>
            <td class="align-c">413</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct413"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Cổ phiếu quỹ (*)</td>
            <td class="align-c">414</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct414"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Chênh lệch đánh giá lại tài sản</td>
            <td class="align-c">415</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct415"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">416</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct416"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Quỹ đầu tư phát triển </td>
            <td class="align-c">417</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct417"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Quỹ dự phòng tài chính</td>
            <td class="align-c">418</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct418"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Quỹ khác thuộc vốn chủ sở hữu  </td>
            <td class="align-c">419</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct419"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Lợi nhuận sau thuế chưa phân phối </td>
            <td class="align-c">420</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct420"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>TỔNG CỘNG NGUỒN VỐN (440=300+400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct440"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct440"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>CÁC CHỈ TIÊU NGOÀI BẢNG CÂN ĐỐI KẾ TOÁN </b></td>
        </tr>		
        <tr>
            <td class="align-c">1</td>
            <td>1. Tài sản cố định thuê ngoài</td>
            <td class="align-c">001</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/tsanCDtNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/tsanCDtNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Vật tư, chứng chỉ có giá nhận giữ hộ</td>
            <td class="align-c">002</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/vatTuGiuHo"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/vatTuGiuHo"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Tài sản nhận ký cược</td>
            <td class="align-c">003</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/taiSanNhanKyCuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/taiSanNhanKyCuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Nợ khó đòi đã xử lý</td>
            <td class="align-c">004</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/noKhoDoiDaXLy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/noKhoDoiDaXLy"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Ngoại tệ các loại</td>
            <td class="align-c">005</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ngoaiTeCacLoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ngoaiTeCacLoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Chứng khoán lưu ký </td>
            <td class="align-c">006</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Trong đó:</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-r"></td>
            <td class="align-r"></td>
        </tr>
        <tr>
            <td class="align-c">6.1</td>
            <td>6.1. Chứng khoán giao dịch </td>
            <td class="align-c">007</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckGiaoDich"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckGiaoDich"/></td>
        </tr>
        <tr>
            <td class="align-c">6.1.1</td>
            <td>6.1.1. Chứng khoán giao dịch của thành viên lưu ký</td>
            <td class="align-c">008</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgd_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgd_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.1.2</td>
            <td>6.1.2. Chứng khoán giao dịch của khách hàng trong nước</td>
            <td class="align-c">009</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgd_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgd_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.1.3</td>
            <td>6.1.3. Chứng khoán giao dịch của khách hàng nước ngoài</td>
            <td class="align-c">010</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgd_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgd_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.1.4</td>
            <td>6.1.4. Chứng khoán giao dịch của tổ chức khác</td>
            <td class="align-c">011</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgd_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgd_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.2</td>
            <td>6.2. Chứng khoán tạm ngừng giao dịch </td>
            <td class="align-c">012</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckTamNguongGD"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckTamNguongGD"/></td>
        </tr>
        <tr>
            <td class="align-c">6.2.1</td>
            <td>6.2.1. Chứng khoán tạm ngừng giao dịch của thành viên lưu ký</td>
            <td class="align-c">013</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngd_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngd_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.2.2</td>
            <td>6.2.2. Chứng khoán tạm ngừng giao dịch của khách hàng trong nước</td>
            <td class="align-c">014</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngd_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngd_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.2.3</td>
            <td>6.2.3. Chứng khoán tạm ngừng giao dịch của khách hàng nước ngoài</td>
            <td class="align-c">015</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngd_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngd_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.2.4</td>
            <td>6.2.4. Chứng khoán tạm ngừng giao dịch của tổ chức khác</td>
            <td class="align-c">016</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngd_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngd_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.3</td>
            <td>6.3. Chứng khoán cầm cố</td>
            <td class="align-c">017</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckCamCo"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckCamCo"/></td>
        </tr>
        <tr>
            <td class="align-c">6.3.1</td>
            <td>6.3.1. Chứng khoán cầm cố của thành viên lưu ký</td>
            <td class="align-c">018</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcc_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcc_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.3.2</td>
            <td>6.3.2. Chứng khoán cầm cố của khách hàng trong nước</td>
            <td class="align-c">019</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcc_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcc_KHangTrongNuoc"/></td>
        </tr>
<tr>
            <td class="align-c">6.3.3</td>
            <td>6.3.3. Chứng khoán cầm cố  của khách hàng nước ngoài</td>
            <td class="align-c">020</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcc_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcc_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.3.4</td>
            <td>6.3.4. Chứng khoán cầm cố của tổ chức khác</td>
            <td class="align-c">021</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcc_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcc_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.4</td>
            <td>6.4. Chứng khoán tạm giữ </td>
            <td class="align-c">022</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckTamGiu"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckTamGiu"/></td>
        </tr>
        <tr>
            <td class="align-c">6.4.1</td>
            <td>6.4.1. Chứng khoán tạm giữ của thành viên lưu ký</td>
            <td class="align-c">023</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktg_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktg_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.4.2</td>
            <td>6.4.2. Chứng khoán tạm giữ của khách hàng trong nước</td>
            <td class="align-c">024</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktg_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktg_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.4.3</td>
            <td>6.4.3. Chứng khoán tạm giữ của khách hàng nước ngoài</td>
            <td class="align-c">025</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktg_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktg_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.4.4</td>
            <td>6.4.4. Chứng khoán tạm giữ của tổ chức khác</td>
            <td class="align-c">026</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktg_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktg_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.5</td>
            <td>6.5. Chứng khoán chờ thanh toán</td>
            <td class="align-c">027</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckChoThanhToan"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckChoThanhToan"/></td>
        </tr>
        <tr>
            <td class="align-c">6.5.1</td>
            <td>6.5.1. Chứng khoán chờ thanh toán của thành viên lưu ký</td>
            <td class="align-c">028</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckctt_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckctt_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.5.2</td>
            <td>6.5.2. Chứng khoán chờ thanh toán của khách hàng trong nước</td>
            <td class="align-c">029</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckctt_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckctt_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.5.3</td>
            <td>6.5.3. Chứng khoán chờ thanh toán của khách hàng nước ngoài</td>
            <td class="align-c">030</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckctt_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckctt_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.5.4</td>
            <td>6.5.4. Chứng khoán chờ thanh toán của tổ chức khác</td>
            <td class="align-c">031</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckctt_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckctt_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.6</td>
            <td>6.6. Chứng khoán phong toả chờ rút</td>
            <td class="align-c">032</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckPhongToaChoRut"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckPhongToaChoRut"/></td>
        </tr>
        <tr>
            <td class="align-c">6.6.1</td>
            <td>6.6.1. Chứng khoán phong toả chờ rút của thành viên lưu ký</td>
            <td class="align-c">033</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcr_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcr_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.6.2</td>
            <td>6.6.2. Chứng khoán phong toả chờ rút của khách hàng trong nước</td>
            <td class="align-c">034</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcr_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcr_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.6.3</td>
            <td>6.6.3. Chứng khoán phong toả chờ rút của khách hàng nước ngoài</td>
            <td class="align-c">035</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcr_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcr_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.6.4</td>
            <td>6.6.4. Chứng khoán phong toả chờ rút của tổ chức khác</td>
            <td class="align-c">036</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcr_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcr_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.7</td>
            <td>6.7. Chứng khoán chờ giao dịch</td>
            <td class="align-c">037</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckChoGiaoDich"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckChoGiaoDich"/></td>
        </tr>
        <tr>
            <td class="align-c">6.7.1</td>
            <td>6.7.1. Chứng khoán chờ giao dịch của thành viên lưu ký</td>
            <td class="align-c">038</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcgd_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcgd_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.7.2</td>
            <td>6.7.2. Chứng khoán chờ giao dịch của khách hàng trong nước</td>
            <td class="align-c">039</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcgd_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcgd_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.7.3</td>
            <td>6.7.3. Chứng khoán chờ giao dịch của khách hàng nước ngoài</td>
            <td class="align-c">040</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcgd_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcgd_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.7.4</td>
            <td>6.7.4. Chứng khoán chờ giao dịch của tổ chức khác</td>
            <td class="align-c">041</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcgd_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcgd_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.8</td>
            <td>6.8. Chứng khoán ký quỹ đảm bảo khoản vay</td>
            <td class="align-c">042</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckKyQuyDBaoKhoanVay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckKyQuyDBaoKhoanVay"/></td>
        </tr>
        <tr>
            <td class="align-c">6.8.1</td>
            <td>6.8.1. Chứng khoán ký quỹ đảm bảo khoản vay của thành viên lưu ký</td>
            <td class="align-c">043</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckkqdbkv_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckkqdbkv_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">6.8.2</td>
            <td>6.8.2. Chứng khoán ký quỹ đảm bảo khoản vay của khách hàng trong nước</td>
            <td class="align-c">044</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckkqdbkv_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckkqdbkv_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">6.8.3</td>
            <td>6.8.3. Chứng khoán ký quỹ đảm bảo khoản vay của khách hàng nước ngoài</td>
            <td class="align-c">045</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckkqdbkv_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckkqdbkv_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6.8.4</td>
            <td>6.8.4. Chứng khoán ký quỹ đảm bảo khoản vay của tổ chức khác</td>
            <td class="align-c">046</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckkqdbkv_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckkqdbkv_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">6.9</td>
            <td>6.9 Chứng khoán sửa lỗi giao dịch</td>
            <td class="align-c">047</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckSuaLoiGiaoDich"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckSuaLoiGiaoDich"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Chứng khoán lưu ký công ty đại chúng chưa niêm yết</td>
            <td class="align-c">050</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckLKyCTyDChungChuaLiemYet"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckLKyCTyDChungChuaLiemYet"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Trong đó:</td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-r"></td>
            <td class="align-r"></td>
        </tr>
        <tr>
            <td class="align-c">7.1</td>
            <td>7.1. Chứng khoán giao dịch </td>
            <td class="align-c">051</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanGiaoDich"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanGiaoDich"/></td>
        </tr>
        <tr>
            <td class="align-c">7.1.1</td>
            <td>7.1.1. Chứng khoán giao dịch của thành viên lưu ký</td>
            <td class="align-c">052</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgdich_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgdich_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.1.2</td>
            <td>7.1.2. Chứng khoán giao dịch của khách hàng trong nước</td>
            <td class="align-c">053</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgdich_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgdich_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.1.3</td>
            <td>7.1.3. Chứng khoán giao dịch của khách hàng nước ngoài</td>
            <td class="align-c">054</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgdich_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgdich_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.1.4</td>
            <td>7.1.4. Chứng khoán giao dịch của tổ chức khác</td>
            <td class="align-c">055</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckgdich_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckgdich_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.2</td>
            <td>7.2. Chứng khoán tạm ngừng giao dịch</td>
            <td class="align-c">056</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanTamNgungGD"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanTamNgungGD"/></td>
        </tr>
        <tr>
            <td class="align-c">7.2.1</td>
            <td>7.2.1. Chứng khoán tạm ngừng giao dịch của thành viên lưu ký</td>
            <td class="align-c">057</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngdich_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngdich_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.2.2</td>
            <td>7.2.2. Chứng khoán tạm ngừng giao dịch của khách hàng trong nước</td>
            <td class="align-c">058</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngdich_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngdich_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.2.3</td>
            <td>7.2.3. Chứng khoán tạm ngừng giao dịch của khách hàng nước ngoài</td>
            <td class="align-c">059</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngdich_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngdich_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.2.4</td>
            <td>7.2.4. Chứng khoán tạm ngừng giao dịch của tổ chức khác</td>
            <td class="align-c">060</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktngdich_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktngdich_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.3</td>
            <td>7.3. Chứng khoán cầm cố</td>
            <td class="align-c">061</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanCamCo"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanCamCo"/></td>
        </tr>
        <tr>
            <td class="align-c">7.3.1</td>
            <td>7.3.1. Chứng khoán cầm cố của thành viên lưu ký</td>
            <td class="align-c">062</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcco_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcco_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.3.2</td>
            <td>7.3.2. Chứng khoán cầm cố của khách hàng trong nước</td>
            <td class="align-c">063</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcco_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcco_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.3.3</td>
            <td>7.3.3. Chứng khoán cầm cố  của khách hàng nước ngoài</td>
            <td class="align-c">064</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcco_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcco_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.3.4</td>
            <td>7.3.4. Chứng khoán cầm cố của tổ chức khác</td>
            <td class="align-c">065</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcco_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcco_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.4</td>
            <td>7.4. Chứng khoán tạm giữ </td>
            <td class="align-c">066</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanTamGiu"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanTamGiu"/></td>
        </tr>
        <tr>
            <td class="align-c">7.4.1</td>
            <td>7.4.1. Chứng khoán tạm giữ của thành viên lưu ký</td>
            <td class="align-c">067</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktgiu_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktgiu_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.4.2</td>
            <td>7.4.2. Chứng khoán tạm giữ của khách hàng trong nước</td>
            <td class="align-c">068</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktgiu_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktgiu_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.4.3</td>
            <td>7.4.3. Chứng khoán tạm giữ của khách hàng nước ngoài</td>
            <td class="align-c">069</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktgiu_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktgiu_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.4.4</td>
            <td>7.4.4. Chứng khoán tạm giữ của tổ chức khác</td>
            <td class="align-c">070</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/cktgiu_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/cktgiu_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.5</td>
            <td>7.5. Chứng khoán chờ thanh toán</td>
            <td class="align-c">071</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanChoTToan"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanChoTToan"/></td>
        </tr>
        <tr>
            <td class="align-c">7.5.1</td>
            <td>7.5.1. Chứng khoán chờ thanh toán của thành viên lưu ký</td>
            <td class="align-c">072</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcttoan_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcttoan_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.5.2</td>
            <td>7.5.2. Chứng khoán chờ thanh toán của khách hàng trong nước</td>
            <td class="align-c">073</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcttoan_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcttoan_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.5.3</td>
            <td>7.5.3. Chứng khoán chờ thanh toán của khách hàng nước ngoài</td>
            <td class="align-c">074</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcttoan_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcttoan_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.5.4</td>
            <td>7.5.4. Chứng khoán chờ thanh toán của tổ chức khác</td>
            <td class="align-c">075</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckcttoan_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckcttoan_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.6</td>
            <td>7.6. Chứng khoán phong toả chờ rút</td>
            <td class="align-c">076</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanPToaChoRut"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanPToaChoRut"/></td>
        </tr>
        <tr>
            <td class="align-c">7.6.1</td>
            <td>7.6.1. Chứng khoán phong toả chờ rút của thành viên lưu ký</td>
            <td class="align-c">077</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcrut_TVienLuuKy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcrut_TVienLuuKy"/></td>
        </tr>
        <tr>
            <td class="align-c">7.6.2</td>
            <td>7.6.2. Chứng khoán phong toả chờ rút của khách hàng trong nước</td>
            <td class="align-c">078</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcrut_KHangTrongNuoc"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcrut_KHangTrongNuoc"/></td>
        </tr>
        <tr>
            <td class="align-c">7.6.3</td>
            <td>7.6.3. Chứng khoán phong toả chờ rút của khách hàng nước ngoài</td>
            <td class="align-c">079</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcrut_KHangNuocNgoai"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcrut_KHangNuocNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7.6.4</td>
            <td>7.6.4. Chứng khoán phong toả chờ rút của tổ chức khác</td>
            <td class="align-c">080</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckptcrut_ToChucKhac"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckptcrut_ToChucKhac"/></td>
        </tr>
        <tr>
            <td class="align-c">7.7</td>
            <td>7.7. Chứng khoán sửa lỗi giao dịch</td>
            <td class="align-c">081</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/chungKhoanSuaLoiGD"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/chungKhoanSuaLoiGD"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Chứng khoán chưa lưu ký của khách hàng</td>
            <td class="align-c">082</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckChuaLuuKyCuaKHang"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckChuaLuuKyCuaKHang"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Chứng khoán chưa lưu ký của công ty chứng khoán</td>
            <td class="align-c">083</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckChuaLuuKyCuaCTyCK"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckChuaLuuKyCuaCTyCK"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Chứng khoán nhận uỷ thác đấu giá</td>
            <td class="align-c">084</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam_CTieuNgoai/ckNhanUyThacDauGia"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam_CTieuNgoai/ckNhanUyThacDauGia"/></td>
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
<div><b><i>Ghi chú:</i></b></div>
<div>- Số liệu các chỉ tiêu có dấu(*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn ( ).</div>
<div>- Các chỉ tiêu có dấu (x) không ghi số liệu.</div>
<br/><br/><br/></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
		
     </xsl:template>		
</xsl:stylesheet>
