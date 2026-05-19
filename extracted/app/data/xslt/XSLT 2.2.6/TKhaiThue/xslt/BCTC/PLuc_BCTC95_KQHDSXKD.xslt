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
				
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD' />	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-c"><b>BÁO CÁO KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH</b></div>	<br/>
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
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5) </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>1. Doanh thu </b></td>
            <td class="align-c"><b></b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct01"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct01"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b><i>Trong đó:</i></b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b></b></td>
            <td class="align-r"><b></b></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu hoạt động môi giới chứng khoán </td>
            <td class="align-c">01.1</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_1"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu hoạt động đầu tư chứng khoán, góp vốn </td>
            <td class="align-c">01.2</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_2"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu bảo lãnh phát hành chứng khoán</td>
            <td class="align-c">01.3</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_3"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu đại lý phát hành chứng khoán</td>
            <td class="align-c">01.4</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_4"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu hoạt động tư vấn </td>
            <td class="align-c">01.5</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_5"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu lưu ký chứng khoán     </td>
            <td class="align-c">01.6</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_6"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu hoạt động uỷ thác đấu giá </td>
            <td class="align-c">01.7</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_7"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu cho thuê sử dụng tài sản</td>
            <td class="align-c">01.8</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_8"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Doanh thu khác</td>
            <td class="align-c">01.9</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_9"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_9"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamTruoc/ct01_9"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td><b> 2. Các khoản giảm trừ doanh thu</b></td>
            <td class="align-c"><b>02</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct02"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct02"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>3</b></td>
            <td><b> 3.  Doanh thu thuần về hoạt động kinh doanh (10=01-02)</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct10"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct10"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>4</b></td>
            <td><b>4. Chi phí hoạt động kinh doanh  </b></td>
            <td class="align-c"><b>11</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct11"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct11"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>5</b></td>
            <td><b>5. Lợi nhuận gộp của hoạt động kinh doanh (20=10-11) </b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct20"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>6</b></td>
            <td><b> 6. Chi phí quản lý doanh nghiệp</b></td>
            <td class="align-c"><b>25</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct25"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct25"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct25"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>7</b></td>
            <td><b> 7. Lợi nhuận thuần từ hoạt động kinh doanh (30=20- 25)</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct30"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>8</b></td>
            <td><b>8. Thu nhập khác </b></td>
            <td class="align-c"><b>31</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct31"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct31"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>9</b></td>
            <td><b> 9. Chi phí khác</b></td>
            <td class="align-c"><b>32</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct32"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct32"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>10</b></td>
            <td><b>10. Lợi nhuận khác (40=31-32) </b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct40"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>11</b></td>
            <td><b>11. Tổng lợi nhuận kế toán trước thuế (50=30+40) </b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct50"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>12</b></td>
            <td><b>12. Chi phí thuế TNDN hiện hành </b></td>
            <td class="align-c"><b>51</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct51"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct51"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>13</b></td>
            <td><b>13. Chi phí thuế TNDN hoãn lại </b></td>
            <td class="align-c"><b>52</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct52"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct52"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>14</b></td>
            <td><b>14. Lợi nhuận sau thuế TNDN (60=50-51-52) </b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct60"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>15</b></td>
            <td><b> 15. Lãi cơ bản trên cổ phiếu</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamNay/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/SoNamTruoc/ct70"/></b></td>
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
<br/><br/><br/>
</xsl:if>

     </xsl:template>		
</xsl:stylesheet>
