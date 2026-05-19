<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo QĐ số  48/2006/QĐ-BTC ngày  14/09/2006 của Bộ trưởng BTC'" />
				
<!-- BẢNG CÂN ĐỐI TÀI  KHOẢN-->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_CDTK">	
	<xsl:variable name="pluc04" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_CDTK' />	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-c"><b>BẢNG CÂN ĐỐI TÀI KHOẢN</b></div>	<br/>
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Tên tài khoản</b></td>
            <td class="align-c"><b>Số hiệu</b></td>
            <td class="align-c" colspan="2"><b>Số dư đầu năm </b></td>
            <td class="align-c" colspan="2"><b>Số phát sinh trong năm</b></td>
            <td class="align-c" colspan="2"><b>Số dư cuối năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>Nợ</b></td>
            <td class="align-c"><b>Có</b></td>
            <td class="align-c"><b>Nợ</b></td>
            <td class="align-c"><b>Có</b></td>
            <td class="align-c"><b>Nợ</b></td>
            <td class="align-c"><b>Có</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>Tiền mặt</b></td>
            <td class="align-c"><b>111</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct111"/></b></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Tiền Việt Nam</td>
            <td class="align-c">1111</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1111"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Ngoại tệ</td>
            <td class="align-c">1112</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1112"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Vàng, bạc, kim khí quý, đá quý</td>
            <td class="align-c">1113</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1113"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>5</b></td>
            <td><b>Tiền gửi Ngân hàng</b></td>
            <td class="align-c"><b>112</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct112"/></b></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Tiền Việt Nam</td>
            <td class="align-c">1121</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1121"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>Ngoại tệ</td>
            <td class="align-c">1122</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1122"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>Vàng, bạc, kim khí quý, đá quý</td>
            <td class="align-c">1123</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1123"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1123"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1123"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1123"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1123"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1123"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>Đầu tư tài chính ngắn hạn </td>
            <td class="align-c">121</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct121"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>Phải thu của khách hàng </td>
            <td class="align-c">131</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct131"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>11</b></td>
            <td><b>Thuế GTGT được khấu trừ</b></td>
            <td class="align-c"><b>133</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct133"/></b></td>
        </tr>
        <tr>
            <td class="align-c">12</td>
            <td>Thuế GTGT được khấu trừ của hàng hoá, dịch vụ</td>
            <td class="align-c">1331</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1331"/></td>
        </tr>
        <tr>
            <td class="align-c">13</td>
            <td>Thuế GTGT được khấu trừ của TSCĐ</td>
            <td class="align-c">1332</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1332"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>14</b></td>
            <td><b>Phải thu khác</b></td>
            <td class="align-c"><b>138</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct138"/></b></td>
        </tr>
        <tr>
            <td class="align-c">15</td>
            <td>Tài sản thiếu chờ xử lý</td>
            <td class="align-c">1381</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1381"/></td>
        </tr>
        <tr>
            <td class="align-c">16</td>
            <td>Phải thu khác</td>
            <td class="align-c">1388</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1388"/></td>
        </tr>
        <tr>
            <td class="align-c">17</td>
            <td>Tạm ứng</td>
            <td class="align-c">141</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct141"/></td>
        </tr>
        <tr>
            <td class="align-c">18</td>
            <td>Chi phí trả trước ngắn hạn</td>
            <td class="align-c">142</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct142"/></td>
        </tr>
        <tr>
            <td class="align-c">19</td>
            <td>Nguyên liệu, vật liệu</td>
            <td class="align-c">152</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct152"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct152"/></td>
        </tr>
        <tr>
            <td class="align-c">20</td>
            <td>Công cụ, dụng cụ</td>
            <td class="align-c">153</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct153"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct153"/></td>
        </tr>
        <tr>
            <td class="align-c">21</td>
            <td>Chi phí sản xuất, kinh doanh dở dang </td>
            <td class="align-c">154</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct154"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct154"/></td>
        </tr>
        <tr>
            <td class="align-c">22</td>
            <td>Thành phẩm</td>
            <td class="align-c">155</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct155"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct155"/></td>
        </tr>
        <tr>
            <td class="align-c">23</td>
            <td>Hàng hoá</td>
            <td class="align-c">156</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct156"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct156"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct156"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct156"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct156"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct156"/></td>
        </tr>
        <tr>
            <td class="align-c">24</td>
            <td>Hàng gửi đi bán </td>
            <td class="align-c">157</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct157"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct157"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>25</b></td>
            <td><b>Các khoản dự phòng  </b></td>
            <td class="align-c"><b>159</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct159"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct159"/></b></td>
        </tr>
        <tr>
            <td class="align-c">26</td>
            <td>Dự phòng giảm giá đầu tư tài chính ngắn hạn</td>
            <td class="align-c">1591</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1591"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1591"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1591"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1591"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1591"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1591"/></td>
        </tr>
        <tr>
            <td class="align-c">27</td>
            <td>Dự phòng phải thu khó đòi</td>
            <td class="align-c">1592</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1592"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1592"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1592"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1592"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1592"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1592"/></td>
        </tr>
        <tr>
            <td class="align-c">28</td>
            <td>Dự phòng giảm giá hàng tồn kho </td>
            <td class="align-c">1593</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1593"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1593"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1593"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1593"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1593"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1593"/></td>
        </tr>
        <tr>
            <td class="align-c">29</td>
            <td>Giao dịch mua bán lại trái phiếu Chính phủ  </td>
            <td class="align-c">171</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct171"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct171"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>30</b></td>
            <td><b>Tài sản cố định </b></td>
            <td class="align-c"><b>211</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct211"/></b></td>
        </tr>
        <tr>
            <td class="align-c">31</td>
            <td>TSCĐ hữu hình</td>
            <td class="align-c">2111</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2111"/></td>
        </tr>
        <tr>
            <td class="align-c">32</td>
            <td>TSCĐ thuê tài chính</td>
            <td class="align-c">2112</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2112"/></td>
        </tr>
        <tr>
            <td class="align-c">33</td>
            <td>TSCĐ vô hình</td>
            <td class="align-c">2113</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2113"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>34</b></td>
            <td><b>Hao mòn TSCĐ</b></td>
            <td class="align-c"><b>214</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct214"/></b></td>
        </tr>
        <tr>
            <td class="align-c">35</td>
            <td>Hao mòn TSCĐ hữu hình</td>
            <td class="align-c">2141</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2141"/></td>
        </tr>
        <tr>
            <td class="align-c">36</td>
            <td>Hao mòn TSCĐ thuê tài chính</td>
            <td class="align-c">2142</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2142"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2142"/></td>
        </tr>
        <tr>
            <td class="align-c">37</td>
            <td>Hao mòn TSCĐ vô hình </td>
            <td class="align-c">2143</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2143"/></td>
        </tr>
        <tr>
            <td class="align-c">38</td>
            <td>Hao mòn bất động sản đầu tư</td>
            <td class="align-c">2147</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2147"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2147"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2147"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2147"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2147"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2147"/></td>
        </tr>
        <tr>
            <td class="align-c">39</td>
            <td>Bất động sản đầu tư</td>
            <td class="align-c">217</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct217"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct217"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>40</b></td>
            <td><b>Đầu tư tài chính dài hạn </b></td>
            <td class="align-c"><b>221</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct221"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct221"/></b></td>
        </tr>
        <tr>
            <td class="align-c">41</td>
            <td>Vốn góp liên doanh </td>
            <td class="align-c">2212</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2212"/></td>
        </tr>
        <tr>
            <td class="align-c">42</td>
            <td>Đầu tư vào công ty liên kết</td>
            <td class="align-c">2213</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2213"/></td>
        </tr>
        <tr>
            <td class="align-c">43</td>
            <td>Đầu tư tài chính dài hạn khác</td>
            <td class="align-c">2218</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2218"/></td>
        </tr>
        <tr>
            <td class="align-c">44</td>
            <td>Dự phòng giảm giá đầu tư tài chính dài hạn</td>
            <td class="align-c">229</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct229"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct229"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>45</b></td>
            <td><b>Xây dựng cơ bản dở dang </b></td>
            <td class="align-c"><b>241</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct241"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct241"/></b></td>
        </tr>
        <tr>
            <td class="align-c">46</td>
            <td>Mua sắm TSCĐ</td>
            <td class="align-c">2411</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2411"/></td>
        </tr>
        <tr>
            <td class="align-c">47</td>
            <td>Xây dựng cơ bản dở dang</td>
            <td class="align-c">2412</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2412"/></td>
        </tr>
        <tr>
            <td class="align-c">48</td>
            <td>Sửa chữa lớn TSCĐ</td>
            <td class="align-c">2413</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2413"/></td>
        </tr>
        <tr>
            <td class="align-c">49</td>
            <td>Chi phí trả trước dài hạn</td>
            <td class="align-c">242</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct242"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct242"/></td>
        </tr>
        <tr>
            <td class="align-c">50</td>
            <td>Ký quỹ, ký cược dài hạn</td>
            <td class="align-c">244</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct244"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct244"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct244"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct244"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct244"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct244"/></td>
        </tr>
        <tr>
            <td class="align-c">51</td>
            <td>Vay ngắn hạn</td>
            <td class="align-c">311</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct311"/></td>
        </tr>
        <tr>
            <td class="align-c">52</td>
            <td>Nợ dài hạn đến hạn trả</td>
            <td class="align-c">315</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct315"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct315"/></td>
        </tr>
        <tr>
            <td class="align-c">53</td>
            <td>Phải trả cho người bán</td>
            <td class="align-c">331</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct331"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>54</b></td>
            <td><b>Thuế và các khoản phải nộp Nhà nước</b></td>
            <td class="align-c"><b>333</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct333"/></b></td>
        </tr>
        <tr>
            <td class="align-c">55</td>
            <td>Thuế giá trị gia tăng phải nộp</td>
            <td class="align-c">3331</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3331"/></td>
        </tr>
        <tr>
            <td class="align-c">56</td>
            <td>Thuế GTGT đầu ra</td>
            <td class="align-c">33311</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct33311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct33311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct33311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct33311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct33311"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct33311"/></td>
        </tr>
        <tr>
            <td class="align-c">57</td>
            <td>Thuế GTGT hàng nhập khẩu</td>
            <td class="align-c">33312</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct33312"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct33312"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct33312"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct33312"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct33312"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct33312"/></td>
        </tr>
        <tr>
            <td class="align-c">58</td>
            <td>Thuế tiêu thụ đặc biệt</td>
            <td class="align-c">3332</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3332"/></td>
        </tr>
        <tr>
            <td class="align-c">59</td>
            <td>Thuế xuất, nhập khẩu</td>
            <td class="align-c">3333</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3333"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3333"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3333"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3333"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3333"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3333"/></td>
        </tr>
        <tr>
            <td class="align-c">60</td>
            <td>Thuế thu nhập doanh nghiệp</td>
            <td class="align-c">3334</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3334"/></td>
        </tr>
        <tr>
            <td class="align-c">61</td>
            <td>Thuế thu nhập cá nhân</td>
            <td class="align-c">3335</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3335"/></td>
        </tr>
        <tr>
            <td class="align-c">62</td>
            <td>Thuế tài nguyên</td>
            <td class="align-c">3336</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3336"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3336"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3336"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3336"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3336"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3336"/></td>
        </tr>
        <tr>
            <td class="align-c">63</td>
            <td>Thuế nhà đất, tiền thuê đất</td>
            <td class="align-c">3337</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3337"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3337"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3337"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3337"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3337"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3337"/></td>
        </tr>
        <tr>
            <td class="align-c">64</td>
            <td>Các loại thuế khác</td>
            <td class="align-c">3338</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3338"/></td>
        </tr>
        <tr>
            <td class="align-c">65</td>
            <td>Phí, lệ phí và các khoản phải nộp khác</td>
            <td class="align-c">3339</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3339"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3339"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3339"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3339"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3339"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3339"/></td>
        </tr>
        <tr>
            <td class="align-c">66</td>
            <td>Phải trả người lao động</td>
            <td class="align-c">334</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct334"/></td>
        </tr>
        <tr>
            <td class="align-c">67</td>
            <td>Chi phí phải trả</td>
            <td class="align-c">335</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct335"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct335"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>68</b></td>
            <td><b>Phải trả, phải nộp khác</b></td>
            <td class="align-c"><b>338</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct338"/></b></td>
        </tr>
        <tr>
            <td class="align-c">69</td>
            <td>Tài sản thừa chờ giải quyết</td>
            <td class="align-c">3381</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3381"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3381"/></td>
        </tr>
        <tr>
            <td class="align-c">70</td>
            <td>Kinh phí công đoàn</td>
            <td class="align-c">3382</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3382"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3382"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3382"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3382"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3382"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3382"/></td>
        </tr>
        <tr>
            <td class="align-c">71</td>
            <td>Bảo hiểm xã hội</td>
            <td class="align-c">3383</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3383"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3383"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3383"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3383"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3383"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3383"/></td>
        </tr>
        <tr>
            <td class="align-c">72</td>
            <td>Bảo hiểm y tế</td>
            <td class="align-c">3384</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3384"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3384"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3384"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3384"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3384"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3384"/></td>
        </tr>
        <tr>
            <td class="align-c">73</td>
            <td>Nhận ký quỹ, ký cược ngắn hạn</td>
            <td class="align-c">3386</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3386"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3386"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3386"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3386"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3386"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3386"/></td>
        </tr>
        <tr>
            <td class="align-c">74</td>
            <td>Doanh thu chưa thực hiện</td>
            <td class="align-c">3387</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3387"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3387"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3387"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3387"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3387"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3387"/></td>
        </tr>
        <tr>
            <td class="align-c">75</td>
            <td>Phải trả, phải nộp khác</td>
            <td class="align-c">3388</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3388"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3388"/></td>
        </tr>
        <tr>
            <td class="align-c">76</td>
            <td>Bảo hiểm thất nghiệp</td>
            <td class="align-c">3389</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3389"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3389"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3389"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3389"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3389"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3389"/></td>
        </tr>
        <tr>
            <td class="align-c">77</td>
            <td>Vay, nợ dài hạn</td>
            <td class="align-c">341</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct341"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct341"/></td>
        </tr>
        <tr>
            <td class="align-c">78</td>
            <td>Vay dài hạn</td>
            <td class="align-c">3411</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3411"/></td>
        </tr>
        <tr>
            <td class="align-c">79</td>
            <td>Nợ dài hạn </td>
            <td class="align-c">3412</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3412"/></td>
        </tr>
        <tr>
            <td class="align-c">80</td>
            <td>Trái phiếu phát hành </td>
            <td class="align-c">3413</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3413"/></td>
        </tr>
        <tr>
            <td class="align-c">81</td>
            <td>Mệnh giá trái phiếu</td>
            <td class="align-c">34131</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct34131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct34131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct34131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct34131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct34131"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct34131"/></td>
        </tr>
        <tr>
            <td class="align-c">82</td>
            <td>Chiết khấu trái phiếu</td>
            <td class="align-c">34132</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct34132"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct34132"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct34132"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct34132"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct34132"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct34132"/></td>
        </tr>
        <tr>
            <td class="align-c">83</td>
            <td>Phụ trội trái phiếu</td>
            <td class="align-c">34133</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct34133"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct34133"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct34133"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct34133"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct34133"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct34133"/></td>
        </tr>
        <tr>
            <td class="align-c">84</td>
            <td>Nhận ký quỹ, ký cược dài hạn</td>
            <td class="align-c">3414</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3414"/></td>
        </tr>
        <tr>
            <td class="align-c">85</td>
            <td>Quỹ dự phòng trợ cấp mất việc làm</td>
            <td class="align-c">351</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct351"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct351"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct351"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct351"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct351"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct351"/></td>
        </tr>
        <tr>
            <td class="align-c">86</td>
            <td>Dự phòng phải trả</td>
            <td class="align-c">352</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct352"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct352"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct352"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct352"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct352"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct352"/></td>
        </tr>
        <tr>
            <td class="align-c">87</td>
            <td>Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">353</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct353"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct353"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct353"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct353"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct353"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct353"/></td>
        </tr>
        <tr>
            <td class="align-c">88</td>
            <td>Quỹ khen thưởng</td>
            <td class="align-c">3531</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3531"/></td>
        </tr>
        <tr>
            <td class="align-c">89</td>
            <td>Quỹ phúc lợi</td>
            <td class="align-c">3532</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3532"/></td>
        </tr>
        <tr>
            <td class="align-c">90</td>
            <td>Quỹ phúc lợi đã hình thành TSCĐ</td>
            <td class="align-c">3533</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3533"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3533"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3533"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3533"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3533"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3533"/></td>
        </tr>
        <tr>
            <td class="align-c">91</td>
            <td>Quỹ thưởng ban quản lý điều hành công ty</td>
            <td class="align-c">3534</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3534"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3534"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3534"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3534"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3534"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3534"/></td>
        </tr>
         <tr>
            <td class="align-c">92</td>
            <td>Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">356</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct356"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct356"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct356"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct356"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct356"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct356"/></td>
        </tr>
        <tr>
            <td class="align-c">93</td>
            <td>Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">3561</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3561"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3561"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3561"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3561"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3561"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3561"/></td>
        </tr>
        <tr>
            <td class="align-c">94</td>
            <td>Quỹ phát triển khoa học và công nghệ đã hình thành TSCĐ</td>
            <td class="align-c">3562</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3562"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3562"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3562"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3562"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3562"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3562"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>95</b></td>
            <td><b>Nguồn vốn kinh doanh</b></td>
            <td class="align-c"><b>411</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct411"/></b></td>
        </tr>
        <tr>
            <td class="align-c">96</td>
            <td>Vốn đầu tư của chủ sở hữu </td>
            <td class="align-c">4111</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4111"/></td>
        </tr>
        <tr>
            <td class="align-c">97</td>
            <td>Thặng dư vốn cổ phần</td>
            <td class="align-c">4112</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4112"/></td>
        </tr>
        <tr>
            <td class="align-c">98</td>
            <td>Vốn khác</td>
            <td class="align-c">4118</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4118"/></td>
        </tr>
        <tr>
            <td class="align-c">99</td>
            <td>Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">413</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct413"/></td>
        </tr>
        <tr>
            <td class="align-c">100</td>
            <td>Các quỹ thuộc vốn chủ sở hữu</td>
            <td class="align-c">418</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct418"/></td>
        </tr>
        <tr>
            <td class="align-c">101</td>
            <td>Cổ phiếu quỹ</td>
            <td class="align-c">419</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct419"/></td>
        </tr>
        <tr>
            <td class="align-c">102</td>
            <td>Lợi nhuận chưa phân phối</td>
            <td class="align-c">421</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct421"/></td>
        </tr>
        <tr>
            <td class="align-c">103</td>
            <td>Lợi nhuận chưa phân phối năm trước</td>
            <td class="align-c">4211</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4211"/></td>
        </tr>
        <tr>
            <td class="align-c">104</td>
            <td>Lợi nhuận chưa phân phối năm nay</td>
            <td class="align-c">4212</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4212"/></td>
        </tr>
        <tr>
            <td class="align-c">105</td>
            <td>Doanh thu bán hàng và cung cấp dịch vụ</td>
            <td class="align-c">511</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct511"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct511"/></td>
        </tr>
        <tr>
            <td class="align-c">106</td>
            <td>Doanh thu bán hàng hoá</td>
            <td class="align-c">5111</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5111"/></td>
        </tr>
        <tr>
            <td class="align-c">107</td>
            <td>Doanh thu bán các thành phẩm</td>
            <td class="align-c">5112</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5112"/></td>
        </tr>
        <tr>
            <td class="align-c">108</td>
            <td>Doanh thu cung cấp dịch vụ</td>
            <td class="align-c">5113</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5113"/></td>
        </tr>
        <tr>
            <td class="align-c">109</td>
            <td>Doanh thu khác</td>
            <td class="align-c">5118</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5118"/></td>
        </tr>
        <tr>
            <td class="align-c">110</td>
            <td>Doanh thu hoạt động tài chính</td>
            <td class="align-c">515</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct515"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct515"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>111</b></td>
            <td><b>Các khoản giảm trừ doanh thu</b></td>
            <td class="align-c"><b>521</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct521"/></b></td>
        </tr>
        <tr>
            <td class="align-c">112</td>
            <td>Chiết khấu thương mại</td>
            <td class="align-c">5211</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5211"/></td>
        </tr>
        <tr>
            <td class="align-c">113</td>
            <td>Hàng bán bị trả lại</td>
            <td class="align-c">5212</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5212"/></td>
        </tr>
        <tr>
            <td class="align-c">114</td>
            <td>Giảm giá hàng bán</td>
            <td class="align-c">5213</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct5213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct5213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct5213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct5213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct5213"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct5213"/></td>
        </tr>
        <tr>
            <td class="align-c">115</td>
            <td>Mua hàng</td>
            <td class="align-c">611</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct611"/></td>
        </tr>
        <tr>
            <td class="align-c">116</td>
            <td>Giá thành sản xuất</td>
            <td class="align-c">631</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct631"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct631"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct631"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct631"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct631"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct631"/></td>
        </tr>
        <tr>
            <td class="align-c">117</td>
            <td>Giá vốn hàng bán</td>
            <td class="align-c">632</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct632"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct632"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct632"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct632"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct632"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct632"/></td>
        </tr>
        <tr>
            <td class="align-c">118</td>
            <td>Chi phí tài chính</td>
            <td class="align-c">635</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct635"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct635"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct635"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct635"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct635"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct635"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>119</b></td>
            <td><b>Chi phí quản lý kinh doanh </b></td>
            <td class="align-c"><b>642</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct642"/></b></td>
        </tr>
        <tr>
            <td class="align-c">120</td>
            <td>Chi phí bán hàng </td>
            <td class="align-c">6421</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct6421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct6421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct6421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct6421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct6421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct6421"/></td>
        </tr>
        <tr>
            <td class="align-c">121</td>
            <td>Chi phí quản lý doanh nghiệp </td>
            <td class="align-c">6422</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct6422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct6422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct6422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct6422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct6422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct6422"/></td>
        </tr>
        <tr>
            <td class="align-c">122</td>
            <td>Thu nhập khác </td>
            <td class="align-c">711</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct711"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct711"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct711"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct711"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct711"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct711"/></td>
        </tr>
        <tr>
            <td class="align-c">123</td>
            <td>Chi phí khác</td>
            <td class="align-c">811</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct811"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct811"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct811"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct811"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct811"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct811"/></td>
        </tr>
        <tr>
            <td class="align-c">124</td>
            <td>Chi phí thuế thu nhập doanh nghiệp</td>
            <td class="align-c">821</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct821"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct821"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct821"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct821"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct821"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct821"/></td>
        </tr>
        <tr>
            <td class="align-c">125</td>
            <td>Xác định kết quả kinh doanh</td>
            <td class="align-c">911</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct911"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct911"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct911"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct911"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct911"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct911"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>126</b></td>
            <td><b>Tổng cộng</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct111  + $pluc04/SoDuDauNam/No/ct112 + $pluc04/SoDuDauNam/No/ct121 + $pluc04/SoDuDauNam/No/ct131 + $pluc04/SoDuDauNam/No/ct133 + $pluc04/SoDuDauNam/No/ct138 + $pluc04/SoDuDauNam/No/ct141 + $pluc04/SoDuDauNam/No/ct142 + $pluc04/SoDuDauNam/No/ct152 + $pluc04/SoDuDauNam/No/ct153 + $pluc04/SoDuDauNam/No/ct154 + $pluc04/SoDuDauNam/No/ct155 + $pluc04/SoDuDauNam/No/ct156 + $pluc04/SoDuDauNam/No/ct157 + $pluc04/SoDuDauNam/No/ct159 + $pluc04/SoDuDauNam/No/ct171 + $pluc04/SoDuDauNam/No/ct211 + $pluc04/SoDuDauNam/No/ct214 + $pluc04/SoDuDauNam/No/ct217 + $pluc04/SoDuDauNam/No/ct221 + $pluc04/SoDuDauNam/No/ct229 + $pluc04/SoDuDauNam/No/ct241 + $pluc04/SoDuDauNam/No/ct242 + $pluc04/SoDuDauNam/No/ct244 + $pluc04/SoDuDauNam/No/ct311 + $pluc04/SoDuDauNam/No/ct315 + $pluc04/SoDuDauNam/No/ct331 + $pluc04/SoDuDauNam/No/ct333 + $pluc04/SoDuDauNam/No/ct334 + $pluc04/SoDuDauNam/No/ct335 + $pluc04/SoDuDauNam/No/ct338 + $pluc04/SoDuDauNam/No/ct341 + $pluc04/SoDuDauNam/No/ct351 + $pluc04/SoDuDauNam/No/ct352 + $pluc04/SoDuDauNam/No/ct353 + $pluc04/SoDuDauNam/No/ct356 + $pluc04/SoDuDauNam/No/ct411 + $pluc04/SoDuDauNam/No/ct413 + $pluc04/SoDuDauNam/No/ct418 + $pluc04/SoDuDauNam/No/ct419 + $pluc04/SoDuDauNam/No/ct421 + $pluc04/SoDuDauNam/No/ct511 + $pluc04/SoDuDauNam/No/ct515 + $pluc04/SoDuDauNam/No/ct521 + $pluc04/SoDuDauNam/No/ct611 + $pluc04/SoDuDauNam/No/ct631 + $pluc04/SoDuDauNam/No/ct632 + $pluc04/SoDuDauNam/No/ct635 + $pluc04/SoDuDauNam/No/ct642 + $pluc04/SoDuDauNam/No/ct711 + $pluc04/SoDuDauNam/No/ct811 + $pluc04/SoDuDauNam/No/ct821 + $pluc04/SoDuDauNam/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct111  + $pluc04/SoDuDauNam/Co/ct112 + $pluc04/SoDuDauNam/Co/ct121 + $pluc04/SoDuDauNam/Co/ct131 + $pluc04/SoDuDauNam/Co/ct133 + $pluc04/SoDuDauNam/Co/ct138 + $pluc04/SoDuDauNam/Co/ct141 + $pluc04/SoDuDauNam/Co/ct142 + $pluc04/SoDuDauNam/Co/ct152 + $pluc04/SoDuDauNam/Co/ct153 + $pluc04/SoDuDauNam/Co/ct154 + $pluc04/SoDuDauNam/Co/ct155 + $pluc04/SoDuDauNam/Co/ct156 + $pluc04/SoDuDauNam/Co/ct157 + $pluc04/SoDuDauNam/Co/ct159 + $pluc04/SoDuDauNam/Co/ct171 + $pluc04/SoDuDauNam/Co/ct211 + $pluc04/SoDuDauNam/Co/ct214 + $pluc04/SoDuDauNam/Co/ct217 + $pluc04/SoDuDauNam/Co/ct221 + $pluc04/SoDuDauNam/Co/ct229 + $pluc04/SoDuDauNam/Co/ct241 + $pluc04/SoDuDauNam/Co/ct242 + $pluc04/SoDuDauNam/Co/ct244 + $pluc04/SoDuDauNam/Co/ct311 + $pluc04/SoDuDauNam/Co/ct315 + $pluc04/SoDuDauNam/Co/ct331 + $pluc04/SoDuDauNam/Co/ct333 + $pluc04/SoDuDauNam/Co/ct334 + $pluc04/SoDuDauNam/Co/ct335 + $pluc04/SoDuDauNam/Co/ct338 + $pluc04/SoDuDauNam/Co/ct341 + $pluc04/SoDuDauNam/Co/ct351 + $pluc04/SoDuDauNam/Co/ct352 + $pluc04/SoDuDauNam/Co/ct353 + $pluc04/SoDuDauNam/Co/ct356 + $pluc04/SoDuDauNam/Co/ct411 + $pluc04/SoDuDauNam/Co/ct413 + $pluc04/SoDuDauNam/Co/ct418 + $pluc04/SoDuDauNam/Co/ct419 + $pluc04/SoDuDauNam/Co/ct421 + $pluc04/SoDuDauNam/Co/ct511 + $pluc04/SoDuDauNam/Co/ct515 + $pluc04/SoDuDauNam/Co/ct521 + $pluc04/SoDuDauNam/Co/ct611 + $pluc04/SoDuDauNam/Co/ct631 + $pluc04/SoDuDauNam/Co/ct632 + $pluc04/SoDuDauNam/Co/ct635 + $pluc04/SoDuDauNam/Co/ct642 + $pluc04/SoDuDauNam/Co/ct711 + $pluc04/SoDuDauNam/Co/ct811 + $pluc04/SoDuDauNam/Co/ct821 + $pluc04/SoDuDauNam/Co/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct111  + $pluc04/SoPhatSinhTrongNam/No/ct112 + $pluc04/SoPhatSinhTrongNam/No/ct121 + $pluc04/SoPhatSinhTrongNam/No/ct131 + $pluc04/SoPhatSinhTrongNam/No/ct133 + $pluc04/SoPhatSinhTrongNam/No/ct138 + $pluc04/SoPhatSinhTrongNam/No/ct141 + $pluc04/SoPhatSinhTrongNam/No/ct142 + $pluc04/SoPhatSinhTrongNam/No/ct152 + $pluc04/SoPhatSinhTrongNam/No/ct153 + $pluc04/SoPhatSinhTrongNam/No/ct154 + $pluc04/SoPhatSinhTrongNam/No/ct155 + $pluc04/SoPhatSinhTrongNam/No/ct156 + $pluc04/SoPhatSinhTrongNam/No/ct157 + $pluc04/SoPhatSinhTrongNam/No/ct159 + $pluc04/SoPhatSinhTrongNam/No/ct171 + $pluc04/SoPhatSinhTrongNam/No/ct211 + $pluc04/SoPhatSinhTrongNam/No/ct214 + $pluc04/SoPhatSinhTrongNam/No/ct217 + $pluc04/SoPhatSinhTrongNam/No/ct221 + $pluc04/SoPhatSinhTrongNam/No/ct229 + $pluc04/SoPhatSinhTrongNam/No/ct241 + $pluc04/SoPhatSinhTrongNam/No/ct242 + $pluc04/SoPhatSinhTrongNam/No/ct244 + $pluc04/SoPhatSinhTrongNam/No/ct311 + $pluc04/SoPhatSinhTrongNam/No/ct315 + $pluc04/SoPhatSinhTrongNam/No/ct331 + $pluc04/SoPhatSinhTrongNam/No/ct333 + $pluc04/SoPhatSinhTrongNam/No/ct334 + $pluc04/SoPhatSinhTrongNam/No/ct335 + $pluc04/SoPhatSinhTrongNam/No/ct338 + $pluc04/SoPhatSinhTrongNam/No/ct341 + $pluc04/SoPhatSinhTrongNam/No/ct351 + $pluc04/SoPhatSinhTrongNam/No/ct352 + $pluc04/SoPhatSinhTrongNam/No/ct353 + $pluc04/SoPhatSinhTrongNam/No/ct356 + $pluc04/SoPhatSinhTrongNam/No/ct411 + $pluc04/SoPhatSinhTrongNam/No/ct413 + $pluc04/SoPhatSinhTrongNam/No/ct418 + $pluc04/SoPhatSinhTrongNam/No/ct419 + $pluc04/SoPhatSinhTrongNam/No/ct421 + $pluc04/SoPhatSinhTrongNam/No/ct511 + $pluc04/SoPhatSinhTrongNam/No/ct515 + $pluc04/SoPhatSinhTrongNam/No/ct521 + $pluc04/SoPhatSinhTrongNam/No/ct611 + $pluc04/SoPhatSinhTrongNam/No/ct631 + $pluc04/SoPhatSinhTrongNam/No/ct632 + $pluc04/SoPhatSinhTrongNam/No/ct635 + $pluc04/SoPhatSinhTrongNam/No/ct642 + $pluc04/SoPhatSinhTrongNam/No/ct711 + $pluc04/SoPhatSinhTrongNam/No/ct811 + $pluc04/SoPhatSinhTrongNam/No/ct821 + $pluc04/SoPhatSinhTrongNam/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct111  + $pluc04/SoPhatSinhTrongNam/Co/ct112 + $pluc04/SoPhatSinhTrongNam/Co/ct121 + $pluc04/SoPhatSinhTrongNam/Co/ct131 + $pluc04/SoPhatSinhTrongNam/Co/ct133 + $pluc04/SoPhatSinhTrongNam/Co/ct138 + $pluc04/SoPhatSinhTrongNam/Co/ct141 + $pluc04/SoPhatSinhTrongNam/Co/ct142 + $pluc04/SoPhatSinhTrongNam/Co/ct152 + $pluc04/SoPhatSinhTrongNam/Co/ct153 + $pluc04/SoPhatSinhTrongNam/Co/ct154 + $pluc04/SoPhatSinhTrongNam/Co/ct155 + $pluc04/SoPhatSinhTrongNam/Co/ct156 + $pluc04/SoPhatSinhTrongNam/Co/ct157 + $pluc04/SoPhatSinhTrongNam/Co/ct159 + $pluc04/SoPhatSinhTrongNam/Co/ct171 + $pluc04/SoPhatSinhTrongNam/Co/ct211 + $pluc04/SoPhatSinhTrongNam/Co/ct214 + $pluc04/SoPhatSinhTrongNam/Co/ct217 + $pluc04/SoPhatSinhTrongNam/Co/ct221 + $pluc04/SoPhatSinhTrongNam/Co/ct229 + $pluc04/SoPhatSinhTrongNam/Co/ct241 + $pluc04/SoPhatSinhTrongNam/Co/ct242 + $pluc04/SoPhatSinhTrongNam/Co/ct244 + $pluc04/SoPhatSinhTrongNam/Co/ct311 + $pluc04/SoPhatSinhTrongNam/Co/ct315 + $pluc04/SoPhatSinhTrongNam/Co/ct331 + $pluc04/SoPhatSinhTrongNam/Co/ct333 + $pluc04/SoPhatSinhTrongNam/Co/ct334 + $pluc04/SoPhatSinhTrongNam/Co/ct335 + $pluc04/SoPhatSinhTrongNam/Co/ct338 + $pluc04/SoPhatSinhTrongNam/Co/ct341 + $pluc04/SoPhatSinhTrongNam/Co/ct351 + $pluc04/SoPhatSinhTrongNam/Co/ct352 + $pluc04/SoPhatSinhTrongNam/Co/ct353 + $pluc04/SoPhatSinhTrongNam/Co/ct356 + $pluc04/SoPhatSinhTrongNam/Co/ct411 + $pluc04/SoPhatSinhTrongNam/Co/ct413 + $pluc04/SoPhatSinhTrongNam/Co/ct418 + $pluc04/SoPhatSinhTrongNam/Co/ct419 + $pluc04/SoPhatSinhTrongNam/Co/ct421 + $pluc04/SoPhatSinhTrongNam/Co/ct511 + $pluc04/SoPhatSinhTrongNam/Co/ct515 + $pluc04/SoPhatSinhTrongNam/Co/ct521 + $pluc04/SoPhatSinhTrongNam/Co/ct611 + $pluc04/SoPhatSinhTrongNam/Co/ct631 + $pluc04/SoPhatSinhTrongNam/Co/ct632 + $pluc04/SoPhatSinhTrongNam/Co/ct635 + $pluc04/SoPhatSinhTrongNam/Co/ct642 + $pluc04/SoPhatSinhTrongNam/Co/ct711 + $pluc04/SoPhatSinhTrongNam/Co/ct811 + $pluc04/SoPhatSinhTrongNam/Co/ct821 + $pluc04/SoPhatSinhTrongNam/Co/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct111  + $pluc04/SoDuCuoiNam/No/ct112 + $pluc04/SoDuCuoiNam/No/ct121 + $pluc04/SoDuCuoiNam/No/ct131 + $pluc04/SoDuCuoiNam/No/ct133 + $pluc04/SoDuCuoiNam/No/ct138 + $pluc04/SoDuCuoiNam/No/ct141 + $pluc04/SoDuCuoiNam/No/ct142 + $pluc04/SoDuCuoiNam/No/ct152 + $pluc04/SoDuCuoiNam/No/ct153 + $pluc04/SoDuCuoiNam/No/ct154 + $pluc04/SoDuCuoiNam/No/ct155 + $pluc04/SoDuCuoiNam/No/ct156 + $pluc04/SoDuCuoiNam/No/ct157 + $pluc04/SoDuCuoiNam/No/ct159 + $pluc04/SoDuCuoiNam/No/ct171 + $pluc04/SoDuCuoiNam/No/ct211 + $pluc04/SoDuCuoiNam/No/ct214 + $pluc04/SoDuCuoiNam/No/ct217 + $pluc04/SoDuCuoiNam/No/ct221 + $pluc04/SoDuCuoiNam/No/ct229 + $pluc04/SoDuCuoiNam/No/ct241 + $pluc04/SoDuCuoiNam/No/ct242 + $pluc04/SoDuCuoiNam/No/ct244 + $pluc04/SoDuCuoiNam/No/ct311 + $pluc04/SoDuCuoiNam/No/ct315 + $pluc04/SoDuCuoiNam/No/ct331 + $pluc04/SoDuCuoiNam/No/ct333 + $pluc04/SoDuCuoiNam/No/ct334 + $pluc04/SoDuCuoiNam/No/ct335 + $pluc04/SoDuCuoiNam/No/ct338 + $pluc04/SoDuCuoiNam/No/ct341 + $pluc04/SoDuCuoiNam/No/ct351 + $pluc04/SoDuCuoiNam/No/ct352 + $pluc04/SoDuCuoiNam/No/ct353 + $pluc04/SoDuCuoiNam/No/ct356 + $pluc04/SoDuCuoiNam/No/ct411 + $pluc04/SoDuCuoiNam/No/ct413 + $pluc04/SoDuCuoiNam/No/ct418 + $pluc04/SoDuCuoiNam/No/ct419 + $pluc04/SoDuCuoiNam/No/ct421 + $pluc04/SoDuCuoiNam/No/ct511 + $pluc04/SoDuCuoiNam/No/ct515 + $pluc04/SoDuCuoiNam/No/ct521 + $pluc04/SoDuCuoiNam/No/ct611 + $pluc04/SoDuCuoiNam/No/ct631 + $pluc04/SoDuCuoiNam/No/ct632 + $pluc04/SoDuCuoiNam/No/ct635 + $pluc04/SoDuCuoiNam/No/ct642 + $pluc04/SoDuCuoiNam/No/ct711 + $pluc04/SoDuCuoiNam/No/ct811 + $pluc04/SoDuCuoiNam/No/ct821 + $pluc04/SoDuCuoiNam/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct111  + $pluc04/SoDuCuoiNam/Co/ct112 + $pluc04/SoDuCuoiNam/Co/ct121 + $pluc04/SoDuCuoiNam/Co/ct131 + $pluc04/SoDuCuoiNam/Co/ct133 + $pluc04/SoDuCuoiNam/Co/ct138 + $pluc04/SoDuCuoiNam/Co/ct141 + $pluc04/SoDuCuoiNam/Co/ct142 + $pluc04/SoDuCuoiNam/Co/ct152 + $pluc04/SoDuCuoiNam/Co/ct153 + $pluc04/SoDuCuoiNam/Co/ct154 + $pluc04/SoDuCuoiNam/Co/ct155 + $pluc04/SoDuCuoiNam/Co/ct156 + $pluc04/SoDuCuoiNam/Co/ct157 + $pluc04/SoDuCuoiNam/Co/ct159 + $pluc04/SoDuCuoiNam/Co/ct171 + $pluc04/SoDuCuoiNam/Co/ct211 + $pluc04/SoDuCuoiNam/Co/ct214 + $pluc04/SoDuCuoiNam/Co/ct217 + $pluc04/SoDuCuoiNam/Co/ct221 + $pluc04/SoDuCuoiNam/Co/ct229 + $pluc04/SoDuCuoiNam/Co/ct241 + $pluc04/SoDuCuoiNam/Co/ct242 + $pluc04/SoDuCuoiNam/Co/ct244 + $pluc04/SoDuCuoiNam/Co/ct311 + $pluc04/SoDuCuoiNam/Co/ct315 + $pluc04/SoDuCuoiNam/Co/ct331 + $pluc04/SoDuCuoiNam/Co/ct333 + $pluc04/SoDuCuoiNam/Co/ct334 + $pluc04/SoDuCuoiNam/Co/ct335 + $pluc04/SoDuCuoiNam/Co/ct338 + $pluc04/SoDuCuoiNam/Co/ct341 + $pluc04/SoDuCuoiNam/Co/ct351 + $pluc04/SoDuCuoiNam/Co/ct352 + $pluc04/SoDuCuoiNam/Co/ct353 + $pluc04/SoDuCuoiNam/Co/ct356 + $pluc04/SoDuCuoiNam/Co/ct411 + $pluc04/SoDuCuoiNam/Co/ct413 + $pluc04/SoDuCuoiNam/Co/ct418 + $pluc04/SoDuCuoiNam/Co/ct419 + $pluc04/SoDuCuoiNam/Co/ct421 + $pluc04/SoDuCuoiNam/Co/ct511 + $pluc04/SoDuCuoiNam/Co/ct515 + $pluc04/SoDuCuoiNam/Co/ct521 + $pluc04/SoDuCuoiNam/Co/ct611 + $pluc04/SoDuCuoiNam/Co/ct631 + $pluc04/SoDuCuoiNam/Co/ct632 + $pluc04/SoDuCuoiNam/Co/ct635 + $pluc04/SoDuCuoiNam/Co/ct642 + $pluc04/SoDuCuoiNam/Co/ct711 + $pluc04/SoDuCuoiNam/Co/ct811 + $pluc04/SoDuCuoiNam/Co/ct821 + $pluc04/SoDuCuoiNam/Co/ct911"/></b></td>
        </tr>
        <tr>
            <td class="align-c">127</td>
            <td>Tài sản thuê ngoài</td>
            <td class="align-c">1</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct1"/></td>
        </tr>
        <tr>
            <td class="align-c">128</td>
            <td>Vật tư, hàng hoá nhận giữ hộ, nhận gia công</td>
            <td class="align-c">2</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct2"/></td>
        </tr>
        <tr>
            <td class="align-c">129</td>
            <td>Hàng hoá nhận bán hộ, nhận ký gửi, ký cược</td>
            <td class="align-c">3</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct3"/></td>
        </tr>
         <tr>
            <td class="align-c">130</td>
            <td>Nợ khó đòi đã xử lý</td>
            <td class="align-c">4</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct4"/></td>
        </tr>
        <tr>
            <td class="align-c">131</td>
            <td>Ngoại tệ các loại</td>
            <td class="align-c">7</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/No/ct7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/Co/ct7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/No/ct7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongNam/Co/ct7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/No/ct7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/Co/ct7"/></td>
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
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>


	</xsl:template>		
</xsl:stylesheet>
