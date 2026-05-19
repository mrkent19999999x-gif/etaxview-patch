<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
	
		
	   <!--start phu luc 02-1/TĐ-TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_02_1_TD_TNDN">	
		<xsl:variable name="pl02td" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_02_1_TD_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'02-1/TĐ-TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ THU NHẬP DOANH NGHIỆP PHẢI NỘP
CỦA CƠ SỞ SẢN XUẤT THỦY ĐIỆN CHO CÁC ĐỊA PHƯƠNG'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai tạm tính thuế thu nhập doanh nghiệp mẫu số 01A/TNDN, 01B/TNDN hoặc tờ khai quyết toán thuế TNDN mẫu số 03/TNDN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
				<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Chỉ tiêu</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Cơ quan thuế địa phương nơi phát sinh hoạt động sản xuất thủy điện</b></td>
							<td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
							<td class="align-c"><b>Số thuế thu nhập doanh nghiệp phải nộp</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
						</tr>
                        <xsl:for-each select="$pl02td/BangPBoThueTNDN/ChiTietBangPBoThueTNDN">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><b>Đơn vị thủy điện phụ thuộc: <xsl:value-of select="tenDonViTDPhuThuoc"/></b></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThueTNDNPNop)"/></td>
           					</tr>
                        <xsl:for-each select="NhaMayThuyDien/ChiTietNhaMayThuyDien">
							<xsl:variable name="currentRows1" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows1"/></td>
								<td><xsl:value-of select="tenNMayTDien"/></td>
								<td class="align-c"><xsl:value-of select="mstNMayTDien"/></td>
								<td></td>     
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tyLePBoNMayTDien)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThuePNopNMayTDien)"/></td>
							</tr>
								<xsl:for-each select="CQTDiaPhuong/ChiTietCQTDiaPhuong">
									<xsl:variable name="currentRows2" select="position()"/>
							         <tr>
                                         <td></td>				
       
                                                         <td><xsl:value-of select="tenCoSo"/></td>
                                                         <td><xsl:value-of select="mstCoSo"/></td>
								         <td><xsl:value-of select="tenCQTDPhuong"/></td>
								         <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLePBoCQTDPhuong)"/></td>
								         <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuePNopCQTDPhuong)"/></td>
							         </tr>
						        </xsl:for-each>
							</xsl:for-each>
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
	<!--end phu luc 02-1/TĐ-TNDN-->		
	</xsl:template>		
</xsl:stylesheet>