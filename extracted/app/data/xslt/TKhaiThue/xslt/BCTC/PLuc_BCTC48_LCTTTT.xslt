<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành theo QĐ số  48/2006/QĐ-BTC ngày  14/09/2006 của Bộ trưởng BTC
'" />
		 
<!-- LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP  -->

	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_LCTTTT' />	
	<div class="ndungtkhai_div">
	<div class="content">
    <div class="align-c"><b>LƯU CHUYỂN TIỀN TỆ TRỰC TIẾP</b></div>	<br/>
    <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div><br/>
    
    <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>STT</b></td>
            <td class="align-c"><b>Chỉ tiêu </b></td>
            <td class="align-c"><b>Mã </b></td>
            <td class="align-c"><b>Thuyết minh </b></td>
            <td class="align-c"><b>Số năm nay </b></td>
            <td class="align-c"><b>Số năm trước </b></td>
        </tr>
        <tr>
            <td class="align-c"><b></b></td>
            <td class="align-c"><b>(A) </b></td>
            <td class="align-c"><b>(B) </b></td>
            <td class="align-c"><b>(C) </b></td>
            <td class="align-c"><b>(1) </b></td>
            <td class="align-c"><b>(2)</b></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>I</b></td>
            <td colspan="5"><b>I. Lưu chuyển tiền từ hoạt động kinh doanh</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1. Tiền thu từ bán hàng, cung cấp dịch vụ và doanh thu khác</td>
            <td class="align-c">01</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct01_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct01_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2. Tiền chi trả cho người cung cấp hàng hoá và dịch vụ</td>
            <td class="align-c">02</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct02_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct02_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3. Tiền chi trả cho người lao động</td>
            <td class="align-c">03</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct03_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct03_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4. Tiền chi trả lãi vay</td>
            <td class="align-c">04</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct04_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct04_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5. Tiền chi nộp thuế thu nhập doanh nghiệp </td>
            <td class="align-c">05</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct05_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct05_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Tiền thu khác từ hoạt động kinh doanh</td>
            <td class="align-c">06</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct06_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct06_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7. Tiền chi khác từ hoạt động kinh doanh</td>
            <td class="align-c">07</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct07_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct07_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động kinh doanh</b> </td>
            <td class="align-c"><b>20</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ct20_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ct20_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>II</b></td>
            <td colspan="5"><b>II. Lưu chuyển tiền từ hoạt động đầu tư</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Tiền chi để mua sắm, xây dựng TSCĐ, BĐS đầu tư và các tài sản dài hạn khác</td>
            <td class="align-c">21</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct21_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct21_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền thu từ thanh lý, nhượng bán TSCĐ, BĐS đầu tư và các tài sản dài hạn khác</td>
            <td class="align-c">22</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct22_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct22_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền chi cho vay, mua các công cụ nợ của đơn vị khác</td>
            <td class="align-c">23</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct23_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct23_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền thu hồi cho vay, bán lại các công cụ nợ của đơn vị khác</td>
            <td class="align-c">24</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct24_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct24_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">25</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct25_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct25_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6.Tiền thu hồi đầu tư góp vốn vào đơn vị khác</td>
            <td class="align-c">26</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct26_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct26_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">7</td>
            <td>7.Tiền thu lãi cho vay, cổ tức và lợi nhuận được chia</td>
            <td class="align-c">27</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct27_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct27_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động đầu tư</b></td>
            <td class="align-c"><b>30</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ct30_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ct30_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b>III</b></td>
            <td colspan="5"><b>III. Lưu chuyển tiền từ hoạt động tài chính</b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c">1</td>
            <td>1.Tiền thu từ phát hành cổ phiếu, nhận vốn góp của chủ sở hữu</td>
            <td class="align-c">31</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct31_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct31_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">2</td>
            <td>2.Tiền chi trả vốn góp cho các chủ sở hữu, mua lại cổ phiếu của doanh nghiệp đã phát hành</td>
            <td class="align-c">32</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct32_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct32_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">3</td>
            <td>3.Tiền vay ngắn hạn, dài hạn nhận được</td>
            <td class="align-c">33</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct33_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct33_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">4</td>
            <td>4.Tiền chi trả nợ gốc vay</td>
            <td class="align-c">34</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct34_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct34_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">5</td>
            <td>5.Tiền chi trả nợ thuê tài chính</td>
            <td class="align-c">35</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct35_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct35_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c">6</td>
            <td>6. Cổ tức, lợi nhuận đã trả cho chủ sở hữu</td>
            <td class="align-c">36</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct36_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct36_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần từ hoạt động tài chính</b></td>
            <td class="align-c"><b>40</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ct40_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ct40_nNgoai"/></b></td></b>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Lưu chuyển tiền thuần trong năm (50 = 20+30+40)</b></td>
            <td class="align-c"><b>50</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ct50_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ct50_nNgoai"/></b></td>
            </b>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Tiền và tương đương tiền đầu năm</td>
            <td class="align-c">60</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct60_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct60_nNgoai"/></td>
        </tr>
        <tr>
            <td class="align-c"></td>
            <td>Ảnh hưởng của thay đổi tỷ giá hối đoái quy đổi ngoại tệ</td>
            <td class="align-c">61</td>
            <td class="align-c"></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNay/ct61_nNay"/></td>
            <td class="number align-r"><xsl:value-of select="$pluc02/SoNamNgoai/ct61_nNgoai"/></td>
        </tr>
        <tr>
            <b>
            <td class="align-c"><b></b></td>
            <td><b>Tiền và tương đương tiền cuối năm (70 = 50+60+61)</b></td>
            <td class="align-c"><b>70</b></td>
            <td class="align-c"><b></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNay/ct70_nNay"/></b></td>
            <td class="align-r"><b class="number"><xsl:value-of select="$pluc02/SoNamNgoai/ct70_nNgoai"/></b></td></b>
        </tr>

 </table>
 </div>	
 </div>
    <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter-BCTC">   
</xsl:call-template>
<br/><br/><br/>
<div class="ghichu"><b><i>Ghi chú (*): </i></b>(*) Những chỉ tiêu không có số liệu có thể không phải trình bày nhưng không được đánh lại  “Mã số”.</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>


	</xsl:template>		
</xsl:stylesheet>
