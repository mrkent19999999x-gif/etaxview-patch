<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo Thông tư số 200/2014/TT-BTC Ngày 22/12/2014 của Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
		
<!-- KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD">	
	<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_KQHDSXKD' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 02 – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH (HỢP NHẤT)'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
<!--    <div class="align-c"><b>BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH </b></div>	<br/>
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
            <td class="align-c"><b>2</b></td>
            <td class="align-c"><b>3</b></td>
            <td class="align-c"><b>4 </b></td>
            <td class="align-c"><b>5 </b></td>
        </tr>
       
        <tr>
            <td>1. Doanh thu bán hàng và cung cấp dịch vụ</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct01"/></td>
        </tr>
        <tr>
            <td>2. Các khoản giảm trừ doanh thu</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct02"/></td>
        </tr>
        <tr>
            <b>
            <td><b>3. Doanh thu thuần về bán hàng và cung cấp dịch vụ (10 = 01 - 02)</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct10"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct10"/></b></td>
            </b>
        </tr>
        <tr>
            <td>4. Giá vốn hàng bán</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct11"/></td>
        </tr>
        <tr>
            <b>
            <td><b>5. Lợi nhuận gộp về bán hàng và cung cấp dịch vụ (20 = 10 - 11)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct20"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct20"/></b></td>
            </b>
        </tr>
        <tr>
            <td>6. Doanh thu hoạt động tài chính</td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct21"/></td>
        </tr>
        <tr>
            <td>7. Chi phí tài chính</td>
            <td class="align-c">22</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct22"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct22"/></td>
        </tr>
        <tr>
            <td>- Trong đó: Chi phí lãi vay</td>
            <td class="align-c">23</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct23"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct23"/></td>
        </tr>
        <tr>
            <td>8. Chi phí bán hàng</td>
            <td class="align-c">25</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct25"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct25"/></td>
        </tr>
        <tr>
            <td>9. Chi phí quản lý doanh nghiệp</td>
            <td class="align-c">26</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct26"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct26"/></td>
        </tr>
        <tr>
            <b>
            <td><b>10 Lợi nhuận thuần từ hoạt động kinh doanh {30 = 20 + (21 - 22) - (25 + 26)}</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct30"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct30"/></b></td>
            </b>
        </tr>
        <tr>
            <td>11. Thu nhập khác</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>12. Chi phí khác</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <b>
            <td><b>13. Lợi nhuận khác (40 = 31 - 32)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct40"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct40"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td><b>14. Tổng lợi nhuận kế toán trước thuế (50 = 30 + 40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct50"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct50"/></b></td>
            </b>
        </tr>
        <tr>
            <td>15. Chi phí thuế TNDN hiện hành</td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct51"/></td>
        </tr>
        <tr>
            <td>16. Chi phí thuế TNDN hoãn lại</td>
            <td class="align-c">52</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct52"/></td>
        </tr>
        <tr>
            <b>
            <td><b>17. Lợi nhuận sau thuế thu nhập doanh nghiệp (60 = 50 - 51 - 52)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc01/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc01/NamTruoc/ct60"/></b></td>
            </b>
        </tr>
        <tr>
            <td>18. Lãi cơ bản trên cổ phiếu </td>
            <td class="align-c">70</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct70"/></td>
        </tr>
                <tr>
            <td>19. Lãi suy giảm trên cổ phiếu </td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$pluc01/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc01/NamTruoc/ct71"/></td>
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


<div class="ghichu">(*) Chỉ áp dụng tại công ty cổ phần</div><br/>
<div><b><i>Ghi chú:</i></b> Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề,  tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề.</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
