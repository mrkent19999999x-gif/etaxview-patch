<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK_QTT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc-05QTT">
		<xsl:with-param name="mauTKhai"   select="'05-1/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN THUỘC DIỆN TÍNH THUẾ THEO BIỂU LŨY TIẾN TỪNG PHẦN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="3"><b>STT</b></td>
							<td class="align-c" rowspan="3"><b>Họ và tên</b></td>
							<td class="align-c" rowspan="3"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="3"><b>Số CMND/ Hộ chiếu</b></td>
							<td class="align-c" rowspan="3"><b>Cá nhân uỷ quyền quyết toán thay</b></td>
							<td class="align-c" colspan="3"><b>Thu nhập chịu thuế</b></td>
							<td class="align-c" colspan="5"><b>Các khoản giảm trừ</b></td>
							<td class="align-c" rowspan="3"><b>Thu nhập tính thuế</b></td>
							<td class="align-c" rowspan="3"><b>Số thuế TNCN đã khấu trừ</b></td>
							<td class="align-c" rowspan="3"><b>Số thuế TNCN được giảm do làm việc trong KKT</b></td>
							<td class="align-c" colspan="3"><b>Chi tiết kết quả quyết toán thay cho cá nhân nộp thuế</b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="2">Tổng số</td>
							<td class="align-c" colspan="2">Trong đó: TNCT được giảm thuế </td>
							<td class="align-c" rowspan="2">Số lượng NPT tính giảm trừ</td>
							<td class="align-c" rowspan="2">Tổng số tiền  giảm trừ gia cảnh</td>
							<td class="align-c" rowspan="2">Từ thiện, nhân đạo, khuyến học</td>
							<td class="align-c" rowspan="2">Bảo hiểm được trừ</td>
							<td class="align-c" rowspan="2">Quĩ hưu trí tự nguyện được trừ</td>
							<td class="align-c" rowspan="2">Tổng số thuế phải nộp</td>
							<td class="align-c" rowspan="2">Số thuế đã nộp thừa</td>
							<td class="align-c" rowspan="2">Số thuế còn phải nộp</td>
						</tr>
						<tr>
							<td class="align-c">Làm việc trong KKT</td>
							<td class="align-c">Theo Hiệp định</td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
						</tr>
						
						<xsl:for-each select="$pl01/BKeCTietCNhan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td class="align-c"><xsl:value-of select="ct09" /></td>
							  <td class="align-c">[<xsl:if test="ct10='true'">x</xsl:if>]</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct21)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct22)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct23)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct24)" /></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c" colspan="5"><b>Tổng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct25)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct26)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct27)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct28)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct29)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct30)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct31)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct32)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct33)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct34)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct35)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct36)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct37)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct38)" /></b></td>
						</tr>
					</table>
					<div><i>(KKT: Khu kinh tế; TNCN: thu nhập cá nhân; NPT: người phụ thuộc)</i></div>
				</div>
			</div>
		</xsl:if>
<table style="page-break-inside: avoid;" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		 
	</xsl:template>		
</xsl:stylesheet>