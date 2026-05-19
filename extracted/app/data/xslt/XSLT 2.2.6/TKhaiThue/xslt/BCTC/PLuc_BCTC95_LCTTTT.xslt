<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo thông tư số 95/2008/TT-BTC ngày 24 tháng 10 năm 2008  của Bộ Tài chính'" />
		
<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-c"><b>LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP</b></div>	<br/>
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số năm nay </b></td>
            <td class="align-c"><b>Số năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>(1) </b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5)</b></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>I</b></td>
            <td colspan="5"><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Tiền thu từ hoạt động kinh doanh </td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Tiền chi hoạt động kinh doanh </td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Tiền chi nộp Quỹ hỗ trợ thanh toán</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Tiền thu giao dịch chứng khoán khách hàng</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Tiền chi trả giao dịch chứng khoán khách hàng</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct07"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Tiền thu bán chứng khoán phát hành</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct08"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Tiền chi trả tổ chức phát hành chứng khoán</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct09"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>8. Tiền chi trả cho người cung cấp hàng hóa và dịch vụ</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct10"/></td>
        </tr>
        <tr>
            <td class="align-c">9</td>
            <td>9. Tiền chi trả cho người lao động</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c">10</td>
            <td>10. Tiền chi trả lãi vay</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td class="align-c">11</td>
            <td>11. Tiền chi nộp thuế thu nhập doanh nghiệp </td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td class="align-c">12</td>
            <td>12. Tiền thu khác</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td class="align-c">13</td>
            <td>13. Tiền chi khác</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct15"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamNay/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamTruoc/ct20"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>II</b></td>
            <td colspan="5"><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Tiền chi để mua sắm, xây dựng TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền chi cho vay, mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền thu hồi cho vay, bán lại các công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct26"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7.Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct27"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamNay/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamTruoc/ct30"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>III</b></td>
            <td colspan="5"><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền vay ngắn hạn, dài hạn nhận được</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi trả nợ thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct36"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamNay/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamTruoc/ct40"/></b></td></b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Tiền và tương đương tiền đầu kỳ</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct60"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamTruoc/ct61"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamNay/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc02/SoNamTruoc/ct70"/></b></td></b>
        </tr>

 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC">   
</xsl:call-template>
<div class="ghichu"><i><b>Ghi chú: </b></i>Những chỉ tiêu không có số liệu có thể không phải trình bày nhưng không được đánh lại số thứ tự chỉ tiêu và “Mã số”.</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>

</xsl:template>		
</xsl:stylesheet>
