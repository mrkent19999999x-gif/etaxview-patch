<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 24/2024/TT-BTC ngày 17/4/2024 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL3"   select="''"/>
		

<!-- LƯU CHUYỂN TIỀN TỆ  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT' />	
	
	<xsl:call-template name="tkhaiHeader-plucBCTC24_LCTT">
		<xsl:with-param name="mauTKhai"   select="'B03/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL3"/>
	 </xsl:call-template>
	 <br/> 
	<div class="ndungtkhai_div">
	<div class="content">
	<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
 
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT </b></td>
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
            <td class="align-c"><b>D</b></td>
            <td class="align-c"><b>1 </b></td>
			<td class="align-c"><b>2 </b></td>
        </tr>
       <tr>
            <td class="align-c"><b>I</b></td>
			<td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG CHÍNH</b></td>
            <td class="align-c"></td>
            <td class="align-l"></td>
            <td class="align-r"></td>
            <td class="align-r"></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
			<td><b>Các khoản thu bằng tiền</b></td>
            <td class="align-c"><b>610</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct610"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct610"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct610"/></b></td>
        </tr>
        <tr>
             <td class="align-c">1.1</td>
			<td>Tiền nhận từ kinh phí NSNN cấp</td>
            <td class="align-c">611</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct611"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct611"/></td>
        </tr>
        <tr>
             <td class="align-c">1.2</td>
			<td>Tiền thu viện trợ nước ngoài</td>
            <td class="align-c">612</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct612"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct612"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct612"/></td>
        </tr>
        <tr>
             <td class="align-c">1.3</td>
			<td>Tiền thu phí, lệ phí</td>
            <td class="align-c">613</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct613"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct613"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct613"/></td>
        </tr>
        <tr>
             <td class="align-c">1.4</td>
			<td>Tiền thu từ hoạt động nghiệp vụ</td>
            <td class="align-c">614</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct614"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct614"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct614"/></td>
        </tr>
        <tr>
             <td class="align-c">1.5</td>
			<td>Tiền thu từ hoạt động sản xuất kinh doanh, dịch vụ</td>
            <td class="align-c">615</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct615"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct615"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct615"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td>- Tiền đơn vị trực tiếp thu</td>
            <td class="align-c">616</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct616"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct616"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct616"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td>- Tiền thu từ kinh phí cung cấp dịch vụ sự nghiệp công từ NSNN</td>
            <td class="align-c">617</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct617"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct617"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct617"/></td>
        </tr>
         <tr>
             <td class="align-c">1.6</td>
			<td>Tiền thu nhập khác của đơn vị</td>
            <td class="align-c">618</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct618"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct618"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct618"/></td>
        </tr>
        <tr>
             <td class="align-c">1.7</td>
			<td>Tiền thu khác</td>
            <td class="align-c">619</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct619"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct619"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct619"/></td>
        </tr>
        <tr>
            <td class="align-c"><b>2</b></td>
			<td><b>Các khoản chi bằng tiền</b></td>
            <td class="align-c"><b>620</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct620"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct620"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct620"/></b></td>
        </tr>
        <tr>
             <td class="align-c">2.1</td>
			<td>Tiền chi lương, tiền công và chi khác cho người lao động</td>
            <td class="align-c">621</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct621"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct621"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct621"/></td>
        </tr>
        <tr>
             <td class="align-c">2.2</td>
			<td>Tiền chi trả cho bên cung cấp hàng hóa, dịch vụ</td>
            <td class="align-c">622</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct622"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct622"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct622"/></td>
        </tr>
        <tr>
             <td class="align-c">2.3</td>
			<td>Tiền chi trả lãi vay</td>
            <td class="align-c">623</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct623"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct623"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct623"/></td>
        </tr>
        <tr>
             <td class="align-c">2.4</td>
			<td>Tiền đã nộp nhà nước</td>
            <td class="align-c">624</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct624"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct624"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct624"/></td>
        </tr>
        <tr>
             <td class="align-c">2.5</td>
			<td>Tiền chi khác</td>
            <td class="align-c">625</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct625"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct625"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct625"/></td>
        </tr>
		 <tr>
            <td class="align-c"><b></b></td>
			<td><b>Lưu chuyển tiền thuần từ hoạt động chính</b></td>
            <td class="align-c"><b>630</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct630"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct630"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct630"/></b></td>
        </tr>
		<tr>
            <td class="align-c"><b>II</b></td>
			<td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG ĐẦU TƯ</b></td>
            <td class="align-c"></td>
            <td class="align-l"></td>
            <td class="align-r"></td>
            <td class="align-r"></td>
        </tr>
        <tr>
             <td class="align-c">1</td>
			<td>Tiền nhận được từ kinh phí chi đầu tư</td>
            <td class="align-c">641</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct641"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct641"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct641"/></td>
        </tr>
		<tr>
             <td class="align-c">2</td>
			<td>Tiền thu từ thanh lý, nhượng bán TSCĐ</td>
            <td class="align-c">642</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct642"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct642"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct642"/></td>
        </tr>
          <tr>
             <td class="align-c">3</td>
			<td>Tiền thu hồi từ các khoản đầu tư góp vốn</td>
            <td class="align-c">643</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct643"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct643"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct643"/></td>
        </tr>   
        <tr>
             <td class="align-c">4</td>
			<td>Tiền thu từ lãi, cổ tức, lợi nhuận được chia</td>
            <td class="align-c">644</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct644"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct644"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct644"/></td>
        </tr> 
        <tr>
             <td class="align-c">5</td>
			<td>Tiền chi đầu tư xây dựng, mua sắm TSCĐ</td>
            <td class="align-c">645</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct645"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct645"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct645"/></td>
        </tr> 
        <tr>
             <td class="align-c">6</td>
			<td>Tiền chi đầu tư, góp vốn vào các đơn vị khác</td>
            <td class="align-c">646</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct646"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct646"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct646"/></td>
        </tr> 
        
        <tr>
            <td class="align-c"><b></b></td>
			<td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>650</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct650"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct650"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct650"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>III</b></td>
			<td><b>LƯU CHUYỂN TIỀN TỪ HOẠT ĐỘNG TÀI CHÍNH</b></td>
            <td class="align-c"></td>
            <td class="align-l"></td>
            <td class="align-r"></td>
            <td class="align-r"></td>
        </tr>
         <tr>
             <td class="align-c">1</td>
			<td>Tiền thu từ các khoản đơn vị đi vay</td>
            <td class="align-c">661</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct661"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct661"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct661"/></td>
        </tr> 
		 <tr>
             <td class="align-c">2</td>
			<td>Tiền nhận góp vốn</td>
            <td class="align-c">662</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct662"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct662"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct662"/></td>
        </tr>
        <tr>
             <td class="align-c">3</td>
			<td>Tiền hoàn trả gốc vay</td>
            <td class="align-c">663</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct663"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct663"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct663"/></td>
        </tr>
        <tr>
             <td class="align-c">4</td>
			<td>Tiền hoàn trả vốn góp</td>
            <td class="align-c">664</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct664"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct664"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct664"/></td>
        </tr>
        <tr>
             <td class="align-c">5</td>
			<td>Các khoản đã phân phối cho chủ sở hữu</td>
            <td class="align-c">665</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct665"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct665"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct665"/></td>
        </tr>
        
		<tr>
            <td class="align-c"><b></b></td>
			<td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>670</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct670"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct670"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct670"/></b></td>
        </tr>
		
        <tr>
            <td class="align-c"><b>IV</b></td>
			<td><b>LƯU CHUYỂN TIỀN THUẦN TRONG KỲ</b></td>
            <td class="align-c"><b>680</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct680"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct680"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct680"/></b></td>
        </tr>
		
        <tr>
            <td class="align-c"><b>V</b></td>
			<td><b>TIỀN VÀ TƯƠNG ĐƯƠNG TIỀN ĐẦU KỲ</b></td>
            <td class="align-c"><b>690</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct690"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct690"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct690"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VI</b></td>
			<td><b>ẢNH HƯỞNG CỦA CHÊNH LỆCH TỶ GIÁ</b></td>
            <td class="align-c"><b>695</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct695"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct695"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct695"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>VII</b></td>
			<td><b>TIỀN VÀ TƯƠNG ĐƯƠNG TIỀN CUỐI KỲ</b></td>
            <td class="align-c"><b>700</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct700"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct700"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct700"/></b></td>
        </tr>
        

 </table>
  </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	


<xsl:call-template name="tkhaiFooter-BCTC24-LienTuc">   
</xsl:call-template>
<br/>		<br/>

<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
