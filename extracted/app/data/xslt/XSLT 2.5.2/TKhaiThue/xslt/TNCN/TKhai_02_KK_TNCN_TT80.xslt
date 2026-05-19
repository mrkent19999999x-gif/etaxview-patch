<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_02_KK_TNCN_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân cư trú và cá nhân không cư trú có thu nhập từ tiền lương, tiền công khai thuế trực tiếp với cơ quan thuế)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>

					<table class="tkhai_table">
						<tr>
							<td  class="align-c"><b>STT</b></td>
							<td  class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
							<td  class="align-c"><b>Mã chỉ tiêu</b></td>
							<td  class="align-c"><b>Số tiền</b></td>
						</tr>
						<tr>
							<td  class="align-c"><b>I</b></td>
							<td colspan="4"><b>Cá nhân cư trú có thu nhập từ tiền lương, tiền công:</b></td>
						</tr>
						<tr>
							<td  class="align-c">1</td>
							<td colspan="2">Tổng thu nhập chịu thuế phát sinh trong kỳ</td>
							<td  class="align-c"><b>[20]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct20)"/></td>
						</tr>
						<tr>
						    <td  class="align-c">2</td>
							<td colspan="2">Trong đó: Thu nhập chịu thuế được miễn giảm theo Hiệp định</td>
							<td  class="align-c"><b>[21]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct21)"/></td>
						</tr>
						<tr>
							<td rowspan="6" class="align-c">3</td>
							<td colspan="2">Tổng các khoản giảm trừ ([22]=[23]+[24]+[25]+[26]+[27])</td>
							<td  class="align-c"><b>[22]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct22)"/></td>
						</tr>
						<tr>
							<td  class="align-c">a</td>
							<td >Cho bản thân</td>
							<td  class="align-c"><b>[23]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct23)"/></td>
						</tr>
						<tr>
							<td  class="align-c">b</td>
							<td >Cho người phụ thuộc</td>
							<td  class="align-c"><b>[24]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct24)"/></td>
						</tr>
						<tr>
							<td  class="align-c">c</td>
							<td >Cho từ thiện, nhân đạo, khuyến học</td>
							<td  class="align-c"><b>[25]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct25)"/></td>
						</tr>
						<tr>
							<td  class="align-c">d</td>
							<td >Các khoản đóng bảo hiểm được trừ</td>
							<td  class="align-c"><b>[26]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct26)"/></td>
						</tr>
						<tr>
							<td  class="align-c">e</td>
							<td >Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
							<td  class="align-c"><b>[27]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct27)"/></td>
						</tr>
						<tr>
							<td  class="align-c">4</td>
							<td colspan="2">Tổng thu nhập tính thuế ([28]= [20]-[21]-[22])</td>
							<td  class="align-c"><b>[28]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct28)"/></td>
						</tr>
						<tr>
							<td  class="align-c">5</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân phát sinh trong kỳ</td>
							<td  class="align-c"><b>[29]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct29)"/></td>
						</tr>
						<tr>
							<td  class="align-c"><b>II</b></td>
							<td colspan="4"><b>Cá nhân không cư trú có thu nhập từ tiền lương, tiền công:</b></td>
						</tr>
						<tr>
							<td  class="align-c">1</td>
							<td colspan="2">Tổng thu nhập tính thuế</td>
							<td  class="align-c"><b>[30]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct30)"/></td>
						</tr>
						<tr>
							<td  class="align-c">2</td>
							<td colspan="2">Mức thuế suất</td>
							<td  class="align-c"><b>[31]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct31)"/></td>
						</tr>
						<tr>
							<td  class="align-c">3</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân phải nộp</td>
							<td  class="align-c"><b>[32]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct32)"/></td>
						</tr>
					</table>
		</div>	
		</div>
			<xsl:call-template name="tkhaiFooter"></xsl:call-template>
			<div><b><u><i>Ghi chú: </i></u> </b></div>
		<div><i>1. Cá nhân cư trú và cá nhân không cư trú có thu nhập từ tiền lương, tiền công khai thuế trực tiếp với cơ quan thuế theo Tờ khai này bao gồm:</i></div>
		<div><i>- Cá nhân cư trú/không cư trú có thu nhập từ tiền lương, tiền công do các tổ chức Quốc tế, Đại sứ quán, Lãnh sự quán tại Việt Nam trả nhưng chưa thực hiện khấu trừ thuế;</i></div>
		<div><i>- Cá nhân cư trú có thu nhập từ tiền lương, tiền công do các tổ chức, cá nhân trả từ nước ngoài; </i></div>
		<div><i>- Cá nhân không cư trú có thu nhập từ tiền lương, tiền công phát sinh tại Việt Nam nhưng nhận tại nước ngoài;</i></div>
		<div><i>- Cá nhân có thu nhập từ tiền lương, tiền công do nhận cổ phiếu thưởng khi chuyển nhượng.</i></div>
		<div><i>2. Trường hợp cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần thì nộp hồ sơ khai thuế của lần khai thuế đầu tiên cùng với Hồ sơ thông báo miễn, giảm thuế theo Hiệp định theo quy định.</i></div>
		
			<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
