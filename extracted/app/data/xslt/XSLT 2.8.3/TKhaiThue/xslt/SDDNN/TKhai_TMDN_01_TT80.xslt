<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày
 29/9/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01TMDN_TT80_283">
		<xsl:with-param name="mauTKhai"   select="'01/TMĐN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho đối tượng chưa có quyết định, hợp đồng cho thuê đất của Nhà nước)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-l"><b>3. Đặc điểm đất/mặt nước thuê:</b></div>
				 <div class="align-l"><b>[16]</b> Địa chỉ thửa đất/mặt nước thuê:</div>
					<div class="align-l"> </div>
					<table class="center">
						  <tr>
							<td><b>[16.1]</b> Số nhà: <xsl:value-of select="$tkchinh/DacDiem/ct16_1"/></td>
							<td><b>[16.2]</b>Đường/phố: <xsl:value-of select="$tkchinh/DacDiem/ct16_2"/></td>
						  </tr>
						  <tr>
							<td><b>[16.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/DacDiem/ct16_3"/></td>
							<td><b>[16.4]</b> Xã/phường/đặc khu:  <xsl:value-of select="$tkchinh/DacDiem/ct16_4_ten"/></td>
						  </tr>
						  <tr>
							<td><b>[16.5]</b> Quận/huyện: <xsl:value-of select="$tkchinh/DacDiem/ct16_5_ten"/></td>
							<td><b>[16.6]</b>Tỉnh/Thành phố:  <xsl:value-of select="$tkchinh/DacDiem/ct16_6_ten"/></td>
						  </tr>
					</table>

				 <div class="align-l"><b>[17]</b> Vị trí thửa đất/mặt nước: <xsl:value-of select="$tkchinh/DacDiem/ct17"/></div>
				 <div class="align-l"><b>[18]</b> Mục đích sử dụng: <xsl:value-of select="$tkchinh/DacDiem/ct18"/></div>
				 <div class="align-l"><b>[19]</b> Diện tích (m2): <b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DacDiem/ct19)"/></b></div>
				 <div class="align-l"><b>[20]</b> Thời điểm sử dụng đất vào mục đích thuộc đối tượng phải nộp tiền thuê đất theo quy định của Luật Đất đai: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DacDiem/ct20,'dd/mm/yyyy')"/></div>
				
				  <div class="align-l"><b>4. Diện tích đất, mặt nước phải nộp tiền thuê (m2):</b></div>				
					<div class="align-l"><b>[21]</b> Đất/mặt nước dùng cho sản xuất kinh doanh phi nông nghiệp: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DienTich/ct21)"/></b></div>
					<div class="align-l"><b>[22]</b> Đất xây dựng nhà ở, cơ sở hạ tầng để cho thuê: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DienTich/ct22)"/></b></div>
					<div class="align-l"><b>[23]</b> Đất xây dựng khu công nghiệp, cụm công nghiệp, làng nghề: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DienTich/ct23)"/></b></div>
					<div class="align-l"><b>[24]</b> Đất/ mặt nước sử dụng vào mục đích sản xuất nông nghiệp, nuôi trồng thuỷ sản: &#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DienTich/ct24)"/></b></div>
					<div class="align-l"><b>[25]</b> Đất/mặt nước dùng vào mục đích khác: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DienTich/ct25)"/></b></div>
					<div class="align-l"><b>5. Thời gian sử dụng đất vào mục đích thuộc đối tượng phải nộp tiền thuê đất theo quy định của Luật Đất đai: </b> <xsl:value-of select="ihtkk:formatNumber($tkchinh/thoiGian_suDung)"/> tháng</div>

		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
<tr>
<td>		  
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>

