<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 28/2011/TT-BTC ngày 28/02/2011 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
<!--start phu luc PL05_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL05_TNDN">
			<xsl:variable name="toanDN" select='HSoThueDTu/HSoKhaiThue/PLuc/PL05_TNDN/TinhNopThueTNDNCoSoHTPT/ToanBoDoanhNghiep' />
			<xsl:variable name="truSoChinh" select='HSoThueDTu/HSoKhaiThue/PLuc/PL05_TNDN/TinhNopThueTNDNCoSoHTPT/TaitruSoChinh' />
			<xsl:variable name="coSoPT" select='HSoThueDTu/HSoKhaiThue/PLuc/PL05_TNDN/TinhNopThueTNDNCoSoHTPT/taiCoSoPhuThuoc' />
		<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'05/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'TÍNH NỘP THUẾ THU NHẬP DOANH NGHIỆP CỦA DOANH NGHIỆP CÓ CÁC CƠ SỞ SẢN XUẤT HẠCH TOÁN PHỤ THUỘC'"/>
		<xsl:with-param name="ghiChuPL"   select="' (Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>			
					<div class="ndungtkhai_div">	
					<div class="content">
					    <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
									<tr>
									  <td class="align-c" rowspan="2"><b>STT</b></td>
									  <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
									  <td class="align-c" rowspan="2"><b>Tỷ lệ phân bổ (%)</b></td>
									  <td class="align-c" colspan="4"><b>Số thuế tạm  nộp từng quý</b></td>
									  <td class="align-c" rowspan="2"><b>Tổng số thuế đã tạm nộp</b></td>
									  <td class="align-c" rowspan="2"><b>Tổng số thuế phải nộp cả năm</b></td>
									  <td class="align-c" rowspan="2"><b>Số thuế còn phải nộp</b></td>
									</tr>
									<tr>
									  <td class="align-c"><b>Quý I</b></td>
									  <td class="align-c"><b>Quý II</b></td>
									  <td class="align-c"><b>Quý III</b></td>
									  <td class="align-c"><b>Quý IV</b></td>
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
									  <td class="align-c">1</td>
									  <td class="align-l">Toàn bộ doanh nghiệp</td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct03"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct04"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct05"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct06"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct07"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct08"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct09"/></td>
									  <td class="number align-r"><xsl:value-of select="$toanDN/ct10"/></td>
									</tr>
									<tr>
									  <td class="align-c">2</td>
									  <td class="align-l">Tại nơi có trụ sở chính</td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									</tr>
									<tr>
									  <td class="align-c"></td>
									  <td class="align-l">- Tên doanh nghiệp: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/></td>
  									 <td class="number align-r"><xsl:value-of select="$truSoChinh/ct03"/></td>
									 <td class="number align-r"><xsl:value-of select="$truSoChinh/ct04"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct05"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct06"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct07"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct08"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct09"/></td>
									  <td class="number align-r"><xsl:value-of select="$truSoChinh/ct10"/></td>
									  
									</tr>
									<tr>
									  <td class="align-c"></td>
									  <td class="align-l">- Mã số thuế:  <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/mst"/></td>
									  <td class="align-c"></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									   <td></td>
									</tr>    
								   <xsl:for-each select="$coSoPT">
									<xsl:variable name="currentRows" select='position() + 2 ' />
									<tr>
									  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
									  <td class="align-l">Tại địa phương:  <xsl:value-of select="DiaPhuong"/></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									</tr>
									<tr>
									  <td></td>
									  <td class="align-l">- Tên cơ sở SX phụ thuộc: <xsl:value-of select="TenCoSo"/></td>
									  <td class="number align-r"><xsl:value-of select="ct03"/></td>
									  <td class="number align-r"><xsl:value-of select="ct04"/></td>
									  <td class="number align-r"><xsl:value-of select="ct05"/></td>
									  <td class="number align-r"><xsl:value-of select="ct06"/></td>
									  <td class="number align-r"><xsl:value-of select="ct07"/></td>
									  <td class="number align-r"><xsl:value-of select="ct08"/></td>
									  <td class="number align-r"><xsl:value-of select="ct09"/></td>
									  <td class="number align-r"><xsl:value-of select="ct10"/></td>
									</tr>
									<tr>
									  <td></td>
									  <td class="align-l">- Mã số thuế: <xsl:value-of select="MST"/></td>
									  <td class="align-c"> </td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									  <td></td>
									   <td></td>
									</tr>     
									</xsl:for-each>
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
<!--end phu luc PL05_TNDN-->		
	</xsl:template>		
</xsl:stylesheet>