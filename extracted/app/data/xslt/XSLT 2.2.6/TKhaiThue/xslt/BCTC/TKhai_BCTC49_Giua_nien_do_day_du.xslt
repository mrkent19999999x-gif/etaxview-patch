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
		 <xsl:call-template name="tkhaiHeader-DD">
		 
		<xsl:with-param name="mauTKhai"   select="'B02a/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tính: triệu đồng VN</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối quý </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c" colspan="2"><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
        </tr>
<!-- Tai san -->
        <tr>
            <td class="align-c"><b>A</b></td>
            <td><b>Tài sản</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b></b></td>
            <td class="align-r"><b></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Tiền mặt, vàng bạc, đá quý</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_I_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_I_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_I_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tiền gửi tại NHNN</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_II_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_II_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_II_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Tiền gửi và cho vay các TCTD khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_III_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_III_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền gửi tại các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_III_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_III_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Cho vay các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_III_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_III_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng rủi ro (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_III_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_III_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_III_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Chứng khoán kinh doanh</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_IV_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_IV_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán kinh doanh</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IV_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro chứng khoán kinh doanh (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IV_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IV_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IV_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Các công cụ tài chính phái sinh và các tài sản tài chính khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_V_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_V_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_V_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Cho vay khách hàng</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VI_cuoiQuy"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VI_dauNam"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Cho vay khách hàng</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_1_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VI_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VI_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro cho vay khách hàng (*)</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VI_2_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VI_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VI_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Hoạt động mua nợ</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_moi_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_VII_moi_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_VII_moi_dauNam)"/></b></td>
        </tr>
         <tr>
            <td class="align-c">1</td>
            <td>Mua nợ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_1_moi_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VII_1_moi_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VII_1_moi_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Dự phòng rủi ro hoạt động mua nợ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_2__moi_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VII_2__moi_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VII_2__moi_dauNam"/></td>
        </tr>
               
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Chứng khoán đầu tư </b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_VII_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_VII_dauNam)"/></b></td>

        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Chứng khoán đầu tư sẵn sàng để bán (2)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VII_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VII_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chứng khoán đầu tư giữ đến ngày đáo hạn</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VII_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VII_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Dự phòng rủi ro chứng khoán đầu tư (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VII_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VII_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>IX</b></td>
            <td><b>Góp vốn, đầu tư dài hạn</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_VIII_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_VIII_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Đầu tư vào công ty con</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VIII_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VIII_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vốn góp liên doanh</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VIII_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VIII_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Đầu tư vào công ty liên kết</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VIII_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VIII_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Đầu tư dài hạn khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VIII_4_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VIII_4_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Dự phòng giảm giá đầu tư dài hạn (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_VIII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_VIII_5_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_VIII_5_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>X</b></td>
            <td><b>Tài sản cố định</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_cuoiQuy"/></b></td>
            <td class="align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_dauNam"/></b></td>

        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tài sản cố định hữu hình</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_1_cuoiQuy"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_1_dauNam"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_1_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_1_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_1_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_1_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_1_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Tài sản cố định thuê tài chính</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_2_cuoiQuy"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_2_dauNam"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_2_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_2_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_2_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_2_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_2_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản cố định vô hình</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_3_cuoiQuy"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_3_dauNam"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_3_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_3_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_IX_3_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_IX_3_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_IX_3_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XI</b></td>
            <td><b>Bất động sản đầu tư</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_X_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_X_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Nguyên giá BĐSĐT</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_X_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_X_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Hao mòn BĐSĐT (*)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_X_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_X_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_X_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XII</b></td>
            <td><b>Tài sản Có khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctA_XI_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctA_XI_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản phải thu</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_1_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Các khoản lãi, phí phải thu</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản thuế TNDN hoãn lại</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_3_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tài sản Có khác</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_4_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_4_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_4_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Trong đó: Lợi thế thương mại</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_4_1_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_4_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_4_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Các khoản dự phòng rủi ro cho các tài sản Có nội bảng khác (*)</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctA_XI_5_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctA_XI_5_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctA_XI_5_dauNam"/></td>
        </tr>        
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng tài sản có</b></td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/tongTsan_tMinh"/></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/tongTsan_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/tongTsan_dauNam)"/></b></td>
        </tr>
        
<!--Nợ phải trả và vốn chủ sở hữu-->

        <tr>
            <td class="align-c"><b>B</b></td>
            <td><b>NỢ PHẢI TRẢ VÀ VỐN CHỦ SỞ HỮU</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b></b></td>
            <td class="align-r"><b></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Các khoản nợ Chính phủ và NHNN</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_I_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_I_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_I_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tiền gửi và vay các TCTD khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_II_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_II_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền gửi của các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_II_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_II_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Vay các TCTD khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_II_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_II_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_II_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Tiền gửi của khách hàng</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_III_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_III_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_III_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Các công cụ tài chính phái sinh và các khoản nợ tài chính khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_IV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_IV_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_IV_dauNam)"/></b></td>

        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Vốn tài trợ, ủy thác đầu tư, cho vay TCTD chịu rủi ro</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_V_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_V_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_V_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Phát hành giấy tờ có giá</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_VI_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_VI_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Các khoản nợ khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_VII_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_VII_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Các khoản lãi, phí phải trả</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VII_1_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VII_1_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Thuế TNDN hoãn lại phải trả</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_2_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VII_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VII_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Các khoản phải trả và công nợ khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VII_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VII_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Dự phòng rủi ro khác (Dự phòng cho công nợ tiềm ẩn)</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VII_4_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VII_4_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VII_4_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả</b></td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/tongNoPTRa_tMinh"/></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/tongNoPTRa_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/tongNoPTRa_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Vốn chủ sở hữu</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ctB_VIII_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ctB_VIII_dauNam)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Vốn của TCTD</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_tMinh"/></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_cuoiQuy"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_dauNam"/></b></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Vốn điều lệ</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Vốn đầu tư XDCB, mua sắm tài sản cố định</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">c</td>
            <td>Thặng dư vốn cổ phần</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_c_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_c_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_c_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">d</td>
            <td>Cổ phiếu quỹ (*) </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_d_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_d_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_d_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">e</td>
            <td>Cổ phiếu ưu đãi </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_e_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_e_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_e_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">g</td>
            <td>Vốn khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_1_g_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_1_g_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_1_g_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Quỹ của TCTD</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_2_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_2_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Chênh lệch tỷ giá hối đoái (3) </td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_3_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_3_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Chênh lệch đánh giá lại tài sản</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_4_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_4_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Lợi nhuận chưa phân phối/ Lỗ luỹ kế(3)</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_5_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_5_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">a</td>
            <td>Lợi nhuận/Lỗ năm nay</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_5_a_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_5_a_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_5_a_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Lợi nhuận/lỗ lũy kế năm trước</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_5_b_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_5_b_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_5_b_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Lợi ích của cổ đông thiểu số</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ctB_VIII_6_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ctB_VIII_6_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ctB_VIII_6_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tổng nợ phải trả và vốn chủ sở hữu</b></td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/tongNoVon_tMinh"/></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/tongNoVon_cuoiQuy)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/tongNoVon_dauNam)"/></b></td>
        </tr>

<!-- Chi tieu ngoai bang -->

        <tr>
            <td><b></b></td>
            <td colspan="4"><b>CÁC CHỈ TIÊU NGOÀI BẢNG CÂN ĐỐI KẾ TOÁN</b></td>
        </tr>		
        <tr>
            <td class="align-c">1</td>
            <td>Bảo lãnh vay vốn</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/blanhVon_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/blanhVon_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/blanhVon_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c" rowspan="5">2</td>
            <td>Cam kết giao dịch hối đoái</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDHoiDoai_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckGDHoiDoai_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckGDHoiDoai_dauNam"/></td>
        </tr>
        <tr>
            <td>Cam kết mua ngoại tệ</td>      
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckMuaNTe_tMinh"/></td>      
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckMuaNTe_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckMuaNTe_dauNam"/></td>
        </tr>
        <tr>
            <td>Cam kết bán ngoại tệ</td>  
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckBanNTe_tMinh"/></td>         
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckBanNTe_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckBanNTe_dauNam"/></td>
        </tr>
        <tr>
            <td>Cam kết giao dịch hoán đổi</td>     
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDHoanDoi_tMinh"/></td>  
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckGDHoanDoi_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckGDHoanDoi_dauNam"/></td>
        </tr>
        <tr>
        <td>Cam kết giao dịch tương lai</td>   
        <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckGDTuongLai_tMinh"/></td>  
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckGDTuongLai_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckGDTuongLai_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c" >3</td>
            <td>Cam kết cho vay không hủy ngang</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ckCVayKHuyNgang_tMinh"/></td>  
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/ckCVayKHuyNgang_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ckCVayKHuyNgang_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Cam kết trong nghiệp vụ L/C</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/cketNVu_tMinh"/></td>  
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/cketNVu_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/cketNVu_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Bảo lãnh khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/blanhKhac_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/blanhKhac_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/blanhKhac_dauNam"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Các cam kết khác</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/cketKhac_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiQuy/cketKhac_cuoiQuy"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/cketKhac_dauNam"/></td>
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