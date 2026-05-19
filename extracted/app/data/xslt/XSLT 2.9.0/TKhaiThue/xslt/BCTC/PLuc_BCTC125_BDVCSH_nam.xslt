<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL2"   select="''"/>
			<xsl:call-template name="tkhaiHeader-plucBCTC125_BDVCSH">
		<xsl:with-param name="mauTKhai"   select="'B05 - CTQ'"/>
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
			<td class="align-c" rowspan="2"><b>Năm trước</b></td>
			<td class="align-c" rowspan="2"><b>Năm nay</b></td>
			
			<td class="align-c" colspan="2"><b>Năm trước</b></td>
			<td class="align-c" colspan="2"><b>Năm nay</b></td>
			
			<td class="align-c" rowspan="2"><b>Năm trước</b></td>
			<td class="align-c" rowspan="2"><b>Năm nay</b></td>
		 </tr>
        <!-- <tr> -->
            <!-- <td class="align-c" rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
            <!-- <td class="align-c" rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
            <!-- <td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
            <!-- <td class="align-c" colspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
            <!-- <td class="align-c"  rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThueTruMot($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
             <!-- <td class="align-c"  rowspan="2"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></td> -->
        <!-- </tr>   -->
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
            <td>1. Vốn đầu tư của chủ sở hữu</td>
            <td class="align-l"><xsl:value-of select="$pluc04/VonDauTuCSH/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonDauTuCSH/soDuCN_NamNay"/></td>
       </tr>
	   <xsl:for-each select="$pluc04/VonDauTuCSH/ChiTietVonDauTuCSH">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
	   <tr>
            <td>2. Thặng dư vốn cổ phần</td>
            <td class="align-l"><xsl:value-of select="$pluc04/ThangDuVonCP/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ThangDuVonCP/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/ThangDuVonCP/ChiTietThangDuVonCP">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>3. Vốn khác của chủ sở hữu: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/VonKhacCSH/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/VonKhacCSH/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/VonKhacCSH/ChiTietVonKhacCSH">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>4. Cổ phiếu quỹ (*): </td>
            <td class="align-l"><xsl:value-of select="$pluc04/CoPhieuQuy/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/CoPhieuQuy/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/CoPhieuQuy/ChiTietCoPhieuQuy">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>5. Chênh lệch đánh giá lại tài sản: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechDanhGiaLai/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/ChenhLechDanhGiaLai/ChiTietChenhLechDanhGiaLai">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
	    <tr>
            <td>6. Chênh lệch tỷ giá hối đoái: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/ChenhLechTyGia/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/ChenhLechTyGia/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/ChenhLechTyGia/ChiTietChenhLechTyGia">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>7. Quỹ đầu tư phát triển: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/QuyDauTu/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDauTu/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/QuyDauTu/ChiTietQuyDauTu">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>8. Quỹ dự phòng tài chính: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/QuyDuPhong/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyDuPhong/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/QuyDuPhong/ChiTietQuyDuPhong">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>  
		<tr>
            <td>9. Các Quỹ khác thuộc vốn chủ sở hữu: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/QuyKhac/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/QuyKhac/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/QuyKhac/ChiTietQuyKhac">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>
		<tr>
            <td>10. Lợi nhuận chưa phân phối: </td>
            <td class="align-l"><xsl:value-of select="$pluc04/LoiNhuan/thuyetMinh"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/soDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/soDuDN_NamNay"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/namTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/namTruoc_Giam"/></td>          
            <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/namNay_Tang"/></td>
             <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/namNay_Giam"/></td>    
           <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/soDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/LoiNhuan/soDuCN_NamNay"/></td>
       </tr>
	    <xsl:for-each select="$pluc04/LoiNhuan/ChiTietLoiNhuan">
			<xsl:variable name="currentRows" select='position()' />
						<tr>
							
							<td class="align-l"><xsl:value-of select="ten_ChiTieu"/></td>
							<td class="align-l"><xsl:value-of select="thuyetMinh"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuDN_NamNay"/></td>
							<td class="number align-r"><xsl:value-of select="namTruoc_Tang"/></td>          
							<td class="number align-r"><xsl:value-of select="namTruoc_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="namNay_Tang"/></td>    
							<td class="number align-r"><xsl:value-of select="namNay_Giam"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamTruoc"/></td>
							<td class="number align-r"><xsl:value-of select="soDuCN_NamNay"/></td>
						</tr>	 
		</xsl:for-each>			
		<tr>
            <td><b>Cộng</b></td>
            <td></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_SoDuDN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_SoDuDN_NamNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_NamTruoc_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_NamTruoc_Giam"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_NamNay_Tang"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_NamNay_Giam"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_SoDuCN_NamTruoc"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc04/tong_SoDuCN_NamNay"/></td>
            
       </tr>
 </table>
 </div>	
 </div>
    <br/><br/>
    
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>


<div id="sigDiv"></div>
</td>
</tr>


</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
