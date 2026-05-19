<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDSXKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDSXKD' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B02 - ĐTĐP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
<!--    <div class="align-c"><b>BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH </b></div>	<br/>
    <div class="align-c"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></div>	<br/> -->
<div class="align-r">Đơn vị tính: Đồng Việt Nam</div><br/>
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
            <td class="align-c"><b>5 </b></td>
        </tr>
       
        <tr>
            <td>1. Thu nhập lãi thuần</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>1.1. Doanh thu thuần lãi cho vay</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></td>
        </tr>
		<tr>
            <td>1.2. Chi phí lãi vay, chi phí liên quan trực tiếp tới việc huy động vốn và các Khoản chi phí hoạt động cho vay</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct03"/></td>
        </tr>
		<tr>
            <td>2. Thu thập thuần từ hoạt động đầu tư trực tiếp</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct04"/></td>
        </tr>
		<tr>
            <td>2.1. Doanh thu thuần từ hoạt động đầu tư trực tiếp</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct05"/></td>
        </tr>
		<tr>
            <td>2.2. Chi phí hoạt động đầu tư trực tiếp</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct06"/></td>
        </tr>
		<tr>
            <td>3. Thu nhập thuần từ hoạt động dịch vụ</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct07"/></td>
        </tr>
		<tr>
            <td>3.1. Doanh thu thuần hoạt động dịch vụ</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct08"/></td>
        </tr>
		<tr>
            <td>3.2. Chi phí hoạt động dịch vụ</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct09"/></td>
        </tr>
        <tr>
            <b>
            <td><b>4. Thu nhập thuần từ hoạt động đầu tư góp vốn vào đơn vị khác</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></b></td>
            </b>
        </tr>
        <tr>
            <td>4.1. Doanh thu từ hoạt động đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></td>
        </tr>
		<tr>
            <td>4.2. Chi phí hoạt động đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct12"/></td>
        </tr>
		<tr>
            <td>5. Thu nhập thuần từ hoạt động tài chính</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct13"/></td>
        </tr>
		<tr>
            <td>5.1. Doanh thu từ hoạt động tài chính</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct14"/></td>
        </tr>
		<tr>
            <td>5.2. Chi phí tài chính</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct15"/></td>
        </tr>
		<tr>
            <td>6. Chi phí hoạt động kinh doanh</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct16"/></td>
        </tr>
		
		<tr>
            <td>7. Thu nhập thuần khác</td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct17"/></td>
        </tr>
		<tr>
            <td>7.1. Thu nhập thuần từ hoạt động khác</td>
            <td class="align-c">18</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct18"/></td>
        </tr>
		<tr>
            <td>7.2. Chi phí khác</td>
            <td class="align-c">19</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct19"/></td>
        </tr>
        <tr>
            <b>
            <td><b>8. Lợi nhuận thuần từ hoạt động kinh doanh trước dự phòng rủi ro cho vay (20 = 01 + 04 + 07 + 10 + 13 - 16 + 17)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></b></td>
            </b>
        </tr>
        <tr>
            <td>9. Chi phí dự phòng rủi ro cho vay</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct30"/></td>
        </tr>
        <tr>
            <td>10. Tổng lợi nhuận kế toán trước thuế (40 = 20 - 30)</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct40"/></td>
        </tr>
        <tr>
            <td>11. Chi phí thuế TNDN</td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct50"/></td>
        </tr>
        <tr>
            <td>11.1. Chi phí thuế TNDN hiện hành</td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct51"/></td>
        </tr>
        <tr>
            <td>11.2. Chi phí thuế TNDN hoãn lại</td>
            <td class="align-c">52</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct52"/></td>
        </tr>
        <tr>
            <b>
            <td><b>12. Lợi nhuận sau thuế thu nhập doanh nghiệp (60=40 - 50)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct60"/></b></td>
            </b>
        </tr>
       
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
