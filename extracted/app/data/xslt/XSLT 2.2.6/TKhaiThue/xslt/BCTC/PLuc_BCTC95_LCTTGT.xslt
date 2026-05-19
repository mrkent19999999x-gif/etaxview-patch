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
		 
<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-c"><b>LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP</b></div>	<br/>
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
            <td class="align-c"><b>(1)</b></td>
            <td class="align-c"><b>(2) </b></td>
            <td class="align-c"><b>(3) </b></td>
            <td class="align-c"><b>(4) </b></td>
            <td class="align-c"><b>(5) </b></td>
            <td class="align-c"><b>(6)</b></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>I</b></td>
            <td colspan="5"><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b> </td>
            </b>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td><b>1. Lợi nhuận trước thuế</b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct01"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct01"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct01"/></b></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>2</b></td>
            <td colspan="5"><b>2. Điều chỉnh cho các khoản</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Khấu hao TSCĐ</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Các khoản dự phòng</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Lãi, lỗ chênh lệch tỷ giá hối đoái chưa thực hiện</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Lãi, lỗ từ hoạt động đầu tư</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>        
            <td>- Chi phí lãi vay </td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct06"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>3</b></td>
            <td><b>3. Lợi nhuận từ hoạt động kinh doanh trước thay đổi vốn  lưu động (08=01+02+03+04+05+06)</b></td>
            <td class="align-c"><b>08</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct08"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct08"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct08"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tăng, giảm các khoản phải thu</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct09"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tăng, giảm hàng tồn kho</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct10"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tăng, giảm các khoản phải trả (Không kể lãi vay phải trả, thuế thu nhập doanh nghiệp phải nộp) </td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tăng, giảm chi phí trả trước </td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tiền lãi vay đã trả</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct15"/></td>
        </tr>
        <tr>
            <td class="align-c">-</td>
            <td>- Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct16"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct20"/></b></td>
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
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền chi cho vay, mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền thu hồi cho vay, bán lại các công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct26"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7.Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct27"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct30"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct30"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>III</b></td>
            <td colspan="5"><b>III. Lưu chuyển tiền từ hoạt động tài chính</b> </td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền vay ngắn hạn, dài hạn nhận được</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi trả nợ thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct36"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct40"/></b></td></b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td><b>Tiền và tương đương tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct60"/></b></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/SoNamTruoc/ct61"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamNay/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/SoNamTruoc/ct70"/></b></td>
            </b>
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
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
     </xsl:template>		
</xsl:stylesheet>
