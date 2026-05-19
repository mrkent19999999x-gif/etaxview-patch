<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 49/2014/TT-NHNN ngày 31/12/2014'" />
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp trực tiếp) (*)'"/>
<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />
	<xsl:call-template name="tkhaiHeader-plucBCTC49">
		<xsl:with-param name="mauTKhai"   select="'B04/TCTD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ (NĂM) '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	  </xsl:call-template>		
	<div class="ndungtkhai_div">
	<div class="content">

    <div class="align-r"><i>Đơn vị tiền: triệu đồng VN</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
   <tr>
			<td class="align-c">(1)</td>
			<td class="align-c">(2)</td>
			<td class="align-c">(3)</td>
			<td class="align-c">(4)</td>
			<td class="align-c">(5)</td>
		</tr>

        <tr>
            <b>
            <td colspan="2"><b>Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            <td></td>
            <td></td>
            <td></td>
            </b>
        </tr>
        <tr>
<td class="align-c">01</td>
            <td>Thu nhập lãi và các khoản thu nhập tương tự nhận được</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct01_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct01_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">02</td>
            <td>Chi phí lãi và các chi phí tương tự đã trả (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct02_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct02_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">03</td>
            <td>Thu nhập từ hoạt động dịch vụ nhận được</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct03_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct03_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">04</td>
            <td>Chênh lệch số tiền thực thu/thực chi từ hoạt động kinh doanh (ngoại tệ, vàng bạc, chứng khoán)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct04_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct04_nNgoai"/></td>
        </tr>
        <tr>
  <td class="align-c">05</td>
            <td>Thu nhập khác</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct05_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct05_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">06</td>
            <td>Tiền thu các khoản nợ đã được xử lý xoá, bù đắp bằng nguồn rủi ro</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct06_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct06_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">07</td>
            <td>Tiền chi trả cho nhân viên và hoạt động quản lý, công vụ (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct07_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct07_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">08</td>
            <td>Tiền thuế thu nhập thực nộp trong kỳ (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct08_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct08_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct08_nNgoai"/></td>
        </tr>
        <tr>
            <td colspan="2"><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh trước những thay đổi về tài sản và vốn lưu động</b> </td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/lcThuan_KD_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/lcThuan_KD_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/lcThuan_KD_nNgoai"/></b></td>
        </tr>
        <tr><b>
            <td colspan="2"><b>Những thay đổi về tài sản hoạt động</b></td>
            <td></td>
            <td></td>
            <td></td>
            </b>
        </tr>
        <tr>
                        <td class="align-c">09</td>
            <td>(Tăng)/ Giảm các khoản tiền, vàng gửi và cho vay các TCTD khác</td>

            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct09_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct09_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct09_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c">10</td>
            <td>(Tăng)/ Giảm các khoản về kinh doanh chứng khoán </td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct10_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct10_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct10_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">11</td>
            <td>(Tăng)/ Giảm các công cụ tài chính phái sinh và các tài sản tài chính khác</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct11_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct11_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct11_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">12</td>
            <td>(Tăng)/ Giảm các khoản cho vay khách hàng</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct12_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct12_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct12_nNgoai"/></td>
        </tr>
        <tr>  <td class="align-c">13</td>
            <td>Giảm nguồn dự phòng để bù đắp tổn thất các khoản</td>
          
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct13_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct13_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct13_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">14</td>
            <td>(Tăng)/ Giảm khác về tài sản hoạt động</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct14_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct14_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct14_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td colspan="2"><b>Những thay đổi về công nợ hoạt động</b></td>
            <td></td>
            <td></td>
            <td></td>
            </b>
        </tr>
        <tr><td class="align-c">15</td>
            <td>Tăng/ (Giảm) các khoản nợ chính phủ và NHNN</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct15_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct15_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct15_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">16</td>
            <td>Tăng/ (Giảm) các khoản tiền gửi, tiền vay các tổ chức tín dụng</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct16_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct16_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct16_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">17</td>
            <td>Tăng/ (Giảm) tiền gửi của khách hàng (bao gồm cả Kho bạc Nhà nước)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct17_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct17_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct17_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">18</td>
            <td>Tăng/ (Giảm) phát hành giấy tờ có giá (ngoại trừ giấy tờ có giá phát hành được tính vào hoạt động tài chính)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct18_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct18_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct18_nNgoai"/></td>
        </tr>
        <tr>  <td class="align-c">19</td>
            <td>Tăng/ (Giảm) vốn tài trợ, uỷ thác đầu tư, cho vay mà TCTD chịu rủi ro</td>
          
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct19_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct19_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct19_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">20</td>
            <td>Tăng/ (Giảm) các công cụ tài chính phái sinh và các khoản nợ tài chính khác</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct20_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct20_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct20_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c">21</td>
            <td>Tăng/ (Giảm) khác về công nợ hoạt động</td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct21_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct21_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c">22</td>
            <td>Chi từ các quỹ của TCTD (*)</td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct22_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct22_nNgoai"/></td>
        </tr>
        <tr>
            <b><td class="align-c"><b>I</b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh (I = 01 + 02 + 03 +04 + 05 + 06 + 07 + 08 + 09 + 10 + 11 + 12 + 13 + 14 + 15 + 16 + 17 + 18 + 19 + 20 + 21 + 22) </b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctI_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ctI_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ctI_nNgoai"/></b></td></b>
        </tr>
         <tr>
            <b>
            <td colspan="2"><b>Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td></td>
            <td></td>
            <td></td>
            </b>
        </tr>
        <tr><td class="align-c">01</td>
            <td>Mua sắm tài sản cố định (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_1_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">02</td>
            <td>Tiền thu từ thanh lý, nhượng bán TSCĐ</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_2_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">03</td>
            <td>Tiền chi từ thanh lý, nhượng bán TSCĐ (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_3_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">04</td>
            <td>Mua sắm bất động sản đầu tư (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_4_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">05</td>
            <td>Tiền thu từ bán, thanh lý bất động sản đầu tư</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_5_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">06</td>
            <td>Tiền chi ra do bán, thanh lý bất động sản đầu tư (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_6_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_6_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_6_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c">07</td>
            <td>Tiền chi đầu tư, góp vốn vào các đơn vị khác (Chi đầu tư mua công ty con, góp vốn liên doanh, liên kết, và các khoản đầu tư dài hạn khác) (*)</td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_7_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_7_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_7_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">08</td>
            <td>Tiền thu đầu tư, góp vốn vào các đơn vị khác (Thu bán, thanh lý công ty con, góp vốn liên doanh, liên kết, các khoản đầu tư dài hạn khác)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_8_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_8_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_8_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">09</td>
            <td>Tiền thu cổ tức và lợi nhuận được chia từ các khoản đầu tư, góp vốn dài hạn</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctII_9_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctII_9_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_9_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c"><b>II</b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư (II = 01 + 02 + 03 + 04 + 05 + 06 + 07 + 08 + 09)</b></td>
           
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctII_tMinh_PLLCTT"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ctII_nNay_PLLCTT"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ctII_nNgoai_PLLCTT"/></b></td>
        </tr>
        <tr>
            <b>
            <td colspan="2"><b>Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td></td>
            <td></td>
            <td></td>
            </b>
        </tr>
        <tr> <td class="align-c">01</td>
            <td>Tăng vốn cổ phần từ góp vốn và/hoặc phát hành cổ phiếu</td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_1_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_1_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_1_nNgoai"/></td>
        </tr>
        <tr> <td class="align-c">02</td>
            <td>Tiền thu từ phát hành giấy tờ có giá dài hạn có đủ điều kiện tính vào vốn tự có và các khoản vốn vay dài hạn khác</td>
           
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_2_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_2_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_2_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">03</td>
            <td>Tiền chi thanh toán giấy tờ có giá dài hạn có đủ điều kiện tính vào vốn tự có và các khoản vốn vay dài hạn khác (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_3_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_3_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_3_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">04</td>
            <td>Cổ tức trả cho cổ đông, lợi nhuận đã chia (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_4_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_4_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_4_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">05</td>
            <td>Tiền chi ra mua cổ phiếu ngân quỹ (*)</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_5_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_5_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_5_nNgoai"/></td>
        </tr>
        <tr><td class="align-c">06</td>
            <td>Tiền thu được do bán cổ phiếu ngân quỹ</td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_6_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctIII_6_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_6_nNgoai"/></td>
        </tr>
        <tr><td class="align-c"><b>III</b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính (III = 01 + 02 + 03 + 04 + 05 + 06)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctIII_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ctIII_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ctIII_nNgoai"/></b></td>
        </tr>
        <tr><td class="align-c"><b>IV</b></td>
            <td><b>Lưu chuyển tiền thuần trong kỳ (IV = (I + II + III) </b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctIV_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ctIV_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ctIV_nNgoai"/></b></td>
        </tr>
        <tr><b><td class="align-c"><b>V</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm đầu kỳ</b></td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctV_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctV_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctV_nNgoai"/></td></b>
        </tr>
        <tr><b><td class="align-c"><b>VI</b></td>
            <td><b>Điều chỉnh ảnh hưởng của thay đổi tỷ giá</b></td>
            
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ctVI_tMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ctVI_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ctVI_nNgoai"/></td></b>
        </tr>
        <tr>
            <b>
<td class="align-c"><b>VII</b></td>
            <td><b>Tiền và các khoản tương đương tiền tại thời điểm cuối kỳ (VII = IV + V + VI)</b></td>
            
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ctVII_tMinh"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ctVII_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ctVII_nNgoai"/></b></td></b>
        </tr>
</table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter-BCTC49">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>

</xsl:template>		
</xsl:stylesheet>
