<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 200/2014/TT-BTC Ngày 22/12/2014 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL3"   select="'(Theo phương pháp gián tiếp) (*)'"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 03a – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ (Theo phương pháp gián tiếp)'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL3"/>
	 </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
	
 <!--   <div class="align-c"><b>BÁO CÁO LƯU CHUYỂN TIỀN TỆ</b></div>	<br/>
    <div class="align-c"><b><i>(Theo phương pháp gián tiếp) (*)</i></b></div>	<br/>
   <div class="align-c"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></div>	<br/> -->
    <table class="tkhai_table">
           <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này </b></td>
        </tr>
       <tr>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr> 
        <tr>
            <td class="align-c">1</td>
            <td class="align-c">2 </td>
            <td class="align-c">3 </td>
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
            <td><b><i>1. Lợi nhuận trước thuế</i></b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamNay/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct01"/></b></td>
        </tr>
        <tr>
            <td><b><i>2. Điều chỉnh cho các khoản</i></b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>- Khấu hao TSCĐ và BĐSĐT</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>- Các khoản dự phòng</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>- Lãi, lỗ chênh lệch tỷ giá hối đoái do đánh giá lại các khoản mục tiền tệ có gốc ngoại tệ</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>- Lãi, lỗ từ hoạt động đầu tư</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>- Chi phí lãi vay</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>- Các khoản điều chỉnh khác</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct07"/></td>
        </tr>
        <tr>
            <b>
            <td><b><i>3. Lợi nhuận từ hoạt động kinh doanh trước thay đổi vốn  lưu động (08= 01 + 02 + 03 + 04 + 05 + 06 + 07)</i></b></td>
            <td class="align-c"><b>08</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct08"/></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamNay/ct08"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct08"/></i></b></td>
            </b>
        </tr>
        <tr>
            <td>- Tăng, giảm các khoản phải thu</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct09"/></td>
        </tr>
        <tr>
            <td>- Tăng, giảm hàng tồn kho</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct10"/></td>
            <td class="number  align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct10"/></td>
        </tr>
        <tr>
            <td> - Tăng, giảm các khoản phải trả (Không kể lãi vay phải trả, thuế thu nhập doanh nghiệp phải nộp) </td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td>- Tăng, giảm chi phí trả trước</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td>- Tăng, giảm chứng khoán kinh doanh</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td>- Tiền lãi vay đã trả</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td>- Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct15"/></td>
        </tr>
        <tr>
            <td>- Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct16"/></td>
        </tr>
            <tr>
            <td>- Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct17"/></td>
        </tr>
        <tr>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động kinh doanh (20 = 08 + 09 + 10 + … + 17)</i></b></td>
            <td class="align-l"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamNay/ct20"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct20"/></i></b></td>
        </tr>
          <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1.Tiền chi để mua sắm, xây dựng TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td>3.Tiền chi cho vay, mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td>4.Tiền thu hồi cho vay, bán lại các công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct26"/></td>
        </tr>
        <tr>
            <td>7.Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct27"/></td>
        </tr>
        <tr>
            <b>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động đầu tư (30 = 21 + 22 + 23 + 24 + 25 + 26 + 27)</i></b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamNay/ct30"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct30"/></i></b></td>
            </b>
        </tr>
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1.Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>3.Tiền thu từ đi vay</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>4.Tiền trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5.Tiền trả nợ gốc thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct36"/></td>
        </tr>
        <tr>
            <b>
            <td><b><i>Lưu chuyển tiền thuần từ hoạt động tài chính (40 = 31 + 32 + 33 + 34 + 35 + 36)</i></b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamNay/ct40"/></i></b></td>
            <td class="align-r"><b class="number"><i><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct40"/></i></b></td></b>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td>Tiền và tương đương tiền đầu kỳ</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc02/LuyKeNamNay/ct60)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pluc02/LuyKeNamTruoc/ct60)"/></td>
        </tr>
        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct61"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct70"/></b></td>
            </b>
        </tr>

 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC200-GND">   
</xsl:call-template>
<br/>
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/donViCCapDVuKToan"/></b></div><br/>		<br/>
		
<div><b><i>Ghi chú: </i></b> <br/>(Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề, tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.<br/>
(*) Nội dung các chỉ tiêu và mã số của báo cáo này như các chỉ tiêu của Báo cáo lưu chuyển tiền tệ năm - Mẫu B03 –DN.<br/>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
