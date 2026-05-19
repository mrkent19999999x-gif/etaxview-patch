<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số    40/2021/TT-BTC ngày  01/6/2021  của Bộ trưởng Bộ Tài Chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_TTS">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_TTS' />
			<xsl:call-template name="tkhaiHeader-pluc01">
		<xsl:with-param name="mauTKhai"   select="'01/BK-TTS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT HỢP ĐỒNG CHO THUÊ TÀI SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai 01/TTS áp dụng đối với cá nhân có hoạt động cho thuê tài sản
trực tiếp khai thuế với cơ quan thuế nếu là lần khai thuế đầu tiên của Hợp đồng hoặc Phụ lục hợp đồng)
'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
					<td class="align-c" rowspan="2"><b>Hợp đồng/ kỳ thanh toán</b></td>
				<td class="align-c" rowspan="2"><b>Họ tên bên thuê tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Mã số thuế bên thuê tài sản</b></td>
				<td class="align-c" colspan="2"><b>Loại tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Mục đích sử dụng tài sản thuê</b></td>
				<td class="align-c" rowspan="2"><b>Bên thuê có đầu tư xây dựng cơ bản</b></td>
				<td class="align-c" colspan="2"><b>Địa chỉ bất động sản cho thuê </b></td>
				<td class="align-c" rowspan="2"><b>Diện tích sàn cho thuê</b></td>
				<td class="align-c" colspan="5"><b>Kỳ thanh toán</b></td>
				<td class="align-c" rowspan="2"><b>Số tháng cho thuê của hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Tổng giá trị hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu bình quân tháng của hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Tổng doanh thu phát sinh trong năm</b></td>
				<td class="align-c" rowspan="2"><b>Cá nhân thuộc diện phải nộp thuế</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu tính thuế trong kỳ</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế GTGT phải nộp</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
				<td class="align-c" rowspan="2"><b>Trạng thái hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Mã hợp đồng</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Bất động sản</b></td>
				<td class="align-c"><b>Động sản</b></td>
				<td class="align-c"><b>Địa chỉ</b></td>
				<td class="align-c"><b>Xã/phường/đặc khu</b></td>
				<td class="align-c"><b>Kỳ thanh toán ổn định (Số tháng)</b></td>
				<td class="align-c"><b>Từ ngày/ tháng/ năm</b></td>
				<td class="align-c"><b>Đến ngày/ tháng/năm</b></td>
				<td class="align-c"><b>Năm tính thuế </b></td>
				<td class="align-c"><b>Giá cho thuê 1 tháng đã bao gồm thuế </b></td>
			</tr>
			<tr>
				<td class="align-c"><b>[06]</b></td>
				<td class="align-c"><b>[06a]</b></td>
				<td class="align-c"><b>[07]</b></td>
				<td class="align-c"><b>[08]</b></td>
				<td class="align-c"><b>[09]</b></td>
				<td class="align-c"><b>[10]</b></td>
				<td class="align-c"><b>[11]</b></td>
				<td class="align-c"><b>[12]</b></td>
				<td class="align-c"><b>[13]</b></td>
				<td class="align-c"><b>[14]</b></td>
				<td class="align-c"><b>[15a]</b></td>
				<td class="align-c"><b>[15b]</b></td>
				<td class="align-c"><b>[16]</b></td>
				<td class="align-c"><b>[17a]</b></td>
				<td class="align-c"><b>[17]</b></td>
				<td class="align-c"><b>[18]</b></td>
				<td class="align-c"><b>[19a]</b></td>
				<td class="align-c"><b>[19]</b></td>
				<td class="align-c"><b>[20]</b></td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-c"><b>[22a]</b></td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-c"><b>[24]</b></td>
				<td class="align-c"><b>[25]</b></td>
				<td class="align-c"><b>[26]</b></td>
				<td class="align-c"><b>[27]</b></td>
				<td class="align-c"><b>[28]</b></td>
			</tr>
			 <xsl:for-each select="$pl01/CTietBKeHDongTTS">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="ct06" /></td>
							  <td class="align-c"><xsl:value-of select="ct06a_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td class="align-c">[<xsl:if test="ct09='true' or ct09='1'">x</xsl:if>]</td>
							  <td class="align-c">[<xsl:if test="ct10='true' or ct10='1'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct11" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct12,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ct13_ten" /></td>
							  <td class="align-c">[<xsl:if test="ct14='true' or ct14='1'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct15_diaChi" /></td>
							  <td class="align-c"><xsl:value-of select="ct15_ten"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct17a)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct17,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct18,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct19a,'yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct19)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct20)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct21)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct22)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct22a)" /></td>
							  <td class="align-c">[<xsl:if test="ct23='true' or ct23='1'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct24)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct25)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct26)" /></td>
							  <td class="align-c"><xsl:value-of select="ct27_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct28" /></td>
							</tr>
							</xsl:for-each>	
			
		</table>
</div>
</div>
	</xsl:if>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>