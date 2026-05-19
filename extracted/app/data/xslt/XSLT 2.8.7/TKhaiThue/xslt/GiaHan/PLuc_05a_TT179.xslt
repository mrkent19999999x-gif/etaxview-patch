<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
<xsl:include href="../../include/TKhaiFooter.xsl"/>    
<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 179/2013/TT-BTC ngày 02/12/2013'" />
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05a_TT179"/>	
		<xsl:variable name="pl05_a" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05a_TT179' />
		<xsl:call-template name="tkhaiHeader_05a_TT179">
			<xsl:with-param name="mauTKhai"   select="'05a'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>

		<!-- THÔNG TIN NGƯỜI NỘP THUẾ -->
	  <div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên doanh nghiệp: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
		
	  <div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
	  
	  <div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>, 
	  <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></div>

	  <!-- NỘI DUNG TỜ KHAI -->
	  <div class="ndungtkhai_div">
		<div class="content">
		  <div class="align-r">Đơn vị tiền: đồng</div>
		  <table class="tkhai_table">
			<tr>
			  <td class="align-c"><b>Chỉ tiêu</b></td>
			  <td class="align-c"><b>Thời điểm xác định giá trị doanh nghiệp để cổ phần hóa/giao, bán</b></td>
			  <td class="align-c"><b>Thời điểm chính thức chuyển sang công ty cổ phần</b></td>
			  <td class="align-c"><b>Ghi chú</b></td>
			</tr>
			<tr>
			  <td class="align-c">1</td>
			  <td class="align-c">2</td>
			  <td class="align-c">3</td>
			  <td class="align-c">4</td>
			</tr>

			<!-- I/ -->
			<tr>
			  <td class="align-j">
				<b>I/ Số tiền thuế, tiền phạt phát sinh trước ngày 01/7/2007 đến thời điểm DNNN chuyển đổi</b>
			  </td>
			  <td class="align-r">
				<xsl:value-of select="ihtkk:formatNumber($pl05_a/ThoiDiemDNNNChuyenDoi/tong_TienThoiDiemXacDinh)"/>
			  </td>
			  <td class="align-r">
				<xsl:value-of select="ihtkk:formatNumber($pl05_a/ThoiDiemDNNNChuyenDoi/tong_TienThoiDiemChinhThuc)"/>
			  </td>
			  <td class="align-c"></td>
			</tr>

			<xsl:for-each select="$pl05_a/ThoiDiemDNNNChuyenDoi/CTietSoThueDeNghiGiaHan">
			  <tr>
				<td class="align-j"><xsl:value-of select="chi_Tieu"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_TienThoiDiemXacDinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(So_TienThoiDiemChinhThuc)"/></td>
				<td class="align-j"><xsl:value-of select="ghi_Chu"/></td>
			  </tr>
			</xsl:for-each>

			<!-- II/ -->
			<tr>
			  <td class="align-j">
				<b>II/ Số tiền thuế, tiền phạt phát sinh trước ngày 01/7/2007 đến nay còn nợ đề nghị xóa nợ</b>
			  </td>
			  <td class="align-r">
				<xsl:value-of select="ihtkk:formatNumber($pl05_a/DenNayConNoDNXN/tong_TienThoiDiemXacDinh)"/>
			  </td>
			  <td class="align-r">
				<xsl:value-of select="ihtkk:formatNumber($pl05_a/DenNayConNoDNXN/tong_TienThoiDiemChinhThuc)"/>
			  </td>
			  <td class="align-c"></td>
			</tr>

			<xsl:for-each select="$pl05_a/DenNayConNoDNXN/CTietSoThueDeNghiGiaHan">
			  <tr>
				<td class="align-j"><xsl:value-of select="chi_Tieu"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_TienThoiDiemXacDinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(So_TienThoiDiemChinhThuc)"/></td>
				<td class="align-j"><xsl:value-of select="ghi_Chu"/></td>
			  </tr>
			</xsl:for-each>
		  </table>
		</div>
	  </div>
		
		
	<xsl:call-template name="tkhaiFooter_05_TT179"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

