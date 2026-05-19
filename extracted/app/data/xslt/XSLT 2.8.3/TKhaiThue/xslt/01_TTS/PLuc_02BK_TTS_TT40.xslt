<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 40/2021/TT-BTC ngày  01/6/2021  của Bộ trưởng Bộ Tài Chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		
		
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_BK_TTS">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_BK_TTS' />
			<xsl:call-template name="tkhaiHeader-pluc02_283">
		<xsl:with-param name="mauTKhai"   select="'02/BK-TTS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT CÁ NHÂN CHO THUÊ TÀI SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai 01/TTS  áp dụng  đối với tổ chức khai thay cho  cá nhân cho thuê tài sản )
'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
					<td class="align-c" rowspan="2"><b>Hợp đồng/ kỳ thanh toán</b></td>
					<td class="align-c" rowspan="2"><b>Họ tên cá nhân cho thuê tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Mã số thuế cá nhân cho thuê tài sản </b></td>
				<td class="align-c" rowspan="2"><b>Họ tên bên thuê tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Mã số thuế bên thuê tài sản</b></td>
				<td class="align-c" colspan="2"><b>Loại tài sản</b></td>
				<td class="align-c" rowspan="2"><b>Số hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Ngày hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Mục đích sử dụng tài sản thuê</b></td>
				<td class="align-c" rowspan="2"><b>Bên thuê có đầu tư xây dựng cơ bản</b></td>
				<td class="align-c" colspan="2"><b>Địa chỉ bất động sản cho thuê </b></td>
				<td class="align-c" rowspan="2"><b>Diện tích sàn cho thuê</b></td>
				<td class="align-c" colspan="5"><b>Kỳ thanh toán </b></td>
				<td class="align-c" rowspan="2"><b>Số tháng cho thuê của hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Tổng giá trị hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Doanh thu bình quân tháng của hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Tổng doanh thu phát sinh trong năm của từng cá nhân</b></td>
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
				<td class="align-c"><b>[15]</b></td>
				<td class="align-c"><b>[16]</b></td>
				<td class="align-c"><b>[17a]</b></td>
				<td class="align-c"><b>[17b]</b></td>
				<td class="align-c"><b>[18]</b></td>
				<td class="align-c"><b>[19a]</b></td>
				<td class="align-c"><b>[19]</b></td>
				<td class="align-c"><b>[20]</b></td>
				<td class="align-c"><b>[20a]</b></td>
				<td class="align-c"><b>[21]</b></td>
				<td class="align-c"><b>[22]</b></td>
				<td class="align-c"><b>[23]</b></td>
				<td class="align-c"><b>[24]</b></td>
				<td class="align-c"><b>[24a]</b></td>
				<td class="align-c"><b>[25]</b></td>
				<td class="align-c"><b>[26]</b></td>
				<td class="align-c"><b>[27]</b></td>
				<td class="align-c"><b>[28]</b></td>
				<td class="align-c"><b>[29]</b></td>
				<td class="align-c"><b>[30]</b></td>
			</tr>
			 <xsl:for-each select="$pl02/CTietBKeHDongTTS">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="ct06" /></td>
							  <td class="align-c"><xsl:value-of select="ct06a_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct07" /></td>
							  <td class="align-c"><xsl:value-of select="ct08" /></td>
							  <td class="align-c"><xsl:value-of select="ct09" /></td>
							  <td class="align-c"><xsl:value-of select="ct10" /></td>
							  <td class="align-c">[<xsl:if test="c11='true' or c11='1'">x</xsl:if>]</td>
							  <td class="align-c">[<xsl:if test="ct12='true'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct13" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct14,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ct15_ten" /></td>
							  <td class="align-c">[<xsl:if test="ct16='true' or c16='1'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ct17_diaChi" /></td>
							  <td class="align-c"><xsl:value-of select="ct17_ten"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct18)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct19a)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct19,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct20,'dd/mm/yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct20a,'yyyy')" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct21)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct22)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct23)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct24)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct24a)" /></td>
							  <td class="align-c">[<xsl:if test="ct25='true' or c25='1'">x</xsl:if>]</td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct26)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct27)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct28)" /></td>
							  <td class="align-c"><xsl:value-of select="ct29_ten" /></td>
							  <td class="align-c"><xsl:value-of select="ct30" /></td>
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