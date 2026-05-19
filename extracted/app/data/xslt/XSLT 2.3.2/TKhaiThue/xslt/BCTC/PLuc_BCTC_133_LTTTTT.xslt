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

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B03 - DNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Theo phương pháp trực tiếp)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>

    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay</b></td>
            <td class="align-c"><b>Năm trước</b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td class="align-c">2</td>
            <td class="align-c">3</td>
            <td class="align-c">4 </td>
            <td class="align-c">5 </td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ bán hàng, cung cấp dịch vụ và doanh thu khác</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Tiền chi trả cho người cung cấp hàng hóa, dịch vụ</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi trả cho người lao động</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Tiền lãi vay đã trả</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>6. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct07"/></td>
        </tr>
        <tr>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động kinh doanh</i></b></td>
            <td class="align-c"><b><i>20</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamNay/ct20"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamTruoc/ct20"/></i></b></td>
        </tr>
        <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền chi để mua sắm, xây dựng TSCĐ, BĐSĐT và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct21"/></td>
        </tr>    
        <tr>
            <td>2. Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐSĐT và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct22"/></td>
        </tr>    
        <tr>
            <td>3. Tiền chi cho vay, đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct23"/></td>
        </tr>    
        <tr>
            <td>4. Tiền thu hồi cho vay, đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct24"/></td>
        </tr>   
        <tr>
            <td>5. Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct25"/></td>
        </tr>     
        <tr>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động đầu tư</i></b></td>
            <td class="align-c"><b><i>30</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamNay/ct30"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamTruoc/ct30"/></i></b></td>
        </tr>      
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct31"/></td>
        </tr>  
        <tr>
            <td>2. Tiền trả lại vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct32"/></td>
        </tr>  
        <tr>
            <td>3. Tiền thu từ đi vay</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33"/></td>
        </tr>  
        <tr>
            <td>4. Tiền trả nợ gốc vay và nợ thuê tài chính</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34"/></td>
        </tr>  
        <tr>
            <td>5. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct35"/></td>
        </tr>  
        <tr>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động tài chính</i></b></td>
            <td class="align-c"><b><i>40</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamNay/ct40"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/NamTruoc/ct40"/></i></b></td>
        </tr>   
        <tr>
            <td><b>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct50"/></b></td>
        </tr>   
        <tr>
            <td><b>Tiền và tương đương tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct60"/></b></td>
        </tr>  
        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct61"/></td>
        </tr>  
        <tr>
            <td class="align-c"><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct70"/></b></td>
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
