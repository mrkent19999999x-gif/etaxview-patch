<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 200/2014/TT-BTC Ngày 22/12/2014 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 02b – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
<!--    <div class="align-c"><b>BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH </b></div>	<br/>
    <div class="align-c"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></div>	<br/> -->



    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Quý </b></td>
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này </b></td>
        </tr>
       <tr>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước</b></td>
        </tr> 
        <tr>
            <td class="align-c">1</td>
            <td class="align-c">2</td>
            <td class="align-c">3</td>
            <td class="align-c">4 </td>
            <td class="align-c">5 </td>
            <td class="align-c">6 </td>
            <td class="align-c">7 </td>
        </tr>
        <tr>
            <td>1. Doanh thu bán hàng và cung cấp dịch vụ</td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamTruoc/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamNay/ct01"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamTruoc/ct01"/></td>
        </tr>
          <tr>
            <td>2. Doanh thu hoạt động tài chính và thu nhập khác</td>
            <td class="align-c"><b>31</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamTruoc/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamTruoc/ct31"/></td>
        </tr>
          <tr>
            <td>3. Tổng lợi nhuận kế toán trước thuế </td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/QuyNamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/QuyNamTruoc/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKeNamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKeNamTruoc/ct50"/></b></td>
        </tr>
           <tr>
            <td>4. Lợi nhuận sau thuế thu nhập doanh nghiệp </td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/QuyNamTruoc/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKeNamTruoc/ct60"/></td>
        </tr>
        
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	



<div class="phanky">
 <tr><td colspan="3"> <xsl:value-of select="$pluc01/PhanKy/ngayLap"/></td> </tr>
 <tr>
 <td> <xsl:value-of select="$pluc01/PhanKy/nguoiLapBieu"/> </td>
<td> <xsl:value-of select="$pluc01/PhanKy/keToanTruong"/> </td>
<td> <xsl:value-of select="$pluc01/PhanKy/giamDoc"/> </td>
  </tr>
</div><br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
