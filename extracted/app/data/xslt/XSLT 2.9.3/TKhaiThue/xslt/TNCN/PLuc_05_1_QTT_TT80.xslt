<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK_QTT">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_BK_QTT' />
			<xsl:call-template name="tkhaiHeader-pluc-05QTT_tt80">
		<xsl:with-param name="mauTKhai"   select="'05-1/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN THUỘC DIỆN TÍNH THUẾ THEO BIỂU LŨY TIẾN TỪNG PHẦN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 05/QTT-TNCN)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Họ và tên</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							<td class="align-c" rowspan="2"><b>Loại giấy tờ</b></td>
							<td class="align-c" rowspan="2"><b>Số CMND/CCCD/SĐDCN Hộ chiếu(trường hợp chưa có MST)</b></td>
							<td class="align-c" rowspan="2"><b>Cá nhân uỷ quyền quyết toán thay</b></td>
							<td class="align-c" rowspan="2"><b>CN nước ngoài ủy quyền quyết toán dưới 12 tháng</b></td>	
							<td class="align-c" colspan="5"><b>Thu nhập chịu thuế (TNCT)</b></td>
							<td class="align-c" colspan="5"><b>Các khoản giảm trừ</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập tính thuế ([21]= [12]-[14]-[15]-[17])</b></td>
							<td class="align-c" colspan="2"><b>Số thuế TNCN đã khấu trừ </b></td>
							<td class="align-c" colspan="3"><b>Chi tiết kết quả quyết toán thay cho cá nhân nộp thuế</b></td>
							<td class="align-c" rowspan="2"><b>Cá nhân có số thuế được miễn do có số thuế còn phải nộp từ 50.000 đồng trở xuống</b></td>
						</tr>
						<tr>
							<td class="align-c" colspan="1">Tổng thu nhập chịu thuế</td>
							<td class="align-c" colspan="1">Trong đó: TNCT tại tổ chức trước khi điều chuyển (trường hợp có đánh dấu vào chỉ tiêu [04] tại Tờ khai 05/QTT-TNCN)</td>
							<td class="align-c" rowspan="1">Trong đó: thu nhập chịu thuế được miễn theo Hiệp định</td>
							<td class="align-c" rowspan="1">Trong đó: thu nhập chịu thuế được miễn theo quy định của Hợp đồng dầu khí</td>
							<td class="align-c" rowspan="1">Thu nhập miễn thuế thu nhập cá nhân theo các Nghị quyết</td>
							<td class="align-c" rowspan="1"><b>Số lượng NPT tính giảm trừ</b></td>
							<td class="align-c" rowspan="1"><b>Tổng số tiền  giảm trừ gia cảnh</b></td>
							<td class="align-c" rowspan="1"><b>Từ thiện, nhân đạo, khuyến học</b></td>
							<td class="align-c" rowspan="1"><b>Bảo hiểm được trừ</b></td>
							<td class="align-c" rowspan="1"><b>Quĩ hưu trí tự nguyện được trừ</b></td>
							<td class="align-c" rowspan="1">Tổng số thuế TNCN đã khấu trừ</td>
							<td class="align-c" rowspan="1">Trong đó: số thuế đã khấu trừ tại tổ chức trước khi điều chuyển (trường hợp có đánh dấu vào chỉ tiêu [04] tại Tờ khai 05/QTT</td>
							<td class="align-c" rowspan="1">Tổng số thuế phải nộp</td>
							<td class="align-c" rowspan="1">Số thuế đã nộp thừa</td>
							<td class="align-c" rowspan="1">Số thuế còn phải nộp</td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-c"><b>[15.1]</b></td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-c"><b>[18]</b></td>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c"><b>[27]</b></td>
						</tr>
						
						<xsl:for-each select="$pl01/BKeCTietCNhan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td class="align-c"><xsl:value-of select="ct09a_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct09" /></td>
							  <td class="align-c">[<xsl:if test="ct10='true' or ct10='1'">x</xsl:if>]</td>
							  <td class="align-c">[<xsl:if test="ct11='true' or ct11='1'">x</xsl:if>]</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15.1)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct21)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct22)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct23)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct24)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct26)" /></td>
							  <td class="align-c">[<xsl:if test="ct27='true' or ct27='1'">x</xsl:if>]</td>
							 
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c" colspan="7"><b>Tổng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct28)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct29)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct30)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct31)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct31.1)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct32)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct33)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct34)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct35)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct36)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct37)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct38)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct39)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct40)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct41)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct42)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl01/ct43)" /></b></td>
						</tr>
					</table>
					<div><i>(TNCT: Thu nhập chịu thuế; TNCN: thu nhập cá nhân; NPT: người phụ thuộc; SĐDCN: Số định danh cá nhân)</i></div>
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