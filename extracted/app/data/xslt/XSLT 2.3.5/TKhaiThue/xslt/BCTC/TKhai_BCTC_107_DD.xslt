<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 107/2017/TT-BTC ngày 10/10/2017 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC133_B01a">
		 
		<xsl:with-param name="mauTKhai"   select="'B01/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BÁO CÁO TÌNH HÌNH TÀI CHÍNH -->

<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tính: đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
			<td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
            <td class="align-c"><b>Số đầu năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B </b></td>
            <td class="align-c"><b>C </b></td>
            <td class="align-c"><b>D </b></td>
            <td class="align-c"><b>1 </b></td>
            <td class="align-c"><b>2 </b></td> 
        </tr>
<!-- Tai san -->
        <tr>
			<td class="align-c"><b> </b></td>
            <td class="align-c"><b>TÀI SẢN</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">I</td>
            <td>Tiền</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct01"/></td>
        </tr>
        <tr>
            <td class="align-c">II</td>
            <td>Đầu tư tài chính ngắn hạn</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct05"/></td>
        </tr>
        <tr>
            <td class="align-c">III</td>
            <td>Các Khoản phải thu (10=11+12+13+14)</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct10"/></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Phải thu của khách hàng</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Trả trước cho người bán</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct12"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Phải thu nội bộ</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct13"/></td>
        </tr>
         <tr>
            <td class="align-c">4</td>
            <td>Các khoản phải thu khác</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct14"/></td>
        </tr>
         <tr>
            <td class="align-c">IV</td>
            <td>Hàng tồn kho</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct20"/></td>
        </tr>
        <tr>
            <td class="align-c">V</td>
            <td>Đầu tư tài chính dài hạn</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct25"/></td>
        </tr>
         <tr>
            <td class="align-c">VI</td>
            <td>Tài sản cố định (30=31+35)</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct30"/></td>
        </tr>
         <tr>
            <td class="align-c">1</td>
            <td>Tài sản cố định hữu hình (31=32+33)</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct31"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Nguyên giá</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct32"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct33"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Tài sản cố định vô hình (35=36+37)</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct35"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Nguyên giá</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct36"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Khấu hao và hao mòn lũy kế</td>
            <td class="align-c">37</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct37"/></td>
        </tr>
        <tr>
            <td class="align-c">VII</td>
            <td>Xây dựng cơ bản dở dang</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct40"/></td>
        </tr>
        <tr>
            <td class="align-c">VIII</td>
            <td>Tài sản khác</td>
            <td class="align-c">45</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct45"/></td>
        </tr>
        <tr>
			<td class="align-c"><b></b></td>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN <br/> (50=01+05+10+20+25+30+40+45) </b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct50"/></b></td>
        </tr>
        <!-- Nguon von -->
        <tr>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>NGUỒN VỐN</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">I</td>
            <td>Nợ phải trả</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct60"/></td>
        </tr>
         <tr>
            <td class="align-c">1</td>
            <td>Phải trả nhà cung cấp</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct61"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Các khoản nhận trước của khách hàng</td>
            <td class="align-c">62</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct62"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
             <td>Phải trả nội bộ</td>
            <td class="align-c">63</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct63"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Phải trả nợ vay</td>
            <td class="align-c">64</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct64"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct64"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct64"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>Tạm thu</td>
            <td class="align-c">65</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct65"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>Các quỹ đặc thù</td>
            <td class="align-c">66</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct66"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct66"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct66"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>Các khoản nhận trước chưa ghi thu</td>
            <td class="align-c">67</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct67"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct67"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct67"/></td>
        </tr>
        <tr>
            <td class="align-c">8</td>
            <td>Nợ phải trả khác</td>
            <td class="align-c">68</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct68"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct68"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct68"/></td>
        </tr>
        <tr>
            <td class="align-c">II</td>
            <td>Tài sản thuần (70=71+72+73+74)</td>
            <td class="align-c">70</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct70"/></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Nguồn vốn kinh doanh</td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct71"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Thặng dư/ thâm hụt lũy kế</td>
            <td class="align-c">72</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct72"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Các quỹ</td>
            <td class="align-c">73</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct73"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>Tài sản thuần khác</td>
            <td class="align-c">74</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct74"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct74"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct74"/></td>
        </tr>
        <tr>
			<td class="align-c"><b></b></td>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN <br/> (80=60+70)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct80"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct80"/></b></td>
        </tr>
    </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC107-24">   
</xsl:call-template>
<div class="ghichu">
<div><b>Ghi chú:</b></div>
<div>(1) Số liệu trong các chỉ tiêu có dấu (*) được ghi bằng số âm dưới hình thức ghi trong ngoặc đơn (...).</div>
<div>(2) Các chỉ tiêu không có số liệu thì không phải báo cáo nhưng không được đánh lại "Mã số".</div>
<div>(3) Doanh nghiệp có kỳ kế toán năm là năm dương lịch (X) thì "Số cuối năm" có thể ghi là  "31.12.X"; "Số đầu năm" có thể ghi là "01.01.X".</div>
<div>(4) Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
		

	</xsl:template>		
</xsl:stylesheet>
