<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 334/2016/TT-BTC ngày 27/12/2016 của Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp trực tiếp) (*)'"/>
			<xsl:call-template name="tkhaiHeader-plucBCTC334">
		<xsl:with-param name="mauTKhai"   select="'B03a - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	

	 
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
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
        </tr>
        <tr>
            <td>1. Tiền đã chi mua các tài sản tài chính</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Tiền đã thu từ bán các tài sản tài chính</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi nộp Quỹ Hỗ trợ thanh toán</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Cổ tức đã nhận</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Tiền lãi đã thu</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>6. Tiền chi trả lãi vay cho hoạt động của CTCK</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Tiền chi trả Tổ chức cung cấp dịch vụ cho CTCK</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct07"/></td>
        </tr>
                <tr>
            <td>8. Tiền chi trả cho người lao động</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct08"/></td>
        </tr>
                <tr>
            <td>9. Tiền chi nộp thuế liên quan đến hoạt động CTCK</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct09"/></td>
        </tr>
                <tr>
            <td>10. Tiền chi thanh toán các chi phí cho hoạt động mua, bán các tài sản tài chính</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct10"/></td>
        </tr>
                <tr>
            <td>11. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct11"/></td>
        </tr>
                  <tr>
            <td>12. Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct12"/></td>
        </tr>      

  <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh (20=01+02+…+11+12)</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct20"/></b></td>

        </tr>

        
        <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>

        </tr>
        <tr>
            <td>1. Tiền chi để mua sắm, xây dựng TSCĐ, BĐSĐT và các tài sản khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td>2. Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐSĐT và các tài sản khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi đầu tư góp vốn vào công ty con, công ty liên doanh, liên kết và đầu tư khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td>4. Tiền thu hồi đầu tư góp vốn vào công ty con, công ty liên doanh, liên kết và đầu tư khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td>5. Tiền thu về cổ tức và lợi nhuận được chia từ các khoản đầu tư tài chính dài hạn</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct25"/></td>
        </tr>
        
     
        <tr>

            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư (30=21+…+25) </b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct30"/></b></td>

        </tr>
        
        
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>

        </tr>
        <tr>
            <td>1. Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2. Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct32"/></td>
        </tr>


           <tr>
            <td>3. Tiền vay gốc (33=33.1+33.2)</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33"/></td>
        </tr>
                <tr>
            <td>3.1. Tiền vay Quỹ Hỗ trợ thanh toán</td>
            <td class="align-c">33.1</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33_1"/></td>
        </tr>     
        <tr>
            <td>3.2. Tiền vay khác</td>
            <td class="align-c">33.2</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33_2"/></td>
        </tr>
             <tr>
            <td>4. Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34"/></td>
        </tr>
              <tr>
            <td>4.1. Tiền chi trả gốc vay Quỹ Hỗ trợ thanh toán</td>
            <td class="align-c">34.1</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34_1"/></td>
        </tr>
              <tr>
            <td>4.2. Tiền chi trả gốc vay tài sản tài chính</td>
            <td class="align-c">34.2</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34_2"/></td>
        </tr> 
        
                     <tr>
            <td>4.3. Tiền chi trả gốc vay khác</td>
            <td class="align-c">34.3</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34_3"/></td>
        </tr> 
         
        
        <tr>
            <td>5. Tiền chi trả nợ gốc thuê tài chính</td>
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
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính (40=31+32+33+34+35+36)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct40"/></b></td></b>
        </tr>
        <tr>

            <td><b>IV. Tăng/giảm tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct50"/></b></td>

        </tr>
        <tr>
            <td><b>V. Tiền và các khoản tương đương tiền đầu kỳ (60=61+62+63)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct60"/></b></td>
        </tr>
        <tr>
            <td>Tiền</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct61"/></td>
        </tr>
                <tr>
            <td>Các khoản tương đương tiền</td>
            <td class="align-c">62</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct62"/></td>
        </tr>
                <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">63</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct63"/></td>
        </tr>
        <tr>

            <td><b>VI. Tiền và các khoản tương đương tiền cuối kỳ (70 = 50 + 60)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct70"/></b></td>
        </tr>
                <tr>
            <td>Tiền</td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct71"/></td>
        </tr>
                        <tr>
            <td>Các khoản tương đương tiền</td>
            <td class="align-c">72</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct72"/></td>
        </tr>
                        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">73</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct73"/></td>
        </tr>
        
        <tr>
				<td colspan="5"><b>PHẦN LƯU CHUYỂN TIỀN TỆ HOẠT ĐỘNG MÔI GIỚI, ỦY THÁC CỦA KHÁCH HÀNG</b></td>
								</tr>
	   <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>
        
        <tr>
						<td><b>I. Lưu chuyển tiền hoạt động môi giới, ủy thác của khách hàng</b></td>
								</tr>							
	        <tr>
            <td>1. Tiền thu bán chứng khoán môi giới cho khách hàng</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct01"/></td>
        </tr>
   	        <tr>
            <td>2. Tiền chi mua chứng khoán môi giới cho khách hàng</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct02"/></td>
        </tr>
        	        <tr>
            <td>3. Tiền thu bán chứng khoán ủy thác của khách hàng </td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct03"/></td>
        </tr>
            <tr>
            <td>4. Tiền chi mua chứng khoán ủy thác của khách hàng </td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct04"/></td>
        </tr>
            <tr>
            <td>5. Thu vay Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct05"/></td>
        </tr>
        
    <tr>
            <td>6. Chi trả vay Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct06"/></td>
        </tr>
            <tr>
            <td>7. Nhận tiền gửi để thanh toán giao dịch chứng khoán của khách hàng</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct07"/></td>
        </tr>
        
    <tr>
            <td>8. Nhận tiền gửi của Nhà đầu tư cho hoạt động ủy thác đầu tư của khách hàng</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct08"/></td>
        </tr>
        	        <tr>
            <td>9. Chi trả phí lưu ký chứng khoán của khách hàng </td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct09"/></td>
        </tr>
        
	        <tr>
            <td>10. Thu lỗi giao dịch chứng khoán </td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct10"/></td>
        </tr>
        	        <tr>
            <td>11. Chi lỗi giao dịch chứng khoán </td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct11"/></td>
        </tr>
        
	        <tr>
            <td>12. Tiền thu của Tổ chức phát hành chứng khoán </td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct12"/></td>
        </tr>
        	        <tr>
            <td>13. Tiền chi trả Tổ chức phát hành chứng khoán </td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct13"/></td>
        </tr>
            <tr>
            <td><b>Tăng/giảm tiền thuần trong kỳ  (20=01+02+…+12+13)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamNay/ChiTieuNgoaiBang/ct20)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamTruoc/ChiTieuNgoaiBang/ct20)"/></b></td>
        </tr>
              <tr>
            <td><b>II. Tiền và các khoản tương đương tiền đầu kỳ của khách hàng (30=30=31+36+37)</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamNay/ChiTieuNgoaiBang/ct30)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamTruoc/ChiTieuNgoaiBang/ct30)"/></b></td>
        </tr>   
	        <tr>
            <td>Tiền gửi ngân hàng đầu kỳ: (31=32+33+34+35)</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct31"/></td>
        </tr>
        	        <tr>
            <td>- Tiền gửi của Nhà đầu tư về giao dịch chứng khoán theo phương thức CTCK quản lý <br/>                                                                                                Trong đó có kỳ hạn</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct32"/></td>
        </tr>
        
	        <tr>
            <td>- Tiền gửi bù trừ và thanh toán giao dịch chứng khoán </td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct33"/></td>
        </tr>
        	        <tr>
            <td>- Tiền gửi tổng hợp giao dịch chứng khoán cho khách hàng</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct34"/></td>
        </tr>

	        <tr>
            <td>- Tiền gửi của tổ chức phát hành
Trong đó có kỳ hạn <br/>
</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct35"/></td>
        </tr>
        	        <tr>
            <td>Các khoản tương đương tiền </td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct36"/></td>
        </tr>

	        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">37</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct37"/></td>
        </tr>
            <tr>
            <td><b>III. Tiền và các khoản tương đương tiền cuối kỳ của khách hàng (40 = 20 + 30)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamNay/ChiTieuNgoaiBang/ct40)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc02/NamTruoc/ChiTieuNgoaiBang/ct40)"/></b></td>
        </tr>
	        <tr>
            <td>Tiền gửi ngân hàng cuối kỳ: </td>
            <td class="align-c">41</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct41"/></td>
        </tr>
        	        <tr>
            <td>- Tiền gửi của Nhà đầu tư về giao dịch chứng khoán theo phương thức CTCK quản lý<br/>
Trong đó có kỳ hạn
</td>
            <td class="align-c">42</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct42"/></td>
        </tr>
        
	        <tr>
            <td>- Tiền gửi tổng hợp giao dịch chứng khoán cho khách hàng</td>
            <td class="align-c">43</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct43"/></td>
        </tr>
        	        <tr>
            <td>- Tiền gửi bù trừ và thanh toán giao dịch chứng khoán </td>
            <td class="align-c">44</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct44"/></td>
        </tr>

	        <tr>
            <td>- Tiền gửi của tổ chức phát hành<br/>
Trong đó có kỳ hạn
</td>
            <td class="align-c">45</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct45"/></td>
        </tr>
        	        <tr>
            <td>Các khoản tương đương tiền </td>
            <td class="align-c">46</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct46"/></td>
        </tr>     
           	        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">47</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ChiTieuNgoaiBang/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ChiTieuNgoaiBang/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ChiTieuNgoaiBang/ct47"/></td>
        </tr>       
        							
 </table>
 </div>	
 </div>
    <br/><br/>
    
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC334">   
</xsl:call-template>

<div id="sigDiv"></div>
</td>
</tr>


</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
