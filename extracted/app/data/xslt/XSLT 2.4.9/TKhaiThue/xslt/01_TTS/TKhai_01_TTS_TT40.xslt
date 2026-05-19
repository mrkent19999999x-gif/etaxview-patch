<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày 01/6/2021  của Bộ trưởng Bộ Tài Chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01TTSTT40">
		<xsl:with-param name="mauTKhai"   select="'01/TTS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân có hoạt động cho thuê tài sản trực tiếp khai thuế với cơ quan thuế và tổ chức khai thay cho cá nhân)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                      		<div> <b>A. PHẦN CÁ NHÂN KÊ KHAI NGHĨA VỤ THUẾ</b> </div>	
							<br/>
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
										<td>Tổng doanh thu phát sinh trong kỳ</td>
										<td class="align-c"><b>[23]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct23)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng doanh thu tính thuế </td>
										<td class="align-c"><b>[24]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct24)"/></td>
									</tr>

									<tr>
										<td class="align-c">3</td>
										<td>Tổng số thuế GTGT phải nộp</td>
										<td class="align-c"><b>[25]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct25)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế TNCN phát sinh trong kỳ</td>
										<td class="align-c"><b>[26]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct26)"/></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Tiền phạt, bồi thường mà bên cho thuê nhận được theo thoả thuận tại hợp đồng (nếu có)</td>
										<td class="align-c"><b>[27]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct27)"/></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Tổng số thuế TNCN phải nộp từ tiền nhận bồi thường, phạt vi phạm hợp đồng (nếu có)</td>
										<td class="align-c"><b>[28]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct28)"/></td>
									</tr>
									<tr>
										<td class="align-c">7</td>
										<td>Tổng số thuế TNCN phải nộp [29]=[26]+[28]</td>
										<td class="align-c"><b>[29]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct29)"/></td>
									</tr>
								</table>
								<div><i>(TNCN: Thu nhập cá nhân; GTGT: Giá trị gia tăng)</i></div>
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
