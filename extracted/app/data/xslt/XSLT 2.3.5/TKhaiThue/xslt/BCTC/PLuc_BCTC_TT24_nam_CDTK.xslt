<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
		<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 24/2017/TT-BTC ngày 28/3/2017 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_CDTK">	
	<xsl:variable name="pluc04" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_CDTK' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'F01 - HTX'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG CÂN ĐỐI TÀI KHOẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Số hiệu tài khoản</b></td>
            <td class="align-c"><b>Tên tài khoản</b></td>
            <td class="align-c" colspan="2"><b>Số dư đầu kỳ </b></td>
            <td class="align-c" colspan="2"><b>Số phát sinh trong kỳ</b></td>
            <td class="align-c" colspan="2"><b>Số dư cuối kỳ</b></td>
        </tr>
        <tr>
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
            <td class="align-c">A</td>
            <td class="align-c">B</td>
            <td class="align-c">1</td>
            <td class="align-c">2</td>
            <td class="align-c">3</td>
            <td class="align-c">4</td>
            <td class="align-c">5</td>
            <td class="align-c">6</td>
        </tr>
        <tr>
            <td class="align-c"><b>111</b></td>
            <td><b>Tiền mặt</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct111"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct111"/></b></td>
        </tr>
        <tr>            
            <td class="align-c">1111</td>
            <td>Tiền Việt Nam</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1111"/></td>
        </tr>
        <tr>
            <td class="align-c">1112</td>
            <td>Ngoại tệ</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1112"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1112"/></td>
        </tr>
        
        <tr>            
            <td class="align-c"><b>112</b></td>
            <td><b>Tiền gửi Ngân hàng</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct112"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct112"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1121</td>            
            <td>Tiền Việt Nam</td>            
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1121"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1121"/></td>
        </tr>
        <tr>            
            <td class="align-c">1122</td>
            <td>Ngoại tệ</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1122"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1122"/></td>
        </tr>
      
        <tr>            
            <td class="align-c"><b>121</b></td>
            <td><b>Đầu tư tài chính</b> </td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct121"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct121"/></b></td>
        </tr>
        <tr>            
            <td class="align-c">1211</td>
            <td>Tiền gửi có kỳ hạn </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1211"/></td>
        </tr>
        <tr>            
            <td class="align-c">1218</td>
            <td>Đầu tư tài chính khác </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1218"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1218"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>131</b></td>
            <td><b>Phải thu của khách hàng </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct131"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct131"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>132</b></td>
            <td><b>Phải thu của hoạt động tín dụng nội bộ </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct132"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct132"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">1321</td>
            <td>Phải thu hoạt động cho vay </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1321"/></td>
        </tr>
        <tr>
            
            <td class="align-c">13211</td>
            <td>Phải thu về gốc cho vay </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct13211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct13211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct13211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct13211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct13211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct13211"/></td>
        </tr>
        <tr>
            
            <td class="align-c">13212</td>
            <td>Phải thu về lãi cho vay </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct13212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct13212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct13212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct13212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct13212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct13212"/></td>
        </tr>
        <tr>
            
            <td class="align-c">1322</td>
            <td>Phải thu hoạt động tín dụng nội bộ khác </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1322"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>133</b></td>
            <td><b>Thuế GTGT được khấu trừ</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct133"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct133"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">1331</td>
            <td>Thuế GTGT được khấu trừ của hàng hoá, dịch vụ</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1331"/></td>
        </tr>
        <tr>
            
            <td class="align-c">1332</td>
            <td>Thuế GTGT được khấu trừ của TSCĐ</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1332"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1332"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>138</b></td>
            <td><b>Phải thu khác</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct138"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct138"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>141</b></td>
            <td><b>Phải thu khác</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct141"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct141"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>152</b></td>
            <td><b>Vật liệu, dụng cụ</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct152"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct152"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>154</b></td>
            <td><b>Chi phí sản xuất, kinh doanh dở dang </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct154"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct154"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>156</b></td>
            <td><b>Thành phẩm, hàng hoá</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct156"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct156"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>157</b></td>
            <td><b>Hàng gửi đi bán</b> </td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct157"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct157"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>211</b></td>
            <td><b>Tài sản cố định </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct211"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct211"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">2111</td>
            <td>TSCĐ hữu hình</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2111"/></td>
        </tr>
        <tr>
            
            <td class="align-c">2113</td>
            <td>TSCĐ vô hình</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2113"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2113"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>214</b></td>
            <td><b>Hao mòn TSCĐ</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct214"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct214"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">2141</td>
            <td>Hao mòn TSCĐ hữu hình</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2141"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2141"/></td>
        </tr>
                <tr>
            
            <td class="align-c">2143</td>
            <td>Hao mòn TSCĐ vô hình </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2143"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2143"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>229</b></td>
            <td><b>Dự phòng tổn thất tài sản</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct229"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct229"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>242</b></td>
            <td><b>Tài sản khác</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct242"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct242"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">2421</td>
            <td>Chi phí trả trước</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2421"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2421"/></td>
        </tr>
        <tr>
            
            <td class="align-c">2422</td>
            <td>Xây dựng cơ bản dở dang</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2422"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2422"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>LOẠI TÀI KHOẢN NỢ PHẢI TRẢ</b></td>
            <td class="align-r"><b class="number"></b></td>
            <td class="align-r"><b class="number"></b></td>
            <td class="align-r"><b class="number"></b></td>
            <td class="align-r"><b class="number"></b></td>
            <td class="align-r"><b class="number"></b></td>
            <td class="align-r"><b class="number"></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>331</b></td>
            <td><b>Phải trả cho người bán</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct331"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct331"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct331"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct331"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct331"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct331"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>332</b></td>
            <td><b>Phải trả của hoạt động tín dụng nội bộ</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct332"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct332"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct332"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct332"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct332"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct332"/></b></td>
        </tr>
         <tr>
            
            <td class="align-c">3321</td>
            <td>Phải trả từ hoạt động đi vay của thành viên</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3321"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3321"/></td>
        </tr>
        <tr>
            
            <td class="align-c">33211</td>
            <td>Phải trả về gốc vay</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct33211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct33211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct33211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct33211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct33211"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct33211"/></td>
        </tr>
        <tr>
            
            <td class="align-c">33212</td>
            <td>Phải trả về lãi vay</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct33212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct33212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct33212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct33212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct33212"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct33212"/></td>
        </tr>
        <tr>
            
            <td class="align-c">3322</td>
            <td>Phải trả hoạt động tín dụng nội bộ khác</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3322"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3322"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>333</b></td>
            <td><b>Thuế và các khoản phải nộp Nhà nước</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct333"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct333"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">3331</td>
            <td>Thuế giá trị gia tăng phải nộp</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3331"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3331"/></td>
        </tr>
        <tr>
            
            <td class="align-c">3334</td>
            <td>Thuế thu nhập doanh nghiệp</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3334"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3334"/></td>
        </tr>
        <tr>
            
            <td class="align-c">3338</td>
            <td>Thuế khác, phí, lệ phí và các khoản phải nộp Nhà nước</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3338"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3338"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>334</b></td>
            <td><b>Phải trả người lao động</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct334"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct334"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct334"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct334"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct334"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct334"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>335</b></td>
            <td><b>Các khoản phải nộp theo lương</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct335"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct335"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct335"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct335"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct335"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct335"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>338</b></td>
            <td><b>Phải trả khác</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct338"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct338"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>341</b></td>
            <td><b>phải trả nợ vay</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct341"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct341"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct341"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct341"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct341"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct341"/></b></td>
        </tr>
      
        <tr>
            
            <td class="align-c"><b>342</b></td>
            <td><b>Khoản trợ cấp, hỗ trợ của Nhà nước phải hoãn lại</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct342"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct342"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct342"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct342"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct342"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct342"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>353</b></td>
            <td><b>Quỹ khen thưởng, phúc lợi</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct353"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct353"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct353"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct353"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct353"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct353"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">3531</td>
            <td>Quỹ khen thưởng phúc lợi</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3531"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3531"/></td>
        </tr>
        <tr>
            
            <td class="align-c">3532</td>
            <td>Quỹ phúc lợi</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3532"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3532"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>359</b></td>
            <td><b>Quỹ dự phòng rủi ro tín dụng</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct359"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct359"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct359"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct359"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct359"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct359"/></b></td>
        </tr>
         <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>LOẠI TÀI KHOẢN VỐN CHỦ SỞ HỮU</b></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>411</b></td>
            <td><b>Vốn đầu tư của chủ sở hữu</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct411"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct411"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c">4111</td>
            <td>Vốn góp của thành viên </td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct4111"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct4111"/></td>
        </tr>
        <tr>
            
            <td class="align-c">4118</td>
            <td>Vốn khác</td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct4118"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct4118"/></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>418</b></td>
            <td><b>Các quỹ thuộc vốn chủ sở hữu</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct418"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct418"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct418"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct418"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct418"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct418"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>421</b></td>
            <td><b>Lợi nhuận sau thuế chưa phân phối</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct421"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct421"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct421"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct421"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct421"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct421"/></b></td>
        </tr>
       
        <tr>
            
            <td class="align-c"><b>442</b></td>
            <td><b>Nguồn vốn trợ cấp, hỗ trợ không hoàn lại của Nhà nước</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct442"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct442"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct442"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct442"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct442"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct442"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>LOẠI TÀI KHOẢN DOANH THU</b></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>511</b></td>
            <td><b>Doanh thu hoạt động sản xuất kinh doanh</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct511"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct511"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct511"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct511"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct511"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct511"/></b></td>
        </tr>
      
        <tr>
            
            <td class="align-c"><b>521</b></td>
            <td><b>Các khoản giảm trừ doanh thu</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct521"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct521"/></b></td>
        </tr>
          <tr>
            
            <td class="align-c"><b>546</b></td>
            <td><b>Doanh thu hoạt động tín dụng nội bộ</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct546"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct546"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct546"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct546"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct546"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct546"/></b></td>
        </tr>
                <tr>
            
            <td class="align-c"><b>558</b></td>
            <td><b>Thu nhập khác</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct558"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct558"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct558"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct558"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct558"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct558"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>LOẠI TÀI KHOẢN CHI PHÍ SẢN XUẤT, KINH DOANH</b></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
        </tr>
      
        <tr>
            
            <td class="align-c"><b>632</b></td>
            <td><b>Giá vốn hàng bán</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct632"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct632"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct632"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct632"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct632"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct632"/></b></td>
        </tr>
       
        <tr>
            
            <td class="align-c"><b>642</b></td>
            <td><b>Chi phí quản lý kinh doanh </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct642"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct642"/></b></td>
        </tr>
       <tr>
            
            <td class="align-c"><b>646</b></td>
            <td><b>Chi phí hoạt động tín dụng nội bộ </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct646"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct646"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct646"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct646"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct646"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct646"/></b></td>
        </tr>
          <tr>
            
            <td class="align-c"><b>658</b></td>
            <td><b>Chi phí khác </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct658"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct658"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct658"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct658"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct658"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct658"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>659</b></td>
            <td><b>Chi phí thuế thu nhập doanh nghiệp </b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct659"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct659"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct659"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct659"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct659"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct659"/></b></td>
        </tr>
        
        <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>LOẠI TÀI KHOẢN XÁC ĐỊNH KẾT QUẢ KINH DOANH</b></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>911</b></td>
            <td><b>Xác định kết quả kinh doanh</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct911"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct911"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b></b></td>
            <td><b>Tổng cộng</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/tongCong"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/tongCong"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/tongCong"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/tongCong"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/tongCong"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/tongCong"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>TÀI KHOẢN LOẠI 0</b></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
            <td class="number align-r"></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>1</b></td>
            <td><b>Tài sản thuê ngoài</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct1"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct1"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct1"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct1"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct1"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct1"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>2</b></td>
            <td><b>Vật tư, hàng hóa nhận giữ hộ, nhận gia công</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct2"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct2"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct2"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct2"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct2"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct2"/></b></td>
        </tr>
           <tr>
            
            <td class="align-c"><b>3</b></td>
            <td><b>Hàng hóa nhận bán hộ, nhận ký gửi</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct3"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct3"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct3"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct3"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct3"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct3"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>4</b></td>
            <td><b>Nợ khó đòi đã xử lý</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct4"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct4"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct4"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct4"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct4"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct4"/></b></td>
        </tr>
         <tr>
            
            <td class="align-c"><b>5</b></td>
            <td><b>Công cụ, dụng cụ lâu bền đang sử dụng</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct5"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>6</b></td>
            <td><b>Tài sản đảm bảo khoản vay</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct5"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct5"/></b></td>
        </tr>
          <tr>
            
            <td class="align-c"><b>7</b></td>
            <td><b>Ngoại tệ các loại</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct7"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct7"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct7"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct7"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct7"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct7"/></b></td>
        </tr>
        <tr>
            
            <td class="align-c"><b>8</b></td>
            <td><b>Lãi cho vay quá hạn khó có khả năng thu được</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/No/ct8"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuDauKy/Co/ct8"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/No/ct8"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoPhatSinhTrongKy/Co/ct8"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/No/ct8"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc04/SoDuCuoiKy/Co/ct8"/></b></td>
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
<div><i><b>Ghi chú:</b>Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>


	</xsl:template>		
</xsl:stylesheet>
