<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_04_NCCNN">
		<xsl:with-param name="mauTKhai"   select="'04/NCCNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho Ngân hàng thương mại, tổ chức cung ứng dịch vụ trung gian thanh toán không thể thực hiện khấu trừ, nộp thay)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<table>		
			<tr>
				<td>
					<table class="tkhai_table"  >
								 <thead class="tkhaiheader">
								  <tr>
									<td class="align-c"><b>STT</b></td>
									<td class="align-c"><b>Tên nhà cung cấp nước ngoài</b></td>
									<td class="align-c"><b>Địa chỉ</b></td>
									<td class="align-c"><b>Quốc gia</b></td>
									<td class="align-c"><b>Tổng số tiền chuyển trong tháng</b></td>
									<td class="align-c"><b>Đơn vị tiền tệ</b></td>
								  </tr>
								  <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								   <td class="align-c">(5)</td>
								   <td class="align-c">(6)</td>
								  </tr>
								 </thead>
								 <tbody id="tkhaitbody">
								 <xsl:for-each select="$tkchinh/TTNCCNN/CTietThongTinNCCNN">
								<xsl:variable name="currentRows" select='position()'/>
								  <tr>
								   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
								   <td class="align-l"><xsl:value-of select="tenNhaCCNN"/></td>
								   <td class="align-l"><xsl:value-of select="diaChi"/></td>
								   <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
								   <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tongSoTienChuyenTrongThang)"/></td>
								   <td class="align-c"><xsl:value-of select="ten_DonViTT"/></td>
								  </tr>
								  </xsl:for-each>
								 </tbody>
					</table>
				</td>
			</tr>
		</table>
      </div>	
      </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_NCCNN"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>