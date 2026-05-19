<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số  133/2016/T-BTC ngày 26/8/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC133_B01a">
		 
		<xsl:with-param name="mauTKhai"   select="'B01 - DNSN'"/>
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
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm</b></td>
            <td class="align-c"><b>Số đầu năm</b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td> 
        </tr>
<!-- Tai san -->
        <tr>
            <td class="align-c"><b>TÀI SẢN</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td>1. Tiền và các khoản tương đương tiền</td>
            <td class="align-c">110</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct110"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct110"/></td>
        </tr>
        <tr>
            <td>2. Các khoản đầu tư</td>
            <td class="align-c">120</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct120"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct120"/></td>
        </tr>
        <tr>
            <td>3. Các khoản phải thu</td>
            <td class="align-c">130</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct130"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct130"/></td>
        </tr>
        <tr>
            <td>4. Hàng tồn kho</td>
            <td class="align-c">140</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct140"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct140"/></td>
        </tr>
        <tr>
            <td>5. Giá trị còn lại của TSCĐ và BĐSĐT</td>
            <td class="align-c">150</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct150"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct150"/></td>
        </tr>
        <tr>
            <td>6. Tài sản khác</td>
            <td class="align-c">160</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct160"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct160"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct160"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>TỔNG CỘNG TÀI SẢN <br/> (200=110+120+130+140+150+160) </b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoCuoiNam/ct200"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ct200"/></b></td>
        </tr>
        <!-- Nguon von -->
        <tr>
            <td class="align-c"><b>NGUỒN VỐN</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td><b>I. Nợ phải trả</b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoCuoiNam/ct300"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ct300"/></b></td>
        </tr>
        <tr>
            <td>1. Phải trả người bán </td>
            <td class="align-c">310</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct310"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct310"/></td>
        </tr>
        <tr>
            <td>2. Người mua trả tiền trước</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct320"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct320"/></td>
        </tr>
        <tr>
            <td>3. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">330</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct330"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct330"/></td>
        </tr>
        <tr>
            <td>4. Phải trả người lao động </td>
            <td class="align-c">340</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct340"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct340"/></td>
        </tr>
        <tr>
            <td>5. Phải trả nợ vay</td>
            <td class="align-c">350</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct350"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct350"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct350"/></td>
        </tr>
        <tr>
            <td>6. Phải trả khác</td>
            <td class="align-c">360</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct360"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct360"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct360"/></td>
        </tr>
        <tr>
            <td><b>II. Vốn chủ sở hữu</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoCuoiNam/ct400"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ct400"/></b></td>
        </tr>
        <tr>
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-c">410</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct410"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct410"/></td>
        </tr>
        <tr>
            <td>2. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">420</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct420"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct420"/></td>
        </tr>
        <tr>
            <td>3. Các khoản mục khác thuộc vốn chủ sở hữu </td>
            <td class="align-c">430</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoCuoiNam/ct430"/></td>
            <td class="number align-r"><xsl:value-of select="$tkchinh/SoDauNam/ct430"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>TỔNG CỘNG NGUỒN VỐN <br/> (500=300+400)</b></td>
            <td class="align-c"><b>500</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct500"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoCuoiNam/ct500"/></b></td>
            <td class="number align-r"><b><xsl:value-of select="$tkchinh/SoDauNam/ct500"/></b></td>
        </tr>
    </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC133">   
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
