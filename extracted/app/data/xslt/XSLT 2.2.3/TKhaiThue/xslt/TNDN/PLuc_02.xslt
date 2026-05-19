<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'12/2016/TTLT-BKHCN-BTC'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_02">	
			<xsl:variable name="pl02_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_02' />
				<xsl:call-template name="tkhaiHeader-pluc_02">
		<xsl:with-param name="mauTKhai"   select="'02'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BÁO CÁO TRÍCH LẬP, ĐIỀU CHUYỂN VÀ SỬ DỤNG QUỸ PHÁT TRIỂN KHOA HỌC VÀ CÔNG NGHỆ'"/>
<xsl:with-param name="tenPL1"   select="''"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai Quyết toán thuế TNDN số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
		             <div class="content">	
		             <div><b>I. Xác định số trích lập Quỹ phát triển khoa học và công nghệ trong kỳ tính thuế:</b></div>
		             <div>1. Mức trích lập: <xsl:value-of select="$pl02_tndn/mucTrichLap"/> </div>
		             <div>2. Số tiền trích lập: <xsl:value-of select="ihtkk:formatNumber($pl02_tndn/soTienTrichLap)"/> đồng</div>
		             <div><b>II. Theo dõi việc điều chuyển, sử dụng Quỹ phát triển khoa học và công nghệ các kỳ tính thuế trước và kỳ này:</b></div>
		             <table class="tkhai_table">
		             	   <tr>
								<td class="align-c"><b>STT</b></td>
								<td class="align-c"><b>Năm trích lập</b></td>
								<td class="align-c"><b>Mức trích lập trong kỳ tính thuế</b></td>
								<td class="align-c"><b>Số tiền trích lập trong kỳ tính thuế</b></td>
								<td class="align-c"><b>Số nhận điều chuyển trong kỳ tính thuế</b></td>
								<td class="align-c"><b>Số điều chuyển trong kỳ tính thuế</b></td>
								<td class="align-c"><b>Số tiền đã sử dụng trong kỳ tính thuế trước</b></td>
								<td class="align-c"><b>Số tiền đã sử dụng trong kỳ tính thuế này</b></td>
								<td class="align-c"><b>Số tiền được chuyển sang các kỳ tính thuế sau </b></td>
							</tr>
							<tr>
								<td class="align-c"><b>(1)</b></td>
								<td class="align-c"><b>(2)</b></td>
								<td class="align-c"><b>(3)</b></td>
								<td class="align-c"><b>(4)</b></td>
								<td class="align-c"><b>(5)</b></td>
								<td class="align-c"><b>(6)</b></td>
								<td class="align-c"><b>(7)</b></td>
								<td class="align-c"><b>(8)</b></td>
								<td class="align-c"><b>(9)</b></td>
							</tr>
		             	   <xsl:for-each select="$pl02_tndn/BangDChuyenSDungQuyTrichLap/ChiTietBangDChuyenSDungQuyTrichLap">
							<xsl:variable name="currentRows" select='position()' />
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="ct2"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct3)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>

							</tr>
				       </xsl:for-each>
					    </table>	
                </div>
			</div>
			
					<table style="page-break-inside: avoid;width:100%" >
                <tr>
                <td>	<br/>
                <div><b><i>Tài liệu kèm theo:</i></b><br/></div>
<div>- Bản liệt kê các Hợp đồng nghiên cứu khoa học và phát triển công nghệ;</div>	
<div>- Bản liệt kê các Hợp đồng dịch vụ thông tin khoa học và công nghệ;</div>	
<div>- Bản liệt kê các hoạt động khoa học và công nghệ của Quỹ trong kỳ tính thuế.</div>	
			
			<xsl:call-template name="tkhaiFooter_pl02_tndn"/>	
						<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>