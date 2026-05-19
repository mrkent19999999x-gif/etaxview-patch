<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
				<xsl:call-template name="PLuc_BCTC125_KQHDSXKD_GiuaNienDo">
		<xsl:with-param name="mauTKhai"   select="'B02a - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDGND">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDGND' />	
	

	  
	<div class="ndungtkhai_div">
	<div class="content">

<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
<td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
        </tr>
        
        <tr>
<td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
	</tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4</b></td>
            <td class="align-c"><b>5</b></td>
            <td class="align-c"><b>6</b></td>
            <td class="align-c"><b>7</b></td>
        </tr>
            
        <tr>
            <td>1. Doanh thu </td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct01"/></td>
        </tr>
            <tr>
            <td>2. Các khoản giảm trừ doanh thu</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct02"/></td>
        </tr>
                <tr>
            <td>3.  Doanh thu thuần về hoạt động kinh doanh (10=01-02)</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct10"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct10"/></td>
        </tr>
                <tr>
            <td>4. Chi phí hoạt động kinh doanh, giá vốn hàng bán </td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct11"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct11"/></td>
        </tr>
                <tr>
            <td>5. Lợi nhuận gộp của hoạt động kinh doanh (20=10-11)</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct20"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct20"/></td>
        </tr>

        <tr>
            <td>6. Doanh thu hoạt động tài chính</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct21"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct21"/></td>
        </tr>
        
        <tr>
            <td>7. Chi phí tài chính</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct22"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct22"/></td>
        </tr>
                <tr>
            <td>8. Chi phí quản lý doanh nghiệp</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct25"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct25"/></td>
        </tr>

        <tr>
            <td>9. Lợi nhuận thuần từ hoạt động kinh doanh {30=20+(21-22)- 25}</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct30"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct30"/></td>
        </tr>
                <tr>
            <td>10. Thu nhập khác</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct31"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct31"/></td>
        </tr>

        <tr>
            <td>11. Chi phí khác</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct32"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct32"/></td>
        </tr>
                <tr>
            <td>11. Chi phí khác</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct40"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct40"/></td>
        </tr>

        <tr>
            <td>13. Tổng lợi nhuận kế toán trước thuế (50=30+40)</td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct50"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct50"/></td>
        </tr>
                <tr>
            <td>14. Chi phí thuế TNDN hiện hành</td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct51"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct51"/></td>
        </tr>

                <tr>
            <td><b>15. Chi phí thuế TNDN hoãn lại</b></td>
            <td class="align-c"><b>52</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct52"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct52"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct52"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct52"/></b></td>
        </tr>
        <tr>
            <td>16. Lợi nhuận sau thuế TNDN (60=50-51-52)</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct60"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct60"/></td>
        </tr>
                <tr>
            <td>17. Lãi trên cổ phiếu (*)</td>
            <td class="align-c">70</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct70"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct70"/></td>
        </tr>
     
         
                       </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	




<xsl:call-template name="tkhaiFooter-BCTC125">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
