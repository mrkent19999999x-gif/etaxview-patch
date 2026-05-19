<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'TỜ KHAI KHẤU TRỪ THUẾ THU NHẬP CÁ NHÂN'" />
		 <xsl:call-template name="tkhaiHeader_06-TNCN">
		<xsl:with-param name="mauTKhai"   select="'06/TNCN '"/>
		<xsl:with-param name="moTaBieuMau"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
 15/6/2015 của Bộ Tài chính)'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho tổ chức, cá nhân trả thu nhập khấu trừ thuế đối với thu nhập từ đầu tư vốn, từ chuyển nhượng chứng khoán, từ bản quyền, từ nhượng quyền thương mại, từ trúng thưởng của cá nhân cư trú và cá nhân không cư trú; từ kinh doanh của cá nhân không cư trú; tổ chức, cá nhân nhận chuyển nhượng vốn của cá nhân không cư trú)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>


					<table class="tkhai_table">
					
				       <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Chỉ tiêu</b></td>
							<td class="align-c"><b>Mã chỉ tiêu</b></td>
							<td class="align-c"><b>Số phát sinh</b></td>
							<td class="align-c"><b>Số luỹ kế</b></td>

						</tr>
						<tr>
							<td class="align-c"><b>I</b></td>
							<td colspan="4"><b>Thu nhập từ đầu tư vốn</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng thu nhập tính thuế</td>
							<td class="align-c"><b>[29]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct29)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct29)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ </td>
							<td class="align-c"><b>[30]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct30)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct30)"/></td>
						</tr>
						<tr>
						    <td class="align-c"><b>II</b></td>
							<td colspan="4"><b>Thu nhập từ chuyển nhượng chứng khoán</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng giá trị chuyển nhượng chứng khoán</td>
							<td class="align-c"><b>[31]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct31)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct31)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế TNCN đã khấu trừ</td>
							<td class="align-c"><b>[32]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct32)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct32)"/></td>
						</tr>
						<tr>
						    <td class="align-c"><b>III</b></td>
							<td colspan="4"><b>Thu nhập từ bản quyền, nhượng quyền thương mại</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng thu nhập tính thuế</td>
							<td class="align-c"><b>[33]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct33)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct33)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế TNCN đã khấu trừ </td>
							<td class="align-c"><b>[34]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct34)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct34)"/></td>
						</tr>
						<tr>
							<td class="align-c"><b>IV</b></td>
							<td colspan="4"><b>Thu nhập từ trúng thưởng</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng thu nhập tính thuế </td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct35)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct35)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế TNCN đã khấu trừ </td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct36)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct36)"/></td>
						</tr>
						<tr>
							<td class="align-c"><b>V</b></td>
							<td colspan="4"><b>Doanh thu từ kinh doanh của cá nhân không cư trú </b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng doanh thu tính thuế trả cho cá nhân</td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct37)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct37)"/></td>
						</tr>
					
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế đã khấu trừ</td>
							<td class="align-c"><b>[38]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct38)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct38)"/></td>
						</tr>
						<tr>
							<td class="align-c"><b>VI</b></td>
							<td colspan="4"><b>Thu nhập từ chuyển nhượng vốn của cá nhân không cư trú</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Tổng giá chuyển nhượng vốn</td>
							<td class="align-c"><b>[39]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct39)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct39)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Tổng số thuế TNCN đã khấu trừ</td>
							<td class="align-c"><b>[40]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoPhatSinh/ct40)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoLuyke/ct40)"/></td>
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
	</xsl:template>		
</xsl:stylesheet>