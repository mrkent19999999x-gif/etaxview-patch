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
		<xsl:call-template name="tkhaiHeader_BCTC200_GND_day_du">
		<xsl:with-param name="mauTKhai"   select="'B 01a – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>TÀI SẢN </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối quý </b></td>
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
            <td class="align-l"><b>A – TÀI SẢN NGẮN HẠN (100 = 110+ 120 + 130 + 140 + 150) </b></td>
            <td><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct100)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct100)"/></b></td>
          </tr>
        <tr>
            <td class="align-l"><b>I. Tiền và các khoản tương đương tiền (110 = 111 + 112)</b></td>
            <td><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct110)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct110)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Tiền </td>
            <td>111</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct111"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct111)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct111)"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Các khoản tương đương tiền</td>
            <td>112</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct112"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct112)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct112)"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>II. Đầu tư tài chính ngắn hạn (120 = 121 + 122 + 123)</b></td>
            <td><b>120</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct120)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct120)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Chứng khoán kinh doanh</td>
            <td>121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct121"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Dự phòng giảm giá chứng khoán kinh doanh (*) </td>
            <td>122</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct122"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct122"/></td>
        </tr>
         <tr>
            <td class="align-l">3. Đầu tư nắm giữ đến ngày đáo hạn </td>
            <td>123</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct123"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>III. Các khoản phải thu ngắn hạn (130 = 131 + 132 +…+ 137 + 139)</b></td>
            <td><b>130</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct130)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct130)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Phải thu ngắn hạn của khách hàng </td>
            <td>131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Trả trước cho người bán ngắn hạn</td>
            <td>132</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct132)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct132)"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Phải thu nội bộ ngắn hạn</td>
            <td>133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải thu theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td>134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Phải thu về cho vay ngắn hạn</td>
            <td>135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Phải thu ngắn hạn khác</td>
            <td>136</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct136"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct136)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct136)"/></td>
        </tr>
         <tr>
            <td class="align-l">7. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td>137</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct137"/></td>
        </tr>
        <tr>
            <td class="align-l">8. Tài sản thiếu chờ xử lý</td>
            <td>139</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct139"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct139"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct139"/></td>
        </tr>
               
        <tr>
            <td class="align-l"><b>IV. Hàng tồn kho (140 = 141 + 149)</b></td>
            <td><b>140</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct140)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct140)"/></b></td>

        </tr>
        <tr>
            <td class="align-l">1. Hàng tồn kho</td>
            <td>141</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct141"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Dự phòng giảm giá hàng tồn kho (*)</td>
            <td>149</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct149"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct149"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct149"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>V. Tài sản ngắn hạn khác (150= 151 + 152 + …+ 155)</b></td>
            <td><b>150</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct150)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct150)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Chi phí trả trước ngắn hạn </td>
            <td>151</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Thuế GTGT được khấu trừ</td>
            <td>152</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct152"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Thuế và các khoản khác phải thu Nhà nước</td>
            <td>153</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct153"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td>154</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct154"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Tài sản ngắn hạn khác</td>
            <td>155</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct155"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>B - TÀI SẢN DÀI HẠN (200= 210 + 220 + 230 + 240 + 250 + 260)</b></td>
            <td><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct200"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>

        </tr>
           <tr>
            <td class="align-l"><b>I. Các khoản phải thu dài hạn (210 = 211 + 212 +….+ 216 + 219)</b></td>
            <td><b>210</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct210"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct210"/></b></td>

        </tr>
        <tr>
            <td class="align-l">1. Phải thu dài hạn của khách hàng</td>
            <td>211</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct211"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Trả trước cho người bán dài hạn</td>
            <td>212</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct212"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td>213</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct213"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải thu nội bộ dài hạn</td>
            <td>214</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct214"/></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct214"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct214"/></b></td>
        </tr>
        <tr>
            <td class="align-l">5. Phải thu về cho vay dài hạn</td>
            <td>215</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct215"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct215"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct215"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Phải thu dài hạn khác</td>
            <td>216</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct216"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct216"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct216"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td>219</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct219"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct219"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct219"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>II. Tài sản cố định ( 220 = 221 + 224 + 227)</b></td>
            <td><b>220</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct220)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct220)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Tài sản cố định hữu hình  (221 = 222 + 223)</td>
            <td>221</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct221"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct221"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct221"/></td>
        </tr>
         <tr>
            <td class="align-l"> - Nguyên giá</td>
            <td>222</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct222"/></td>
        </tr>
                <tr>
            <td class="align-l"> - Giá trị hao mòn luỹ kế (*)</td>
            <td>223</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct223"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct223"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct223"/></td>
        </tr>
            <tr>
            <td class="align-l">2. Tài sản cố định thuê tài chính (224 = 225 + 226)</td>
            <td>224</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct224"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct224"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct224"/></td>
        </tr>
			<tr>
            <td class="align-l">- Nguyên giá</td>
            <td>225</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct225"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct225"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct225"/></td>
        </tr>
         <tr>
            <td class="align-l">- Giá trị hao mòn luỹ kế (*)</td>
            <td>226</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct226"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct226"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct226"/></td>
        </tr>
          <tr>
            <td class="align-l">3. Tài sản cố định vô hình (227 = 228 + 229)</td>
            <td>227</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct227"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct227"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct227"/></td>
        </tr>
          <tr>
            <td class="align-l">- Nguyên giá</td>
            <td>228</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct228"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct228"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct228"/></td>
        </tr>
          <tr>
            <td class="align-l">- Giá trị hao mòn luỹ kế (*)</td>
            <td>229</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct229"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>III. Bất động sản đầu tư (230 = 231 + 232)</b></td>
            <td><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct230)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct230)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">- Nguyên giá</td>
            <td>231</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct231"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct231"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct231"/></td>
        </tr>
        <tr>
            <td class="align-l">- Giá trị hao mòn luỹ kế (*)</td>
            <td>232</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct232"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct232"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct232"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>IV. Tài sản dở dang dài hạn (240 = 241 + 242)</b></td>
            <td><b>240</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct240)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct240)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Chi phí sản xuất, kinh doanh dở dang dài hạn </td>
            <td>241</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct241"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct241"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct241"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Chi phí xây dựng cơ bản dở dang</td>
            <td>242</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct242"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>V. Đầu tư tài chính dài hạn (250 = 251 + …+ 255)</b></td>
            <td><b>250</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct250)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct250)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Đầu tư vào công ty con </td>
            <td>251</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct251"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct251"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Đầu tư vào công ty liên doanh, liên kết </td>
            <td>252</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct252"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Đầu tư góp vốn vào đơn vị khác </td>
            <td>253</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct253"/></td>
        </tr>
           <tr>
            <td class="align-l">4. Dự phòng đầu tư tài chính dài hạn (*) </td>
            <td>254</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct254"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct254"/></td>
        </tr>
         <tr>
            <td class="align-l">5. Đầu tư nắm giữ đến ngày đáo hạn </td>
            <td>255</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct255"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct255"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>VI. Tài sản dài hạn khác (260 = 261 + 262 + 263 + 268)</b></td>
            <td><b>260</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct260)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct260)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Chi phí trả trước dài hạn</td>
            <td>261</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct261"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct261"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Tài sản thuế thu nhập hoãn lại</td>
            <td>262</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct262"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct262"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Thiết bị, vật tư, phụ tùng thay thế dài hạn </td>
            <td>263</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct263"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct263"/></td>
        </tr>
           <tr>
            <td class="align-l">4. Tài sản dài hạn khác</td>
            <td>268</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct268"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct268"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct268"/></td>
        </tr>
        <tr>
            <td><b>TỔNG CỘNG TÀI SẢN (270 = 100 + 200)</b></td>
            <td><b>270</b></td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct270"/></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct270)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct270)"/></b></td>
        </tr>
<!--Nợ phải trả -->

        <tr>
            <td><b>C – NỢ PHẢI TRẢ (300= 310 + 330)</b></td>
            <td><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct300)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct300)"/></b></td>
        </tr>
        <tr>
            <td class="align-l"><b>I. Nợ ngắn hạn (310 = 311 + 312 +…+ 323 + 324)</b></td>
            <td><b>310</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct310)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct310)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Phải trả người bán ngắn hạn</td>
            <td>311</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct311"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Người mua trả tiền trước ngắn hạn</td>
            <td>312</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct312"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct312"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Thuế và các khoản phải nộp Nhà nước</td>
            <td>313</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct313"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct313)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct313)"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải trả người lao động</td>
            <td>314</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct314"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct314)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct314)"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Chi phí phải trả ngắn hạn</td>
            <td>315</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct315"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct315)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct315)"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Phải trả nội bộ ngắn hạn</td>
            <td>316</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct316"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct316)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct316)"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Phải trả theo tiến độ kế hoạch hợp đồng xây dựng</td>
            <td>317</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct317"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct317)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct317)"/></td>
        </tr>
           <tr>
            <td class="align-l">8. Doanh thu chưa thực hiện ngắn hạn </td>
            <td>318</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct318"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct318)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct318)"/></td>
        </tr>
           <tr>
            <td class="align-l">9. Phải trả ngắn hạn khác</td>
            <td>319</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct319"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct319)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct319)"/></td>
        </tr>
           <tr>
            <td class="align-l">10. Vay và nợ thuê tài chính ngắn hạn</td>
            <td>320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct320)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct320)"/></td>
        </tr>
           <tr>
            <td class="align-l">11. Dự phòng phải trả ngắn hạn </td>
            <td>321</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct321"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct321)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct321)"/></td>
        </tr>
           <tr>
            <td class="align-l">12. Quỹ khen thưởng, phúc lợi </td>
            <td>322</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct322"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct322)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct322)"/></td>
        </tr>
           <tr>
            <td class="align-l">13. Quỹ bình ổn giá</td>
            <td>323</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct323"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct323)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct323)"/></td>
        </tr>
           <tr>
            <td class="align-l">14. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td>324</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct324"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct324)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct324)"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>II. Nợ dài hạn (330 = 331 + 332 +…+ 342 + 343)</b></td>
            <td><b>330</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct330)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct330)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Phải trả người bán dài hạn</td>
            <td>331</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct331"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Người mua trả tiền trước dài hạn</td>
            <td>332</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct332"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct332"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct332"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Chi phí phải trả dài hạn</td>
            <td>333</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct333"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct333"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct333"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải trả nội bộ về vốn kinh doanh</td>
            <td>334</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct334"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Phải trả nội bộ dài hạn</td>
            <td>335</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct335"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct335)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct335)"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Doanh thu chưa thực hiện dài hạn </td>
            <td>336</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct336"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct336)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct336)"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Phải trả dài hạn khác</td>
            <td>337</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct337"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct337"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct337"/></td>
        </tr>
        <tr>
            <td class="align-l">8. Vay và nợ thuê tài chính dài hạn </td>
            <td>338</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct338"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct338"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct338"/></td>
        </tr>
        <tr>
            <td class="align-l">9. Trái phiếu chuyển đổi</td>
            <td>339</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct339"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct339"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct339"/></td>
        </tr>
        <tr>
            <td class="align-l">10. Cổ phiếu ưu đãi</td>
            <td>340</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct340"/></td>
        </tr>
        <tr>
            <td class="align-l">11. Thuế thu nhập hoãn lại phải trả </td>
            <td>341 </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct341"/></td>
        </tr>
        <tr>
            <td class="align-l">12. Dự phòng phải trả dài hạn </td>
            <td>342 </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct342"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct342"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct342"/></td>
        </tr>
        <tr>
            <td class="align-l">13. Quỹ phát triển khoa học và công nghệ</td>
            <td>343</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct343"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct343"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct343"/></td>
        </tr>
         <tr>
            <td class="align-l"><b>D - VỐN CHỦ SỞ HỮU (400 = 410 + 430)</b></td>
            <td><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct400)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct400)"/></b></td>
        </tr>
         <tr>
            <td class="align-l"><b>I. Vốn chủ sở (410 = 411 + 412 +…+ 421 + 422)</b></td>
            <td><b>410</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct410)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct410)"/></b></td>
        </tr>
          <tr>
            <td class="align-l">1. Vốn góp của chủ sở hữu (411 = 411a + 411b)</td>
            <td>411</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411"/></td>
        </tr>
        <tr>
            <td class="align-l"> - Cổ phiếu phổ thông có quyền biểu quyết</td>
            <td>411a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct411a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411a"/></td>
        </tr>
        <tr>
            <td class="align-l">- Cổ phiếu ưu đãi</td>
            <td>411b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct411b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411b"/></td>
        </tr>
         <tr>
            <td class="align-l">2. Thặng dư vốn cổ phần</td>
            <td>412</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct412"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Quyền chọn chuyển đổi trái phiếu</td>
            <td>413</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct413"/></td>
        </tr>
         <tr>
            <td class="align-l">4. Vốn khác của chủ sở hữu </td>
            <td>414</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct414"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Cổ phiếu quỹ (*)</td>
            <td>415</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct415"/></td>
        </tr>
            <tr>
            <td class="align-l">6. Chênh lệch đánh giá lại tài sản</td>
            <td>416</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct416"/></td>
        </tr>
         <tr>
            <td class="align-l">7. Chênh lệch tỷ giá hối đoái</td>
            <td>417</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct417"/></td>
        </tr>
           <tr>
            <td class="align-l">8. Quỹ đầu tư phát triển</td>
            <td>418</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct418"/></td>
        </tr>
            <tr>
            <td class="align-l">9. Quỹ hỗ trợ sắp xếp doanh nghiệp</td>
            <td>419</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct419"/></td>
        </tr>
         <tr>
            <td class="align-l">10. Quỹ khác thuộc vốn chủ sở hữu</td>
            <td>420</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct420"/></td>
        </tr>
          <tr>
            <td class="align-l">11. Lợi nhuận sau thuế chưa phân phối (421 =421a + 421b)</td>
            <td>421</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct421"/></td>
        </tr>
        <tr>
            <td class="align-l"> - LNST chưa phân phối lũy kế đến cuối kỳ trước</td>
            <td>421a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct421a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct421a"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct421a"/></td>
        </tr>
      <tr>
            <td class="align-l">- LNST chưa phân phối kỳ này</td>
            <td>421b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct421b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct421b"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct421b"/></td>
        </tr>
       <tr>
            <td class="align-l">12. Nguồn vốn đầu tư XDCB</td>
            <td>422</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct422"/></td>
        </tr> 
       <tr>
            <td class="align-l"><b>II. Nguồn kinh phí và quỹ khác (430 = 431 + 432)</b></td>
            <td><b>430</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct430"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct430)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct430)"/></b></td>
        </tr>
          <tr>
            <td class="align-l">1. Nguồn kinh phí </td>
            <td>431</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct431"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct431"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct431"/></td>
        </tr>
        <tr>
            <td class="align-l">  2. Nguồn kinh phí đã hình thành TSCĐ</td>
            <td>432</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct432"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ct432"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct432"/></td>
        </tr>
       <tr>
            <td class="align-l"><b>TỔNG CỘNG NGUỒN (440 = 300 + 400)</b></td>
            <td><b>440</b></td>
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
<xsl:call-template name="tkhaiFooter-BCTC200-GND">   
</xsl:call-template>
<br/>
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/soChungChiHanhNghe"/></b></div><br/>		<br/>
		
<div><b><i>Ghi chú: </i></b> <br/>(*) Nội dung các chỉ tiêu và mã số trên báo cáo này tương tự như các chỉ tiêu của Bảng cân đối kế toán năm - Mẫu số B01-DN.<br/>
Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề, tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.<br/>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>