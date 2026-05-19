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

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT' />	
	<xsl:call-template name="tkhaiHeader-plucBCTC49">
		<xsl:with-param name="mauTKhai"   select="'B04b/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ (HỢP NHẤT)'" />
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
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
   
        </tr>
           <tr>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr> 
<tr>
			<td class="align-c" colspan="2">(1)</td>
			<td class="align-c">(2)</td>
			<td class="align-c">(3)</td>
			<td class="align-c">(4)</td>
		</tr>
        <tr>
           <td class="align-c"><b>I</b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctI_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctI_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctI_nTruoc"/></td>
        </tr>
         <tr>
           <td class="align-c"><b>II</b></td>
            <td><b>Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctII_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctII_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>III</b></td>
            <td><b>Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctIII_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctIII_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>IV</b></td>
            <td><b>Lưu chuyển tiền thuần trong kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctIV_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctIV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctIV_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>V</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm đầu kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctV_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctV_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>VI</b></td>
            <td><b>Điều chỉnh ảnh hưởng của thay đổi tỷ giá</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctVI_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctVI_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctVI_nTruoc"/></td>
        </tr>
          <tr>
           <td class="align-c"><b>VII</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm cuối kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctVII_tMinh"/></b></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ctVII_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ctVII_nTruoc"/></td>
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
