<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp trực tiếp) (*)'"/>
			<xsl:call-template name="PLuc_BCTC125_LCTTTT_GiuaNienDo">
		<xsl:with-param name="mauTKhai"   select="'B03a - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTTGND">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTTGND' />	
	

	 
	<div class="ndungtkhai_div">
	<div class="content">
	
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c"  colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
        </tr>
        <tr>
		            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
		</tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4</b></td>
            <td class="align-c"><b>5</b></td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ hoạt động nghiệp vụ, cung cấp dịch vụ và doanh thu khác</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Tiền chi trả cho hoạt động nghiệp vụ và người cung cấp hàng hoá, dịch vụ</td>
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
            <td>4. Tiền chi trả lãi vay</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Tiền chi nộp thuế thu nhập doanh nghiệp</td>
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
            <td>7. Tiền chi khác từ hoạt động kinh doanh</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct07"/></td>
        </tr>
           
  <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct20"/></b></td>
        </tr>
        
        <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>1.Tiền chi để mua sắm, xây dựng TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td>4. Tiền thu từ thanh lý các khoản đầu tư công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct26"/></td>
        </tr>
        <tr>
            <td>7.Tiền thu cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct27"/></td>
        </tr>
     
        <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư </b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct30"/></b></td>
        </tr>
              
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>1.Tiền thu từ phát hành cổ phiếu, trái phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2.Tiền chi trả vốn cho các chủ sở hữu, mua lại cổ phiếu của công ty đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct32"/></td>
        </tr>


           <tr>
            <td>3.Tiền vay ngắn hạn, dài hạn nhận được</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33"/></td>
        </tr>
               
             <tr>
            <td>4.Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5. Tiền chi trả nợ thuê tài chínhh</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct36"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct40"/></b></td></b>
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
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
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
<xsl:call-template name="tkhaiFooter-BCTC125">   
</xsl:call-template>

<div id="sigDiv"></div>
</td>
</tr>


</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
