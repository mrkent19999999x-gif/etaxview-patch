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
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp gián tiếp) (*)'"/>
		<xsl:call-template name="PLuc_BCTC125_LCTTGT_GiuaNienDo">
		<xsl:with-param name="mauTKhai"   select="'B03b - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGTGND">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGTGND' />	
	

	  
	<div class="ndungtkhai_div">
	<div class="content">
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
     <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
          <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
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
        </tr>
        <tr>
            <td><b>1. Lợi nhuận trước thuế</b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct01"/></b></td>
        </tr>
        <tr>
            <td><b>2. Điều chỉnh cho các khoản</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
                <tr>
            <td><b>- Khấu hao TSCĐ</b></td>
            <td class="align-c"><b>02</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct02"/></b></td>
        </tr>
        
        <tr>
            <td>- Các khoản dự phòng</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>- Lãi, lỗ chênh lệch tỷ giá hối đoái chưa thực hiện</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>- Lãi, lỗ từ hoạt động đầu tư</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>- Chi phí lãi vay</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>3. Lợi nhuận từ hoạt động kinh doanh trước thay đổi vốn  lưu động</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct08"/></td>
        </tr>
        <tr>
            <td>- Tăng, giảm các khoản phải thu</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct09"/></td>
        </tr>
    <tr>
            <td><b>- Tăng, giảm hàng tồn kho</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct10)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct10)"/></b></td>
        </tr>
        <tr>
            <td>- Tăng, giảm các khoản phải trả (Không kể lãi vay phải trả, thuế thu nhập doanh nghiệp phải nộp)	</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td>- Tăng, giảm chi phí trả trước</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td>- Tiền lãi vay đã trả</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td>- Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td>- Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct15"/></td>
        </tr>
        <tr>
            <td>- Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct16"/></td>
        </tr>
                
                       <tr>
            <td>Lưu chuyển tiền thuần từ hoạt động kinh doanh</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct20"/></td>
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
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct21"/></td>
        </tr>
            <tr>
            <td><b>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</b></td>
            <td class="align-c"><b>22</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct22"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct22)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct22)"/></b></td>
        </tr>
        <tr>
            <td><b>3.Tiền chi mua các công cụ nợ của đơn vị khác</b></td>
            <td class="align-c"><b>23</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct23"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct23)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct23)"/></b></td>
        </tr>
        <tr>
            <td><b>4.Tiền thu từ thanh lý các công cụ nợ của đơn vị khác</b></td>
            <td class="align-c"><b>24</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct24"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct24)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct24)"/></b></td>
        </tr>
        <tr>
            <td><b>5.Tiền chi đầu tư góp vốn vào đơn vị khác</b></td>
            <td class="align-c"><b>25</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct25"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct25)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct25)"/></b></td>
        </tr>
        <tr>
            <td><b>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</b></td>
            <td class="align-c"><b>26</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct26"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct26)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct26)"/></b></td>
        </tr>
        <tr>
            <td><b>7.Tiền thu cổ tức và lợi nhuận được chia</b></td>
            <td class="align-c"><b>27</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct27"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct27)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct27)"/></b></td>
        </tr>
        <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct30)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct30)"/></b></td>
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
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của công ty đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>3.Tiền vay ngắn hạn, dài hạn nhận được</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>4.Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5.Tiền chi trả nợ thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct36"/></td>
        </tr>
        
        <tr>
            <td>Lưu chuyển tiền thuần từ hoạt động tài chính</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct40"/></td>
        </tr>
        
        <tr>
            <td>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct50"/></td>
        </tr>
               
        <tr>
            <b>
            <td><b>Tiền và tương đương tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct60"/></b></td>
            </b>
        </tr>
        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct61"/></td>
        </tr>
          
            <tr>
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct70)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct70)"/></b></td>
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
