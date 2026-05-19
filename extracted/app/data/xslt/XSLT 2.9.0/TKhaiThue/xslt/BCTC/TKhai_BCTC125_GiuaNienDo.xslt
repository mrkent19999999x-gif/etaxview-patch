<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BCTC125_GiuaNienDo">
		 
		<xsl:with-param name="mauTKhai"   select="'B01 - CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
<!-- BẢNG CÂN ĐỐI KẾ TOÁN -->
   
<div class="ndungtkhai_div">
<div class="content">
<br/>
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
             <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối quý </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4</b></td>
            <td class="align-c"><b>5</b></td>
        </tr>
<!-- Tai san -->
        <tr>
           <td><b>TÀI SẢN</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><b>A. TÀI SẢN NGẮN HẠN (100=110+120+130+140+150)</b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct100)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct100)"/></b></td>
        </tr>
          <tr>
            <td>I. Tiền và các khoản tương đương tiền</td>
            <td class="align-c">110</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct110)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct110)"/></b></td>
        </tr>        
          <tr>
            <td>1. Tiền  </td>
            <td class="align-c">111</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct111"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct111)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct111)"/></td>
        </tr>   
           <tr>
            <td>2. Các khoản tương đương tiền </td>
            <td class="align-c">112</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct112"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct112)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct112)"/></td>
        </tr>   
            <tr>
            <td>II. Các khoản đầu tư tài chính ngắn hạn</td>
            <td class="align-c">120</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct120)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct120)"/></td>
        </tr>    
             <tr>
            <td>1. Đầu tư ngắn hạn</td>
            <td class="align-c">121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct121)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct121)"/></td>
        </tr>          
                <tr>
            <td>2. Dự phòng giảm giá đầu tư ngắn hạn(*) </td>
            <td class="align-c">129</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct129"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct129)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct129)"/></td>
        </tr>       
                  <tr>
            <td>III. Các khoản phải thu ngắn hạn</td>
            <td class="align-c">130</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct130)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct130)"/></td>
        </tr>                
           <tr>
            <td>1. Phải thu khách hàng </td>
            <td class="align-c">131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct131)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct131)"/></td>
        </tr>             
            <tr>
            <td>2. Trả trước cho người bán</td>
            <td class="align-c">132</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct132)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct132)"/></td>
        </tr>       
             <tr>
            <td>3. Phải thu nội bộ ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct133)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct133)"/></td>
        </tr>         
              <tr>
            <td>4. Phải thu hoạt động nghiệp vụ</td>
            <td class="align-c">134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct134)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct134)"/></td>
        </tr>       
          <tr>   
            <td>5. Các khoản phải thu khác</td>
            <td class="align-c">135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct135)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct135)"/></td>
        </tr>  
             <tr>          
              <td>6. Dự phòng phải thu ngắn hạn khó đòi (*)</td>
            <td class="align-c">139</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct139"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct139)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct139)"/></td>
        </tr>                        
              <tr>          
              <td>IV. Hàng tồn kho</td>
            <td class="align-c">140</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct140"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct140)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct140)"/></td>
        </tr>                    
              <tr>          
              <td>V. Tài sản ngắn hạn khác</td>
            <td class="align-c">150</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct150"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct150)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct150)"/></td>
        </tr>                                          
               <tr>          
              <td>1. Chi phí trả trước ngắn hạn </td>
            <td class="align-c">151</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct151"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct151)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct151)"/></td>
        </tr>                                                         
          <tr>  
               <td>2. Thuế GTGT được khấu trừ</td>
            <td class="align-c">152</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct152"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct152)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct152)"/></td>
        </tr>                       
           <tr>  
               <td>3. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">154</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct154"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct154)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct154)"/></td>
        </tr>                               
      <tr>  
               <td>4. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">157</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct157"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct157)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct157)"/></td>
        </tr>
         <tr>  
               <td>5. Tài sản ngắn hạn khác</td>
            <td class="align-c">158</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct158"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct158)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct158)"/></td>
        </tr>        
       <tr>  
               <td><b>B. TÀI SẢN DÀI HẠN (200 = 210 + 220  + 250 + 260)</b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct200)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct200)"/></b></td>
        </tr>        
        <tr>  
               <td>I. Các khoản phải thu dài hạn </td>
            <td class="align-c">210</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct210)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct210)"/></td>
        </tr>             
         <tr>  
               <td>1. Phải thu dài hạn khách hàng</td>
            <td class="align-c">211</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct211)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct211)"/></td>
        </tr>                  
           <tr>  
               <td>2. Vốn kinh doanh ở đơn vị trực thuộc</td>
            <td class="align-c">212</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct212)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212)"/></td>
        </tr>       
            <tr>  
               <td>3. Phải thu dài hạn nội bộ </td>
            <td class="align-c">213</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct213)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct213)"/></td>
        </tr>              
              <tr>  
               <td>4. Phải thu dài hạn khác</td>
            <td class="align-c">218</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct214"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct218)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct218)"/></td>
        </tr>      
               <tr>  
               <td>5. Dự phòng phải thu dài hạn khó đòi (*)</td>
            <td class="align-c">219</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct219"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct219)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct219)"/></td>
        </tr>            
                <tr>  
               <td>II. Tài sản cố định</td>
            <td class="align-c">220</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct220)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct220)"/></td>
        </tr>      
               
            <tr>  
               <td>1. Tài sản cố định hữu hình</td>
            <td class="align-c">221</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct221"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct221)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct221)"/></td>
        </tr>       
        
         <tr>  
               <td>- Nguyên giá</td>
            <td class="align-c">222</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct222"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct222)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct222)"/></td>
        </tr>                
         <tr>  
                <td>- Giá trị hao mòn luỹ kế (*)</td>
            <td class="align-c">223</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct223"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct223)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct223)"/></td>
        </tr>        
       <tr>  
                  <td>2. Tài sản cố định thuê tài chính</td>
            <td class="align-c">224</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct224"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct224)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct224)"/></td>
        </tr>        
           <tr>  
                  <td>- Nguyên giá </td>
            <td class="align-c">225</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct225"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct225)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct225)"/></td>
        </tr>        
           <tr>  
                  <td>- Giá trị hao mòn lũy kế (*) </td>
            <td class="align-c">226</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct226"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct226)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct226)"/></td>
        </tr> 
          <tr>        
                  <td>3. Tài sản cố định vô hình</td>
            <td class="align-c">227</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/c227"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct227)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct227)"/></td>
        </tr>        
           <tr>  
                  <td>- Nguyên giá </td>
            <td class="align-c">228</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct228"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct228)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct228)"/></td>
        </tr>        
           <tr>  
                  <td>- Giá trị hao mòn lũy kế (*) </td>
            <td class="align-c">229</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct229"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct229)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct229)"/></td>
        </tr>        
           <tr>  
                  <td>4. Chi phí xây dựng cơ bản dở dang </td>
            <td class="align-c">230</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct230)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct230)"/></td>
        </tr>        
           <tr>  
                  <td><b>III. Các khoản đầu tư tài chính dài hạn</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct250)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct250)"/></b></td>
        </tr>        
           <tr>  
                  <td>1. Đầu tư vào công ty con  </td>
            <td class="align-c">251</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct251"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct251)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct251)"/></td>
        </tr>        
           <tr>  
                  <td>2. Đầu tư vào công ty liên doanh, liên kết</td>
            <td class="align-c">252</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct252"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct252)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct252)"/></td>
        </tr>        
           <tr>  
                  <td>3. Đầu tư dài hạn khác</td>
            <td class="align-c">258</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct258"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct258)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct258)"/></td>
        </tr>        
        
            <tr>  
               <td><b>4. Dự phòng giảm giá đầu tư dài hạn (*)</b></td>
            <td class="align-c"><b>259</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct259"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct259)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct259)"/></b></td>
        </tr>        
                   <tr>  
               <td><b>IV. Tài sản dài hạn khác</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct260)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct260)"/></b></td>
        </tr>             
           <tr>  
                  <td>1. Chi phí trả trước dài hạn</td>
            <td class="align-c">261</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct261"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct261)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct261)"/></td>
        </tr>        
           <tr>  
                  <td>2. Tài sản thuế thu nhập hoãn lại</td>
            <td class="align-c">262</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct262"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct262)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct262)"/></td>
        </tr>        
           <tr>  
                  <td>3. Tài sản dài hạn khác</td>
            <td class="align-c">268</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct268"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct268)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct268)"/></td>
        </tr>        
           <tr>  
                  <td>Tổng cộng tài sản (270 = 100 + 200)</td>
            <td class="align-c">270</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct270"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct270)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct270)"/></td>
        </tr>        
           <tr>
           <td><b>NGUỒN VỐN</b></td>
           <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>        
      <tr>
            <td><b>A - Nợ phải trả (300 = 310 + 330)</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct300)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct300)"/></b></td>
        </tr>      
                  <tr>
            <td><b>I. Nợ ngắn hạn</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct310)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct310)"/></b></td>
        </tr>       
             <tr>  
                  <td>1. Vay ngắn hạn</td>
            <td class="align-c">311</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct311"/>	</td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct311)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct311)"/></td>
        </tr>        
           <tr>  
                  <td>2. Phải trả người bán </td>
            <td class="align-c">312</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct312"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct312)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct312)"/></td>
        </tr>        
           <tr>  
                  <td>3. Người mua trả tiền trước</td>
            <td class="align-c">313</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct313"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct313)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct313)"/></td>
        </tr>        
           <tr>  
                  <td>4. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">314</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct314"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct314)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct314)"/></td>
        </tr>        
         <tr>  
                  <td>5. Phải trả người lao động</td>
            <td class="align-c">315</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct315"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct315)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct315)"/></td>
        </tr>        
           <tr>  
                  <td>5. Phải trả người lao động</td>
            <td class="align-c">316</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct316"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct316)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct316)"/></td>
        </tr>        
           <tr>  
                  <td>7. Phải trả nội bộ</td>
            <td class="align-c">317</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct317"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct317)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct317)"/></td>
        </tr>              
           <tr>  
                  <td>8. Các khoản phải trả, phải nộp ngắn hạn khác</td>
            <td class="align-c">319</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct319"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct319)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct319)"/></td>
        </tr>        
           <tr>  
                  <td>9. Dự phòng phải trả ngắn hạn </td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct320)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct320)"/></td>
        </tr>        
           <tr>  
                  <td>10. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">323</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct323"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct323)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct323)"/></td>
        </tr>            
           <tr>  
                  <td>11. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">327</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct327"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct327)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct327)"/></td>
        </tr>            
              <tr>  
                  <td>12. Doanh thu chưa thực hiện ngắn hạn</td>
            <td class="align-c">328</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct328"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct328)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct328)"/></td>
        </tr>      
         <tr>  
                  <td>II. Nợ dài hạn</td>
            <td class="align-c">330</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct330)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct330)"/></td>
        </tr>            
                            
                   <tr>  
                  <td>1. Phải trả dài hạn người bán </td>
            <td class="align-c">331</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct331"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct331)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct331)"/></td>
        </tr>    
                      <tr>  
                  <td>2. Phải trả dài hạn nội bộ </td>
            <td class="align-c">332</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct332"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct332)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct332)"/></td>
        </tr>   
        <tr>  
                  <td>3. Phải trả dài hạn khác</td>
            <td class="align-c">333</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct333"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct333)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct333)"/></td>
        </tr>
        <tr>  
                  <td>4. Vay và nợ dài hạn </td>
            <td class="align-c">334</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct334"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct334)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct334)"/></td>
        </tr>
        <tr>  
                  <td>5. Thuế thu nhập hoãn lại phải trả </td>
            <td class="align-c">335</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct335"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct335)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct335)"/></td>
        </tr>
        <tr>  
                  <td>6. Dự phòng trợ cấp mất việc làm</td>
            <td class="align-c">336</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct336"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct336)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct336)"/></td>
        </tr>
        <tr>  
                  <td>7. Dự phòng phải trả dài hạn </td>
            <td class="align-c">337</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct337"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct337)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct337)"/></td>
        </tr>
        <tr>  
                  <td>8. Doanh thu chưa thực hiện dài hạn</td>
            <td class="align-c">338</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct338"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct338)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct338)"/></td>
        </tr>
        <tr>  
                  <td>9. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">339</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct339"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct339)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct339)"/></td>
        </tr>
        <tr>  
                  <td>10. Quỹ dự phòng bồi thường thiệt hại cho nhà đầu tư</td>
            <td class="align-c">359</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct359"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct359)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct359)"/></td>
         </tr>
         <tr>
            <td><b>B - VỐN CHỦ SỞ HỮU </b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct400)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct400)"/></b></td>
        </tr>  
                      <tr>  
                  <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-c">411</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct411)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411)"/></td>
        </tr>    
                      <tr>  
                  <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-c">412</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct412"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct412)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct412)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>3. Vốn khác của chủ sở hữu </td>
            <td class="align-c">413</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct413"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct413)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct413)"/></td>
        </tr>  
                      <tr>  
                  <td>4. Cổ phiếu quỹ (*)</td>
            <td class="align-c">414</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct414"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct414)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct414)"/></td>
        </tr>    
                      <tr>  
                  <td>5. Chênh lệch đánh giá lại tài sản</td>
            <td class="align-c">415</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct415"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct415)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct415)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>6. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">416</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct416"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct416)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct416)"/></td>
        </tr>  
                      <tr>  
                  <td>7. Quỹ đầu tư phát triển</td>
            <td class="align-c">417</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct417)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct417)"/></td>
        </tr>    
                      <tr>  
                  <td>8. Quỹ dự phòng tài chính</td>
            <td class="align-c">418</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct418"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct418)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct418)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>9. Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-c">419</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct419"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct419)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct419)"/></td>
        </tr>  
                     
                      <tr>  
                  <td>10. Lợi nhuận sau thuế chưa phân phối</td>
            <td class="align-c">420</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct420)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct420)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>Tổng cộng nguồn vốn (440 = 300 + 400)</td>
            <td class="align-c">440</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct440"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiQuy/ct440)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct440)"/></td>
        </tr>  
 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC125">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>