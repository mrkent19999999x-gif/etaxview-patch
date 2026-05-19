<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp trực tiếp) (*)'"/>
	

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	
		<xsl:call-template name="PLuc_BCTC209_LCTTTT_GiuaNienDo">
		<xsl:with-param name="mauTKhai"   select="'B03a - ĐTĐP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>
	 
	<div class="ndungtkhai_div">
	<div class="content">

<div class="align-r">Đơn vị tính: Đồng Việt Nam</div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ hoạt động đầu tư trực tiếp</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Tiền chi trả cho người cung cấp hàng hóa, dịch vụ</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Tiền thu từ các Khoản phí</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Tiền chi cho vay</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Tiền thu hồi gốc cho vay</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>6. Thu tiền lãi cho vay, lãi tiền gửi</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Tiền thu từ đi vay</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct07"/></td>
        </tr>
		<tr>
            <td>8. Tiền trả nợ gốc vay</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct08"/></td>
        </tr>
		<tr>
            <td>9. Tiền lãi vay đã trả</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct09"/></td>
        </tr>
		<tr>
            <td>10. Chênh lệch tiền thu hồi và chi trả lại vốn gốc, lãi cho vay của phần vốn nhận ủy thác, nhận hợp vốn cho vay</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct10"/></td>
        </tr>
		<tr>
            <td>11. Chênh lệch tiền thu, chi từ nhận vốn ủy thác cấp phát đầu tư</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct11"/></td>
        </tr>
		<tr>
            <td>12. Chênh lệch tiền thu, chi từ vốn nhận ủy thác hỗ trợ lãi suất</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct12"/></td>
        </tr>
		<tr>
            <td>13. Chênh lệch tiền thu, chi vốn nhận ủy thác cho vay đầu tư</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct13"/></td>
        </tr>
		<tr>
            <td>14. Chênh lệch tiền thu, chi nhận ủy thác ứng vốn</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct14"/></td>
        </tr>
		<tr>
            <td>15. Chênh lệch tiền thu, chi nhận hợp vốn cho vay đầu tư</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct15"/></td>
        </tr>
		<tr>
            <td>16. Tiền chi trả cho người lao động</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct16"/></td>
        </tr>
		<tr>
            <td>17. Tiền thu các Khoản nợ đã được xử lý xóa, bù đắp bằng nguồn dự phòng rủi ro</td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct17"/></td>
        </tr>
		<tr>
            <td>18. Thuế TNDN đã nộp</td>
            <td class="align-c">18</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct18"/></td>
        </tr>
		<tr>
            <td>19. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">19</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct19"/></td>
        </tr>
		
        <tr>
            <b>
            <td><b>20. Tiền chi khác cho hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct20"/></b></td>
            </b>
        </tr>
         <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct30"/></b></td>
            </b>
        </tr>
        
        <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền chi mua sắm, xây dựng TSCĐ, BĐSĐT và các tài sản dài hạn khác</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2. Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐSĐT và các tài sản dài hạn khác</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>4. Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5. Tiền thu từ cổ tức và lợi nhuận được chia</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>Lưu chuyển tiền thuần từ hoạt động đầu tư</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct40"/></td>
        </tr>
        
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">41</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct41"/></td>
        </tr>
        <tr>
            <td>2. Tiền trả lại vốn góp cho các chủ sở hữu</td>
            <td class="align-c">42</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct42"/></td>
        </tr>
        <tr>
            <td>3. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">43</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct43"/></td>
        </tr>
        <tr>
            <td>Lưu chuyển tiền thuần từ hoạt động tài chính</td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct50"/></td>
        </tr>
        <tr>
            <td>Lưu chuyển tiền thuần trong kỳ (60 = 30+40+50)</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct60"/></td>
        </tr>
        <tr>
            <td>Tiền và tương đương tiền đầu kỳ</td>
            <td class="align-c">70</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct70"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</b></td>
            <td class="align-c"><b>71</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct71"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamNay/ct71"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct71"/></b></td></b>
        </tr>
        <tr>
            <b>
            <td><b>Tiền và tương đương tiền cuối kỳ (80 = 60 + 70 + 71)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamNay/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/Quy/NamTruoc/ct80"/></b></td>
            </b>
        </tr>
        
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	





<div class="ghichu"><b><i>Ghi chú:</i></b> Các chỉ tiêu không có số liệu thì Quỹ không phải trình bày nhưng không được đánh lại “Mã số” chỉ tiêu.</div>
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
