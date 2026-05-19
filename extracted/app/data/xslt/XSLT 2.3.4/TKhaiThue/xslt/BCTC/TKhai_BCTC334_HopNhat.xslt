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
		 <xsl:call-template name="tkhaiHeader-BCTC334_HopNhat">
		 
		<xsl:with-param name="mauTKhai"   select="'B01 - CTCK/HN'"/>
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
            <td class="align-c"><b>Số cuối năm </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>
<!-- Tai san -->
        <tr>
           <td><b>TÀI SẢN</b></td>
        </tr>
        <tr>
            <td><b>A. TÀI SẢN NGẮN HẠN (100 = 110 + 130)</b></td>
            <td class="align-c"><b>100</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct100"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct100)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct100)"/></b></td>
        </tr>
          <tr>
            <td><b>I. Tài sản tài chính (110=111+112+...+122+129)</b></td>
            <td class="align-c"><b>110</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct110"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct110)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct110)"/></b></td>
        </tr>
          <tr>
            <td>1. Tiền và các khoản tương đương tiền (111=111.1+111.2)</td>
            <td class="align-c">111</td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct111"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct111)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct111)"/></b></td>
        </tr>        
          <tr>
            <td>1.1. Tiền  </td>
            <td class="align-c">111.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct111_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct111_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct111_1)"/></td>
        </tr>   
           <tr>
            <td>1.2. Các khoản tương đương tiền </td>
            <td class="align-c">111.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct111_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct111_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct111_2)"/></td>
        </tr>   
            <tr>
            <td>2. Các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL)</td>
            <td class="align-c">112</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct112"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct112)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct112)"/></td>
        </tr>    
             <tr>
            <td>3. Các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
            <td class="align-c">113</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct113"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct113)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct113)"/></td>
        </tr>          
                <tr>
            <td>4. Các khoản cho vay </td>
            <td class="align-c">114</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct114"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct114)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct114)"/></td>
        </tr>       
                  <tr>
            <td>5. Tài sản tài chính sẵn sàng để bán (AFS) </td>
            <td class="align-c">115</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct115"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct115)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct115)"/></td>
        </tr>                
           <tr>
            <td>6. Dự phòng suy giảm giá trị các tài sản tài chính và tài sản thế chấp </td>
            <td class="align-c">116</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct116"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct116)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct116)"/></td>
        </tr>             
            <tr>
            <td>7. Các khoản phải thu (117=117.1+117.2) </td>
            <td class="align-c">117</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct117"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct117)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct117)"/></td>
        </tr>       
             <tr>
            <td>7.1. Phải thu bán các tài sản tài chính </td>
            <td class="align-c">117.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct117_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct117_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct117_1)"/></td>
        </tr>         
              <tr>
            <td>7.2. Phải thu và dự thu cổ tức, tiền lãi các tài sản tài chính</td>
            <td class="align-c">117.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct117_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct117_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct117_2)"/></td>
        </tr>       
          <tr>   
            <td>7.2.1. Phải thu cổ tức, tiền lãi đến ngày nhận</td>
            <td class="align-c">117.3</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct117_3"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct117_3)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct117_3)"/></td>
        </tr>  
             <tr>          
              <td>7.2.2. Dự thu cổ tức, tiền lãi chưa đến ngày nhận</td>
            <td class="align-c">117.4</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct117_4"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct117_4)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct117_4)"/></td>
        </tr>       
                   
              <tr>          
              <td>8. Trả trước cho người bán</td>
            <td class="align-c">118</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct118"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct118)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct118)"/></td>
        </tr>                    
                   
              <tr>          
              <td>9. Phải thu các dịch vụ CTCK cung cấp</td>
            <td class="align-c">119</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct119"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct119)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct119)"/></td>
        </tr>                       
                   
               <tr>          
              <td>10. Phải thu nội bộ</td>
            <td class="align-c">120</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct120"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct120)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct120)"/></td>
        </tr>                       
                                   
          <tr>  
               <td>11. Phải thu về lỗi giao dịch chứng khoán</td>
            <td class="align-c">121</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct121"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct121)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct121)"/></td>
        </tr>                       
           <tr>  
               <td>12. Các khoản phải thu khác</td>
            <td class="align-c">122</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct122"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct122)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct122)"/></td>
        </tr>                               
      <tr>  
               <td>13. Dự phòng suy giảm giá trị các khoản phải thu (*)</td>
            <td class="align-c">129</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct129"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct129)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct129)"/></td>
        </tr>       
        
       <tr>  
               <td><b>II. Tài sản ngắn hạn khác (130=131+132+…+138+139)</b></td>
            <td class="align-c"><b>130</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct130"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct130)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct130)"/></b></td>
        </tr>        
        <tr>  
               <td>1. Tạm ứng</td>
            <td class="align-c">131</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct131"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct131)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct131)"/></td>
        </tr>       
        
         <tr>  
               <td>2. Vật tư văn phòng, công cụ, dụng cụ</td>
            <td class="align-c">132</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct132"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct132)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct132)"/></td>
        </tr>          
        
           <tr>  
               <td>3. Chi phí trả trước ngắn hạn</td>
            <td class="align-c">133</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct133"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct133)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct133)"/></td>
        </tr>       
            <tr>  
               <td>4. Cầm cố, thế chấp, ký quỹ, ký cược ngắn hạn</td>
            <td class="align-c">134</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct134"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct134)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct134)"/></td>
        </tr>       
        
              <tr>  
               <td>5. Thuế giá trị gia tăng được khấu trừ</td>
            <td class="align-c">135</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct135"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct135)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct135)"/></td>
        </tr>      
               <tr>  
               <td>6. Thuế và các khoản khác phải thu Nhà nước</td>
            <td class="align-c">136</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct136"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct136)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct136)"/></td>
        </tr>      
        
                <tr>  
               <td>7. Tài sản ngắn hạn khác</td>
            <td class="align-c">137</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct137"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct137)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct137)"/></td>
        </tr>      
               
            <tr>  
               <td>8. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">138</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct138"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct138)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct138)"/></td>
        </tr>       
        
         <tr>  
               <td>9. Dự phòng suy giảm giá trị tài sản ngắn hạn khác</td>
            <td class="align-c">139</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct139"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct139)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct139)"/></td>
        </tr>          
        
        
          <tr>  
               <td><b>B. TÀI SẢN DÀI HẠN (200 = 210 + 220 + 230 + 240 + 250 + 260) </b></td>
            <td class="align-c"><b>200</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct200"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct200)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct200)"/></b></td>
        </tr>        
            <tr>  
               <td><b>I. Tài sản tài chính dài hạn (210=211+212+213)</b></td>
            <td class="align-c"><b>210</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct210"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct210)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct210)"/></b></td>
        </tr>          
        
               
           <tr>  
               <td>1. Các khoản phải thu dài hạn</td>
            <td class="align-c">211</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct211"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct211)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct211)"/></td>
        </tr>       
            <tr>  
               <td>2. Các khoản đầu tư (212=212.1+212.2+212.3+212.4)</td>
            <td class="align-c">212</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct212)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212)"/></td>
        </tr>       
        
              <tr>  
               <td>2.1. Các khoản đầu tư nắm giữ đến ngày đáo hạn</td>
            <td class="align-c">212.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct212_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212_1)"/></td>
        </tr>      
               <tr>  
               <td>2.2. Đầu tư vào công ty con</td>
            <td class="align-c">212.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct212_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212_2)"/></td>
        </tr>      
        
                <tr>  
               <td>2.3. Đầu tư vào công ty liên doanh, liên kết</td>
            <td class="align-c">212.3</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212_3"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct212_3)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212_3)"/></td>
        </tr>    
                <tr>  
               <td>2.4. Đầu tư dài hạn khác</td>
            <td class="align-c">212.4</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct212_4"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct212_4)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct212_4)"/></td>
        </tr>
        
                  <tr>  
               <td>3. Dự phòng suy giảm tài sản tài chính dài hạn</td>
            <td class="align-c">213</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct213"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct213)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct213)"/></td>
        </tr>      
        <tr>  
               <td><b>II. Tài sản cố định (220=221+224+227)</b></td>
            <td class="align-c"><b>220</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct220"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct220)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct220)"/></b></td>
        </tr>        
        
   
                  <tr>  
               <td>1. Tài sản cố định hữu hình (221=222+223a+223b)</td>
            <td class="align-c">221</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct221"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct221)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct221)"/></td>
        </tr>      
        <tr>  
                  <td>- Nguyên giá</td>
            <td class="align-c">222</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct222"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct222)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct222)"/></td>
        </tr>          
                   <tr>  
                  <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">223a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct223a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct223a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct223a)"/></td>
        </tr>        
     <tr>  
                  <td>- Đánh giá TSCĐHH theo giá trị hợp lý</td>
            <td class="align-c">223b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct223b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct223b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct223b)"/></td>
        </tr>        
        
       <tr>  
                  <td>2. Tài sản cố định thuê tài chính (224=225+226a+226b)</td>
            <td class="align-c">224</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct224"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct224)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct224)"/></td>
        </tr>        
           <tr>  
                  <td>- Nguyên giá </td>
            <td class="align-c">225</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct225"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct225)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct225)"/></td>
        </tr>        
           <tr>  
                  <td>- Giá trị hao mòn lũy kế (*) </td>
            <td class="align-c">226a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct226a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct226a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct226a)"/></td>
        </tr>        
           <tr>  
                  <td>- Đánh giá TSCĐTTC theo giá trị hợp lý </td>
            <td class="align-c">226b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct226b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct226b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct226b)"/></td>
        </tr>        
           <tr>  
                  <td>3. Tài sản cố định vô hình (227=228+229a+229b)</td>
            <td class="align-c">227</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct227"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct227)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct227)"/></td>
        </tr>        
           <tr>  
                  <td>- Nguyên giá </td>
            <td class="align-c">228</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct228"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct228)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct228)"/></td>
        </tr>        
           <tr>  
                  <td>- Giá trị hao mòn lũy kế (*) </td>
            <td class="align-c">229a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct229a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct229a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct229a)"/></td>
        </tr>        
           <tr>  
                  <td>- Đánh giá TSCĐVH theo giá trị hợp lý </td>
            <td class="align-c">229b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct229b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct229b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct229b)"/></td>
        </tr>        
           <tr>  
                  <td><b>III. Bất động sản đầu tư (230=231+232a+232b)</b></td>
            <td class="align-c"><b>230</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct230"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct230)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct230)"/></b></td>
        </tr>        
           <tr>  
                  <td>- Nguyên giá </td>
            <td class="align-c">231</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct231"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct231)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct231)"/></td>
        </tr>        
           <tr>  
                  <td>- Giá trị hao mòn lũy kế (*)</td>
            <td class="align-c">232a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct232a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct232a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct232a)"/></td>
        </tr>        
           <tr>  
                  <td>- Đánh giá BĐSĐT theo giá trị hợp lý </td>
            <td class="align-c">232b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct232b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct232b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct232b)"/></td>
        </tr>        
        
            <tr>  
               <td><b>IV. Chi phí xây dựng cơ bản dở dang </b></td>
            <td class="align-c"><b>240</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct240"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct240)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct240)"/></b></td>
        </tr>        
                   <tr>  
               <td><b>V. Tài sản dài hạn khác (250 = 251 + 252 + 253 + 254 + 255 + 256)</b></td>
            <td class="align-c"><b>250</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct250"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct250)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct250)"/></b></td>
        </tr>    
        
         
           <tr>  
                  <td>1. Cầm cố, thế chấp, ký quỹ, ký cược dài hạn </td>
            <td class="align-c">251</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct251"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct251)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct251)"/></td>
        </tr>        
           <tr>  
                  <td>2. Chi phí trả trước dài hạn </td>
            <td class="align-c">252</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct252"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct252)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct252)"/></td>
        </tr>        
           <tr>  
                  <td>3. Tài sản thuế thu nhập hoãn lại </td>
            <td class="align-c">253</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct253"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct253)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct253)"/></td>
        </tr>        
           <tr>  
                  <td>4. Tiền nộp Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">254</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct254"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct254)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct254)"/></td>
        </tr>       
                <tr>  
                  <td>5. Tài sản dài hạn khác </td>
            <td class="align-c">255</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct255"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct255)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct255)"/></td>
        </tr>   
           <tr>  
                  <td>6. Lợi thế thương mại </td>
            <td class="align-c">256</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct256"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct256)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct256)"/></td>
        </tr>        
   
      <tr>
            <td><b>VI. Dự phòng suy giảm giá trị tài sản dài hạn</b></td>
            <td class="align-c"><b>260</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct260"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct260)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct260)"/></b></td>
        </tr>  
        
         <tr>
            <td><b>TỔNG CỘNG TÀI SẢN (270 = 100 + 200)</b></td>
            <td class="align-c"><b>270</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct270"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct270)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct270)"/></b></td>
        </tr>  
               <tr>
            <td><b>C. NỢ PHẢI TRẢ (300 = 310 + 340) </b></td>
            <td class="align-c"><b>300</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct300"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct300)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct300)"/></b></td>
        </tr>         
                  <tr>
            <td><b>I. Nợ phải trả ngắn hạn (310=311+314+…+331+332)</b></td>
            <td class="align-c"><b>310</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct310"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct310)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct310)"/></b></td>
        </tr>       
             <tr>  
                  <td>1. Vay và nợ thuê tài chính ngắn hạn (311=312+313)</td>
            <td class="align-c">311</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct311"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct311)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct311)"/></td>
        </tr>        
           <tr>  
                  <td>1.1. Vay ngắn hạn </td>
            <td class="align-c">312</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct312"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct312)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct312)"/></td>
        </tr>        
           <tr>  
                  <td>1.2. Nợ thuê tài chính ngắn hạn </td>
            <td class="align-c">313</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct313"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct313)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct313)"/></td>
        </tr>        
           <tr>  
                  <td>2. Vay tài sản tài chính ngắn hạn </td>
            <td class="align-c">314</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct314"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct314)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct314)"/></td>
        </tr>        

   <tr>  
                  <td>3. Trái phiếu chuyển đổi ngắn hạn - Cấu phần nợ </td>
            <td class="align-c">315</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct315"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct315)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct315)"/></td>
        </tr>        
           <tr>  
                  <td>4. Trái phiếu phát hành ngắn hạn </td>
            <td class="align-c">316</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct316"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct316)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct316)"/></td>
        </tr>        
           <tr>  
                  <td>5. Vay Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">317</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct317"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct317)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct317)"/></td>
        </tr>        
           <tr>  
                  <td>6. Phải trả hoạt động giao dịch chứng khoán </td>
            <td class="align-c">318</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct318"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct318)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct318)"/></td>
        </tr>        
           <tr>  
                  <td>7. Phải trả về lỗi giao dịch các tài sản tài chính </td>
            <td class="align-c">319</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct319"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct319)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct319)"/></td>
        </tr>        
           <tr>  
                  <td>8. Phải trả người bán ngắn hạn</td>
            <td class="align-c">320</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct320"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct320)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct320)"/></td>
        </tr>        

   <tr>  
                  <td>9. Người mua trả tiền trước ngắn hạn</td>
            <td class="align-c">321</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct321"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct321)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct321)"/></td>
        </tr>        
           <tr>  
                  <td>10. Thuế và các khoản phải nộp Nhà nước</td>
            <td class="align-c">322</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct322"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct322)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct322)"/></td>
        </tr>        
           <tr>  
                  <td>11. Phải trả người lao động</td>
            <td class="align-c">323</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct323"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct323)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct323)"/></td>
        </tr>        
           <tr>  
                  <td>12. Các khoản trích nộp phúc lợi nhân viên</td>
            <td class="align-c">324</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct324"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct324)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct324)"/></td>
        </tr>        

   <tr>  
                  <td>13. Chi phí phải trả ngắn hạn</td>
            <td class="align-c">325</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct325"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct325)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct325)"/></td>
        </tr>        
           <tr>  
                  <td>14. Phải trả nội bộ ngắn hạn</td>
            <td class="align-c">326</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct326"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct326)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct326)"/></td>
        </tr>        
           <tr>  
                  <td>15. Doanh thu chưa thực hiện ngắn hạn</td>
            <td class="align-c">327</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct327"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct327)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct327)"/></td>
        </tr>            
              <tr>  
                  <td>16. Nhận ký quỹ, ký cược ngắn hạn</td>
            <td class="align-c">328</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct328"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct328)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct328)"/></td>
        </tr>    
                      <tr>  
                  <td>17. Các khoản phải trả, phải nộp khác ngắn hạn</td>
            <td class="align-c">329</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct329"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct329)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct329)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>18. Dự phòng phải trả ngắn hạn</td>
            <td class="align-c">330</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct330"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct330)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct330)"/></td>
        </tr>            
                            
                   <tr>  
                  <td>19. Quỹ khen thưởng, phúc lợi</td>
            <td class="align-c">331</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct331"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct331)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct331)"/></td>
        </tr>    
                      <tr>  
                  <td>20. Giao dịch mua bán lại trái phiếu Chính phủ</td>
            <td class="align-c">332</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct332"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct332)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct332)"/></td>
        </tr>            
            <tr>
            <td><b>1. Vay và nợ thuê tài chính dài hạn (341=342+343)</b></td>
            <td class="align-c"><b>341</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct341"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct341)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct341)"/></b></td>
        </tr>         
         
                 <tr>  
                  <td>1.1. Vay dài hạn</td>
            <td class="align-c">342</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct342"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct342)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct342)"/></td>
        </tr>  
                      <tr>  
                  <td>1.2. Nợ thuê tài chính dài hạn</td>
            <td class="align-c">343</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct343"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct343)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct343)"/></td>
        </tr>    
                      <tr>  
                  <td>2. Vay tài sản tài chính dài hạn</td>
            <td class="align-c">344</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct344"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct344)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct344)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>3. Trái phiếu chuyển đổi dài hạn - Cấu phần nợ</td>
            <td class="align-c">345</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct345"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct345)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct345)"/></td>
        </tr>  
                      <tr>  
                  <td>4. Trái phiếu phát hành dài hạn</td>
            <td class="align-c">346</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct346"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct346)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct346)"/></td>
        </tr>    
                      <tr>  
                  <td>5. Phải trả người bán dài hạn</td>
            <td class="align-c">347</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct347"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct347)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct347)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>6. Người mua trả tiền trước dài hạn</td>
            <td class="align-c">348</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct348"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct348)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct348)"/></td>
        </tr>  
                      <tr>  
                  <td>7. Chi phí phải trả dài hạn</td>
            <td class="align-c">349</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct349"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct349)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct349)"/></td>
        </tr>    
                      <tr>  
                  <td>8. Phải trả nội bộ dài hạn</td>
            <td class="align-c">350</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct350"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct350)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct350)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>9. Doanh thu chưa thực hiện dài hạn</td>
            <td class="align-c">351</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct351"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct351)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct351)"/></td>
        </tr>  
                      <tr>  
                  <td>10. Nhận ký quỹ, ký cược dài hạn</td>
            <td class="align-c">352</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct352"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct352)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct352)"/></td>
        </tr>    
                      <tr>  
                  <td>11. Các khoản phải trả, phải nộp khác dài hạn</td>
            <td class="align-c">353</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct353"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct353)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct353)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>12. Dự phòng phải trả dài hạn</td>
            <td class="align-c">354</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct354"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct354)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct354)"/></td>
        </tr>  
                      <tr>  
                  <td>13. Quỹ bảo vệ Nhà đầu tư</td>
            <td class="align-c">355</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct355"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct355)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct355)"/></td>
        </tr>    
                      <tr>  
                  <td>14. Thuế thu nhập hoãn lại phải trả</td>
            <td class="align-c">356</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct356"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct356)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct356)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>15. Quỹ phát triển khoa học và công nghệ</td>
            <td class="align-c">357</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct357"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct357)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct357)"/></td>
        </tr>  
        
         <tr>
            <td><b>D. VỐN CHỦ SỞ HỮU (400 = 410 + 420)</b></td>
            <td class="align-c"><b>400</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct400"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct400)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct400)"/></b></td>
        </tr>
               <tr>
            <td><b>I. Vốn chủ sở hữu (410 = 411+412+…+416+417)</b></td>
            <td class="align-c"><b>410</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct410"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct410)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct410)"/></b></td>
        </tr>  
                      <tr>  
                  <td>1. Vốn đầu tư của chủ sở hữu (411=411.1+411.2+…+411.5)</td>
            <td class="align-c">411</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411)"/></td>
        </tr>    
                      <tr>  
                  <td>1.1. Vốn góp của chủ sở hữu (411.1=411.1a+411.1b)</td>
            <td class="align-c">411.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_1)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>a. Cổ phiếu phổ thông có quyền biểu quyết</td>
            <td class="align-c">411.1a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_1a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_1a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_1a)"/></td>
        </tr>  
                      <tr>  
                  <td>b. Cổ phiếu ưu đãi</td>
            <td class="align-c">411.1b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_1b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_1b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_1b)"/></td>
        </tr>    
                      <tr>  
                  <td>1.2. Thặng dư vốn cổ phần</td>
            <td class="align-c">411.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_2)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>1.3. Quyền chọn chuyển đổi trái phiếu - Cấu phần vốn</td>
            <td class="align-c">411.3</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_3"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_3)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_3)"/></td>
        </tr>  
                      <tr>  
                  <td>1.4. Vốn khác của chủ sở hữu</td>
            <td class="align-c">411.4</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_4"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_4)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_4)"/></td>
        </tr>    
                      <tr>  
                  <td>1.5. Cổ phiếu quỹ (*)</td>
            <td class="align-c">411.5</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct411_5"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct411_5)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct411_5)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>2. Chênh lệch đánh giá tài sản theo giá trị hợp lý</td>
            <td class="align-c">412</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct412"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct412)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct412)"/></td>
        </tr>  
                      <tr>  
                  <td>3. Chênh lệch tỷ giá hối đoái</td>
            <td class="align-c">413</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct413"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct413)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct413)"/></td>
        </tr>    
                      <tr>  
                  <td>4. Quỹ dự trữ bổ sung vốn điều lệ</td>
            <td class="align-c">414</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct414"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct414)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct414)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>5. Quỹ dự phòng tài chính và rủi ro nghiệp vụ</td>
            <td class="align-c">415</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct415"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct415)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct415)"/></td>
        </tr>  
                      <tr>  
                  <td>6. Các Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-c">416</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct416"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct416)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct416)"/></td>
        </tr>    
           <tr>  
                  <td>7. Lợi nhuận chưa phân phối (417=417.1+417.2)</td>
            <td class="align-c">417</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct417)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct417)"/></td>
        </tr>            
                    
                 <tr>  
                  <td>7.1. Lợi nhuận sau thuế đã thực hiện</td>
            <td class="align-c">417.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct417_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct417_1)"/></td>
        </tr>  
                      <tr>  
                  <td>7.2. Lợi nhuận chưa thực hiện</td>
            <td class="align-c">417.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct417_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct417_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct417_2)"/></td>
        </tr>    
                      <tr>  
                  <td>8. Lợi ích cổ đông không kiểm soát</td>
            <td class="align-c">418</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ct418"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct418)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct418)"/></td>
        </tr>        
        
         <tr>
            <td><b>II. Nguồn kinh phí và quỹ khác</b></td>
            <td class="align-c"><b>420</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct420"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct420)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct420)"/></b></td>
        </tr>
         <tr>
            <td><b>TỔNG CỘNG NỢ VÀ VỐN CHỦ SỞ HỮU (440 = 300 + 400)</b></td>
            <td class="align-c"><b>440</b></td>
            <td class="align-l"><b><xsl:value-of select="$tkchinh/ThuyetMinh/ct440"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ct440)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ct440)"/></b></td>
        </tr>
        
        <tr>
				<td colspan="5"><b>CÁC CHỈ TIÊU NGOÀI BÁO CÁO TÌNH HÌNH TÀI CHÍNH HỢP NHẤT</b></td>
		</tr>
								
		   <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
             <td class="align-c"><b>Mã số </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số cuối năm </b></td>
            <td class="align-c"><b>Số đầu  năm </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>A</b></td>
            <td class="align-c"><b>B</b></td>
            <td class="align-c"><b>C</b></td>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>		
        				
    <tr>
				<td><b>A. TÀI SẢN CỦA CTCK VÀ TÀI SẢN QUẢN LÝ THEO CAM KẾT</b></td>
		</tr>
				
                      <tr>  
                  <td>1. Tài sản cố định thuê ngoài</td>
            <td class="align-c">001</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct001"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct001)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct001)"/></td>
        </tr>            
                 <tr>     
                         <td>2. Chứng chỉ có giá nhận giữ hộ</td>
            <td class="align-c">002</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct002"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct002)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct002)"/></td>
        </tr>     <tr>   
                          <td>3. Tài sản nhận thế chấp</td>
            <td class="align-c">003</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct003"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct003)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct003)"/></td>
        </tr>    <tr>    
                          <td>4. Nợ khó đòi đã xử lý</td>
            <td class="align-c">004</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct004"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct004)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct004)"/></td>
        </tr>     <tr>   
                          <td>5. Ngoại tệ các loại</td>
            <td class="align-c">005</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct005"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct005)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct005)"/></td>
        </tr>   <tr>     
                          <td>6. Cổ phiếu đang lưu hành</td>
            <td class="align-c">006</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct006"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct006)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct006)"/></td>
        </tr>    <tr>    
                          <td>7. Cổ phiếu quỹ</td>
            <td class="align-c">007</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct007"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct007)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct007)"/></td>
        </tr>      <tr>  

                  <td>8. Tài sản tài chính niêm yết/đăng ký giao dịch tại VSD của CTCK</td>
            <td class="align-c">008</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct008"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct008)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct008)"/></td>
        </tr>      
         <tr> 
                  <td>9. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch của CTCK</td>
            <td class="align-c">009</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct009"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct009)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct009)"/></td>
        </tr>    <tr>    
                          <td>10. Tài sản tài chính chờ về của CTCK</td>
            <td class="align-c">010</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct010"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct010)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct010)"/></td>
        </tr>      
 <tr> 
                  <td>11. Tài sản tài chính sửa lỗi giao dịch của CTCK</td>
            <td class="align-c">011</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct011"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct011)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct011)"/></td>
        </tr>      
 <tr> 
                  <td>12. Tài sản tài chính chưa lưu ký tại VSD của CTCK</td>
            <td class="align-c">012</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct012"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct012)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct012)"/></td>
        </tr>      
         <tr> 
                          <td>13. Tài sản tài chính được hưởng quyền của CTCK</td>
            <td class="align-c">013</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct013"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct013)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct013)"/></td>
        </tr>      
        <tr>
									<td><b>B. TÀI SẢN VÀ CÁC KHOẢN PHẢI TRẢ VỀ TÀI SẢN QUẢN LÝ CAM KẾT VỚI KHÁCH HÀNG</b></td>
								</tr> <tr> 
                  <td>1. Tài sản tài chính niêm yết/đăng ký giao dịch tại VSD của Nhà đầu tư (021=021.1+…+021.6)</td>
            <td class="align-c">021</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021)"/></td>
        </tr>    
           <tr>  
                          <td>a. Tài sản tài chính giao dịch tự do chuyển nhượng</td>
            <td class="align-c">021.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_1)"/></td>
        </tr>      
   <tr>
                  <td>b. Tài sản tài chính hạn chế chuyển nhượng</td>
            <td class="align-c">021.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_2)"/></td>
        </tr>      
   <tr>
                  <td>c. Tài sản tài chính giao dịch cầm cố</td>
            <td class="align-c">021.3</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_3"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_3)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_3)"/></td>
        </tr>      

            <tr>         <td>d. Tài sản tài chính phong tỏa, tạm giữ</td>
            <td class="align-c">021.4</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_4"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_4)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_4)"/></td>
        </tr>      
        <tr>
                  <td>e. Tài sản tài chính chờ thanh toán</td>
            <td class="align-c">021.5</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_5"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_5)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_5)"/></td>
        </tr>   
           <tr>
                  <td>f. Tài sản tài chính chờ cho vay</td>
            <td class="align-c">021.6</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct021_6"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct021_6)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct021_6)"/></td>
        </tr>   
           <tr>
                  <td>2. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch của Nhà đầu tư (022=022.1+…+022.4)</td>
            <td class="align-c">022</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct022"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct022)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct022)"/></td>
        </tr>   
           <tr>

                  <td>a. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch, tự do chuyển nhượng</td>
            <td class="align-c">022.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct022_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct022_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct022_1)"/></td>
        </tr>   
   <tr>
                  <td>b. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch, hạn chế chuyển nhượng</td>
            <td class="align-c">022.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct022_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct022_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct022_2)"/></td>
        </tr>   
           <tr>
                  <td>c. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch, cầm cố</td>
            <td class="align-c">022.3</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct022_3"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct022_3)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct022_3)"/></td>
        </tr>   
        <tr>   
                  <td>d. Tài sản tài chính đã lưu ký tại VSD và chưa giao dịch, phong tỏa, tạm giữ</td>
            <td class="align-c">022.4</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct022_4"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct022_4)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct022_4)"/></td>
        </tr>   
          <tr> 
                  <td>3. Tài sản tài chính chờ về của Nhà đầu tư</td>
            <td class="align-c">023</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct023"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct023)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct023)"/></td>
        </tr>  
           <tr>
                    <td>4. Tài sản tài chính sửa lỗi giao dịch của Nhà đầu tư</td>
            <td class="align-c">024a</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct024a"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct024a)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct024a)"/></td>
        </tr>
           <tr>
                          <td>5. Tài sản tài chính chưa lưu ký tại VSD của Nhà đầu tư</td>
            <td class="align-c">024b</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct024b"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct024b)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct024b)"/></td>
        </tr>
           <tr>
                          <td>6. Tài sản tài chính được hưởng quyền của Nhà đầu tư</td>
            <td class="align-c">025</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct025"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct025)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct025)"/></td>
        </tr> <tr> 
                          <td>7. Tiền gửi của khách hàng</td>
            <td class="align-c">026</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct026"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct026)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct026)"/></td>
        </tr>
           <tr>
                          <td>7.1. Tiền gửi của Nhà đầu tư về giao dịch chứng khoán theo phương thức CTCK quản lý</td>
            <td class="align-c">027</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct027"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct027)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct027)"/></td>
        </tr>
           <tr>
                          <td>7.2. Tiền gửi tổng hợp giao dịch chứng khoán cho khách hàng</td>
            <td class="align-c">028</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct028"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct028)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct028)"/></td>
        </tr>
           <tr>
                          <td>7.3. Tiền gửi bù trừ và thanh toán giao dịch chứng khoán</td>
            <td class="align-c">029</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct029"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct029)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct029)"/></td>
        </tr>
      
                <tr>
                          <td>a. Tiền gửi bù trừ và thanh toán giao dịch chứng khoán Nhà đầu tư trong nước</td>
            <td class="align-c">029.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct029_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct029_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct029_1)"/></td>
        </tr>
      
                 <tr>
                          <td>b. Tiền gửi bù trừ và thanh toán giao dịch chứng khoán Nhà đầu tư nước ngoài</td>
            <td class="align-c">029.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct029_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct029_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct029_2)"/></td>
        </tr>
      
                 <tr>
                          <td>7.4. Tiền gửi của Tổ chức phát hành chứng khoán</td>
            <td class="align-c">030</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct030"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct030)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct030)"/></td>
        </tr>
      
                 <tr>
                          <td>8. Phải trả Nhà đầu tư về tiền gửi giao dịch chứng khoán theo phương thức CTCK quản lý (031=031.1+031.2)</td>
            <td class="align-c">031</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct031"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct031)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct031)"/></td>
        </tr>
      
      
           <tr>
                          <td>8.1. Phải trả Nhà đầu tư trong nước về tiền gửi giao dịch chứng khoán theo phương thức CTCK quản lý</td>
            <td class="align-c">031.1</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct031_1"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct031_1)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct031_1)"/></td>
        </tr>
      
                 <tr>
                          <td>8.2. Phải trả Nhà đầu tư nước ngoài về tiền gửi giao dịch chứng khoán theo phương thức CTCK quản lý</td>
            <td class="align-c">031.2</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct031_2"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct031_2)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct031_2)"/></td>
        </tr>
      
                 <tr>
                          <td>9. Phải trả Tổ chức phát hành chứng khoán</td>
            <td class="align-c">032</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct032"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct032)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct032)"/></td>
        </tr>
      

           <tr>
                          <td>10. Phải thu của khách hàng về lỗi giao dịch các tài sản tài chính</td>
            <td class="align-c">033</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct033"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct033)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct033)"/></td>
        </tr>
      
                 <tr>
                          <td>11. Phải trả của khách hàng về lỗi giao dịch các tài sản tài chính</td>
            <td class="align-c">034</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct034"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct034)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct034)"/></td>
        </tr>
      

           <tr>
                          <td>12. Phải trả cổ tức, gốc và lãi trái phiếu</td>
            <td class="align-c">035</td>
            <td class="align-l"><xsl:value-of select="$tkchinh/ThuyetMinh/ChiTieuNgoaiBang/ct035"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoCuoiNam/ChiTieuNgoaiBang/ct035)"/></td>
            <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoDauNam/ChiTieuNgoaiBang/ct035)"/></td>
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
<br/><br/><br/>
		
</xsl:template>		
</xsl:stylesheet>