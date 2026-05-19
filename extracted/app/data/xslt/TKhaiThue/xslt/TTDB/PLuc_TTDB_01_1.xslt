<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>   
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư  số 156/2013/TT-BTC ngày 06/11/2013 của Bộ Tài chính'" />		
		
<!--Bắt đầu PL 01-1/TTĐB-->
--<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_TTDB">			
	<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_TTDB' />	
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/TTĐB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN HÀNG HOÁ, DỊCH VỤ BÁN RA CHỊU THUẾ TIÊU THỤ ĐẶC BIỆT'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai Thuế tiêu thụ đặc biệt mẫu số 01/TTĐB)'"/>
	  </xsl:call-template>	  
			<div class="ndungtkhai_div">
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
						     <td rowspan="2" class="align-c"><b>STT</b></td>
						     <td colspan="3" class="align-c"><b>Hóa đơn bán hàng</b></td>
						     <td rowspan="2" class="align-c"><b>Tên khách hàng</b></td>
						     <td rowspan="2" class="align-c"><b>Tên hàng hóa, dịch vụ</b></td>
						     <td rowspan="2" class="align-c"><b>Số lượng</b></td>
						     <td rowspan="2" class="align-c"><b>Đơn giá</b></td>
						     <td rowspan="2" class="align-c"><b>Doanh số bán có thuế TTĐB(không có thuế GTGT)</b></td>
						</tr>
						<tr>
						     <td class="align-c"><b>Ký hiệu</b></td>
						     <td class="align-c"><b>Số</b></td>
						     <td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>
						</tr>						
						<tr>
						    <td class="align-c">(1)</td>
						    <td class="align-c">(2)</td>
						    <td class="align-c">(3)</td>
						    <td class="align-c">(4)</td>
						    <td class="align-c">(5)</td>
						    <td class="align-c">(6)</td>
						    <td class="align-c">(7)</td>
						    <td class="align-c">(8)</td>
						    <td class="align-c">(9)=(7)x(8)</td>
						</tr>						
						<xsl:for-each select="$pl01/PLucBRaChiuThueTTDB/ChiTietPLucBRaChiuThueTTDB/PLucBRaChiuThue">
							<xsl:variable name="currentRows" select='position()' />
						<tr>
					         <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
					    	 <td class="align-l"><xsl:value-of select="ct2"/></td>
						     <td class="align-l" ><xsl:value-of select="ct3"/></td>
						     <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct4, 'dd/mm/yyyy')"/></td>
						     <td class="align-l"><xsl:value-of select="ct5"/></td>
						     <td class="align-l" ><xsl:value-of select="ct6"/></td>
						     <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
						     <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
						     <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
						</tr>
						</xsl:for-each>
                        <tr>
                             <td class="align-r" colspan="5"><b>Tổng cộng</b></td>
                             <td></td>
                             <td></td>
                             <td></td>
                             <td></td>
                        </tr>
                        <xsl:for-each select="$pl01/PLucBRaChiuThueTTDB/TongCong/CTietTongCong">
						<tr>
					         <td  colspan="5"></td>
					    	 <td class="align-l"><xsl:value-of select="tenHHoaDVu"/></td>
						     <td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(tongSoLuong
						     )"/></td>
						     <td class="align-c"></td>
						     <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDoanhSoBan)"/></td>
						</tr>
						</xsl:for-each>
					  </table>
					  </div>
					</div>
<div class="ghichu">						
					<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
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
<!-- kết thúc PL 01-1/TTĐB-->
		
   </xsl:template>		
</xsl:stylesheet>