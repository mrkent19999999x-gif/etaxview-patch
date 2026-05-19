<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_02qtt_TT92">
		<xsl:with-param name="mauTKhai"   select="'02/QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân cư trú có thu nhập từ tiền lương, tiền công)'"/>
	  </xsl:call-template>
	  
			  <div class="ndungtkhai_div">
					<div class="content">
								 <table class="tkhai_table">
								  <tr>
									<td class="align-c"><b>STT</b></td>
									<td class="align-c" colspan="3"><b>Chỉ Tiêu</b></td>
									<td class="align-c"><b>Mã chỉ tiêu</b></td>
									<td class="align-c"><b>Đơn vị tính</b></td>
									<td class="align-c"><b>Số tiền/Số người</b></td>
								  </tr>
								  <tr>
											<td rowspan="5" class="align-c">1</td>
											<td colspan="3">Tổng thu nhập chịu thuế (TNCT) trong kỳ [22]=[23]+[26]</td>
											<td class="align-c"><b>[22]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct22)" /></td>
											
										</tr>
										<tr>
											<td rowspan="3" class="align-c">a</td>
											<td colspan="2">Tổng TNCT phát sinh tại Việt Nam </td>
											<td class="align-c"><b>[23]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct23)" /></td>
											
										</tr>
										<tr>
											<td class="align-c" rowspan="2">Trong đó</td>
											<td>Tổng TNCT làm căn cứ tính giảm thuế</td>
											<td class="align-c"><b>[24]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct24)" /></td>
											
										</tr>
										<tr>
											<td>Tổng TNCT được miễn giảm theo Hiệp định</td>
											<td class="align-c"><b>[25]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct25)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">b</td>
											<td colspan="2">Tổng TNCT phát sinh ngoài Việt Nam</td>
											<td class="align-c"><b>[26]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct26)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">2</td>
											<td colspan="3">Số người phụ thuộc</td>
											<td class="align-c"><b>[27]</b></td>
											<td class="align-c">Người</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct27)" /></td>
											
										</tr>
									
										<tr>
										 <td rowspan="6" class="align-c">3</td>
											<td colspan="3">Các khoản giảm trừ [28]=[29]+[30]+[31]+[32]+[33]</td>
											<td class="align-c"><b>[28]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct28)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">a</td>
											<td colspan="2">Cho bản thân cá nhân</td>
											<td class="align-c"><b>[29]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct29)" /></td>
											
										</tr>
										
										<tr>
											<td class="align-c">b</td>
											<td colspan="2">Cho những người phụ thuộc được giảm trừ</td>
											<td class="align-c"><b>[30]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct30)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">c</td>
											<td colspan="2">Từ thiện, nhân đạo, khuyến học</td>
											<td class="align-c"><b>[31]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">d</td>
											<td colspan="2">Các khoản đóng bảo hiểm được trừ</td>
											<td class="align-c"><b>[32]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">e</td>
											<td colspan="2">Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
											<td class="align-c"><b>[33]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)" /></td>
											
										</tr>
										<tr>
										<td class="align-c">4</td>
											<td colspan="3">Tổng thu nhập tính thuế [34]=[22]-[25]-[28]</td>
											<td class="align-c"><b>[34]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct34)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">5</td>
											<td colspan="3">Tổng số thuế thu nhập cá nhân (TNCN) phát sinh trong kỳ</td>
											<td class="align-c"><b>[35]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct35)" /></td>
											
										</tr>
										<tr>
											<td rowspan="5" class="align-c">6</td>
											<td colspan="3">Tổng số thuế đã tạm nộp, đã khấu trừ, đã nộp trong kỳ  [36]=[37]+[38]+[39] - [40]</td>
											<td class="align-c"><b>[36]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct36)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">a</td>
											<td colspan="2">Đã khấu trừ</td>
											<td class="align-c"><b>[37]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct37)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">b</td>
											<td colspan="2">Đã tạm nộp</td>
											<td class="align-c"><b>[38]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct38)" /></td>
											
										</tr>
										 <tr>
											<td class="align-c">c</td>
											<td colspan="2">Đã nộp ở nước ngoài được giảm trừ (nếu có)</td>
											<td class="align-c"><b>[39]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct39)" /></td>
											
										</tr>
										 <tr>
											<td class="align-c">d</td>
											<td colspan="2">Đã khấu trừ hoặc tạm nộp trùng do quyết toán vắt năm</td>
											<td class="align-c"><b>[40]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct40)" /></td>
											
										</tr>
										
										<tr>
											<td rowspan="3" class="align-c">7</td>
											<td colspan="3">Tổng số thuế TNCN được giảm trong kỳ [41]=[42]+[43]</td>
											<td class="align-c"><b>[41]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct41)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">a</td>
											<td colspan="2">Tổng số thuế TNCN được giảm do làm việc trong khu kinh tế</td>
											<td class="align-c"><b>[42]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct42)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">b</td>
											<td colspan="2">Tổng số thuế TNCN được giảm khác </td>
											<td class="align-c"><b>[43]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct43)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">8</td>
											<td colspan="3">Tổng số thuế còn phải nộp trong kỳ [44]=[35]-[36]-[41] >= 0</td>
											<td class="align-c"><b>[44]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct44)" /></td>
											
										</tr>
										<tr>
											<td rowspan="5" class="align-c">9</td>
											<td colspan="3">Tổng số thuế nộp thừa trong kỳ [45] = [35]-[36]-[41] &lt;0</td>
											<td class="align-c"><b>[45]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct45)" /></td>
											
										</tr>
										<tr>
											<td rowspan="3" class="align-c">a</td>
											<td colspan="2">Tổng số thuế đề nghị hoàn trả [46]=[47]+[48]</td>
											<td class="align-c"><b>[46]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct46)" /></td>
											
										</tr>
										<tr>
											<td rowspan="2" class="align-c">Trong đó:</td>
											<td>Số thuế hoàn trả vào tài khoản người nộp thuế</td>
											<td class="align-c"><b>[47]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct47)" /></td>
											
										</tr>
										<tr>
											<td>Số thuế bù trừ cho khoản phải nộp Ngân sách nhà nước khác</td>
											<td class="align-c"><b>[48]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct48)" /></td>
											
										</tr>
										<tr>
											<td class="align-c">b</td>
											<td colspan="2">Tổng số thuế bù trừ cho các phát sinh của kỳ sau [49]=[45]-[46]</td>
											<td class="align-c"><b>[49]</b></td>
											<td class="align-c">VNĐ</td>
											<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct49)" /></td>
											
										</tr>
								</table>
						</div>
					</div>
			<xsl:call-template name="tkhaiFooter"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>