<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/TT-BTC ngày 6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
			 
	<!-- Phụ lục 04-1/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL04_1_GTGT">	
		<xsl:variable name="pl04" select='HSoThueDTu/HSoKhaiThue/PLuc/PL04_1_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'04-1/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN, CHỨNG TỪ HÀNG HOÁ, DỊCH VỤ BÁN RA'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 04/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							 <td class="align-c" rowspan="2"><b>STT</b></td>
							 <td class="align-c" colspan="4"><b>Hoá đơn, chứng từ bán ra</b></td>
							 <td class="align-c" rowspan="2"><b>Tên người mua</b></td>
							 <td class="align-c" rowspan="2"><b>Mã số thuế người mua</b></td>
							 <td class="align-c" rowspan="2"><b>Mặt hàng</b></td>
							 <td class="align-c" rowspan="2"><b>Doanh số bán</b></td>
							 <td class="align-c" rowspan="2"><b>Ghi chú</b></td>
							</tr>
							<tr>
							 <td class="align-c"><b>Ký hiệu mẫu hoá đơn</b></td>
							 <td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							 <td class="align-c"><b>Số hoá đơn</b></td>
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
								<td class="align-c">(9)</td>
								<td class="align-c">(10)</td>
							</tr>
							<tr>
								<td colspan="10"><i>1. Hàng hóa, dịch vụ không chịu thuế GTGT hoặc hàng hoá, dịch vụ áp dụng thuế suất 0%:</i></td>
							</tr>
						   <xsl:for-each select="$pl04/HHDVKChiuThue/ChiTietHHDVKChiuThue/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							    <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh, 'dd/mm/yyyy')"/></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04/HHDVKChiuThue/tongDoanhSoBan_1
							  )"/></b></td>
							  <td></td>
							  <td></td>
							</tr>   
							
							<tr>
								<td colspan="10"><i>2.  Phân phối, cung cấp hàng hóa áp dụng thuế suất  1%:</i></td>
							</tr>
						   <xsl:for-each select="$pl04/HHDVThue1/ChiTietHHDVThue1/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh, 'dd/mm/yyyy')"/></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04/HHDVThue1/tongDoanhSoBan_2)"/></b></td>
								  <td></td>
							</tr>
							<tr>
								<td colspan="10"><i>3. Dịch vụ, xây dựng không bao thầu nguyên vật liệu áp dụng thuế suất 5%:</i></td>
							</tr>
						   <xsl:for-each select="$pl04/HHDVThue5/ChiTietHHDVThue5/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							    <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh, 'dd/mm/yyyy')"/></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04/HHDVThue5/tongDoanhSoBan_3)"/></b></td>
							  <td></td>
							</tr>
							<tr>
								<td colspan="10"><i>4. Sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu áp dụng thuế suất 3%:</i></td>
							</tr>
						   <xsl:for-each select="$pl04/HHDVThue3/ChiTietHHDVThue3/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							    <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh, 'dd/mm/yyyy')"/></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04/HHDVThue3/tongDoanhSoBan_4)"/></b></td>
							  <td></td>
							</tr>
							<tr>
								<td colspan="10"><i>5. Hoạt động kinh doanh khác áp dụng thuế suất  2%:</i></td>
							</tr>
						   <xsl:for-each select="$pl04/HHDVThue2/ChiTietHHDVThue2/HDonBRa">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							    <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh, 'dd/mm/yyyy')"/></td>
							  <td class="align-l"><xsl:value-of select="tenNMUA" /></td>
							  <td class="align-c"><xsl:value-of select="mstNMUA" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoBanChuaThue)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl04/HHDVThue2/tongDoanhSoBan_5)"/></b></td>
							  <td></td>
							</tr>
						</table>  
<div class="ghichu">							
				<div><b>Tổng doanh thu hàng hóa, dịch vụ bán ra (*):  <xsl:value-of select="ihtkk:formatNumber($pl04/tongDThuBRa)"/></b></div>
				<div><b>Tổng doanh thu hàng hóa, dịch vụ không chịu thuế GTGT (**):  <xsl:value-of select="ihtkk:formatNumber($pl04/tongDThuBRaChiuThue)"/></b></div>
				<div><b>Tổng doanh thu hàng hóa, dịch vụ bán áp dụng tỷ lệ thuế/doanh thu (***):  <xsl:value-of select="ihtkk:formatNumber($pl04/tongThueBRa)"/></b></div>
</div>				
			</div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>
			<div><i><u><b>Ghi chú: </b></u></i></div><br/>
		<div><i>(*) Tổng doanh thu hàng hóa, dịch vụ bán ra là tổng cộng số liệu tại cột 9 của dòng tổng của các chỉ tiêu 1, 2, 3, 4, 5.</i></div>
		<div><i>(**) Tổng doanh thu hàng hóa, dịch vụ không chịu thuế GTGT là tổng cộng số liệu tại cột 9 của dòng tổng của chỉ tiêu 1</i></div>
		<div><i>(***)Tổng doanh thu hàng hóa, dịch vụ bán áp dụng tỷ lệ thuế/doanh thu là tổng cộng số liệu tại cột 9 của dòng tổng của của các chỉ tiêu  2, 3, 4, 5</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
		</xsl:if>
		
		<!-- Kết thúc PL 04-1/GTGT -->
		
	</xsl:template>		
</xsl:stylesheet>