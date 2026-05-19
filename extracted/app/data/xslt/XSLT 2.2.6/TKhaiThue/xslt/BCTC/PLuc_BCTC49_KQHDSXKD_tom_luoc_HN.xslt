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
		<xsl:with-param name="mauTKhai"   select="'B03b/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH (HỢP NHẤT) GIỮA NIÊN ĐỘ '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: triệu đồng VN</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>STT </b></td>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Qúy</b></td>
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này </b></td>
        </tr>
           <tr>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
            <td class="align-c"><b>Năm nay </b></td>
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
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctI_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctI_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctI_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctI_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctI_LuyKe_nTruoc"/></td>
        </tr>
         <tr>
           <td class="align-c"><b>II</b></td>
            <td><b>Lãi/ lỗ thuần từ hoạt động dịch vụ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctII_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctII_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctII_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctII_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>III</b></td>
            <td><b>Lãi/ lỗ thuần từ hoạt động kinh doanh ngoại hối</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctIII_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctIII_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctIII_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctIII_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>IV</b></td>
            <td><b>Lãi/ lỗ thuần từ mua bán chứng khoán</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIV_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctIV_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctIV_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctIV_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctIV_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>V</b></td>
            <td><b>Lãi/ lỗ thuần từ hoạt động kinh doanh khác</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctV_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctV_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctV_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctV_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctV_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>VI</b></td>
            <td><b>Thu nhập từ góp vốn, mua cổ phần</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVI_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctVI_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctVI_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctVI_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctVI_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>VII</b></td>
            <td><b>Chi phí hoạt động</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctVII_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctVII_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctVII_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctVII_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>VIII</b></td>
            <td><b>Chi phí dự phòng rủi ro tín dụng</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctVIII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctVIII_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctVIII_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctVIII_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctVIII_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>IX</b></td>
            <td><b>Tổng lợi nhuận trước thuế</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctIX_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctIX_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctIX_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctIX_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctIX_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>X</b></td>
            <td><b>Lợi nhuận sau thuế TNDN</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctX_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctX_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctX_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctX_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctX_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>XI</b></td>
            <td><b>Lợi nhuận/cổ phiếu trước ngày phân phối</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXI_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctXI_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctXI_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctXI_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctXI_LuyKe_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>XII</b></td>
            <td><b>Lợi nhuận/cổ phiếu sau ngày phân phối</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ctXII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nNay/ctXII_Quy_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy_nTruoc/ctXII_Quy_nTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nNay/ctXII_LuyKe_nNay"/></td>
          <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe_nTruoc/ctXII_LuyKe_nTruoc"/></td>
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
