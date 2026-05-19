<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
		 <xsl:call-template name="tkhaiHeaderTKhai_TNCN_03KK">
		<xsl:with-param name="mauTKhai"   select="'03/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập khấu trừ thuế đối với thu nhập từ đầu tư vốn, từ chuyển nhượng chứng khoán, từ bản quyền, từ nhượng quyền thương mại, từ trúng thưởng của cá nhân cư trú và cá nhân không cư trú; từ kinh doanh của cá nhân không cư trú; Tổ chức, cá nhân nhận chuyển nhượng vốn của cá nhân không cư trú )'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="donvitien">
					<i>Đơn vị tiền: Đồng Việt Nam</i>
				</div>
			<tr>
				<td>
					<table class="tkhai_table"  >
						      <colgroup>
							   <col width="30px"/>
							   <col width="700px"/>
							   <col width="50px"/>
							   <col width="120px"/>
							 </colgroup>
							 <tr class="tkhaiheader">
							   <td class="align-c">
								 <b>STT</b>
							   </td>
							   <td class="align-c" colspan="2">
								 <b>Chỉ tiêu</b>
							   </td>
							   <td class="align-c">
								 <b>Số tiền </b>
							   </td>
							 </tr>
							 <tr  class="tkhaiheader">
							   <td class="align-c">
								 (1)
							   </td>
							   <td class="align-c" colspan="2">
								 (2)
							   </td>
							   <td class="align-c">
								 (3)
							   </td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>I</b></td>       <td colspan="3"><b>Thu nhập từ đầu tư vốn</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng thu nhập tính thuế</td>
							   <td class="align-c"><b>[29]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct29)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ </td>
							   <td class="align-c"><b>[30]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuDauTuVon/ct30)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>II</b></td>       <td colspan="3"><b>Thu nhập từ chuyển nhượng chứng khoán</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng giá trị chuyển nhượng chứng khoán</td>
							   <td class="align-c"><b>[31]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuCNhuongCKhoan/ct31)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế TNCN đã khấu trừ</td>
							   <td class="align-c"><b>[32]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuCNhuongCKhoan/ct32)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>III</b></td>       <td colspan="3"><b>Thu nhập từ bản quyền, nhượng quyền thương mại</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng thu nhập tính thuế</td>
							   <td class="align-c"><b>[33]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuBanQuyenTMai/ct33)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế TNCN đã khấu trừ</td>
							   <td class="align-c"><b>[34]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuBanQuyenTMai/ct34)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>IV</b></td>       <td colspan="3"><b>Thu nhập từ trúng thưởng</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng thu nhập tính thuế</td>
							   <td class="align-c"><b>[35]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct35)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế TNCN đã khấu trừ</td>
							   <td class="align-c"><b>[36]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuTrungThuong/ct36)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>V</b></td>       <td colspan="3"><b>Thu nhập từ kinh doanh của cá nhân không cư trú</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng thu nhập chịu thuế trả cho cá nhân</td>
							   <td class="align-c"><b>[37]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCuaCNhanKhongCuTru/ct37)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế đã khấu trừ</td>
							   <td class="align-c"><b>[38]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuKDoanhCuaCNhanKhongCuTru/ct38)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c"><b>VI</b></td>       <td colspan="3"><b>Thu nhập từ chuyển nhượng vốn của cá nhân không cư trú</b></td>     </tr>
							  <tr>
							   <td class="align-c">1</td>
							   <td>Tổng giá trị chuyển nhượng vốn</td>
							   <td class="align-c"><b>[39]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuCNhuongVonCuaCNhanKhongCTru/ct39)"/></td>
							 </tr>  
							 <tr>
							   <td class="align-c">2</td>
							   <td>Tổng số thuế đã khấu trừ</td>
							   <td class="align-c"><b>[40]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ThuNhapTuCNhuongVonCuaCNhanKhongCTru/ct40)"/></td>
							 </tr>  
						   </table>
				</td>
			</tr>
						 
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
