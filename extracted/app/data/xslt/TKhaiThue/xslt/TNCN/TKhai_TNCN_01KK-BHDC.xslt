<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />	
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/KK-BHĐC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho doanh nghiệp bảo hiểm khấu trừ thuế thu nhập cá nhân đối với thu nhập của đại lý bảo hiểm, thu nhập từ tiền phí tích luỹ bảo hiểm nhân thọ; công ty quản lý quỹ hưu trí tự nguyện khấu trừ thuế thu nhập cá nhân đối với tiền tích lũy quỹ hưu trí tự nguyện; doanh nghiệp bán hàng đa cấp khấu trừ thuế thu nhập cá nhân đối với thu nhập của 
cá nhân tham gia mạng lưới bán hàng đa cấp)
'"/>
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
						   <col width="750px"/>
						   <col width="30px"/>
						   <col width="90px"/>
						 </colgroup>
						 <tr class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c" colspan="2"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền </b></td>
						 </tr>
						 <tr>
						 <td class="tkhaiheader">I</td>
						  <td class="b" colspan="3">Thu nhập của đại lý bảo hiểm</td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập trả trong kỳ</td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNCuaDLyBHiem/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNCuaDLyBHiem/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ</td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNCuaDLyBHiem/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="tkhaiheader">II</td>
						   <td class="b" colspan="3">Thu nhập từ tiền phí tích lũy bảo hiểm nhân thọ</td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuTienPhiTichLuyBHNT/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuTienPhiTichLuyBHNT/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="tkhaiheader">III</td>
						   <td class="b" colspan="3">Thu nhập từ tiền tích lũy quỹ hưu trí tự nguyện</td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuTienTichLuyQuyHTTN/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td>Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuTienTichLuyQuyHTTN/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="tkhaiheader">IV</td>
						   <td class="b" colspan="3">Thu nhập từ tham gia mạng lưới bán hàng đa cấp</td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td>Tổng thu nhập trả trong kỳ</td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuThamGiaMangLuoiBHDC/ct28)"/></td>
						 </tr>  
						  <tr>
						   <td class="align-c">2</td>
						   <td>Tổng thu nhập trả thuộc diện khấu trừ</td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuThamGiaMangLuoiBHDC/ct29)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3</td>
						   <td>Tổng số thuế thu nhập cá nhân đã khấu trừ</td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TNTuThamGiaMangLuoiBHDC/ct30)"/></td>
						 </tr> 
						 <tr>
						   <b>
						   <td class="tkhaiheader">V</td>
						   <td class="b">Tổng số thuế TNCN đã khấu trừ [31]=[23]+[25]+[27]+[30]</td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct31)"/></td>
						   </b>
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