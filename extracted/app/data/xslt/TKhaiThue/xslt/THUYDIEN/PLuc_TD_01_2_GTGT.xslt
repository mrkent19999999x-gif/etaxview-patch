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
			
	<!--start phu luc 01-2/TĐ-GTGT-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_TD_GTGT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_TD_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-2/TĐ-GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ SỐ THUẾ GIÁ TRỊ GIA TĂNG PHẢI NỘP CỦA CƠ SỞ SẢN XUẤT THỦY ĐIỆN CHO CÁC ĐỊA PHƯƠNG
'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT hoặc mẫu số 01/TĐ-GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
				<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên nhà máy</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Cơ quan thuế địa phương nơi phát sinh hoạt động sản xuất thủy điện</b></td>
							<td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
							<td class="align-c"><b>Số thuế giá trị gia tăng phải nộp</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
						</tr>
                        <xsl:for-each select="$pl02/BangPBoThueGTGTChoDPhuong/ChiTietPBoThueGTGTChoDPhuong">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="tenNhaMay"/></td>
								<td class="align-c"><xsl:value-of select="mstNhaMay"/></td>
								<td></td>     
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tyLePhanBoNhaMay)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuePNopNhaMay)"/></td>
							</tr>
								<xsl:for-each select="PhanBoChoCQTDiaPhuong/tyLePBoThueChoTungCQT">
							         <tr>
                                         <td></td>				
                                         <td><xsl:value-of select="tenCoSo"/></td>
                                         <td><xsl:value-of select="mstCoSo"/></td>				         
								         <td><xsl:value-of select="tenCQTPBo"/></td>
								         <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tyLePBo)"/></td>
								         <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuePNopPBo)"/></td>
							         </tr>
						        </xsl:for-each>
							</xsl:for-each>
						<tr>
							<td class="align-c" colspan="5"><b>Tổng cộng:</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/tongCong)"/></b></td>
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
	<!--end phu luc 01-2/TĐ-GTGT-->	
	</xsl:template>		
</xsl:stylesheet>