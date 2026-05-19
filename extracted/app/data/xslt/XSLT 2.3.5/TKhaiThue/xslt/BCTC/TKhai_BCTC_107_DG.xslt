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
		 
		<xsl:with-param name="mauTKhai"   select="'B05/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho đơn vị lập báo cáo tài chính theo mẫu đơn giản)'"/>
	  </xsl:call-template>
		  
<!-- BÁO CÁO TÀI CHÍNH -->

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
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>TÀI SẢN</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Tiền</b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct01"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
             <td><b>Các khoản phải thu</b></td>
            <td class="align-c"><b>03</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct03"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct03"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct03"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Hàng tồn kho</b></td>
            <td class="align-c"><b>05</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct05"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct05"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct05"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Tài sản cố định</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct10"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Tài sản cố định hữu hình</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Nguyên giá</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct12"/></td>
        </tr>
         <tr>
            <td class="align-c"></td>
            <td>- Hao mòn lũy kế</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct13"/></td>
        </tr>
         <tr>
            <td class="align-c">2</td>
            <td>Tài sản cố định vô hình</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct15"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>- Nguyên giá</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct16"/></td>
        </tr>
         <tr>
            <td class="align-c"></td>
            <td>- Hao mòn lũy kế</td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct17"/></td>
        </tr>
         <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Tài sản khác</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct20"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN <br/> (30=01+03+05+10+20) </b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct30"/></b></td>
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
            <td class="align-c"><b>I</b></td>
            <td><b>Nợ phải trả</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct40"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Tài sản thuần</b></td>
            <td class="align-c"><b>45</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct45"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct45"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct45"/></b></td>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Thặng dư/ thâm hụt lũy kế</td>
            <td class="align-c">46</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct46"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Các quỹ</td>
            <td class="align-c">47</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct47"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Tài sản thuần khác</td>
            <td class="align-c">48</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct48"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct48"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct48"/></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN <br/> (50=40+45)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct500"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoCuoiNam/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/SoDauNam/ct50"/></b></td>
        </tr>
    </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC107-DG">   
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
