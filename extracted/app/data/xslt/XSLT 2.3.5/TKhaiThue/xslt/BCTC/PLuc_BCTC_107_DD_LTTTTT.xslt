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

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B03a/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Theo phương pháp trực tiếp)'"/>
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
            <td class="align-c">B</td>
            <td class="align-c">C</td>
            <td class="align-c">D</td>
            <td class="align-c">1 </td>
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
            <td class="align-c"><b>1</b></td>
            <td><b>Các khoản thu</b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct01"/></b></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền Ngân sách nhà nước cấp</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền thu từ nguồn viện trợ, vay nợ nước ngoài</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền thu từ nguồn phí, lệ phí</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct04"/></td>
        </tr>
        <tr>
			<td class="align-c"></td>
            <td>- Tiền thu từ hoạt động sản xuất kinh doanh, dịch vụ</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền thu khác</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
            <td><b>Các khoản chi</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct10"/></b></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền chi lương, tiền công và chi khác cho nhân viên</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Tiền chi trả cho người cung cấp hàng hóa, dịch vụ</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct12"/></td>
        </tr>
          <tr>
            <td class="align-c"></td>
            <td>- Tiền chi khác</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct13"/></td>
        </tr>
            <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động chính</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct20"/></b></td>
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
            <td class="align-c">1</td>
            <td>Tiền thu từ thanh lý tài sản cố định</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct21"/></td>
        </tr>    
        <tr>
            <td class="align-c">2</td>
            <td>Tiền thu từ các khoản đầu tư</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct22"/></td>
        </tr>    
        <tr>
            <td class="align-c">3</td>
            <td>Tiền chi XDCB, mua tài sản cố định</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct23"/></td>
        </tr>    
        <tr>
            <td class="align-c">4</td>
             <td>Tiền chi đầu tư góp vốn vào các đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct24"/></td>
        </tr>   
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct30"/></b></td>
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
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct31"/></td>
        </tr>  
        <tr>
            <td class="align-c">2</td>
            <td>Tiền thu từ vốn góp</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct32"/></td>
        </tr>  
        <tr>
            <td class="align-c">3</td>
            <td>Tiền hoàn trả gốc vay</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33"/></td>
        </tr>  
        <tr>
            <td class="align-c">4</td>
            <td>Tiền hoàn trả vốn góp</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34"/></td>
        </tr>  
        <tr>
            <td class="align-c">5</td>
            <td>Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct35"/></td>
        </tr>  
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính (40=31+32+33+34+35)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct40"/></b></td>
        </tr>   
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Lưu chuyển tiền thuần trong năm (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct50"/></b></td>
        </tr>   
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Số dư tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct60"/></b></td>
        </tr>  
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Ảnh hưởng của chênh lệch tỷ giá</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct70"/></b></td>
        </tr>  
        <tr>
            <td class="align-c"><b>VII</b></td>
            <td class="align-l"><b>Số dư tiền cuối kỳ (80=50+60+70)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct80"/></b></td>
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
