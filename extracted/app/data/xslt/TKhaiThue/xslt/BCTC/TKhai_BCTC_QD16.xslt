<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Quyết định số 16/2007/QĐ-NHNN Ngày 18/04/2006 Thống đốc NHNN'" />
		 <xsl:call-template name="tkhaiHeader-BCTC">
		<xsl:with-param name="mauTKhai"   select="'B-01/TCTD'"/>
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
            <td class="align-c"><b>A</b></td>
            <td colspan="5"><b>TÀI SẢN</b></td>
        </tr>
        <tr>
            <td class="align-c">I</td>
            <td>Tiền mặt, vàng bạc, đá quý</td>
            <td class="align-c">I</td>
            <td class="align-c">V.01</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_I_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_I_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">II</td>
            <td>Tiền gửi tại NHNN</td>
            <td class="align-c">II</td>
            <td class="align-c">V.02</td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_II_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_II_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Tiền, vàng gửi tại các TCTD khác và cho vay các TCTD khác</b></td>
            <td class="align-c"><b>III</b></td>
            <td class="align-c"><b>V.03</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền, vàng gửi tại các TCTD khác</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Cho vay các TCTD khác</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng rủi ro cho vay các TCTD khác (*)</td>
            <td class="align-c">3</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Chứng khoán kinh doanh</b></td>
            <td class="align-c"><b>IV</b></td>
            <td class="align-c"><b>V.04</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IV_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IV_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán kinh doanh (1)</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IV_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IV_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng giảm giá chứng khoán kinh doanh (*)</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IV_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IV_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">V</td>
            <td>Các công cụ tài chính phái sinh và các tài sản tài chính khác</td>
            <td class="align-c">V</td>
            <td class="align-c">V.05</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_V_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_V_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Cho vay khách hàng</b></td>
            <td class="align-c"><b>VI</b></td>
            <td class="align-c"><b>V.06</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Cho vay khách hàng</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro cho vay khách hàng (*)</td>
            <td class="align-c">2</td>
            <td class="align-c">V.07</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Chứng khoán đầu tư </b></td>
            <td class="align-c"><b>VII</b></td>
            <td class="align-c"><b>V.08</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán đầu từ sẵn sàng để bán (2)</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chứng khoán đầu tư giữ đến ngày đáo hạn</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng giảm giá chứng khoán đầu tư (*)</td>
            <td class="align-c">3</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Góp vốn, đầu tư dài hạn</b></td>
            <td class="align-c"><b>VIII</b></td>
            <td class="align-c"><b>V.09</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Đầu tư vào công ty con</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vốn góp liên doanh</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Đầu tư vào công ty liên kết</td>
            <td class="align-c">3</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Đầu tư dài hạn khác</td>
            <td class="align-c">4</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Dự phòng giảm giá đầu tư dài hạn (*)</td>
            <td class="align-c">5</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_5_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IX</b></td>
            <td><b>Tài sản cố định</b></td>
            <td class="align-c"><b>IX</b></td>
            <td class="align-c"><b></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>Tài sản cố định hữu hình</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>V.10</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-c">a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-c">b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td><b>Tài sản cố định thuê tài chính</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>V.11</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-c">a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-c">b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>3</b></td>
            <td><b>Tài sản cố định vô hình</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>V.12</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-c">a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-c">b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>X</b></td>
            <td><b>Bất động sản đầu tư</b></td>
            <td class="align-c"><b>X</b></td>
            <td class="align-c"><b>V.13</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_X_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_X_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá BĐSĐT</td>
            <td class="align-c">a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_X_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_X_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn BĐSĐT (*)</td>
            <td class="align-c">b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_X_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_X_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XI</b></td>
            <td><b>Tài sản Có khác</b></td>
            <td class="align-c"><b>XI</b></td>
            <td class="align-c"><b>V.14</b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản phải thu</td>
            <td class="align-c">1</td>
            <td class="align-c">V.14.2</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Các khoản lãi, phí phải thu</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản thuế TNDN hoãn lại</td>
            <td class="align-c">3</td>
            <td class="align-c">V.22.1</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tài sản Có khác</td>
            <td class="align-c">4</td>
            <td class="align-c">V.14</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Trong đó: Lợi thế thương mại</td>
            <td class="align-c"></td>
            <td class="align-c">V.15</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_4_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_4_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Các khoản dự phòng rủi ro cho các tài sản Có nội bảng khác (*)</td>
            <td class="align-c">5</td>
            <td class="align-c">V.14.3</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_5_nNgoai"/></td>
        </tr>        
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng tài sản Có</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/tongTsan_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/tongTsan_nNgoai"/></b></td>
        </tr>
        
<!--Nợ phải trả và vốn chủ sở hữu-->

        <tr>
            <td><b>B</b></td>
            <td colspan="5"><b>NỢ PHẢI TRẢ VÀ VỐN CHỦ SỞ HỮU</b></td>
        </tr>
        <tr>
            <td class="align-c">I</td>
            <td>Tiền mặt, vàng bạc, đá quý</td>
            <td class="align-c">I</td>
            <td class="align-c">V.16</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_I_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_I_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tiền gửi và vay các TCTD khác</b></td>
            <td class="align-c"><b>II</b></td>
            <td class="align-c">V.17</td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctB_II_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_II_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền gửi của các TCTD khác</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_II_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_II_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vay các TCTD khác</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_II_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_II_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">III</td>
            <td>Tiền gửi của khách hàng</td>
            <td class="align-c">III</td>
            <td class="align-c">V.18</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_III_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_III_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">IV</td>
            <td>Các công cụ tài chính phái sinh và các khoản nợ tài chính khác</td>
            <td class="align-c">IV</td>
            <td class="align-c">V.05</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_IV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_IV_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">V</td>
            <td>Vốn tài trợ, uỷ thác đầu tư, cho vay TCTD chịu rủi ro</td>
            <td class="align-c">V</td>
            <td class="align-c">V.19</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_V_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_V_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">VI</td>
            <td>Phát hành giấy tờ có giá</td>
            <td class="align-c">Vi</td>
            <td class="align-c">V.20</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VI_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VI_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Các khoản nợ khác</b></td>
            <td class="align-c"><b>VII</b></td>
            <td class="align-c">V.22</td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản lãi, phí phải trả</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Thuế TNDN hoãn lại phải trả</td>
            <td class="align-c">2</td>
            <td class="align-c">V.22.2</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Các khoản phải trả và công nợ khác</td>
            <td class="align-c">3</td>
            <td class="align-c">V.21</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Dự phòng rủi ro khác (Dự phòng cho công nợ tiềm ẩn và cam kết ngoại bảng) </td>
            <td class="align-c">4</td>
            <td class="align-c">V.21</td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/tongNoPTRa_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/tongNoPTRa_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Vốn và các quỹ</b></td>
            <td class="align-c"><b>VIII</b></td>
            <td class="align-c">V.23</td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>Vốn của TCTD</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Vốn điều lệ</td>
            <td class="align-c">a</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Vốn đầu tư XDCB</td>
            <td class="align-c">b</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">c</td>
            <td>Thặng dư vốn cổ phần</td>
            <td class="align-c">c</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_c_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_c_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">d</td>
            <td>Cổ phiếu quỹ (*) </td>
            <td class="align-c">d</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_d_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_d_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">e</td>
            <td>Cổ phiếu ưu đãi </td>
            <td class="align-c">e</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_e_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_e_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">g</td>
            <td>Vốn khác</td>
            <td class="align-c">g</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_g_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_g_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Quỹ của TCTD</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Chênh lệch tỷ giá hối đoái (3) </td>
            <td class="align-c">3</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Chênh lệch đánh giá lại tài sản</td>
            <td class="align-c">4</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Lợi nhuận chưa phân phối/ Lỗ luỹ kế(3)</td>
            <td class="align-c">5</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_5_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">IX</td>
            <td>Lợi ích của cổ đông thiểu số</td>
  <td class="align-c">IX</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_IX_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_IX_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả và vốn chủ sở hữu</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-c"></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/tongNoVon_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/tongNoVon_nNgoai"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>CHỈ TIÊU NGOÀI BẢNG </b></td>
        </tr>		
        <tr>
            <td class="align-c">I</td>
            <td>Nghĩa vụ nợ tiềm ẩn</td>
            <td class="align-c">I</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/noTiemAn_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/noTiemAn_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Bảo lãnh vay vốn</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/blanhVon_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/blanhVon_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Cam kết trong nghiệp vụ L/C</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/cketNVu_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/cketNVu_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Bảo lãnh khác</td>
            <td class="align-c">3</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/blanhKhac_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/blanhKhac_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">II</td>
            <td>Các cam kết đưa ra</td>
            <td class="align-c">II</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/cketDuaRa_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/cketDuaRa_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Cam kết tài trợ cho khách hàng</td>
            <td class="align-c">1</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/cketTTro_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/cketTTro_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Cam kết khác</td>
            <td class="align-c">2</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/cketKhac_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/cketKhac_nNgoai"/></td>
        </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC16">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>