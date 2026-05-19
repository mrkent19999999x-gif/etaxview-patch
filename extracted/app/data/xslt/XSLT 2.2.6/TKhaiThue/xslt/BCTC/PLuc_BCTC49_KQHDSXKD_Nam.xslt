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
		<xsl:variable name="ghiChuPL1"   select="''"/>		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD' />	
	<xsl:call-template name="tkhaiHeader-plucBCTC49">
		<xsl:with-param name="mauTKhai"   select="'B03/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH (NĂM) '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: triệu đồng VN</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT </b></td>
            <td class="align-c"><b>Chỉ tiêu</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
<tr>
			<td class="align-c">(1)</td>
			<td class="align-c">(2)</td>
			<td class="align-c">(3)</td>
			<td class="align-c">(4)</td>
			<td class="align-c">(5)</td>
		</tr>
        <tr>
                    <td class="align-c">1</td>
            <td>Thu nhập lãi và các khoản thu nhập tương tự</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct1_nNgoai"/></td>
        </tr>
        <tr>
                    <td class="align-c">2</td>
            <td>Chi trả lãi và các chi phí tương tự</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct2_nNgoai"/></td>
        </tr>
        <tr>
                    <td class="align-c"><b>I</b></td>
            <td><b>Thu nhập lãi thuần (I = 1 - 2)</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctI_nNgoai)"/></b></td>
        </tr>
        <tr>
                        <td class="align-c">3</td>
            <td>Thu nhập từ hoạt động dịch vụ</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct3_nNgoai"/></td>
        </tr>
        <tr>            <td class="align-c">4</td>
            <td>Chi phí hoạt động dịch vụ</td>

            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct4_nNgoai"/></td>
        </tr>
        <tr>            <td class="align-c"><b>II</b></td>
            <td><b>Lãi / lỗ thuần từ hoạt động dịch vụ (II = 3 - 4)</b></td>

            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctII_nNgoai)"/></b></td>
        </tr>
        <tr>        <td class="align-c"><b>III</b></td>
            <td><b>Lãi / lỗ thuần từ hoạt động kinh doanh ngoại hối</b></td>
    
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctIII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctIII_nNgoai)"/></b></td>
        </tr>
        <tr>
                   <td class="align-c"><b>IV</b></td>
            <td><b>Lãi / lỗ thuần từ mua bán chứng khoán kinh doanh</b></td>
     
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctIV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctIV_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Lãi / lỗ thuần từ mua bán chứng khoán đầu tư</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctV_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Thu nhập từ hoạt động khác</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct5_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Chi phí hoạt động khác</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct6_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct6_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct6_nNgoai"/></td>
        </tr>
        <tr>     <td class="align-c"><b>VI</b></td>      
            <td><b>Lãi / lỗ thuần từ hoạt động khác (VI = 5 - 6)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctVI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctVI_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Thu nhập từ góp vốn, mua cổ phần</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctVII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctVII_nNgoai)"/></b></td>
        </tr>
        <tr>
             <td class="align-c"><b>VIII</b></td>
            <td><b>Chi phí hoạt động</b></td>
           
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctVIII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctVIII_nNgoai)"/></b></td>
        </tr>
        <tr> <td class="align-c"><b>IX</b></td>
            <td><b>Lợi nhuận thuần từ hoạt động kinh doanh trước chi phí dự phòng rủi ro tín dụng (IX=I+II+III+IV+V+VI+VII-VIII)</b></td>
           
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIX_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctIX_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctIX_nNgoai)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>X</b></td>
            <td><b>Chi phí dự phòng rủi ro tín dụng</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctX_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNay/ctX_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/SoNamNgoai/ctX_nNgoai)"/></b></td>
        </tr>
        <tr><b><td class="align-c"><b>XI</b></td>
            <td><b>Tổng lợi nhuận trước thuế (XI = IX - X)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXI_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ctXI_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ctXI_nNgoai"/></b></td></b>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>Chi phí thuế TNDN hiện hành</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct7_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct7_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct7_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>Chi phí thuế TNDN hoãn lại</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct8_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ct8_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ct8_nNgoai"/></td>
        </tr>
        <tr><b><td class="align-c"><b>XII</b></td>
            <td><b>Chi phí thuế TNDN (XII = 7 + 8)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXII_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ctXII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ctXII_nNgoai"/></b></td></b>
        </tr>
        <tr>

           <b> <td class="align-c"><b>XIII</b></td>
            <td><b>Lợi nhuận sau thuế (XI - XII)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXIII_tMinh"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNay/ctXIII_nNay"/></b></td>
            <td class="number align-r"><b class="number"><xsl:value-of select="$pluc01/SoNamNgoai/ctXIII_nNgoai"/></b></td>
  </b>
        </tr>
        <tr>
            <b><td class="align-c">XIV</td>
            <td>Lợi ích của cổ đông thiểu số</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ctXIV_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ctXIV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ctXIV_nNgoai"/></td></b>
        </tr>
        <tr>
            <b><td class="align-c">XV</td>
            <td>Lãi cơ bản trên cổ phiếu</td>
            
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ctXV_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNay/ctXV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/SoNamNgoai/ctXV_nNgoai"/></td></b>
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
</xsl:if>

</xsl:template>		
</xsl:stylesheet>
