<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_CNKD_TCKT">
		<xsl:with-param name="mauTKhai"   select="'01/TCKT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cá nhân hợp tác kinh doanh với tổ chức; tổ chức khai thuế thay, nộp thuế thay cho cá nhân cho thuê bất động sản)'"/>
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
										<td class="align-c"><b>I</b></td> 
										<td><b>Khai thuế thay cá nhân hợp tác kinh doanh</b></td>
										<td class="align-c">[06]</td>
										<td></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng doanh thu phát sinh trong kỳ</td>
										<td class="align-c">[07]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThongTinKeKhai/ct7)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng số thuế TNCN phải nộp </td>
										<td class="align-c">[08]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThongTinKeKhai/ct8)"/></td>
									</tr>
																		<tr>
										<td class="align-c"><b>II</b></td> 
										<td><b>Khai thuế thay cá nhân cho thuê bất động sản </b></td>
										<td class="align-c">[09]</td>
										<td></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng doanh thu phát sinh trong kỳ</td>
										<td class="align-c">[10]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThongTinKeKhai/ct10)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng số thuế GTGT phải nộp </td>
										<td class="align-c">[11]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThongTinKeKhai/ct11)"/></td>
									</tr>
										<tr>
										<td class="align-c">3</td>
										<td>Tổng số thuế TNCN phải nộp </td>
										<td class="align-c">[12]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThongTinKeKhai/ct12)"/></td>
									</tr>
									
									
									</table>
										
				
				
				<div  class="align-l"><i>(TNCN: Thu nhập cá nhân; GTGT: Giá trị gia tăng, DN: Doanh nghiệp)</i></div>
				
				
								<xsl:call-template name="tkhaiFooter_01TCKT_HKD"/>
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