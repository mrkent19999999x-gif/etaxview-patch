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
		<xsl:variable name="ghiChuPL2"   select="'(Dạng đầy đủ)'"/>
<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
		<xsl:call-template name="tkhaiHeader-plucBCTC49-GNDDD">
		<xsl:with-param name="mauTKhai"   select="'B04a/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ HỢP NHẤT GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="tenPL1"   select="'(Theo phương pháp gián tiếp) '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	  </xsl:call-template>
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: triệu đồng VN</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>STT</b></td>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>Năm nay</b></td>
            <td class="align-c"><b>Năm trước</b></td>
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
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_nTruoc)"/></b></td>
        </tr>
		<tr>            
            <td colspan="2"><b>Lưu chuyển tiền từ hoạt động đầu tư</b> </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="align-c">01</td>
            <td>Mua sắm TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_1_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_1_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_1_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">02</td>
            <td>Tiền thu từ thanh lý, nhượng bán TSCĐ</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_2_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_2_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_2_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">03</td>
            <td>Tiền chi từ thanh lý, nhượng bán TSCĐ (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_3_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_3_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_3_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">04</td>
            <td>Mua sắm bất động sản đầu tư (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_4_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_4_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_4_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">05</td>
            <td>Tiền thu từ bán, thanh lý bất động sản đầu tư</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_5_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_5_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_5_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">06</td>
            <td>Tiền chi ra do bán, thanh lý bất động sản đầu tư (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_6_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_6_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_6_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">07</td>
            <td>Tiền chi đầu tư, góp vốn vào các đơn vị khác (Chi đầu tư mua công ty con, góp vốn liên doanh, liên kết, và các khoản đầu tư dài hạn khác) (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_7_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_7_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_7_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">08</td>
            <td>Tiền thu đầu tư, góp vốn vào các đơn vị khác (Thu bán, thanh lý công ty con, góp vốn liên doanh, liên kết, các khoản đầu tư dài hạn khác)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_8_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_8_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_8_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">09</td>
            <td>Tiền thu cổ tức và lợi nhuận được chia từ các khoản đầu tư, góp vốn dài hạn</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctI_9_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctI_9_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctI_9_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_nTruoc)"/></b></td>
        </tr>
		<tr>            
            <td colspan="2"><b>Lưu chuyển tiền từ hoạt động tài chính</b> </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="align-c">01</td>
            <td>Tăng vốn cổ phần từ góp vốn và/ hoặc phát hành cổ phiếu</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_1_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_1_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_1_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">02</td>
            <td>Tiền thu từ phát hành giấy tờ có giá dài hạn đủ điều kiện tính vào vốn tự có và các khoản vốn vay dài hạn khác</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_2_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_2_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_2_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">03</td>
            <td>Tiền chi thanh toán giấy tờ có giá dài hạn đủ điều kiện tính vào vốn tự có và các khoản vốn vay dài hạn khác (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_3_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_3_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_3_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">04</td>
            <td>Cổ tức trả cho cổ đông, lợi nhuận đã chia (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_4_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_4_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_4_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">05</td>
            <td>Tiền chi ra mua cổ phiếu quỹ (*)</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_5_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_5_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_5_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c">06</td>
            <td>Tiền thu được do bán cổ phiếu quỹ</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ctII_6_tMinh"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctII_6_nNay)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctII_6_nTruoc)"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctIII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctIII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctIII_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Lưu chuyển tiền thuần trong kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctIV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctIV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctIV_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm đầu kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctV_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctV_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctV_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Điều chỉnh ảnh hưởng của thay đổi tỷ giá</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctVI_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctVI_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctVI_nTruoc)"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm cuối kỳ</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ctVII_tMinh"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ctVII_nNay)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ctVII_nTruoc)"/></b></td>
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
