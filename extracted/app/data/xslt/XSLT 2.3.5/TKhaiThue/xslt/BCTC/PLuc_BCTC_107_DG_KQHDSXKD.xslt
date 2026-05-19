<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 107/2017/TT-BTC ngày 10/10/2017 của Bộ Tài chính'" />
        <xsl:variable name="ghiChuPL1"   select="''"/>	
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHD' />	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B05/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG NĂM '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>	
	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tính: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B </b></td>
            <td class="align-c"><b>C </b></td>
            <td class="align-c"><b>D</b></td>
            <td class="align-c"><b>1 </b></td>
            <td class="align-c"><b>2 </b></td>
        </tr>
        <!-- I Hoat dong tu nguon NSNN cap -->
        <tr>
            <td class="align-c"><b>I</b></td>
            <td class="align-l"><b>Hoạt động từ nguồn NSNN cấp</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">1 </td>
            <td>Doanh thu </td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct60"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
             <td>Chi phí</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct61"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (62=60-61)</td>
            <td class="align-c">62</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct62"/></td>
        </tr>
        <!-- II Hoat dong khac -->
        <tr>
            <td class="align-c"><b>II</b></td>
            <td class="align-l"><b>Hoạt động khác</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Thu nhập khác</td>
            <td class="align-c">65</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct65"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chi phí khác</td>
            <td class="align-c">66</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct66"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct66"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct66"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (67=65-66)</td>
            <td class="align-c">67</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct67"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct67"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct67"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Thặng dư/ thâm hụt trong năm (70=62+67)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct70"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Sử dụng kinh phí tiết kiệm của ĐV hành chính</td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct71"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Phân phối cho các quỹ</td>
            <td class="align-c">72</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct72"/></td>
        </tr>
         <tr>
            <td class="align-c">3</td>
            <td>Kinh phí cải cách tiền lương</td>
            <td class="align-c">73</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct73"/></td>
        </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter-BCTC107-DG">   
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
