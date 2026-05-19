<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 49/2014/TT-NHNN ngày 31/12/2014'" />
		 <xsl:call-template name="tkhaiHeader-BCTC49_Nam">
		 
		<xsl:with-param name="mauTKhai"   select="'B02/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tiền: triệu đồng VN</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5) </b></td>
        </tr>
<!-- Tai san -->
        <tr>
            <td class="align-c"><b>A</b></td>
            <td colspan="4"><b>TÀI SẢN</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Tiền mặt, vàng bạc, đá quý</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_I_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_I_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_I_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tiền gửi tại NHNN</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_II_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_II_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_II_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Tiền gửi và cho vay các TCTD khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_III_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_III_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền, vàng gửi tại các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Cho vay các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng rủi ro (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_III_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_III_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Chứng khoán kinh doanh</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_IV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_IV_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán kinh doanh</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IV_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IV_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro chứng khoán kinh doanh (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IV_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IV_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Các công cụ tài chính phái sinh và các tài sản tài chính khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_V_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_V_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_V_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Cho vay khách hàng</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_tMinh"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_nNay"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Cho vay khách hàng</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro cho vay khách hàng (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VI_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VI_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Hoạt động mua nợ</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_moi_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_VII_moi_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_VII_moi_nNgoai)"/></b></td>
        </tr>
         <tr>
            <td class="align-c">1</td>
            <td>Mua nợ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_1_moi_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_1_moi_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_1_moi_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro hoạt động mua nợ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_2__moi_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_2__moi_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_2__moi_nNgoai"/></td>
        </tr>
               
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Chứng khoán đầu tư </b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_VII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_VII_nNgoai)"/></b></td>

        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán đầu từ sẵn sàng để bán (2)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chứng khoán đầu tư giữ đến ngày đáo hạn</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng  rủi ro chứng khoán đầu tư (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IX</b></td>
            <td><b>Góp vốn, đầu tư dài hạn</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_VIII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_VIII_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Đầu tư vào công ty con</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vốn góp liên doanh</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Đầu tư vào công ty liên kết</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Đầu tư dài hạn khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Dự phòng giảm giá đầu tư dài hạn (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_VIII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_VIII_5_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>X</b></td>
            <td><b>Tài sản cố định</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_tMinh"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_nNay"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_nNgoai"/></b></td>

        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tài sản cố định hữu hình</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_1_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_1_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Tài sản cố định thuê tài chính</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_2_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_2_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản cố định vô hình</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_IX_3_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_IX_3_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XI</b></td>
            <td><b>Bất động sản đầu tư</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_X_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_X_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá BĐSĐT</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_X_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_X_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn BĐSĐT (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_X_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_X_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XII</b></td>
            <td><b>Tài sản Có khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctA_XI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctA_XI_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản phải thu</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Các khoản lãi, phí phải thu</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản thuế TNDN hoãn lại</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tài sản Có khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Trong đó: Lợi thế thương mại</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_4_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_4_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_4_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Các khoản dự phòng rủi ro cho các tài sản Có nội bảng khác (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctA_XI_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctA_XI_5_nNgoai"/></td>
        </tr>        
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng tài sản có</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/tongTsan_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/tongTsan_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/tongTsan_nNgoai)"/></b></td>
        </tr>
        
<!--Nợ phải trả và vốn chủ sở hữu-->

        <tr>
            <td><b>B</b></td>
            <td colspan="5"><b>NỢ PHẢI TRẢ VÀ VỐN CHỦ SỞ HỮU</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Các khoản nợ Chính phủ và NHNN</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_I_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_I_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_I_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tiền gửi và vay các TCTD khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_II_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_II_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền gửi của các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_II_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_II_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vay các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_II_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_II_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Tiền gửi của khách hàng</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_III_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_III_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_III_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Các công cụ tài chính phái sinh và các khoản nợ tài chính khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_IV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_IV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_IV_nNgoai)"/></b></td>

        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Vốn tài trợ, uỷ thác đầu tư, cho vay TCTD chịu rủi ro</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_V_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_V_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_V_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Phát hành giấy tờ có giá</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_VI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_VI_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Các khoản nợ khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_VII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_VII_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản lãi, phí phải trả</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_1_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Thuế TNDN hoãn lại phải trả</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Các khoản phải trả và công nợ khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>   Dự phòng rủi ro khác (Dự phòng cho công nợ tiềm ẩn)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/tongNoPTRa_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/tongNoPTRa_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/tongNoPTRa_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Vốn chủ sở hữu</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNay/ctB_VIII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoNamNgoai/ctB_VIII_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Vốn của TCTD</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_tMinh"/></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_nNgoai"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Vốn điều lệ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_a_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_a_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Vốn đầu tư XDCB, mua sắm tài sản cố định</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_b_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_b_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">c</td>
            <td>Thặng dư vốn cổ phần</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_c_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_c_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_c_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">d</td>
            <td>Cổ phiếu quỹ (*) </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_d_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_d_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_d_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">e</td>
            <td>Cổ phiếu ưu đãi </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_e_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_e_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_e_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">g</td>
            <td>Vốn khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_g_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_1_g_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_1_g_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Quỹ của TCTD</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_2_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Chênh lệch tỷ giá hối đoái (3) </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_3_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Chênh lệch đánh giá lại tài sản</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_4_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Lợi nhuận chưa phân phối/ Lỗ luỹ kế(3)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_VIII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_VIII_5_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Lợi ích của cổ đông thiểu số</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_IX_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ctB_IX_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ctB_IX_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả và vốn chủ sở hữu</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/tongNoVon_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNay/tongNoVon_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoNamNgoai/tongNoVon_nNgoai"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="5"><b>CÁC CHỈ TIÊU NGOÀI BẢNG CÂN ĐỐI KẾ TOÁN</b></td>
        </tr>		
        <tr>
            <td class="align-c">1</td>
            <td>Bảo lãnh vay vốn</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/blanhVon_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/blanhVon_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/blanhVon_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c" rowspan="5">2</td>
            <td>Cam kết giao dịch hối đoái</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDHoiDoai_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckGDHoiDoai_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckGDHoiDoai_nNgoai"/></td>
        </tr>
            <tr>
            <td>Cam kết mua ngoại tệ</td>      
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckMuaNTe_tMinh"/></td>      
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckMuaNTe_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckMuaNTe_nNgoai"/></td>
        </tr>
        <tr>
        <td>Cam kết bán ngoại tệ</td>        
        <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckBanNTe_tMinh"/></td>       
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckBanNTe_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckBanNTe_nNgoai"/></td>
        </tr>
        <tr>
        <td>Cam kết giao dịch hoán đổi</td>   
             <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDHoanDoi_tMinh"/></td>          
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckGDHoanDoi_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckGDHoanDoi_nNgoai"/></td>
        </tr>
        <tr>
        <td>Cam kết giao dịch tương lai</td>  
             <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDTuongLai_tMinh"/></td>     
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckGDTuongLai_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckGDTuongLai_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c" >3</td>
            <td>Cam kết cho vay không hủy ngang</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckCVayKHuyNgang_tMinh"/></td>     
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/ckCVayKHuyNgang_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/ckCVayKHuyNgang_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Cam kết trong nghiệp vụ L/C</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/cketNVu_tMinh"/></td>                
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/cketNVu_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/cketNVu_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Bảo lãnh khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/blanhKhac_tMinh"/></td>                        
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNay/blanhKhac_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoNamNgoai/blanhKhac_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Các cam kết khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/cketKhac_tMinh"/></td>                 
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
<xsl:call-template name="tkhaiFooter-BCTC49">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>