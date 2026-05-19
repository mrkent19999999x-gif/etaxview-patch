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
		 <xsl:call-template name="tkhaiHeader_02_XD_PNTT">
		<xsl:with-param name="mauTKhai"   select="'02/XĐ-PNTT'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
		 <div class="content"> 
			<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
						<tr>
							<td class="align-l" colspan="5"><b>1. Nghĩa vụ thuế đã kê khai theo quý đối với hồ sơ khai thuế mẫu số </b>
							<xsl:value-of select="$tkchinh/NghiaVuThueTheoQuy/tenTKhai"/></td>
						</tr>
						<tr>
							<td class="align-c" >Mã giao dịch điện tử của hồ sơ khai thuế</td>
							<td class="align-c" >Lần nộp</td>
							<td class="align-c" >Ngày nộp</td>
							<td class="align-c" >Kỳ tính thuế quý</td>
							<td class="align-c" >Số thuế phải nộp [09]</td>
						</tr>
						<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoQuy">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td></td>
							  <td class="align-l"><xsl:value-of select="ma_giao_dich"/></td>
							  <td class="align-l"><xsl:value-of select="lan_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ngay_nop"/></td>
							  <td class="align-l"><xsl:value-of select="ky_tinh_thue"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct09)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-l" colspan="4"><b>Cộng [10]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct10)"/></b></td>
						</tr>
						<tr>
							<td class="align-l" colspan="5"><b>2. Nghĩa vụ thuế xác định lại theo tháng</b>
						</tr>
						<tr>
							<td class="align-c" rowspan="2"><b>Kỳ tính thuế tháng</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế phải nộp chênh lệch</b></td>
							<td class="align-c" rowspan="2"><b>Tiền chậm nộp (nếu có)</b></td>
						</tr>
						<tr>
							<td class="align-c"><b></b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
						</tr>
						<xsl:for-each select="$tkchinh/NoiDungNghiaVuThueTheoThang/CongQuy/NoiDungCongQuy">
									<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td></td>
							  <td class="align-l"><xsl:value-of select="thang"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							</tr>
						</xsl:for-each>	
						<tr>
							<td class="align-l"<b>Cộng [10]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct14)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct15)"/></b></td>
							<td></td>
						</tr>
						<tr>
							<td class="align-l"><b>Tổng cộng</b>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct15)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(ct17)"/></b></td>
						</tr>
 		</table>
		</div>	
	</div>
<table style="page-break-inside: avoid;" >
	<tr>
		<td>	   
			<xsl:call-template name="tkhaiFooter"/>
			<div><b><u><i>Ghi chú: </i>
			<div><b><i>1. Chỉ tiêu “1. Nghĩa vụ thuế đã kê khai theo quý đối với hồ sơ khai thuế mẫu số: ...” dùng để khai mẫu số của hồ sơ khai thuế có liên quan (ví dụ: 01/GTGT Hoạt động sản xuất kinh doanh thông thường; 01/XSBHĐC;…).</i></b></div>
			<div><b><i>2. Cột chỉ tiêu “Mã giao dịch điện tử của hồ sơ khai thuế” dùng để khai mã hồ sơ khai thuế điện tử do cơ quan thuế cấp tại Thông báo về việc chấp nhận <chứng từ điện tử> mẫu số 01-2/TB-TĐT (ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế) lần nộp hồ sơ sau cùng. Trường hợp người nộp thuế đã nộp hồ sơ khai thuế kỳ tính thuế quý bằng giấy hoặc bằng mã vạch đến cơ quan thuế thì phải ghi rõ lần thứ của hồ sơ và ngày cơ quan thuế tiếp nhận hồ sơ đối với lần nộp hồ sơ cuối cùng (ví dụ: Bổ sung lần thứ 01 ngày 10/05/2021; Lần đầu ngày 30/06/2021;…).</i></b></div>
			<div><b><i>3. Người nộp thuế tự tính "2. Nghĩa vụ thuế xác định lại theo tháng" và cộng từng quý, tổng các quý; trong đó số liệu tại cột chỉ tiêu [15] của từng quý bằng số liệu của quý tương ứng tại chỉ tiêu [14] trừ đi số liệu của quý tương ứng tại cột chỉ tiêu [09]. Đồng thời, người nộp thuế tự xác định và chịu trách nhiệm về số thuế phải nộp phân bổ tăng thêm nộp cho các địa phương có liên quan (nếu có)./.</i></b></div>
			<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
