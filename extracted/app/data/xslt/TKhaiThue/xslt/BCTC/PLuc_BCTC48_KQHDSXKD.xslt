<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo QĐ số  48/2006/QĐ-BTC ngày  14/09/2006 của Bộ trưởng BTC
'" />
				
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
            <td class="align-c"><b>(A)</b></td>
            <td class="align-c"><b>(B) </b></td>
            <td class="align-c"><b>(C) </b></td>
            <td class="align-c"><b>(1) </b></td>
            <td class="align-c"><b>(2) </b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Doanh thu bán hàng và cung cấp dịch vụ</td>
            <td class="align-c">01</td>
            <td class="align-c">IV.08</td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct01_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct01_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Các khoản giảm trừ doanh thu</td>
            <td class="align-c">02</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct02_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct02_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>3</b></td>
            <td><b>3. Doanh thu thuần về bán hàng và cung cấp dịch vụ (10 = 01 - 02)</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct10_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct10_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Giá vốn hàng bán</td>
            <td class="align-c">11</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct11_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct11_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>5</b></td>
            <td><b>5. Lợi nhuận gộp về bán hàng và cung cấp dịch vụ (20 = 10 - 11)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct20_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct20_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Doanh thu hoạt động tài chính</td>
            <td class="align-c">21</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct21_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct21_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Chi phí tài chính</td>
            <td class="align-c">22</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct22_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct22_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8.- Trong đó: Chi phí lãi vay  </td>
            <td class="align-c">23</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct23_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct23_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Chi phí quản lý kinh doanh</td>
            <td class="align-c">24</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct24_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct24_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>10</b></td>
            <td><b>10. Lợi nhuận thuần từ hoạt động kinh doanh(30 = 20 + 21 - 22 – 24)</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct30_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct30_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>11. Thu nhập khác</td>
            <td class="align-c">31</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct31_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct31_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">12</td>
            <td>12. Chi phí khác</td>
            <td class="align-c">32</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct32_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct32_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>13</b></td>
            <td><b>13. Lợi nhuận khác (40 = 31 - 32)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct40_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct40_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>14</b></td>
            <td><b>14. Tổng lợi nhuận kế toán trước thuế  (50 = 30 + 40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-c"><b>IV.09</b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct50_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct50_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">15</td>
            <td>15. Chi phí thuế thu nhập doanh nghiệp</td>
            <td class="align-c">51</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct51_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct51_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>16</b></td>
            <td><b>16. Lợi nhuận sau thuế thu nhập doanh nghiệp (60 = 50 – 51)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ct60_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ct60_nNgoai"/></b></td>
            </b>
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
