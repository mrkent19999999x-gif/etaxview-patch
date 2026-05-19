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
		<xsl:with-param name="mauTKhai"   select="'B04 – CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO TÌNH HÌNH BIẾN ĐỘNG VỐN CHỦ SỞ HỮU'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BCTHBDVCSH">	
	<xsl:variable name="pluc04" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BCTHBDVCSH' />	
	

	 
	<div class="ndungtkhai_div">
	<div class="content">
	
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="3"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="3"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Số dư đầu năm</b></td>
            <td class="align-c" colspan="4"><b>Số tăng/giảm</b></td>
            <td class="align-c" colspan="2"><b>Số dư cuối năm</b></td>
        </tr>
        
             <tr>
            <td class="align-c" rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
            <td class="align-c" rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
            <td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
            <td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
            <td class="align-c"  rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
             <td class="align-c"  rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td>
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
             <td class="align-c"><b>7</b></td>
            <td class="align-c"><b>8</b></td>
        </tr>
        <tr>
            <td><b>I. Biến động vốn chủ sở hữu</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>1. Vốn đầu tư của chủ sở hữu (1=1.1+...+1.5)</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1"/></td>
       </tr>
               <tr>
            <td>1.1. Cổ phiếu phổ thông có quyền biểu quyết</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1_1"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1_1"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1_1"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1_1"/></td>
       </tr>
                    <tr>
            <td>1.2. Cổ phiếu ưu đãi</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1_2"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1_2"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1_2"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1_2"/></td>
       </tr>
                           <tr>
            <td>1.3. Thặng dư vốn cổ phần</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1_3"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1_3"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1_3"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1_3"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1_3"/></td>
       </tr>
                                  <tr>
            <td>1.4. Quyền chọn chuyển đổi trái phiếu - Cấu phần vốn</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1_4"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1_4"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1_4"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1_4"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1_4"/></td>
       </tr>
              <tr>
            <td>1.5. Vốn khác của chủ sở hữu</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_1_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_1_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_1_5"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_1_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_1_5"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_1_5"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_1_5"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_1_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_1_5"/></td>
       </tr>
                <tr>
            <td>2. Cổ phiếu quỹ (*) </td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_2"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_2"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_2"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_2"/></td>
       </tr>
                     <tr>
            <td>3. Quỹ dự trữ bổ sung vốn điều lệ</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_3"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_3"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_3"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_3"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_3"/></td>
       </tr>
       
              <tr>
            <td>4. Quỹ dự phòng tài chính và rủi ro nghiệp vụ</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_4"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_4"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_4"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_4"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_4"/></td>
       </tr>
                     <tr>
            <td>5. Chênh lệch đánh giá lại tài sản theo giá trị hợp lý</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_5"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_5"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_5"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_5"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_5"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_5"/></td>
       </tr>
       
              <tr>
            <td>6.Chênh lệch tỷ giá hối đoái</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_6"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_6"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_6"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_6"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_6"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_6"/></td>
       </tr>
       
              <tr>
            <td>7. Các Quỹ khác thuộc vốn chủ sở hữu</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_7"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_7"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_7"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_7"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_7"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_7"/></td>
       </tr>
       
              <tr>
            <td>8. Lợi nhuận chưa phân phối (8=8.1+8.2)</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_8"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_8"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_8"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_8"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_8"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_8"/></td>
       </tr>
       
              <tr>
            <td>8.1. Lợi nhuận sau thuế đã thực hiện</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_8_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_8_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_8_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_8_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_8_1"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_8_1"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_8_1"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_8_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_8_1"/></td>
       </tr>
       
              <tr>
            <td>8.2. Lợi nhuận chưa thực hiện</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctI_8_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctI_8_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctI_8_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctI_8_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctI_8_2"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctI_8_2"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctI_8_2"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctI_8_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctI_8_2"/></td>
       </tr>
                     <tr>
            <td><b>Tổng cộng (1+2+...+7+8)</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc04/ThuyetMinh/tongCong_I"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuDauNam/NamTruoc/tongCong_I)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuDauNam/NamNay/tongCong_I)"/></b></td>
           <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamTruoc/Tang/tongCong_I)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamTruoc/Giam/tongCong_I)"/></b></td>          
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamNay/Tang/tongCong_I)"/></b></td>
             <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamNay/Giam/tongCong_I)"/></b></td>    
           <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuCuoiNam/NamTruoc/tongCong_I)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuCuoiNam/NamNay/tongCong_I)"/></b></td>
       </tr>
       <tr>
						<td><b>II. Thu nhập toàn diện khác</b></td>
						<td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
							</tr>
              <tr>
            <td>1. Lãi/lỗ từ đánh giá lại các TSTC sẵn sàng để bán</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctII_1"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctII_1"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctII_1"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctII_1"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctII_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctII_1"/></td>
       </tr>
                     <tr>
            <td>2. Lãi, lỗ đánh giá lại TĐ theo mô hình giá trị hợp lý</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctII_2"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctII_2"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctII_2"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctII_2"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctII_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctII_2"/></td>
       </tr>
       
              <tr>
            <td>3. Lãi, lỗ chênh lệch tỷ giá của hoạt động tại nước ngoài</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctII_3"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctII_3"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctII_3"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctII_3"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctII_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctII_3"/></td>
       </tr>
       
              <tr>
            <td>4. Lãi, lỗ toàn diện khác</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThuyetMinh/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamTruoc/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuDauNam/NamNay/ctII_4"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Tang/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamTruoc/Giam/ctII_4"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Tang/ctII_4"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/SoTangGiam/NamNay/Giam/ctII_4"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamTruoc/ctII_4"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/SoDuCuoiNam/NamNay/ctII_4"/></td>
       </tr>
       
                        <tr>
            <td><b>Tổng cộng (1+2+3+4)</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc04/ThuyetMinh/tongCong_II"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuDauNam/NamTruoc/tongCong_II)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuDauNam/NamNay/tongCong_II)"/></b></td>
           <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamTruoc/Tang/tongCong_II)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamTruoc/Giam/tongCong_II)"/></b></td>          
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamNay/Tang/tongCong_II)"/></b></td>
             <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoTangGiam/NamNay/Giam/tongCong_II)"/></b></td>    
           <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuCuoiNam/NamTruoc/tongCong_II)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc04/SoDuCuoiNam/NamNay/tongCong_II)"/></b></td>
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
