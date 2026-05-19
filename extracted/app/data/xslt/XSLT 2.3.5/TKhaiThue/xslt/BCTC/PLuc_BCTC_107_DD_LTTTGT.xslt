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
		<xsl:variable name="ghiChuPL3"   select="'(Theo phương pháp gián tiếp) (*)'"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B03b/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Theo phương pháp gián tiếp)'"/>
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
            <td class="align-c">A</td>
            <td class="align-c">B </td>
            <td class="align-c">C </td>
            <td class="align-c">D</td>
            <td class="align-c">1</td>
            <td class="align-c">2 </td>
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG CHÍNH</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Thặng dư/ thâm hụt trong năm</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Điều chỉnh cho các khoản không phát sinh bằng tiền</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Khấu hao TSCĐ trong năm</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Lãi/ lỗ chênh lệch tỷ giá</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Lãi/ lỗ từ các khoản đầu tư</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tăng/ giảm các khoản nợ phải trả</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Tăng/ giảm hàng tồn kho</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Tăng/ giảm các khoản phải thu</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct07"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>Thu khác từ hoạt động chính</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct08"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>Chi khác từ hoạt động chính</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct09"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động chính</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct10"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG ĐẦU TƯ</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td class="align-c"> 1</td>
            <td> Tiền thu từ thanh lý tài sản cố định </td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Tiền thu từ các khoản đầu tư</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tiền chi XDCB, mua tài sản cố định</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tiền chi đầu tư góp vồn vào các đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct30"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG TÀI CHÍNH</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tiền thu từ các khoản đi vay</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct31"/></td>
        </tr>
            <tr>
            <td class="align-c">2</td>
            <td>Tiền nhận vốn góp</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tiền hoàn trả gốc vay</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tiền hoàn trả vốn góp</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Cổ tức/ lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính (40=31+32+33+34+35)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct40"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Lưu chuyển tiền thuần trong năm (50=10+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct50"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Số dư tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct60"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Ảnh hưởng của chênh lệch tỷ giá</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct70"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td><b>Số dư tiền cuối kỳ (80=50+60+70)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct80"/></b></td>
        </tr>
        

 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter-BCTC107-24">   
</xsl:call-template>
<div><b><i>Ghi chú:</i></b></div>
<div><i>(1) Các chỉ tiêu không có số liệu thì doanh nghiệp không phải trình bày nhưng không được đánh lại “Mã số chỉ tiêu”.</i></div>
<div><i>(2) Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>