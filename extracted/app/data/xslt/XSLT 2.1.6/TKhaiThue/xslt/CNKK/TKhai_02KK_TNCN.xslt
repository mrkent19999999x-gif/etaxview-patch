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
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'02/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân cư trú và cá nhân không cư trú có thu nhập từ tiền lương, tiền công khai thuế trực tiếp với cơ quan thuế)'"/>
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
							<td colspan="2">Cá nhân có thu nhập ổn định theo quý không phải nộp tờ khai các quý tiếp theo</td>
							<td  class="align-c"><b>[21]</b></td>
							<td class="align-c"><xsl:if test="$tkchinh/CaNhanCuTru/ct21='true'">x</xsl:if></td>
							
						</tr>
						<tr>
							<td  class="align-c">2</td>
							<td colspan="2">Tổng thu nhập chịu thuế phát sinh trong kỳ </td>
							<td  class="align-c"><b>[22]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct22)"/></td>
						</tr>
						<tr>
						    <td  class="align-c">3</td>
							<td colspan="2">Trong đó thu nhập chịu thuế được miễn giảm theo Hiệp định</td>
							<td  class="align-c"><b>[23]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct23)"/></td>
						</tr>
						<tr>
							<td rowspan="6" class="align-c">4</td>
							<td colspan="2">Tổng các khoản giảm trừ</td>
							<td  class="align-c"><b>[24]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct24)"/></td>
						</tr>
						<tr>
							<td  class="align-c">a</td>
							<td >Cho bản thân</td>
							<td  class="align-c"><b>[25]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct25)"/></td>
						</tr>
						<tr>
							<td  class="align-c">b</td>
							<td >Cho người phụ thuộc</td>
							<td  class="align-c"><b>[26]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct26)"/></td>
						</tr>
						<tr>
							<td  class="align-c">c</td>
							<td >Cho từ thiện, nhân đạo, khuyến học</td>
							<td  class="align-c"><b>[27]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct27)"/></td>
						</tr>
						<tr>
							<td  class="align-c">d</td>
							<td >Các khoản đóng bảo hiểm được trừ</td>
							<td  class="align-c"><b>[28]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct28)"/></td>
						</tr>
						<tr>
							<td  class="align-c">e</td>
							<td >Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
							<td  class="align-c"><b>[29]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct29)"/></td>
						</tr>
						<tr>
							<td  class="align-c">5</td>
							<td colspan="2">Tổng thu nhập tính thuế</td>
							<td  class="align-c"><b>[30]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct30)"/></td>
						</tr>
						<tr>
							<td  class="align-c">6</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân phát sinh trong kỳ</td>
							<td  class="align-c"><b>[31]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct31)"/></td>
						</tr>
						<tr>
							<td  class="align-c">7</td>
							<td colspan="2">Tổng thu nhập chịu thuế làm căn cứ tính giảm thuế</td>
							<td  class="align-c"><b>[32]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct32)"/></td>
						</tr>
						<tr>
							<td  class="align-c">8</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân được giảm</td>
							<td  class="align-c"><b>[33]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct33)"/></td>
						</tr>
					
						<tr>
							<td  class="align-c">9</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân phải nộp</td>
							<td  class="align-c"><b>[34]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanCuTru/ct34)"/></td>
						</tr>
						<tr>
							<td  class="align-c"><b>II</b></td>
							<td colspan="4"><b>Cá nhân không cư trú có thu nhập từ tiền lương, tiền công:</b></td>
						</tr>
						<tr>
							<td  class="align-c">1</td>
							<td colspan="2">Tổng thu nhập tính thuế</td>
							<td  class="align-c"><b>[35]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct35)"/></td>
						</tr>
						<tr>
							<td  class="align-c">2</td>
							<td colspan="2">Mức thuế suất</td>
							<td  class="align-c"><b>[36]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct36)"/></td>
						</tr>
						<tr>
							<td  class="align-c">3</td>
							<td colspan="2">Tổng số thuế thu nhập cá nhân phải nộp</td>
							<td  class="align-c"><b>[37]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKhongCuTru/ct37)"/></td>
						</tr>

					</table>

                      	<div> <i>(Trường hợp cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần, đề nghị nộp Hồ sơ thông báo miễn, giảm thuế theo Hiệp định theo quy định.)</i> </div>	
  

			
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
