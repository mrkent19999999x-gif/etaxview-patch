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
		<xsl:variable name="ghiChuPL3"   select="'(Theo phương pháp gián tiếp) (*)'"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC200_LCTTGT">
		<xsl:with-param name="mauTKhai"   select="'B03b - ĐTĐP'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL3"/>
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
            <td><b><i>1. Lợi nhuận trước thuế</i></b></td>
            <td class="align-c"><b><i>01</i></b></td>
            <td class="align-l"><i><b><xsl:value-of select="$pluc03/ThuyetMinh/ct01"/></b></i></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct01"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct01"/></i></b></td>
        </tr>
		<tr>
            <td><b>Điều chỉnh cho các Khoản</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        
        <tr>
            <td>2. Khấu hao TSCĐ, BĐSĐT</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Các Khoản dự phòng</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Lãi, lỗ chênh lệch tỷ giá hối đoái do đánh giá lại các Khoản Mục tiền tệ có gốc ngoại tệ</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Lãi, lỗ từ hoạt động đầu tư</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct05"/></td>
        </tr>
		<tr>
            <td><b>Những thay đổi về tài sản và nợ phải trả</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
		<tr>
            <td><b>Những thay đổi về tài sản</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>6. Tăng, giảm tiền cho vay</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Tăng, giảm lãi, phí phải thu</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct07"/></td>
        </tr>
        <tr>
            <b>
            <td><b><i>8. Tăng, giảm các Khoản phải thu vốn đưa đi ủy thác cho vay, tham gia hợp vốn cho vay</i></b></td>
            <td class="align-c"><b><i>08</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct08"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct08"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct08"/></i></b></td>
            </b>
        </tr>
        <tr>
            <td>9. Tăng, giảm các Khoản phải thu của khách hàng từ hoạt động đầu tư trực tiếp</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct09"/></td>
        </tr>
        <tr>
            <td>10. Tăng, giảm hàng tồn kho</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct10"/></td>
            <td class="number  align-r"><xsl:value-of select="$pluc03/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct10"/></td>
        </tr>
        <tr>
            <td>11. Tăng, giảm các tài sản khác</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct11"/></td>
        </tr>
		<tr>
            <td><b>Những thay đổi về nợ phải trả</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>12. Tăng, giảm tiền đi vay</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td>13. Tăng, giảm lãi vay phải trả</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td>14. Tăng, giảm tiền vốn nhận ủy thác cấp phát đầu tư</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td>15. Tăng, giảm tiền nhận vốn ủy thác hỗ trợ lãi suất</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct15"/></td>
        </tr>
        <tr>
            <td>16. Tăng, giảm tiền vốn nhận ủy thác cho vay đầu tư</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct16"/></td>
        </tr>
        <tr>
            <td>17. Tăng, giảm tiền nhận ủy thác ứng vốn</td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct17"/></td>
        </tr>
		 <tr>
            <td>18. Tăng, giảm tiền nhận hợp vốn cho vay đầu tư</td>
            <td class="align-c">18</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct18"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct18"/></td>
        </tr>
		<tr>
            <td>19. Tăng, giảm các Khoản phải trả người bán, người lao động, phải trả khác</td>
            <td class="align-c">19</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct19"/></td>
        </tr>
		<tr>
            <td>20. Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct20"/></td>
        </tr>
		<tr>
            <td>21. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td><b><i>22. Tiền chi khác cho hoạt động kinh doanh</i></b></td>
            <td class="align-c"><b><i>22</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct22"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct22"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct22"/></i></b></td>
        </tr>
          
        <tr>
            <td>Lưu chuyển tiền thuần từ hoạt động kinh doanh</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct30"/></td>
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
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2. Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐSĐT và các tài sản dài hạn khác</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>4. Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5. Tiền thu từ cổ tức và lợi nhuận được chia</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct35"/></td>
        </tr>
       
        <tr>
            <b>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động đầu tư</i></b></td>
            <td class="align-c"><b><i>40</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct40"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct40"/></i></b></td></b>
        </tr>
		<tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
		<tr>
            <b>
            <td><b><i>1. Tiền thu từ nhận vốn góp của chủ sở hữu</i></b></td>
            <td class="align-c"><b><i>41</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct41"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct41"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct41"/></i></b></td></b>
        </tr>
		<tr>
            <b>
            <td><b><i>2. Tiền trả lại vốn góp cho các chủ sở hữu</i></b></td>
            <td class="align-c"><b><i>42</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct42"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct42"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct42"/></i></b></td></b>
        </tr>
		
		<tr>
            <b>
            <td><b><i>3. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</i></b></td>
            <td class="align-c"><b><i>43</i></b></td>
            <td class="align-l"><b><i><xsl:value-of select="$pluc03/ThuyetMinh/ct43"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamNay/ct43"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc03/NamTruoc/ct43"/></i></b></td></b>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td><b>Lưu chuyển tiền thuần trong kỳ (60 = 30+40+50)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/NamNay/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc03/NamTruoc/ct60"/></b></td>
        </tr>
        
        <tr>
            <b>
            <td><b>Tiền và tương đương tiền đầu kỳ</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct70"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td><b>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</b></td>
            <td class="align-c"><b>71</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct71"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct71"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct71"/></b></td>
            </b>
        </tr>
		<tr>
            <b>
            <td><b>Tiền và tương đương tiền cuối kỳ (80 = 60+70+71)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct80"/></b></td>
            </b>
        </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	

<div><b><i>Ghi chú:</i></b> Các chỉ tiêu không có số liệu thì Quỹ không phải trình bày nhưng không được đánh lại “Mã số”chỉ tiêu.</div>
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>

</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
