<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 334/2016/TT-BTC ngày 27/12/2016 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
				<xsl:call-template name="tkhaiHeader-plucBCTC334">
		<xsl:with-param name="mauTKhai"   select="'B02a - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDR">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHDR' />	
	

	  
	<div class="ndungtkhai_div">
	<div class="content">

<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
<td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
<td class="align-c" colspan="2"><b>Lũy kế từ đầu năm đến cuối quý này</b></td>
        </tr>
        
        <tr>
<td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
	</tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4</b></td>
            <td class="align-c"><b>5</b></td>
            <td class="align-c"><b>6</b></td>
            <td class="align-c"><b>7</b></td>
        </tr>
              <tr>
						<td><b>A.Lãi, lỗ</b></td>
							</tr>
       <tr>
						<td><b>I. DOANH THU HOẠT ĐỘNG</b></td>
							</tr>
        <tr>
            <td>1.1. Lãi từ các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL) (01=01.1+01.2+01.3)</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct01"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct01"/></td>
        </tr>
            <tr>
            <td>a. Lãi bán các tài sản tài chính FVTPL</td>
            <td class="align-c">01.1</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct01_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct01_1"/></td>
        </tr>
                <tr>
            <td>b. Chênh lệch tăng về đánh giá lại các TSTC FVTPL</td>
            <td class="align-c">01.2</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct01_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct01_2"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct01_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct01_2"/></td>
        </tr>
                <tr>
            <td>c. Cổ tức, tiền lãi phát sinh từ tài sản tài chính FVTPL</td>
            <td class="align-c">01.3</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct01_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct01_3"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct01_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct01_3"/></td>
        </tr>
                <tr>
            <td>11.2. Lãi từ các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct02"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct02"/></td>
        </tr>

        <tr>
            <td>1.3. Lãi từ các khoản cho vay và phải thu</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct03"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct03"/></td>
        </tr>
        
        <tr>
            <td>1.4. Lãi từ tài sản tài chính sẵn sàng để bán (AFS)</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct04"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct04"/></td>
        </tr>
                <tr>
            <td>1.5. Lãi từ các công cụ phái sinh phòng ngừa rủi ro</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct05"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct05"/></td>
        </tr>

        <tr>
            <td>1.6. Doanh thu nghiệp vụ môi giới chứng khoán</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct06"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct06"/></td>
        </tr>
                <tr>
            <td>1.7. Doanh thu nghiệp vụ bảo lãnh, đại lý phát hành chứng khoán</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct07"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct07"/></td>
        </tr>

        <tr>
            <td>1.8. Doanh thu nghiệp vụ tư vấn đầu tư chứng khoán</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct08"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct08"/></td>
        </tr>
                <tr>
            <td>1.9. Doanh thu nghiệp vụ lưu ký chứng khoán</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct09"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct09"/></td>
        </tr>

        <tr>
            <td>1.10. Doanh thu hoạt động tư vấn tài chính</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct10"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct10"/></td>
        </tr>
                <tr>
            <td>1.11. Thu nhập hoạt động khác</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct11"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct11"/></td>
        </tr>

                <tr>
            <td><b>Cộng doanh thu hoạt động (20 = 01→11)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct20"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct20"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct20"/></b></td>
        </tr>
<tr>
<td><b>II. CHI PHÍ HOẠT ĐỘNG</b></td>
</tr>
        <tr>
            <td>2.1. Lỗ các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL) (21=21.1+21.2+21.3)</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct21"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct21"/></td>
        </tr>
                <tr>
            <td>a. Lỗ bán các tài sản tài chính FVTPL</td>
            <td class="align-c">21.1</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct21_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct21_1"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct21_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct21_1"/></td>
        </tr>

        <tr>
            <td>b. Chênh lệch giảm đánh giá lại các TSTC FVTPL</td>
            <td class="align-c">21.2</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct21_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct21_2"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct21_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct21_2"/></td>
        </tr>
                <tr>
            <td>c. Chi phí giao dịch mua các tài sản tài chính FVTPL</td>
            <td class="align-c">21.3</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct21_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct21_3"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct21_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct21_3"/></td>
        </tr>
                <tr>
            <td>2.2. Lỗ các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct22"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct22"/></td>
        </tr>

        <tr>
            <td>2.3. Lỗ và ghi nhận chênh lệch đánh giá theo giá trị hợp lý tài sản tài chính sẵn sàng để bán (AFS) khi phân loại lại</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct23"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct23"/></td>
        </tr>
                <tr>
            <td>2.4. Chi phí dự phòng tài sản tài chính, xử lý tổn thất các khoản phải thu khó đòi và lỗ suy giảm tài sản tài chính và chi phí đi vay của các khoản cho vay</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct24"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct24"/></td>
        </tr>   
          <tr>
            <td>2.5. Lỗ từ các tài sản tài chính phái sinh phòng ngừa rủi ro</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct25"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct25"/></td>
        </tr>
                  <tr>
            <td>2.6. Chi phí hoạt động tự doanh</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct26"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct26"/></td>
        </tr>
                  <tr>
            <td>2.7. Chi phí nghiệp vụ môi giới chứng khoán</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct27"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct27"/></td>
        </tr>
                  <tr>
            <td>2.8. Chi phí nghiệp vụ bảo lãnh, đại lý phát hành chứng khoán</td>
            <td class="align-c">28</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct28"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct28"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct28"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct28"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct28"/></td>
        </tr>
        
          <tr>
            <td>2.9. Chi phí nghiệp vụ tư vấn đầu tư chứng khoán</td>
            <td class="align-c">29</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct29"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct29"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct29"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct29"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct29"/></td>
        </tr>
        
          <tr>
            <td>2.10. Chi phí nghiệp vụ lưu ký chứng khoán</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct30"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct30"/></td>
        </tr>
                  <tr>
            <td>2.11. Chi phí hoạt động tư vấn tài chính</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct31"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct31"/></td>
        </tr>

          <tr>
            <td>2.12. Chi phí các dịch vụ khác</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct32"/></td>
               <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct32"/></td>
        </tr>
        
          <tr>
            <td><b>Cộng chi phí hoạt động (40 = 21→32)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct40"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct40"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct40"/></b></td>
        </tr>
        <tr>
				<td><b>III. DOANH THU HOẠT ĐỘNG TÀI CHÍNH</b></td>
								</tr>
          <tr>
            <td>3.1. Chênh lệch lãi tỷ giá hối đoái đã và chưa thực hiện</td>
            <td class="align-c">41</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct41"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct41"/></td>
        </tr>
        
          <tr>
            <td>3.2. Doanh thu, dự thu cổ tức, lãi tiền gửi ngân hàng không cố định</td>
            <td class="align-c">42</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct42"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct42"/></td>
        </tr>
                  <tr>
            <td>3.3. Lãi bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
            <td class="align-c">43</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct43"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct43"/></td>
        </tr>

          <tr>
            <td>3.4. Doanh thu khác về đầu tư</td>
            <td class="align-c">44</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct44"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct44"/></td>
        </tr>
         <tr>
            <td><b>Cộng doanh thu hoạt động tài chính (50 = 41→44)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct50"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct50"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct50"/></b></td>
        </tr>
        <tr>
									<td><b>IV. CHI PHÍ TÀI CHÍNH</b></td>
								</tr>
          <tr>
            <td>4.1. Chênh lệch lỗ tỷ giá hối đoái đã và chưa thực hiện</td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct51"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct51"/></td>
        </tr>
                  <tr>
            <td>4.2. Chi phí lãi vay</td>
            <td class="align-c">52</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct52"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct52"/></td>
        </tr>

          <tr>
            <td>4.3. Lỗ bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
            <td class="align-c">53</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct53"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct53"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct53"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct53"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct53"/></td>
        </tr>
        
          <tr>
            <td>4.4. Chi phí dự phòng suy giảm giá trị các khoản đầu tư tài chính dài hạn</td>
            <td class="align-c">54</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct54"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct54"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct54"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct54"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct54"/></td>
        </tr>
        
          <tr>
            <td>4.5. Chi phí tài chính khác</td>
            <td class="align-c">55</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct55"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct55"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct55"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct55"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct55"/></td>
        </tr>
         <tr>
            <td><b>Cộng chi phí tài chính (60 = 51→55)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct60"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct60"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct60"/></b></td>
        </tr>
                 <tr>
            <td><b>V. CHI PHÍ BÁN HÀNG</b></td>
            <td class="align-c"><b>61</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct61"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct61"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct61"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct61"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct61"/></b></td>
        </tr>
                 <tr>
            <td><b>VI. CHI PHÍ QUẢN LÝ CÔNG TY CHỨNG KHOÁN</b></td>
            <td class="align-c"><b>62</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct62"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct62"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct62"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct62"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct62"/></b></td>
        </tr>
                 <tr>
            <td><b>VII. KẾT QUẢ HOẠT ĐỘNG (70=20+50-40-60-61-62)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct70"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct70"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct70"/></b></td>
        </tr>
        <tr>
								<td><b>VIII. THU NHẬP KHÁC VÀ CHI PHÍ KHÁC</b></td>
								</tr>
                  <tr>
            <td>8.1. Thu nhập khác</td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct71"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct71"/></td>
        </tr>

          <tr>
            <td>8.2. Chi phí khác</td>
            <td class="align-c">72</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct72"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct72"/></td>
        </tr>
         <tr>
            <td><b>Cộng kết quả hoạt động khác (80 = 71 - 72)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct80"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct80"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct80"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct80"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct80"/></b></td>
        </tr>
         <tr>
            <td><b>IX. TỔNG LỢI NHUẬN KẾ TOÁN TRƯỚC THUẾ (90 = 70 + 80)</b></td>
            <td class="align-c"><b>90</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct90"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct90"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct90"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct90"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct90"/></b></td>
        </tr>
          <tr>
            <td>9.1. Lợi nhuận đã thực hiện</td>
            <td class="align-c">91</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct91"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct91"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct91"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct91"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct91"/></td>
        </tr>
                  <tr>
            <td>9.2. Lợi nhuận chưa thực hiện</td>
            <td class="align-c">92</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct92"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct92"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct92"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct92"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct92"/></td>
        </tr>
         <tr>
            <td><b>X. CHI PHÍ THUẾ TNDN (100=100.1+100.2)</b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct100"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct100"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct100"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct100"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct100"/></b></td>
        </tr>

          <tr>
            <td>10.1. Chi phí thuế TNDN hiện hành</td>
            <td class="align-c">100.1</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct100_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct100_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct100_1"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct100_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct100_1"/></td>
        </tr>
        
          <tr>
            <td>10.2. Chi phí thuế TNDN hoãn lại</td>
            <td class="align-c">100.1</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct100_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct100_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct100_2"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct100_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct100_2"/></td>
        </tr>
         <tr>
            <td><b>XI. LỢI NHUẬN KẾ TOÁN SAU THUẾ TNDN (200 = 90 - 100)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct200"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct200"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct200"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct200"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct200"/></b></td>
        </tr>
        
            <tr>
            <td><b>XII. THU NHẬP (LỖ) TOÀN DIỆN KHÁC SAU THUẾ TNDN</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct300"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct300"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct300"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct300"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct300"/></b></td>
        </tr>    
                  <tr>
            <td>12.1. Lãi/(Lỗ) từ đánh giá lại các tài sản tài chính sẵn sàng để bán</td>
            <td class="align-c">301</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct301"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct301"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct301"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct301"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct301"/></td>
        </tr>
        
          <tr>
            <td>12.2. Lãi/(lỗ) chênh lệch tỷ giá của hoạt động tại nước ngoài</td>
            <td class="align-c">302</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct302"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct302"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct302"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct302"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct302"/></td>
        </tr>
        
              <tr>
            <td>12.3. Lãi, lỗ đánh giá lại tài sản cố định theo mô hình giá trị hợp lý</td>
            <td class="align-c">303</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct303"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct303"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct303"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct303"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct303"/></td>
        </tr>
                  <tr>
            <td>12.4. Lãi, lỗ toàn diện khác</td>
            <td class="align-c">304</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct304"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct304"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct304"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct304"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct304"/></td>
        </tr>    
         <tr>
            <td><b>Tổng thu nhập toàn diện</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct400"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamNay/ct400"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/Quy/NamTruoc/ct400"/></b></td>
                        <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamNay/ct400"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct400"/></b></td>
        </tr>
        <tr>
					        <td><b>XIII. THU NHẬP THUẦN TRÊN CỔ PHIẾU PHỔ THÔNG</b></td>
								</tr>

          <tr>
            <td>13.1. Lãi cơ bản trên cổ phiếu (Đồng/1 cổ phiếu)</td>
            <td class="align-c">501</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct501"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct501"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct501"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct501"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct501"/></td>
        </tr>     
        
                 <tr>
            <td>13.2. Thu nhập pha loãng trên cổ phiếu (Đồng/1 cổ phiếu)</td>
            <td class="align-c">502</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct502"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamNay/ct502"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/Quy/NamTruoc/ct502"/></td>
                        <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamNay/ct502"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/LuyKe/NamTruoc/ct502"/></td>
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
