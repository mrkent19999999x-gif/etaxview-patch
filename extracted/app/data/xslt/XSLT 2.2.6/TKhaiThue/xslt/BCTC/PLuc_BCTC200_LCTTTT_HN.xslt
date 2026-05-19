<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 200/2014/TT-BTC ngày 22/12/2014 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp trực tiếp) (*)'"/>
	

<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 03 – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ (HỢP NHẤT)'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>
	 
	<div class="ndungtkhai_div">
	<div class="content">
	
    <!--<div class="align-c"><b>BÁO CÁO LƯU CHUYỂN TIỀN TỆ</b></div>	<br/>
    <div class="align-c"><b><i>(Theo phương pháp trực tiếp) (*)</i></b></div>	<br/>
    <div class="align-c"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></div>	<br/> -->
<table>
	<tr>
		<xsl:if test="$tkchinh/hoatDongLienTuc = 'true' or $tkchinh/hoatDongLienTuc = '1'">
		<!--
		
		<td class="align-r"><i>Đơn vị tính: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/donViTinh_ten"/></i></td><br/>
		<td class="align-r"> <i>Tỷ giá quy đổi: </i><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/tyGiaQuyDoi"/></b></td><br/>
		
		-->
		</xsl:if>
		<xsl:if test="$tkchinh/hoatDongKhongLienTuc = 'true' or $tkchinh/hoatDongKhongLienTuc = '1'">
			<!--
		<td class="align-r"><i>Đơn vị tính: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/donViTinh_ten"/></i></td><br/>
		<td class="align-r"><i>Tỷ giá quy đổi: </i><b class="number"><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/tyGiaQuyDoi"/></b></td><br/>
-->
		</xsl:if>
	</tr>
</table>

    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã số</b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2 </b></td>
            <td class="align-c"><b>3 </b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1. Tiền thu từ bán hàng, cung cấp dịch vụ và doanh thu khác</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Tiền chi trả cho người cung cấp hàng hóa và dịch vụ</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <td>3. Tiền chi trả cho người lao động</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>4. Tiền lãi vay đã trả</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>5. Thuế thu nhập doanh nghiệp đã nộp</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>6. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>7. Tiền chi khác cho hoạt động kinh doanh</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct07"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct20"/></b></td>
            </b>
        </tr>
        
        
        <tr>
            <td><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1.Tiền chi để mua sắm, xây dựng TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td>3.Tiền chi cho vay, mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td>4.Tiền thu hồi cho vay, bán lại các công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct24"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct24"/></td>
        </tr>
        <tr>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct26"/></td>
        </tr>
        <tr>
            <td>7.Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct27"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct27"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư </b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct30"/></b></td>
            </b>
        </tr>
        
        
        <tr>
            <td><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
            <td class="align-c"></td>
        </tr>
        <tr>
            <td>1.Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>3.Tiền thu từ đi vay</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>4.Tiền trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>5.Tiền trả nợ gốc thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct36"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct40"/></b></td></b>
        </tr>
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần trong kỳ (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td><b>Tiền và tương đương tiền đầu kỳ</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct60"/></b></td>
        </tr>
        <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/NamTruoc/ct61"/></td>
        </tr>
        <tr>
            <b>
            <td><b>Tiền và tương đương tiền cuối kỳ (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamNay/ct70"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/NamTruoc/ct70"/></b></td></b>
        </tr>

 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	

<xsl:if test="$tkchinh/hoatDongLienTuc = 'true' or $tkchinh/hoatDongLienTuc = '1'">
<xsl:call-template name="tkhaiFooter-BCTC200-LienTuc">   
</xsl:call-template>
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/donViCCapDVuKToan"/></b></div><br/>		<br/>
</xsl:if>

<xsl:if test="$tkchinh/hoatDongKhongLienTuc = 'true' or $tkchinh/hoatDongKhongLienTuc = '1'">
<xsl:call-template name="tkhaiFooter-BCTC200-KoLienTuc">   
</xsl:call-template>
<div><b>Số chứng chỉ hành nghề: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/soChungChiHanhNghe"/></b></div><br/>
<div><b>Đơn vị cung cấp dịch vụ kế toán: <xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/soChungChiHanhNghe"/></b></div><br/>		<br/>
</xsl:if>

<div class="ghichu"><b><i>Ghi chú:</i></b> Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề,  tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
