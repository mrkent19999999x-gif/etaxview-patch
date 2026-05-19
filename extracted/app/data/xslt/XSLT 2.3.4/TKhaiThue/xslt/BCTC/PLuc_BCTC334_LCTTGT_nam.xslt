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
		<xsl:variable name="ghiChuPL2"   select="'(Theo phương pháp gián tiếp) (*)'"/>
	<xsl:call-template name="tkhaiHeader-plucBCTC334">
		<xsl:with-param name="mauTKhai"   select="'B03b – CTCK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO LƯU CHUYỂN TIỀN TỆ RIÊNG'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL2"/>
	 </xsl:call-template>
		

<!-- LƯU CHUYỂN TIỀN TỆ GIÁN TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT">	
	<xsl:variable name="pluc03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTGT' />	
	
	
	  
	<div class="ndungtkhai_div">
	<div class="content">
<div class="align-r"><i>Đơn vị tính: Đồng Việt Nam</i></div><br/>
     <table class="tkhai_table">
        <tr>
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
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>
        <tr>
            <td><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
        </tr>
        <tr>
            <td><b>1. Lợi nhuận trước Thuế Thu nhập doanh nghiệp </b></td>
            <td class="align-c"><b>01</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct01"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct01"/></b></td>
        </tr>
                <tr>
            <td><b>2. Điều chỉnh cho các khoản: (02=03+…+09) </b></td>
            <td class="align-c"><b>02</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct02"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct02"/></b></td>
        </tr>

        <tr>
            <td>- Khấu hao TSCĐ</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct03"/></td>
        </tr>
        <tr>
            <td>- Các khoản dự phòng </td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct04"/></td>
        </tr>
        <tr>
            <td>(- Lãi) hoặc (+ lỗ) chênh lệch tỷ giá hối đoái chưa thực hiện.</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct05"/></td>
        </tr>
        <tr>
            <td>- Chi phí lãi vay </td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct06"/></td>
        </tr>
        <tr>
            <td>- Lãi, lỗ từ hoạt động đầu tư </td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct07"/></td>
        </tr>
        <tr>
            <td>- Dự thu tiền lãi </td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct08"/></td>
        </tr>
        <tr>
            <td>- Các khoản điều chỉnh khác </td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct09"/></td>
        </tr>
    <tr>
            <td><b>3. Tăng các chi phí phi tiền tệ  (10=11+…+17)</b></td>
            <td class="align-c"><b>10</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct10"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct10)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct10)"/></b></td>
        </tr>
        <tr>
            <td> - Lỗ đánh giá lại giá trị các tài sản tài chính ghi nhận thông qua lãi/lỗ FVTPL</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct11"/></td>
        </tr>
        <tr>
            <td>-- Lỗ suy giảm giá trị Các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct12"/></td>
        </tr>
        <tr>
            <td>- Lỗ suy giảm giá trị Các khoản cho vay </td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct13"/></td>
        </tr>
        <tr>
            <td>- Lỗ về ghi nhận chênh lệch đánh giá theo giá trị hợp lý TSTC sẵn sàng để bán AFS khi phân loại lại</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct14"/></td>
        </tr>
        <tr>
            <td>- Suy giảm giá trị của các tài sản cố định, BĐSĐT </td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct15"/></td>
        </tr>
        <tr>
            <td>- Chi phí dự phòng suy giảm giá trị các khoản đầu tư tài chính dài hạn</td>
            <td class="align-c">16</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct16"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct16"/></td>
        </tr>
                <tr>
            <td>- Lỗ khác  </td>
            <td class="align-c">17</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct17"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct17"/></td>
        </tr>
    <tr>
            <td><b>4. Giảm các doanh thu phi tiền tệ  (18=19+20+21)</b></td>
            <td class="align-c"><b>18</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct18"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct18)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct18)"/></b></td>
        </tr>
                       <tr>
            <td>- Lãi đánh giá lại giá trị các tài sản tài chính ghi nhận thông qua lãi/lỗ FVTPL</td>
            <td class="align-c">19</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct19"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct19"/></td>
        </tr>
                       <tr>
            <td>- Lãi về ghi nhận chênh lệch đánh giá theo giá trị hợp lý TSTC sẵn sàng để bán (AFS) khi phân loại lại</td>
            <td class="align-c">20</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct20"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct20"/></td>
        </tr>
                       <tr>
            <td>- Lãi khác </td>
            <td class="align-c">21</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct21"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct21"/></td>
        </tr>
            <tr>
            <td><b>5. Lợi nhuận từ hoạt động kinh doanh trước thay đổi vốn lưu động (30 =01+02+10+18)</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct30)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct30)"/></b></td>
        </tr>

        <tr>
            <td>- Tăng (giảm) tài sản tài chính ghi nhận thông qua lãi/lỗ FVTPL</td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct31"/></td>
        </tr>
        <tr>
            <td>- Tăng (giảm) Các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct32"/></td>
        </tr>
        <tr>
            <td>- Tăng (giảm) Các khoản cho vay </td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct33"/></td>
        </tr>
        <tr>
            <td>- Tăng (giảm) tài sản tài chính sẵn sàng để bán AFS</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct34"/></td>
        </tr>
        <tr>
            <td>(-) Tăng, (+) giảm phải thu bán các tài sản tài chính</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct35"/></td>
        </tr>
        <tr>
            <td>(-) Tăng, (+) giảm phải thu và dự thu cổ tức, tiền lãi các tài sản tài chính</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct36"/></td>
        </tr>
        <tr>
            <td>(-) Tăng, (+) giảm các khoản phải thu các dịch vụ CTCK cung cấp</td>
            <td class="align-c">37</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct37"/></td>
        </tr>

 
        <tr>
            <td>(-) Tăng, (+) giảm các khoản phải thu về lỗi giao dịch các TSTC</td>
            <td class="align-c">38</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct38"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct38"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct38"/></td>
        </tr>
        <tr>
            <td>(-) Tăng, (+) giảm các khoản phải thu khác </td>
            <td class="align-c">39</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct39"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct39"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct39"/></td>
        </tr>
        
        <tr>
            <td>- Tăng (giảm) các tài sản khác </td>
            <td class="align-c">40</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct40"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct40"/></td>
        </tr>
        <tr>
            <td>- Tăng (giảm) chi phí phải trả (không bao gồm chi phí lãi vay)</td>
            <td class="align-c">41</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct41"/></td>
        </tr>
        <tr>
            <td>- Tăng (giảm) chi phí trả trước</td>
            <td class="align-c">42</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct42"/></td>
        </tr>
        <tr>
            <td>(-) Thuế TNDN đã nộp </td>
            <td class="align-c">43</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct43"/></td>
        </tr>
        
               <tr>
            <td>(-) Lãi vay đã trả </td>
            <td class="align-c">44</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct44"/></td>
        </tr>
                <tr>
            <td>- Tăng (giảm) phải trả cho người bán </td>
            <td class="align-c">45</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct45"/></td>
        </tr>
                <tr>
            <td>- Tăng (giảm) các khoản trích nộp phúc lợi nhân viên</td>
            <td class="align-c">46</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct46"/></td>
        </tr>
                <tr>
            <td>- Tăng (giảm) thuế và các khoản phải nộp Nhà nước (Không bao gồm thuế TNDN đã nộp)</td>
            <td class="align-c">47</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct47"/></td>
        </tr>

        <tr>
            <td>- Tăng (giảm) phải trả người lao động </td>
            <td class="align-c">48</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct48"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct48"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct48"/></td>
        </tr>
                <tr>
            <td>- Tăng (giảm) phải trả về lỗi giao dịch các TSTC </td>
            <td class="align-c">49</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct49"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct49"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct49"/></td>
        </tr>

        <tr>
            <td>- Tăng (giảm) phải trả, phải nộp khác </td>
            <td class="align-c">50</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct50"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct50"/></td>
        </tr>
                <tr>
            <td>- Tiền thu khác từ hoạt động kinh doanh </td>
            <td class="align-c">51</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct51"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct51"/></td>
        </tr>
                 <tr>
            <td>- Tiền chi khác cho hoạt động kinh doanh </td>
            <td class="align-c">52</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct52"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct52"/></td>
        </tr>
       
        <tr>
            <b>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh (60=30+31+...+51+52)</b></td>
            <td class="align-c"><b>60</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamNay/ct60"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc03/NamTruoc/ct60"/></b></td>
            </b>
        </tr>
<tr>
<td><b>II. Lưu chuyển tiền từ hoạt động đầu tư  </b></td>
</tr>
        <tr>
            <td>1. Tiền chi để mua sắm, xây dựng TSCĐ, BĐSĐT và các tài sản khác</td>
            <td class="align-c">61</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct61"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct61"/></td>
        </tr>
           <tr>
            <td>2. Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐSĐT và các tài sản khác</td>
            <td class="align-c">62</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct62"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct62"/></td>
        </tr>
                <tr>
            <td>3. Tiền chi đầu tư vốn vào công ty con, công ty liên doanh, liên kết và đầu tư khác</td>
            <td class="align-c">63</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct63"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct63"/></td>
        </tr>
                <tr>
            <td>4. Tiền thu hồi các khoản đầu tư vào công ty con, công ty liên doanh, liên kết và đầu tư khác</td>
            <td class="align-c">64</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct64"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct64"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct64"/></td>
        </tr>
        
        <tr>
            <td>5. Tiền thu về cổ tức và lợi nhuận được chia từ các khoản đầu tư tài chính dài hạn</td>
            <td class="align-c">65</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct65"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct65"/></td>
        </tr>
            <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư  (70=61+62+63+64+65)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct70"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct70)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct70)"/></b></td>
        </tr>
        <tr>
							<td><b>III. Lưu chuyển tiền từ hoạt động tài chính </b></td>
								</tr>
                <tr>
            <td>1. Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">71</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct71"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct71"/></td>
        </tr>
        
        <tr>
            <td>2. Tiền chi trả vốn góp cho chủ sở hữu, mua lại cổ phiếu phát hành</td>
            <td class="align-c">72</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct72"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct72"/></td>
        </tr>     
            <tr>
            <td>3. Tiền vay gốc </td>
            <td class="align-c">73</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct73"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct73"/></td>
        </tr>  
             <tr>
            <td>3.1. Tiền vay Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">73.1</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct73_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct73_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct73_1"/></td>
        </tr>  
        
     <tr>
            <td>3.2. Tiền vay khác </td>
            <td class="align-c">73.2</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct73_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct73_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct73_2"/></td>
        </tr>  
        
     <tr>
            <td>4. Tiền chi trả nợ gốc vay </td>
            <td class="align-c">74</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct74"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct74"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct74"/></td>
        </tr>   
           <tr>
            <td>4.1. Tiền chi trả gốc vay Quỹ Hỗ trợ thanh toán </td>
            <td class="align-c">74.1</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct74_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct74_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct74_1"/></td>
        </tr>  
           <tr>
            <td>4.2. Tiền chi trả nợ gốc vay tài sản tài chính </td>
            <td class="align-c">74.2</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct74_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct74_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct74_2"/></td>
        </tr>  

   <tr>
            <td>4.3. Tiền chi trả gốc vay khác </td>
            <td class="align-c">74.3</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct74_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct74_3"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct74_3"/></td>
        </tr>  
        
   <tr>
            <td>5. Tiền chi trả nợ gốc thuê tài chính </td>
            <td class="align-c">75</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct75"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct75"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct75"/></td>
        </tr>  

   <tr>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu </td>
            <td class="align-c">76</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct76"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct76"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct76"/></td>
        </tr>  
    <tr>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính  (80=71+72+73+74+75+76)</b></td>
            <td class="align-c"><b>80</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct80"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct80)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct80)"/></b></td>
        </tr>
        
            <tr>
            <td><b>IV. Tăng/giảm tiền thuần trong kỳ  (90= 60+70+80)</b></td>
            <td class="align-c"><b>90</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct90"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct90)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct90)"/></b></td>
        </tr>
                <tr>
            <td><b>V. Tiền và các khoản tương đương tiền đầu kỳ (101=101.1+101.2+102)</b></td>
            <td class="align-c"><b>101</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct101"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct101)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct101)"/></b></td>
        </tr>
   <tr>
            <td>- Tiền</td>
            <td class="align-c">101.1</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct101_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct101_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct101_1"/></td>
        </tr>
         <tr>
            <td>- Các khoản tương đương tiền </td>
            <td class="align-c">101.2</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct101_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct101_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct101_2"/></td>
        </tr>
           <tr>
            <td>- Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">102</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct102"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct102"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct102"/></td>
        </tr>
            <tr>
            <td><b>VI. Tiền và các khoản tương đương tiền cuối kỳ (103=103.1+103.2+104)</b></td>
            <td class="align-c"><b>103</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct103"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ct103)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ct103)"/></b></td>
        </tr>
             <tr>
            <td>- Tiền </td>
            <td class="align-c">103.1</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct103_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct103_1"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct103_1"/></td>
        </tr>
                     <tr>
            <td>- Các khoản tương đương tiền </td>
            <td class="align-c">103.2</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct103_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct103_2"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct103_2"/></td>
        </tr>
                     <tr>
            <td>- Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">104</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ct104"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ct104"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ct104"/></td>
        </tr>
            
    <tr>
				<td colspan="5"><b>PHẦN LƯU CHUYỂN TIỀN TỆ HOẠT ĐỘNG MÔI GIỚI, ỦY THÁC CỦA KHÁCH HÀNG</b></td>
				</tr>
				
	     <tr>
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
            <td class="align-c"><b>1</b></td>
            <td class="align-c"><b>2</b></td>
        </tr>
             <tr>
            <td><b>I. Lưu chuyển tiền hoạt động môi giới, ủy thác của khách hàng</b></td>
        </tr>   			
                     <tr>
            <td>1. Tiền thu bán chứng khoán môi giới cho khách hàng</td>
            <td class="align-c">01</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct01"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct01"/></td>
        </tr>
                         <tr>
            <td>2. Tiền chi mua chứng khoán môi giới cho khách hàng</td>
            <td class="align-c">02</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct02"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct02"/></td>
        </tr>    
                          <tr>
            <td>3. Tiền thu bán chứng khoán ủy thác của khách hàng</td>
            <td class="align-c">03</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct03"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct03"/></td>
        </tr>
                         <tr>
            <td>4. Tiền chi chứng khoán ủy thác của khách hàng</td>
            <td class="align-c">04</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct04"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct04"/></td>
        </tr>    
                             <tr>
            <td>5. Thu vay Quỹ Hỗ trợ thanh toán</td>
            <td class="align-c">05</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct05"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct05"/></td>
        </tr>
                         <tr>
            <td>6. Chi trả vay Quỹ Hỗ trợ thanh toán</td>
            <td class="align-c">06</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct06"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct06"/></td>
        </tr>    
        
                     <tr>
            <td>7. Nhận tiền gửi để thanh toán giao dịch chứng khoán của khách hàng</td>
            <td class="align-c">07</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct07"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct07"/></td>
        </tr>
                         <tr>
            <td>8. Chi trả thanh toán giao dịch chứng khoán của khách hàng</td>
            <td class="align-c">08</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct08"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct08"/></td>
        </tr>    
        
                     <tr>
            <td>9. Nhận tiền gửi của Nhà đầu tư cho hoạt động ủy thác đầu tư của khách hàng</td>
            <td class="align-c">09</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct09"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct09"/></td>
        </tr>
                         <tr>
            <td>10. Chi trả cho hoạt động ủy thác đầu tư của khách hàng</td>
            <td class="align-c">10</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct10"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct10"/></td>
        </tr>    
        
                     <tr>
            <td>11. Chi trả phí lưu ký chứng khoán của khách hàng</td>
            <td class="align-c">11</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct11"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct11"/></td>
        </tr>
                         <tr>
            <td>12. Thu lỗi giao dịch chứng khoán</td>
            <td class="align-c">12</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct12"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct12"/></td>
        </tr>    
                             <tr>
            <td>13. Chi lỗi giao dịch chứng khoán</td>
            <td class="align-c">13</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct13"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct13"/></td>
        </tr>
                         <tr>
            <td>14. Tiền thu của Tổ chức phát hành chứng khoán</td>
            <td class="align-c">14</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct14"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct14"/></td>
        </tr>    

                     <tr>
            <td>15. Tiền chi trả Tổ chức phát hành chứng khoán</td>
            <td class="align-c">15</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct15"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct15"/></td>
        </tr>
           <tr>
            <td><b>Tăng/giảm tiền thuần trong kỳ (20=01+02+…+14+15)</b></td>
            <td class="align-c"><b>20</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct20"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ChiTieuNgoaiBang/ct20)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ChiTieuNgoaiBang/ct20)"/></b></td>
        </tr>
            <tr>
            <td><b>II. Tiền và các khoản tương đương tiền đầu kỳ của khách hàng (30=31+36+37)</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct30"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ChiTieuNgoaiBang/ct30)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ChiTieuNgoaiBang/ct30)"/></b></td>
        </tr>
             
                         <tr>
            <td>Tiền gửi ngân hàng đầu kỳ (31=32+33+34+35): </td>
            <td class="align-c">31</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct31"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct31"/></td>
        </tr>    
                             <tr>
            <td>-Tiền gửi của Nhà đầu tư về giao dịch chứng khoán theo phương thức CTCK quản lý<br/>
Trong đó có kỳ hạn
</td>
            <td class="align-c">32</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct32"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct32"/></td>
        </tr>
                         <tr>
            <td>- Tiền gửi tổng hợp giao dịch chứng khoán cho khách hàng</td>
            <td class="align-c">33</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct33"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct33"/></td>
        </tr>    
        
                     <tr>
            <td>- Tiền gửi bù trừ và thanh toán giao dịch chứng khoán</td>
            <td class="align-c">34</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct34"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct34"/></td>
        </tr>
                         <tr>
            <td>- Tiền gửi của tổ chức phát hành<br/>
Trong đó có kỳ hạn
</td>
            <td class="align-c">35</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct35"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct35"/></td>
        </tr>    
                             <tr>
            <td>Các khoản tương đương tiền</td>
            <td class="align-c">36</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct36"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct36"/></td>
        </tr>
                         <tr>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">37</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct37"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct37"/></td>
        </tr>    
 <tr>
            <td><b>III. Tiền và các khoản tương đương tiền cuối kỳ của khách hàng (40 = 20 + 30)</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-l"><b><xsl:value-of select="$pluc03/ThuyetMinh/ct40"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamNay/ChiTieuNgoaiBang/ct40)"/></b></td>
            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pluc03/NamTruoc/ChiTieuNgoaiBang/ct40)"/></b></td>
        </tr>
             
                         <tr>
            <td>Tiền gửi ngân hàng cuối kỳ: </td>
            <td class="align-c">41</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct41"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct41"/></td>
        </tr>    
                             <tr>
            <td>- Tiền gửi của Nhà đầu tư về giao dịch chứng khoán theo phương thức CTCK quản lý
Trong đó có kỳ hạn<br/>

</td>
            <td class="align-c">42</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct42"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct42"/></td>
        </tr>
                         <tr>
            <td>- Tiền gửi tổng hợp giao dịch chứng khoán cho khách hàng</td>
            <td class="align-c">43</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct43"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct43"/></td>
        </tr>    
        
                     <tr>
            <td>- Tiền gửi bù trừ và thanh toán giao dịch chứng khoán</td>
            <td class="align-c">44</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct44"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct44"/></td>
        </tr>
                         <tr>
            <td>- Tiền gửi của Tổ chức phát hành<br/>
Trong đó có kỳ hạn</td>
            <td class="align-c">45</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct45"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct45"/></td>
        </tr>    
                             <tr>
            <td>Các khoản tương đương tiền</td>
            <td class="align-c">46</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct46"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct46"/></td>
        </tr>
                         <tr>
            <td>- Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">47</td>
            <td class="align-l"><xsl:value-of select="$pluc03/ThuyetMinh/ChiTieuNgoaiBang/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamNay/ChiTieuNgoaiBang/ct47"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc03/NamTruoc/ChiTieuNgoaiBang/ct47"/></td>
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
