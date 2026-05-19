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
				<xsl:call-template name="tkhaiHeader-plucBCTC125_KQHDSXKD">
		<xsl:with-param name="mauTKhai"   select="'B02 – CTQ'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHD' />	
  
	<div class="ndungtkhai_div">
	<div class="content">

<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5</b></td>
        </tr>
       
        <tr>
            <td><b>1. Doanh thu </b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <b>
            <td><b>2. Các khoản giảm trừ doanh thu</b></td>
            <td class="align-c"><b>02</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></b></td>
            </b>
        </tr>
		<tr>
            <td><b>3.  Doanh thu thuần về hoạt động kinh doanh (10=01-02)</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></td>
        </tr>
                <tr>
            <td><b>4. Chi phí hoạt động kinh doanh, giá vốn hàng bán</b></td>
            <td class="align-c"><b>11</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></td>
        </tr>
        
        <tr>
            <td><b>5. Lợi nhuận gộp của hoạt động kinh doanh (20=10-11)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></b></td>
            
        </tr>
       <tr>
            <td><b>6. Doanh thu hoạt động tài chính</b></td>
            <td class="align-c"><b>21</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct21"/></td>
        </tr>
       <tr>
            <td><b>7. Chi phí tài chính</b></td>
            <td class="align-c"><b>22</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct22"/></td>
        </tr>
         <tr>
            <td><b>8. Chi phí quản lý doanh nghiệp</b></td>
            <td class="align-c"><b>25</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td><b>9. Lợi nhuận thuần từ hoạt động kinh doanh {30=20+(21-22)- 25}</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct30"/></td>
        </tr>
		<tr>
            <td><b>10. Thu nhập khác</b></td>
            <td class="align-c"><b>31</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct31"/></td>
        </tr>
                        <tr>
            <td><b>11. Chi phí khác</b></td>
            <td class="align-c"><b>32</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td><b>12. Lợi nhuận khác (40=31-32)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct40"/></b></td>
        </tr>
      <tr>
            <td><b>13. Tổng lợi nhuận kế toán trước thuế (50=30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct50"/></b></td>
        </tr>
        <tr>
            <td><b>14. Chi phí thuế TNDN hiện hành</b></td>
            <td class="align-c"><b>51</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct51"/></td>
        </tr>    
                                <tr>
            <td><b>15. Chi phí thuế TNDN hoãn lại</b></td>
            <td class="align-c"><b>52</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct52"/></td>
        </tr>   
                                <tr>
            <td><b>16. Lợi nhuận sau thuế TNDN (60=50-51-52)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct60"/></td>
        </tr>   
        <tr>
            <td><b>17. Lãi trên cổ phiếu (*)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct70"/></b></td>
        </tr>   
    </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
