<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_03_GTGT_TT80">
		<xsl:with-param name="mauTKhai"   select="'03/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hoạt động mua bán, chế tác vàng bạc, đá quý tính thuế theo phương pháp trực tiếp trên giá trị gia tăng)'"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Giá trị gia tăng âm được kết chuyển kỳ trước</td>
										<td class="align-c">[21]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng doanh thu hàng hoá, dịch vụ bán ra</td>
										<td class="align-c">[22]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)"/></td>
									</tr>
									<tr>
										<td class="align-c">3</td>
										<td>Giá vốn của hàng hoá, dịch vụ mua vào</td>
										<td class="align-c">[23]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Điều chỉnh tăng giá trị gia tăng âm của các kỳ trước</td>
										<td class="align-c">[24]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)"/></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Điều chỉnh giảm giá trị gia tăng âm của các kỳ trước</td>
										<td class="align-c">[25]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)"/></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Giá trị gia tăng chịu thuế trong kỳ ([26]=[22]-[23]-[21]-[24]+[25])</td>
										<td class="align-c">[26]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)"/></td>
									</tr>
									<tr>
										<td class="align-c">7</td>
										<td>Thuế giá trị gia tăng phải nộp ([27]=[26] x Thuế suất)</td>
										<td class="align-c">[27]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)"/></td>
									</tr>
									</table>
									
									
					
								<xsl:call-template name="tkhaiFooter"/>
							<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
		<table style="page-break-inside: avoid;width:100%" >

</table>	
					</xsl:template>	

</xsl:stylesheet>