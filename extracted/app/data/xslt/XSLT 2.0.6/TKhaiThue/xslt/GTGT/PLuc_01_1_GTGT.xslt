<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 119/2014/TT-BTC ngày 25/8/2014 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
		<!-- Phụ lục 01-1/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_GTGT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN, CHỨNG TỪ HÀNG HOÁ, DỊCH VỤ BÁN RA'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							 <td class="align-c" rowspan="2"><b>STT</b></td>
							 <td class="align-c" colspan="2"><b>Hoá đơn, chứng từ bán ra</b></td>
							 <td class="align-c" rowspan="2"><b>Tên người mua</b></td>
							 <td class="align-c" rowspan="2"><b>Mã số thuế người mua</b></td>
							 <td class="align-c" rowspan="2"><b>Doanh thu chưa có thuế GTGT</b></td>
							 <td class="align-c" rowspan="2"><b>Thuế GTGT</b></td>
							 <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							 <td class="align-c"><b>Số hoá đơn</b></td>
							 <td class="align-c"><b>Ngày, tháng, năm lập hóa đơn</b></td>
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
							</tr>
							<tr>
								<td colspan="8"><i>1. Hàng hóa, dịch vụ không chịu thuế giá trị gia tăng (GTGT):</i></td>
							</tr>
						   <xsl:for-each select="$pl01/HHDVKChiuThue/ChiTietHHDVKChiuThue/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVKChiuThue/tongDThuBRaKChiuThue)"/></b></td>
							  <td></td>
							  <td></td>
							</tr>   
							
							<tr>
								<td colspan="8"><i>2. Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 0%:</i></td>
							</tr>
						   <xsl:for-each select="$pl01/HHDVThue0/ChiTietHHDVThue0/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
						     <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue0/tongDThuBRaThue0)"/></b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue0/tongThueBRaThue0)"/></b></td>
							  <td></td>
							</tr>
							
							<tr>
								<td colspan="8"><i>3. Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 5%:</i></td>
							</tr>
						   <xsl:for-each select="$pl01/HHDVThue5/ChiTietHHDVThue5/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue5/tongDThuBRaThue5)"/></b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue5/tongThueBRaThue5)"/></b></td>
							  <td></td>
							</tr>
							
							<tr>
								<td colspan="8"><i>4. Hàng hóa, dịch vụ chịu thuế suất thuế GTGT 10%:</i></td>
							</tr>
						   <xsl:for-each select="$pl01/HHDVThue10/ChiTietHHDVThue10/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="5" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue10/tongDThuBRaThue10)"/></b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/HHDVThue10/tongThueBRaThue10)"/></b></td>
							  <td></td>
							</tr>
						</table>  
<div class="ghichu">						
				<div><b>Tổng doanh thu hàng hoá, dịch vụ bán ra chịu thuế GTGT (*): <xsl:value-of select="ihtkk:formatNumber($pl01/tongDThuBRaChiuThue)"/></b></div>
				<div><b>Tổng số thuế GTGT của hàng hóa, dịch vụ bán ra (**): <xsl:value-of select="ihtkk:formatNumber($pl01/tongThueBRa)"/></b></div>
			</div>
	</div>		
			</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>	
<div class="ghichu">
		<div><i><u><b>Ghi chú: </b></u></i></div><br/>
		<div><i>(*) Tổng doanh thu hàng hóa, dịch vụ bán ra chịu thuế GTGT là tổng cộng số liệu tại cột 6 của dòng tổng của các chỉ tiêu 2, 3, 4.</i></div>
		<div><i>(**) Tổng số thuế GTGT của hàng hóa, dịch vụ bán ra là tổng cộng số liệu tại cột 7 của dòng tổng của các chỉ tiêu 2, 3, 4.</i></div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
</xsl:if>
		<!-- Kết thúc PL 01-1/GTGT -->
		
		</xsl:template>		
</xsl:stylesheet>