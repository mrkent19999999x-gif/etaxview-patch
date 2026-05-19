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
		<xsl:variable name="ghiChuPL3"   select="''"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B02 - HTX'"/>
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
            <td>1. Doanh thu hoạt động sản xuất kinh doanh</td>
            <td class="align-c">01</td>            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
         <tr>    
            <td>2. Các khoản giảm trừ doanh thu</td>
            <td class="align-c">02</td>            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></td>
        </tr>
         <tr>    
            <td>3. Doanh thu thuần hoạt động sản xuất kinh doanh (10= 01-02)</td>
            <td class="align-c">10</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></td>
        </tr>
         <tr>    
            <td>4. Giá vốn hàng bán</td>
            <td class="align-c">11</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></td>
        </tr>
         <tr>    
            <td>5. Chi phí quản lý kinh doanh</td>
            <td class="align-c">12</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct12"/></td>
        </tr>
         <tr>    
            <td>6. Kết quả hoạt động sản xuất kinh doanh (20=10-11-12)</td>
            <td class="align-c">20</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></td>
        </tr>
         <tr>    
            <td>7. Thu nhập khác</td>
            <td class="align-c">31</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct31"/></td>
        </tr>
        <tr>        
            <td>8. Chi phí khác</td>
            <td class="align-c">32</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct32)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct32)"/></td>
        </tr>
         <tr>        
            <td>9. Lợi nhuận khác (40 = 31 - 32)</td>
            <td class="align-c">40</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct40)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct40)"/></td>
            </tr>
             <tr>        
            <td>10. Doanh thu hoạt động tín dụng nội bộ</td>
            <td class="align-c">41</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct41"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct41)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct41)"/></td>
            </tr>
             <tr>        
            <td>11. Chi phí hoạt động tín dụng nội bộ</td>
            <td class="align-c">42</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct42"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct42)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct42)"/></td>
            </tr>
              <tr>        
            <td>12. Lợi nhuận từ hoạt động tín dụng nội bộ (45 = 41 - 42)</td>
            <td class="align-c">45</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct45"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct45)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct45)"/></td>
            </tr>
              <tr>        
            <td>13. Lợi nhuận kế toán trước thuế (50 = 20 + 40 + 45)</td>
            <td class="align-c">50</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct50)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct50)"/></td>
            </tr>
              <tr>        
            <td>14. Chi phí thuế TNDN</td>
            <td class="align-c">51</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct51)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct51)"/></td>
            </tr>
              <tr>        
            <td>15. Lợi nhuận sau thuế thu nhập doanh nghiệp (60=50 - 51)</td>
            <td class="align-c">60</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamNay/ct60)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/NamTruoc/ct60)"/></td>
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
