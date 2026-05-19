<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_03SDDNN_TT80_283">
		<xsl:with-param name="mauTKhai"   select="'03/SDDNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với đất trồng cây lâu năm thu hoạch một lần)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>3. Thửa đất chịu thuế, loại cây:</b></div>
				<tr>
					     <td> <b>[16]</b> Địa chỉ lô đất trồng cây lâu năm thu hoạch một lần: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16"/> </td>
				    </tr>
					<br/>
					<b>[16.1]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16_1"/>&#160;&#160;
					<b>[16.2]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16_2_ten"/> 
					<br/>
					<b>[16.3]</b>  Quận/huyện: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16_3_ten"/>&#160;&#160;
					<b>[16.4]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16_4_ten"/>
					<br/>
					<b>[17]</b> Số thửa: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17"/> &#160;&#160;
					<b>[18]</b> Tờ bản đồ số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct18"/>
					<br/>
					<b>[19]</b> Diện tích lô đất trồng cây lâu năm thu hoạch một lần (ha): <xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuaDatChiuThue/ct19)"/>
					<br/>
					<b>[20]</b> Loại cây lâu năm thu hoạch một lần <i>(ghi tên loại cây)</i>: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct20"/> 
					<br/>
					<b>[21]</b> Thời điểm bắt đầu sử dụng đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/ct21,'dd/mm/yyyy')"/> 
					<br/>
					<b>[22]</b> Thời điểm thay đổi diện tích đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/ct22,'dd/mm/yyyy')"/>
			<div><b>4. Tính thuế:</b></div>
			<table class="ttinnnt_table">
					<tr>
					     <td> <b>[23]</b> Diện tích đất khai thác cây lâu năm thu hoạch một lần (ha): &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct23)"/> </b></td>
				    </tr>	
				    <tr>
					     <td> <b>[24]</b> Sản lượng khai thác cây lâu năm thu hoạch một lần (tấn/ha hoặc m3/ha): &#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct24)"/></b> </td>
				    </tr>	
				    <tr>
					     <td> <b>[25]</b> Giá bán một đơn vị sản phẩm tại nơi khai thác (đồng/ tấn hoặc đồng/m3): &#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct25)"/></b> </td>
				    </tr>	
				    <tr>
					     <td> <b>[26]</b> Giá trị sản lượng khai thác [26] = [23] x [24] x [25]: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct26)"/></b> </td>
				    </tr>	
				    <tr>
					     <td> <b>[26a]</b> Thuế sử dụng đất nông nghiệp phải nộp trước miễn giảm [26a]=[26]*4%: &#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct26a)"/></b> đồng</td>
				    </tr>	
				    <tr>
					     <td> <b>[27]</b> Thuế sử dụng đất nông nghiệp được miễn, giảm (nếu có): &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct27)"/></b> đồng</td>
				    </tr>	
				    <tr>
					     <td> <b>[28]</b> Thuế sử dụng đất nông nghiệp phải nộp [28] = ([26] x 4%) - [27]: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct28)"/></b> đồng</td>
				    </tr>	
			</table>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

