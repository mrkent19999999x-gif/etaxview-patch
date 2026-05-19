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

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTT' />	
	
		<xsl:call-template name="tkhaiHeader-plucBCTC200">
		<xsl:with-param name="mauTKhai"   select="'B 03b – DN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ HỢP NHẤT  '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
<!--    <div class="align-c"><b>BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH </b></div>	<br/>
    <div class="align-c"><b><xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b></div>	<br/> -->

    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>Chỉ tiêu </b></td>
            <td class="align-c" rowspan="2"><b>Mã số</b></td>
            <td class="align-c" rowspan="2"><b>Thuyết minh </b></td>
            <td class="align-c" colspan="2"><b>Quý</b></td>
            <td class="align-c" colspan="2"><b>Luỹ kế từ đầu năm đến cuối quý này </b></td>
        </tr>
       <tr>
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>  
            <td class="align-c"><b>Năm nay </b></td>
            <td class="align-c"><b>Năm trước </b></td>
        </tr> 
        <tr>
            <td class="align-c">1</td>
            <td class="align-c">2</td>
            <td class="align-c">3</td>
            <td class="align-c">4 </td>
            <td class="align-c">5 </td>
            <td class="align-c">6 </td>
            <td class="align-c">7 </td>
        </tr>
        <tr>
            <td>1. Lưu chuyển tiền thuần từ hoạt động kinh doanh</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct20"/></td>
        </tr>
          <tr>
            <td>2. Lưu chuyển tiền thuần từ hoạt động đầu tư</td>
            <td class="align-c">30</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct30"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct30"/></td>
        </tr>
           <tr>
            <td>3. Lưu chuyển tiền thuần từ hoạt động tài chính</td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct40"/></td>
           <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct40"/></td>
        </tr>
           <tr>
            <td>4. Lưu chuyển tiền thuần trong kỳ(50= 20+30+40)</td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct50"/></td>
			<td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct50"/></td>
        </tr>
            <tr>
            <td>5. Tiền và tương đương tiền đầu kỳ</td>
            <td class="align-c">60</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct60"/></td>
    		<td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct60"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct60"/></td>
        </tr>
            <tr>
            <td>6. Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ </td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct61"/></td>
			<td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct61"/></td>
        </tr>
            <tr>
            <td>7. Ảnh hưởng của việc tái phân loại các khoản tương đương tiền cuối kỳ</td>
            <td class="align-c">62</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct62"/></td>
     		<td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct62"/></td>
        </tr>
           <tr>
            <td>8. Tiền và tương đương tiền cuối kỳ (70 = 50+60+61+62)</td>
            <td class="align-c">70</td>
            <td class="align-l"><xsl:value-of select="$pluc02/ThuyetMinh/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/QuyNamTruoc/ct70"/></td>
			<td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamNay/ct70"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/LuyKeNamTruoc/ct70"/></td>
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

<div class="phanky">
 <tr><td colspan="3"> <xsl:value-of select="$pluc02/PhanKy/ngayLap"/></td> </tr>
 <tr>
 <td> <xsl:value-of select="$pluc02/PhanKy/nguoiLapBieu"/> </td>
<td> <xsl:value-of select="$pluc02/PhanKy/keToanTruong"/> </td>
<td> <xsl:value-of select="$pluc02/PhanKy/giamDoc"/> </td>
  </tr>
</div><br/>
<div><b><i>Ghi chú:</i></b> Đối với người lập biểu là các đơn vị dịch vụ kế toán phải ghi rõ Số chứng chỉ hành nghề, tên và địa chỉ Đơn vị cung cấp dịch vụ kế toán. Người lập biểu là cá nhân ghi rõ Số chứng chỉ hành nghề..</div>
<div class="ghichu">((*) Nội dung các chỉ tiêu và mã số của báo cáo này như các chỉ tiêu của Báo cáo lưu chuyển tiền tệ năm - Mẫu B03 –DN</div><br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>
</xsl:template>		
</xsl:stylesheet>
