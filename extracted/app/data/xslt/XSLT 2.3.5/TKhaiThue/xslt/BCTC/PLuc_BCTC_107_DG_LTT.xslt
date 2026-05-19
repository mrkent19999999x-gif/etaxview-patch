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

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B05/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN '"/>
		<xsl:with-param name="ghiChuPL"   select="''"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>

    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay</b></td>
            <td class="align-c"><b>Năm trước</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>D</b> </td>
            <td class="align-c"><b>1</b> </td>
            <td class="align-c"><b>2 </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>Các khoản thu</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct80"/></b></td>
        </tr>
         <tr>
            <td class="align-c"></td>
            <td>- Tiền Ngân sách nhà nước cấp</td>
            <td class="align-c">81</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct81"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct81"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct81"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền thu khác</td>
            <td class="align-c">84</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct84"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct84"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct84"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td><b>Các khoản chi</b></td>
            <td class="align-c"><b>85</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct85"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct85"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct85"/></b></td>
        </tr>
          <tr>
            <td class="align-c"></td>
            <td>- Tiền chi lương, tiền công và chi khác cho nhân viên</td>
            <td class="align-c">86</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct86"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct86"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct86"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền chi trả cho người cung cấp hàng hóa, dịch vụ</td>
            <td class="align-c">87</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct87"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct87"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct87"/></td>
        </tr>
           <tr>
            <td class="align-c"></td>
            <td>- Tiền chi khác</td>
            <td class="align-c">88</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct88"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct88"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct88"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>3</b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động chính</b></td>
            <td class="align-c"><b>89</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct89"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct89"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct89"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>4</b></td>
            <td><b>Số dư tiền đầu kỳ</b></td>
            <td class="align-c"><b>90</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct90"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct90"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct90"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>5</b></td>
             <td><b>Số dư tiền cuối kỳ</b></td>
            <td class="align-c"><b>91</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct91"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct91"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct91"/></b></td>
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
<div><i>(1) Các chỉ tiêu không có số liệu thì doanh nghiệp không phải trình bày nhưng không được đánh lại “Mã số” chỉ tiêu.</i></div>
<div><i>(2) Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
