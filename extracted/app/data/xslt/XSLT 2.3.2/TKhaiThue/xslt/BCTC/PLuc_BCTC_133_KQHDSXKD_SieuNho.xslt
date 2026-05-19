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
        <xsl:variable name="ghiChuPL1"   select="''"/>	
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDXSKD' />	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B02 - DNSN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>	
	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tính: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
        <tr>
            <td>1. Doanh thu thuần về bán hàng và cung cấp dịch vụ</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Giá vốn hàng bán</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Chi phí quản lý kinh doanh</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Lãi/lỗ hoạt động tài chính và hoạt động khác</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Lợi nhuận kế toán trước thuế (05=01-02-03+04)</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>6. Chi phí thuế TNDN</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Lợi nhuận sau thuế thu nhập doanh nghiệp (07=05-06)</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct07"/></td>
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
<div><b><i>Ghi chú:</i></b></div>
<div><i>Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
