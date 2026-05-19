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
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_TTS">	
		<xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_BK_TTS' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01/BK-TTS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT HỢP ĐỒNG CHO THUÊ TÀI SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Áp dụng cho cá nhân cho thuê tài sản hoặc tổ chức khai thay)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" rowspan="2"><b>Số thứ tự hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Bên thuê tài sản</b></td>
				<td class="align-c" colspan="2"><b>Loại tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Mục đích sử dụng tài sản thuê</b></td>
				<td class="align-c" rowspan="2"><b>Bên thuê có đầu tư xây dựng cơ bản</b></td>
				<td class="align-c" rowspan="2"><b>Địa chỉ tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Diện tích sàn cho thuê</b></td>
				<td class="align-c" rowspan="2"><b>Thời hạn thuê (số tháng)</b></td>
				<td class="align-c" rowspan="2"><b>Tổng giá trị hợp đồng</b></td>
				<td class="align-c" colspan="5"><b>Kỳ thanh toán</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu cho thuê tài sản trong năm của từng hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu cho thuê tài sản trong năm của các hợp đồng trên toàn quốc </b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu tính thuế trong kỳ</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế GTGT phải nộp</b></td>
				<td class="align-c" rowspan="2"><b>Số thuế TNCN phải nộp</b></td>
				<td class="align-c" rowspan="2"><b>Trạng thái hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b></b>Mã hợp đồng </td>
			</tr>
			<tr>
				<td class="align-c"><b>Bất động sản</b></td>
				<td class="align-c"><b>Động sản</b></td>
				<td class="align-c"><b>Kỳ thanh toán cuối cùng</b></td>
				<td class="align-c"><b>Từ ngày/ tháng/ năm</b></td>
				<td class="align-c"><b>Đến ngày/ tháng/năm</b></td>
				<td class="align-c"><b>Năm tính thuế </b></td>
				<td class="align-c"><b>Giá cho thuê 1 tháng đã bao gồm thuế </b></td>
			</tr>
			<tr>
				<td class="align-c"><b>[05]</b></td>
				<td class="align-c"><b>[06b]</b></td>
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
				<td class="align-c"><b>[17a]</b></td>
				<td class="align-c"><b>[17]</b></td>
				<td class="align-c"><b>[18]</b></td>
				<td class="align-c"><b>[19a]</b></td>
				<td class="align-c"><b>[19]</b></td>
				<td class="align-c"><b>[20a]</b></td>
				<td class="align-c"><b>[20]</b></td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-c"><b>[24]</b></td>
				<td class="align-c"><b>[25]</b></td>
			</tr>
			 <xsl:for-each select="$pl01/CTietBKeHDongTTS">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="ct06b_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct06" /></td>
							  <td class="align-c">[<xsl:if test="ct07='true'">x</xsl:if>]</td>
							  <td class="align-c">[<xsl:if test="ct08='true'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct09" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct10,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ct11_ten" /></td>
							  <td class="align-c">[<xsl:if test="ct12='true'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct13" /></td>
							  <td class="align-c"><xsl:value-of select="ct14"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct16)" /></td>
							  <td class="align-c">[<xsl:if test="ct17a='true'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct17,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct18,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct19a,'yyyy')" /></td>
							  
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct19)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct20a)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct20)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct21)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct22)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct23)" /></td>
							  <td class="align-c"><xsl:value-of select="ct24_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct25" /></td>
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