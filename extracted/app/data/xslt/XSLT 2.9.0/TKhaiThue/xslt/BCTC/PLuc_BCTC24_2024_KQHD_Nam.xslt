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
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCKQHD' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC24">
		<xsl:with-param name="mauTKhai"   select="'B02/BCTC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
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
            <td class="align-c"><b>1</b></td>
			<td><b>DOANH THU</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct400"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct400"/></b></td>
        </tr>
		
		<tr>
             <td class="align-c">1.1</td>
			<td>Doanh thu từ kinh phí NSNN cấp</td>
            <td class="align-c">411</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct411"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct411"/></td>
        </tr>
        <tr>
            <td class="align-c">1.2</td>
			<td>Doanh thu từ nhà tài trợ nước ngoài</td>
            <td class="align-c">412</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct412"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct412"/></td>
        </tr>
        <tr>
            <td class="align-c">1.3</td>
			<td>Doanh thu từ phí được khấu trừ, để lại</td>
            <td class="align-c">413</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct413"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct413"/></td>
        </tr>
         <tr>
            <td class="align-c">1.4</td>
			<td>Doanh thu tài chính</td>
            <td class="align-c">414</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct414"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct414"/></td>
        </tr>
        <tr>
            <td class="align-c">1.5</td>
			<td>Doanh thu từ hoạt động nghiệp vụ</td>
            <td class="align-c">415</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct415"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct415"/></td>
        </tr>
        <tr>
            <td class="align-c">1.6</td>
			<td>Doanh thu từ hoạt động sản xuất kinh doanh, dịch vụ</td>
            <td class="align-c">416</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct416"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct416"/></td>
        </tr>
      <tr>
            <td class="align-c"></td>
			<td>- Doanh thu do đơn vị trực tiếp thu</td>
            <td class="align-c">417</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct417"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct417"/></td>
        </tr>
         <tr>
            <td class="align-c"></td>
			<td>- Doanh thu kinh phí cung cấp dịch vụ sự nghiệp công từ NSNN</td>
            <td class="align-c">418</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct418"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct418"/></td>
        </tr>
        <tr>
            <td class="align-c">1.7</td>
			<td>Thu nhập khác</td>
            <td class="align-c">419</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct419"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct419"/></td>
        </tr>
		<tr>
            <td class="align-c"><b>2</b></td>
			<td><b>CHI PHÍ</b></td>
            <td class="align-c"><b>450</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct450"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct450"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct450"/></b></td>
        </tr>
		
		<tr>
            <td class="align-c">2.1</td>
			<td>Chi phí hoạt động không giao tự chủ</td>
            <td class="align-c">451</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct451"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct451"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct451"/></td>
        </tr>
		<tr>
            <td class="align-c">2.2</td>
			<td>Chi phí hoạt động giao tự chủ</td>
            <td class="align-c">452</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct452"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct452"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct452"/></td>
        </tr>
        <tr>
            <td class="align-c">2.3</td>
			<td>Chi phí tài chính</td>
            <td class="align-c">453</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct453"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct453"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct453"/></td>
        </tr>
         <tr>
            <td class="align-c">2.4</td>
			<td>Giá vốn hàng bán</td>
            <td class="align-c">454</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct454"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct454"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct454"/></td>
        </tr>
        <tr>
            <td class="align-c">2.5</td>
			<td>Chi phí bán hàng</td>
            <td class="align-c">455</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct455"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct455"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct455"/></td>
        </tr>
         <tr>
            <td class="align-c">2.6</td>
			<td>Chi phí quản lý của hoạt động sản xuất kinh doanh, dịch vụ</td>
            <td class="align-c">456</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct456"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct456"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct456"/></td>
        </tr>
		 <tr>
            <td class="align-c">2.7</td>
			<td>Chi phí khác</td>
            <td class="align-c">457</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct457"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct457"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct457"/></td>
        </tr>
		<tr>
            <td class="align-c">2.8</td>
			<td>Chi phí tài sản bàn giao</td>
            <td class="align-c">458</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct458"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct458"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct458"/></td>
        </tr>
		<tr>
            <td class="align-c"><b>3</b></td>
			<td><b>CHI PHÍ THUẾ THU NHẬP DOANH NGHIỆP</b></td>
            <td class="align-c"><b>460</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct460"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct460"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct460"/></b></td>
        </tr>
		<tr>
            <td class="align-c"><b>4</b></td>
			<td><b>KẾT QUẢ HOẠT ĐỘNG TRONG NĂM</b></td>
            <td class="align-c"><b>500</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct500"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct500"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct500"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>5</b></td>
			<td><b>ĐIỀU CHỈNH KẾT QUẢ HOẠT ĐỘNG DO CHI PHÍ GHI NHẬN NĂM NAY NHƯNG DOANH THU ĐÃ GHI NHẬN NĂM TRƯỚC</b></td>
            <td class="align-c"><b>510</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct510"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct510"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct510"/></b></td>
        </tr>
        <tr>
            <td class="align-c"><b>6</b></td>
			<td><b>THẶNG DƯ/THÂM HỤT TRONG NĂM</b></td>
            <td class="align-c"><b>520</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct520"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct520"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct520"/></b></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td>- Các khoản phân phối vào quỹ thuộc đơn vị</td>
            <td class="align-c">521</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct521"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct521"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct521"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td>- Nguồn kinh phí mang sang năm sau</td>
            <td class="align-c">522</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct522"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct522"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct522"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
			<td>- Thặng dư không phân phối/thâm hụt chuyển năm sau</td>
            <td class="align-c">525</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct525"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct525"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct525"/></td>
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
