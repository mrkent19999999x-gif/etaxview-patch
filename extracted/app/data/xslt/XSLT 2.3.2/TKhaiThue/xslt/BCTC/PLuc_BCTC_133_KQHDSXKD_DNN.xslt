<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 133/2016/TT-BTC ngày 26/8/2016 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL3"   select="'(Theo phương pháp gián tiếp) (*)'"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B02 - DNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH '"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	 </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>CHỈ TIÊU </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
<tr>
			<td class="align-c">1</td>
			<td class="align-c">2</td>
			<td class="align-c">3</td>
			<td class="align-c">4</td>
			<td class="align-c">5</td>
		</tr>
        <tr>    
            <td><b>1. Doanh thu bán hàng và cung cấp dịch vụ</b></td>
            <td class="align-c"><b>01</b></td>            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></b></td>
        </tr>
         <tr>    
            <td><b>2. Các khoản giảm trừ doanh thu</b></td>
            <td class="align-c"><b>02</b></td>            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></b></td>
        </tr>
         <tr>    
            <td><b>3. Doanh thu thuần về bán hàng và cung cấp dịch vụ (10= 01-02)</b></td>
            <td class="align-c"><b>10</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></b></td>
        </tr>
         <tr>    
            <td><b>4. Giá vốn hàng bán</b></td>
            <td class="align-c"><b>11</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct11"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></b></td>
        </tr>
         <tr>    
            <td><b>5. Lợi nhuận gộp về bán hàng và cung cấp dịch vụ (20=10-11)</b></td>
            <td class="align-c"><b>20</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></b></td>
        </tr>
         <tr>    
            <td><b>6. Doanh thu hoạt động tài chính</b></td>
            <td class="align-c"><b>21</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct21"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct21"/></b></td>
        </tr>
         <tr>    
            <td><b>7. Chi phí tài chính</b></td>
            <td class="align-c"><b>22</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct22"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct22"/></b></td>
        </tr>
        <tr>     
            <td><i>- Trong đó:</i> Chi phí lãi vay</td>
            <td class="align-c">23</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct23"/></td>
        </tr>
        <tr>        
            <td><b>8. Chi phí quản lý kinh doanh</b></td>
            <td class="align-c"><b>24</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct24"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct24)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct24)"/></b></td>
        </tr>
         <tr>        
            <td><b>9. Lợi nhuận thuần từ hoạt động kinh doanh (30 = 20 + 21 - 22 - 24)</b></td>
            <td class="align-c"><b>30</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct30)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct30)"/></b></td>
            </tr>
             <tr>        
            <td><b>10. Thu nhập khác</b></td>
            <td class="align-c"><b>31</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct31)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct31)"/></b></td>
            </tr>
             <tr>        
            <td><b>11. Chi phí khác</b></td>
            <td class="align-c"><b>32</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct32)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct32)"/></b></td>
            </tr>
              <tr>        
            <td><b>12. Lợi nhuận khác (40 = 31 - 32)</b></td>
            <td class="align-c"><b>40</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct40)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct40)"/></b></td>
            </tr>
              <tr>        
            <td><b>13. Tổng lợi nhuận kế toán trước thuế (50 = 30 + 40)</b></td>
            <td class="align-c"><b>50</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct50)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct50)"/></b></td>
            </tr>
              <tr>        
            <td><b>14. Chi phí thuế TNDN</b></td>
            <td class="align-c"><b>51</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct51)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct51)"/></b></td>
            </tr>
              <tr>        
            <td><b>15. Lợi nhuận sau thuế thu nhập doanh nghiệp (60=50 - 51)</b></td>
            <td class="align-c"><b>60</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct60)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct60)"/></b></td>
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
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>

</xsl:template>		
</xsl:stylesheet>
