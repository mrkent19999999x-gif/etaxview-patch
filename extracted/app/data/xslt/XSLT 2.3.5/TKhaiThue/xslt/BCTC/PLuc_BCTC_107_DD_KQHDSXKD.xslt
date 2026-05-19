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
        <xsl:variable name="ghiChuPL1"   select="''"/>	
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHD' />	
	<xsl:call-template name="tkhaiHeader-plucBCTC133">
		<xsl:with-param name="mauTKhai"   select="'B02/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>	
	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-r"><i>Đơn vị tính: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
			<td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B </b></td>
            <td class="align-c"><b>C </b></td>
             <td class="align-c"><b>D </b></td>
            <td class="align-c"><b>1 </b></td>
            <td class="align-c"><b>2 </b></td>
        </tr>
        <!-- I Hoat dong hanh chinh, su nghiep -->
        <tr>
            <td class="align-c"><b>I</b></td>
            <td><b>Hoạt động hành chính, sự nghiệp</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Doanh thu (01=02+03+04) </td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
         <tr>
            <td class="align-c">a</td>
            <td>Từ NSNN cấp </td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td class="align-c">b</td>
            <td>Từ nguồn viện trợ, vay nước ngoài </td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td class="align-c">c</td>
            <td>Từ nguồn phí được khấu trừ, để lại</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chi phí(05=06+07+08)</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct05"/></td>
        </tr>
          <tr>
            <td class="align-c">a</td>
            <td>Chi phí hoạt động</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct06"/></td>
        </tr>
          <tr>
            <td class="align-c">b</td>
            <td>Chi phí từ nguồn viện trợ, vay nợ nước ngoài</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct07"/></td>
        </tr>
           <tr>
            <td class="align-c">c</td>
            <td>Chi phí hoạt động thu phí</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct08"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (09=01-05)</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct09"/></td>
        </tr>
        <!-- II Hoat dong san xuat kinh doanh, dich vu -->
        <tr>
            <td class="align-c"><b>II</b></td>
            <td><b>Hoạt động sản xuất kinh doanh, dịch vụ</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Doanh thu</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chi phí </td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (12=10-11)</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct12"/></td>
        </tr>
         <!-- III Hoat dong tai chinh -->
        <tr>
            <td class="align-c"><b>III</b></td>
            <td><b>Hoạt động tài chính</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>Doanh thu</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chi phí</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (22=20-21)</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct22"/></td>
        </tr>
         <!-- IV. Hoạt động khác -->
        <tr>
            <td class="align-c"><b>IV</b></td>
            <td><b>Hoạt động khác</b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td>
            <td class="align-c"><b> </b></td> 
        </tr>
         <tr>
            <td class="align-c">1</td>
            <td>Thu nhập khác</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct30"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>Chi phí khác</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct31"/></td>
        </tr>
         <tr>
            <td class="align-c">3</td>
            <td>Thặng dư/ thâm hụt (32=30-31)</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>V</b></td>
            <td><b>Chi phí thuế TNDN</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct40"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
            <td><b>Thặng dư/ thâm hụt trong năm (50=09+12+22+32-40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct50"/></b></td>
        </tr>
          <tr>
            <td class="align-c">1</td>
            <td>Sử dụng kinh phí tiết kiệm của đơn vị hành chính</td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct51"/></td>
        </tr>
           <tr>
            <td class="align-c">2</td>
            <td>Phân phối cho các quỹ</td>
            <td class="align-c">52</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct52"/></td>
        </tr>
         <tr>
            <td class="align-c">3</td>
            <td>Kinh phí cải cách tiền lương</td>
            <td class="align-c">53</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct53"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct53"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct53"/></td>
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
<div><b><i>Ghi chú:</i></b></div>
<div><i>Đối với trường hợp thuê dịch vụ làm kế toán, làm kế toán trưởng thì phải ghi rõ số Giấy chứng nhận đăng ký hành nghề dịch vụ kế toán, tên đơn vị cung cấp dịch vụ kế toán.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
