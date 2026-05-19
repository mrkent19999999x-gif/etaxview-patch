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
		<xsl:variable name="ghiChuPL2"   select="''"/>
			<xsl:call-template name="tkhaiHeader-plucBCTC334">
		<xsl:with-param name="mauTKhai"   select="'B04a - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO TÌNH HÌNH BIẾN ĐỘNG VỐN CHỦ SỞ HỮU GIỮA NIÊN ĐỘ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCTHBDVCSH ">	
	<xsl:variable name="pluc04" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCTHBDVCSH' />	
	

	 
	<div class="ndungtkhai_div">
	<div class="content">
	
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="3"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="3"><b>Thuyết minh </b></td>
            <td class="align-c" rowspan="3"><b>Số dư đầu năm</b></td>
            <td class="align-c" colspan="4"><b>Số tăng/giảm</b></td>
            <td class="align-c" rowspan="3"><b>Số dư cuối quý</b></td>
        </tr>
        
             <tr>

            <td class="align-c" colspan="2"><b>Quý trước</b></td>
            <td class="align-c" colspan="2"><b>Quý này</b></td>
        </tr>  
                 <tr>
            <td class="align-c"><b>Tăng</b></td>
            <td class="align-c"><b>Giảm</b></td>
            <td class="align-c"><b>Tăng</b></td>
            <td class="align-c"><b>Giảm</b></td>
       </tr>      
        
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4</b></td>
             <td class="align-c"><b>5</b></td>
            <td class="align-c"><b>6</b></td>
        </tr>
        <tr>
            <td>I. Biến động vốn chủ sở hữu (I=1+2+3+4+5+6+7+8)</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI"/></td>
       </tr>
          <tr>
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_1"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_1"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_1"/></td>
       </tr>
               <tr>
            <td>2. Cổ phiếu quỹ</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_2"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_2"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_2"/></td>
       </tr>
               <tr>
            <td>3. Quỹ dự trữ vốn điều lệ</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_3"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_3"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_3"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_3"/></td>
       </tr>
       
        <tr>
            <td>4. Quỹ dự phòng tài chính và rủi ro nghiệp vụ</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_4"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_4"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_4"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_4"/></td>
       </tr>
       
        <tr>
            <td>5. Chênh lệch đánh giá lại tài sản theo giá trị hợp lý</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_5"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_5"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_5"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_5"/></td>
       </tr>
               <tr>
            <td>6. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_6"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_6"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_6"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_6"/></td>
       </tr>

        <tr>
            <td>7.  Các  Quỹ  khác  thuộc  vốn chủ sở hữu</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_7"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_7"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_7"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_7"/></td>
       </tr>           
             
            <tr>
            <td>8. Lợi nhuận chưa phân phối</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctI_8"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctI_8"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctI_8"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctI_8"/></td>
       </tr>       
               <tr>
            <td>II. Thu nhập toàn diện khác (II=1+2+3+4)</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctII"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctII"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctII"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctII"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctII"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctII"/></td>
       </tr>       
               <tr>
            <td>1. Lãi/(Lỗ) từ đánh giá lại các tài sản tài chính sẵn sàng để bán</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctII_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctII_1"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctII_1"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctII_1"/></td>
       </tr>       

        <tr>
            <td>2. Lãi, lỗ đánh giá công cụ tài chính phái sinh phòng ngừa rủi ro dòng tiền</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctII_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctII_2"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctII_2"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctII_2"/></td>
       </tr>       
       
        <tr>
            <td>3.  Lãi/(lỗ) chênh  lệch  tỷ giá của hoạt động tại nước ngoài</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctII_3"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctII_3"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctII_3"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctII_3"/></td>
       </tr>       
       
        <tr>
            <td>4. Lãi, lỗ toàn diện khác</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/ctII_4"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/ctII_4"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/ctII_4"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/ctII_4"/></td>
       </tr>       
       
        <tr>
            <td>Cộng (I+II)</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/tongCong"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/tongCong"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Tang/tongCong"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyTruoc/Giam/tongCong"/></td>     
               <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Tang/tongCong"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/QuyNay/Giam/tongCong"/></td>     
              <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiQuy/tongCong"/></td>
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
