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
		<xsl:with-param name="mauTKhai"   select="'B03a/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH (HỢP NHẤT) GIỮA NIÊN ĐỘ (Dạng đầy đủ)  '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tính: triệu đồng VN</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>STT </b></td>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Quý</b></td>
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>Năm nay</b></td>
            <td class="align-c"><b>Năm trước</b></td>
            <td class="align-c"><b>Năm nay</b></td>
            <td class="align-c"><b>Năm trước</b></td>
        </tr>
<tr>
			<td class="align-c" colspan="2">(1)</td>
			<td class="align-c">(2)</td>
			<td class="align-c">(3)</td>
			<td class="align-c">(4)</td>
			<td class="align-c">(5)</td>
			<td class="align-c">(6)</td>
		</tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Thu nhập lãi thuần</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctI_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctI_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctI_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctI_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctI_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thu nhập từ hoạt động dịch vụ</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct3_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct3_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct3_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct3_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct3_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Chi phí hoạt động dịch vụ</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct4_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct4_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct4_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct4_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct4_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Lãi/ lỗ thuần từ hoạt động dịch vụ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Lãi/lỗ thuần từ hoạt động kinh doanh ngoại hối</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctIII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctIII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctIII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctIII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Lãi/ lỗ thuần từ mua bán chứng khoán kinh doanh</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIV_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctIV_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctIV_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctIV_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctIV_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Lãi/ lỗ thuần từ mua bán chứng khoán đầu tư</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctV_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctV_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctV_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctV_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctV_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Thu nhập từ hoạt động khác</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct5_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct5_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct5_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct5_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct5_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Chi phí hoạt động khác</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct6_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct6_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct6_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct6_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct6_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Lãi/ lỗ thuần từ hoạt động khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVI_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctVI_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctVI_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctVI_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctVI_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Thu nhập từ góp vốn, mua cổ phần</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctVII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctVII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctVII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctVII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VIII</b></td>
            <td><b>Chi phí hoạt động</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVIII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctVIII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctVIII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctVIII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctVIII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IX</b></td>
            <td><b>Lợi nhuận thuần từ hoạt động kinh doanh trước chi phí dự phòng rủi ro tín dụng</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIX_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctIX_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctIX_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctIX_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctIX_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>X</b></td>
            <td><b>Chi phí dự phòng rủi ro tín dụng</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctX_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctX_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctX_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctX_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctX_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>XI</b></td>
            <td><b>Tổng lợi nhuận trước thuế</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXI_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctXI_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctXI_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctXI_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctXI_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>Chi phí thuế TNDN hiện hành</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct7_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct7_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct7_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct7_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct7_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>Chi phí thuế TNDN hoãn lại</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct8_Quy_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ct8_Quy_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ct8_Quy_nTruoc)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ct8_LKe_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ct8_LKe_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>XII</b></td>
            <td><b>Chi phí thuế TNDN</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctXII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctXII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctXII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctXII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>XIII</b></td>
            <td><b>Lợi nhuận sau thuế</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXIII_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctXIII_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctXIII_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctXIII_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctXIII_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>XIV</b></td>
            <td><b>Lợi ích của cổ đông thiểu số</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXIV_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctXIV_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctXIV_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctXIV_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctXIV_LKe_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>XV</b></td>
            <td><b>Lãi cơ bản trên cổ phiếu</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXV_Quy_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nNay/ctXV_Quy_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/Quy_nTruoc/ctXV_Quy_nTruoc)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nNay/ctXV_LKe_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc01/LuyKe_nTruoc/ctXV_LKe_nTruoc)"/></b></td>
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
