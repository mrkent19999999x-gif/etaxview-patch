<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_HTK' />
		<xsl:call-template name="tkhaiHeader_pluc_01BK_HTK">
		<xsl:with-param name="mauTKhai"   select="'01/BK-HTK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
	  
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[01] Tên người nộp thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
		</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[02] </b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
		</div>
		
		<div style="padding-top: 6pt;padding-bottom: 6pt;text-align: right"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" rowspan="2"><b>Hàng tồn kho, máy móc, thiết bị</b></td>
				<td class="align-c" rowspan="2"><b>Đơn vị tính của hàng tồn kho, máy móc, thiết bị</b></td>
				<td class="align-c" colspan="2"><b>Tồn kho tại ngày 31/12/2025</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Số lượng</b></td>
				<td class="align-c"><b>Giá trị</b></td>
			</tr>
			<tr>
				<td class="align-c">[03]</td>
				<td class="align-c">[04]</td>
				<td class="align-c">[05]</td>
				<td class="align-c">[06]</td>
				<td class="align-c">[07]</td>
			</tr>
			<tr>
				<td class="align-c"><b>I</b></td>
				<td class="align-l" colspan="7"><b>HÀNG HÓA, SẢN PHẨM TỒN KHO</b></td>
			</tr>
			<xsl:for-each select="$pl02/HHoaSPhamTonKho/CTietHHoaSPham">
			<xsl:variable name="currentRows" select='position()' />
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows"/></td>
				<td class="align-l"><xsl:value-of select="ct04"/></td>
				<td class="align-c"><xsl:value-of select="ct05"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct06)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>
			</tr>
			</xsl:for-each>
			<tr>
				<td class="align-c"></td>
				<td class="align-l"><b>Tổng cộng</b></td>
				<td class="align-c"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/HHoaSPhamTonKho/ct08)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/HHoaSPhamTonKho/ct09)"/></td>	
			</tr>
			<tr>
				<td class="align-c"><b>II</b></td>
				<td class="align-l" colspan="7"><b>MÁY MÓC, THIẾT BỊ</b></td>
			</tr>
			<xsl:for-each select="$pl02/MayMocThietBi/CTietMayMocThietBi">
			<xsl:variable name="currentRows" select='position()' />
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows"/></td>
				<td class="align-l"><xsl:value-of select="ct04"/></td>
				<td class="align-c"><xsl:value-of select="ct05"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct06)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct07)"/></td>
			</tr>
			</xsl:for-each>
			<tr>
				<td class="align-c"></td>
				<td class="align-l"><b>Tổng cộng</b></td>
				<td class="align-c"></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/MayMocThietBi/ct10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/MayMocThietBi/ct11)"/></td>	
			</tr>
			<tr>
				<td class="align-c"></td>
				<td class="align-l" colspan="2"><b>Tổng cộng</b></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl02/ct13)"/></td>	
			</tr>
		</table>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</div>
		<br/>
		<xsl:call-template name="tkhaiFooter_01BK_HTK"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>