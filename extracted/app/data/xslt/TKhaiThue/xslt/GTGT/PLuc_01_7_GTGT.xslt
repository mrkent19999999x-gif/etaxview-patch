<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
	 <!-- Phụ lục 01-7/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_7_GTGT">	
		<xsl:variable name="pl07" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_7_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-7/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ SỐ LƯỢNG XE ÔTÔ, XE HAI BÁNH GẮN MÁY BÁN RA '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Loại xe</b></td>
							   <td class="align-c"><b>Đơn vị tính</b></td>
							   <td class="align-c"><b>Tổng số lượng xe bán ra cho người tiêu dùng và số lượng xe 
							   xuất cho đại lý bán hưởng hoa hồng</b></td>
							   <td class="align-c"><b>Giá bán ghi trên hóa đơn (bao gồm cả thuế giá trị gia tăng)</b></td>
							   <td class="align-c"><b>Ghi chú</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
							</tr>
                            <tr>
								<td class="align-c">A</td>
                               <td class="align-c"><b>Xe ôtô</b></td>
							</tr>
						  <xsl:for-each select="$pl07/XeOTo/ChiTietSoLuongXeOTo/SoLuongXeOTo">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="loaiXe"/></td>
							  <td class="align-l"><xsl:value-of select="dviTinh" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(xeBanRa)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaBan)"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>
							 </tr>					  
							</xsl:for-each>
							<tr>
                			   <td></td>
                               <td><b>Tổng cộng:</b></td>
                                <td></td>
                               <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl07/XeOTo/congXeOToBRa)"/></b></td>
                               <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl07/XeOTo/congGiaBanOTo)"/></b></td>                                
                               <td></td>
							</tr>
                            <tr>
								<td class="align-c">B</td>
                               <td class="align-c"><b>Xe hai bánh gắn máy</b></td>
							</tr>							
						  <xsl:for-each select="$pl07/XeHaiBanh/ChiTietSoLuongXeHaiBanh/SoLuongXeHaiBanh">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="loaiXe"/></td>
							  <td class="align-l"><xsl:value-of select="dviTinh" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(xeBanRa)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaBan)"/></td>
							  <td class="align-l"><xsl:value-of select="ghiChu"/></td>
							 </tr>					  
							</xsl:for-each>
							<tr>
                			   <td></td>
                               <td><b>Tổng cộng:</b></td>
                                <td></td>
                               <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl07/XeHaiBanh/congXeHaiBanhBRa)"/></b></td>
                               <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl07/XeHaiBanh/congGiaBanHaiBanh)"/></b></td>   
                               <td></td>
							</tr>
					</table>  
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
		<!-- Kết thúc PL 01-7/GTGT -->
		
      			
	</xsl:template>		
</xsl:stylesheet>