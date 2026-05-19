<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 133/2016/TT-BTC Ngày 26/08/2016 của Bộ Tài chính'" />
		<xsl:call-template name="tkhaiHeader-BCTC133_B01a">
		<xsl:with-param name="mauTKhai"   select="'B 01b – DNN'"/>
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
            <td class="align-c"><b>CHỈ TIÊU</b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh</b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
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
            <td class="align-c"><b>A – TÀI SẢN NGẮN HẠN (100 = 110+ 120 + 130 + 140 + 150) </b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct100)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct100)"/></b></td>
          </tr>
        <tr>
            <td class="align-l"><b>I. Tiền và các khoản tương đương tiền</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct110)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct110)"/></b></td>
        </tr>
        <tr>
            <td class="align-l"><b>II. Đầu tư tài chính ngắn hạn</b></td>
            <td class="align-c"><b>120</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct120)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct120)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Chứng khoán kinh doanh</td>
            <td class="align-c">121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct121)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct121)"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Dự phòng giảm giá chứng khoán kinh doanh (*)</td>
            <td class="align-c">122</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct122)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct122)"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Đầu tư nắm giữ đến ngày đáo hạn ngắn hạn</td>
            <td class="align-c">123</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct123"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct123"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>III. Các khoản phải thu ngắn hạn</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct130)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct130)"/></b></td>
        </tr>
         <tr>
            <td class="align-l">1. Phải thu ngắn hạn của khách hàng</td>
            <td class="align-c">131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct131"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Trả trước cho người bán ngắn hạn</td>
            <td class="align-c">132</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct132)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct132)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">3. Phải thu ngắn hạn khác</td>
            <td class="align-c">133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct133"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct133"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Tài sản thiếu chờ xử lý</td>
            <td class="align-c">134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct134"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct134"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct135"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct135"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Phải thu của hoạt động tín dụng nội bộ ngắn hạn</td>
            <td class="align-c">137</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct137"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct137"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>IV. Hàng tồn kho</b></td>
            <td class="align-c"><b>140</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct140)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct140)"/></b></td>
        </tr>
         <tr>
            <td class="align-l">1. Hàng tồn kho</td>
            <td class="align-c">141</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct141"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Dự phòng giảm giá hàng tồn kho (*)</td>
            <td class="align-c">142</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct142"/></td>
        </tr>
               
        <tr>
            <td class="align-l"><b>V. Tài sản ngắn hạn khác</b></td>
            <td class="align-c"><b>150</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct150)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct150)"/></b></td>

        </tr>
        <tr>
            <td class="align-l">1. Thuế GTGT được khấu trừ</td>
            <td class="align-c">151</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct151"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct151"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Tài sản ngắn hạn khác</td>
            <td class="align-c">152</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct152"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>B - TÀI SẢN DÀI HẠN (200=210+220+230+240+250+260)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct200)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct200)"/></b></td>
        </tr>
        <tr>
            <td class="align-l"><b>I. Các khoản phải thu dài hạn</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct210)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct210)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Phải thu dài hạn của khách hàng</td>
            <td class="align-c">211</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct211"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct211"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Trả trước cho người bán dài hạn</td>
            <td class="align-c">212</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct212"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct212"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">213</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct213"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct213"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải thu dài hạn khác</td>
            <td class="align-c">214</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct214"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct214"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct214"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td class="align-c">215</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct215"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct215"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct215"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Phải thu của hoạt động tín dụng nội bộ dài hạn</td>
            <td class="align-c">217</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct217"/></td>
        </tr>
           <tr>
            <td class="align-l"><b>II. Tài sản cố định</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct220"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct220"/></b></td>

        </tr>
        <tr>
            <td class="align-l">- Nguyên giá</td>
            <td class="align-c">221</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct221"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct221"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct221"/></td>
        </tr>
        <tr>
            <td class="align-l">- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">222</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct222"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct222"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>III. Bất động sản đầu tư</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct230)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct230)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">- Nguyên giá</td>
            <td class="align-c">231</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct231"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct231"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct231"/></td>
        </tr>
        <tr>
            <td class="align-l">- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">232</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct232"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct232"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct232"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>IV. Xây dựng cơ bản dở dang</b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct240)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct240)"/></b></td>
        </tr>
        <tr>
            <td class="align-l"><b>V. Đầu tư tài chính dài hạn</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct250)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct250)"/></b></td>
        </tr>
        <tr>
            <td class="align-l">1. Đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">251</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct251"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct251)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct251)"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Dự phòng tổn thất đầu tư vào đơn vị khác (*)</td>
            <td class="align-c">252</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct252"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct252"/></td>
        </tr>
         <tr>
            <td class="align-l">3. Đầu tư nắm giữ đến ngày đáo hạn dài hạn</td>
            <td class="align-c">253</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct253"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct253"/></td>
        </tr>
                <tr>
            <td class="align-l"><b>VI. Tài sản dài hạn khác</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct260)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct260)"/></b></td>
        </tr>
            <tr>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN (300=100+200)</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct300)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct300)"/></b></td>
        </tr>

        <tr>
            <td class="align-c"><b>NGUỒN VỐN</b></td>
            <td><b></b></td>
            <td class="align-l"><b></b></td>
            <td class="number align-r"><b></b></td>
            <td class="number align-r"><b></b></td>
        </tr>
		<tr>
            <td class="align-c"><b> C- NỢ PHẢI TRẢ (400=410+420)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct400)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct400)"/></b></td>
        </tr>
         <tr>
            <td class="align-l"><b>I. Nợ ngắn hạn</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct410)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct410)"/></b></td>
        </tr>
         <tr>
            <td class="align-l">1. Phải trả người bán ngắn hạn</td>
            <td class="align-c">411</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct411"/></td>
        </tr>
          <tr>
            <td class="align-l">2. Người mua trả tiền trước ngắn hạn</td>
            <td class="align-c">412</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct412"/></td>
        </tr>
          <tr>
            <td class="align-l">3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">413</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct413"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải trả người lao động</td>
            <td class="align-c">414</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct414"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct414)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct414)"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Phải trả ngắn hạn khác</td>
            <td class="align-c">415</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct415"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Vay và nợ thuê tài chính ngắn hạn</td>
            <td class="align-c">416</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct416"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Dự phòng phải trả ngắn hạn</td>
            <td class="align-c">417</td>
          <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct417"/></td>
        </tr>
        <tr>
            <td class="align-l">8. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">418</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct418"/></td>
        </tr>
         <tr>
            <td class="align-l">9. Phải trả của hoạt động tín dụng nội bộ ngắn hạn</td>
            <td class="align-c">419</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct419"/></td>
        </tr>
        <tr>
            <td class="align-l"><b>II. Nợ dài hạn</b></td>
            <td class="align-c"><b>420</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct420)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct420)"/></b></td>

        </tr>
        <tr>
            <td class="align-l">1. Phải trả người bán dài hạn</td>
            <td class="align-c">421</td>
             <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct421"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Người mua trả tiền trước dài hạn </td>
            <td class="align-c">422</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct422"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct422"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Phải trả nội bộ về vốn kinh doanh</td>
            <td class="align-c">423</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct423"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct423"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct423"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Phải trả dài hạn khác</td>
            <td class="align-c">424</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct424"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct424"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct424"/></td>
         </tr>       
            <tr>
            <td class="align-l">5. Vay và nợ thuê tài chính dài hạn</td>
            <td class="align-c">425</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct425"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct425"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct425"/></td>
        </tr>
        <tr>
            <td class="align-l">6. Dự phòng phải trả dài hạn</td>
            <td class="align-c">426</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct426"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct426)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct426)"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Quỹ phát triển khoa học và công nghệ </td>
            <td class="align-c">427</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct427"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct427)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct427)"/></td>
        </tr>
        <tr>
            <td class="align-l">8. Phải trả của hoạt động tín dụng nội bộ dài hạn </td>
            <td class="align-c">429</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct429"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct429)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct429)"/></td>
        </tr>
        <tr>
            <td class="align-l">9. Khoản trợ cấp, hỗ trợ của Nhà nước phải hoàn lại </td>
            <td class="align-c">432</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct432"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct432)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct432)"/></td>
        </tr>
        <tr>
            <td class="align-l">10. Quỹ dự phòng rủi ro tín dụng </td>
            <td class="align-c">439</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct439"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct439)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct439)"/></td>
        </tr>
        
        <tr>
            <td class="align-c"><b>D - VỐN CHỦ SỞ HỮU (500=511+512+513+514+515+516+517)</b></td>
             <td class="align-c"><b>500</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct500"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct500)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct500)"/></b></td>
        </tr>

        <tr>
            <td class="align-l">1. Vốn góp của chủ sở hữu</td>
            <td class="align-c">511</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct511"/></td>
        </tr>
        <tr>
            <td class="align-l">2. Thặng dư vốn cổ phần</td>
            <td class="align-c">512</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct512"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct512"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct512"/></td>
        </tr>
        <tr>
            <td class="align-l">3. Vốn khác của chủ sở hữu</td>
            <td class="align-c">513</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct513"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct513"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct513"/></td>
        </tr>
        <tr>
            <td class="align-l">4. Cổ phiếu quỹ (*)</td>
            <td class="align-c">514 </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct514"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct514"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct514"/></td>
        </tr>
        <tr>
            <td class="align-l">5. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">515</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct515"/></td>
        </tr>
         <tr>
            <td class="align-l">6. Các quỹ thuộc vốn chủ sở hữu</td>
            <td class="align-c">516</td>
           <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct516"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct516"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct516"/></td>
        </tr>
        <tr>
            <td class="align-l">7. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">517</td>
           <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct517"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct517"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct517"/></td>
        </tr>
        <tr>
            <td class="align-l">8. Nguồn vốn nhận trợ cấp, hỗ trợ không hoàn lại của Nhà nước</td>
            <td class="align-c">532</td>
           <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct532"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct532"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct532"/></td>
        </tr>
       <tr>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN(600=400+500)</b></td>
            <td class="align-c"><b>600</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct600"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct600)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct600)"/></b></td>
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
	</xsl:template>
</xsl:stylesheet>