<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01SDDNN_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/SDDNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với tổ chức có đất chịu thuế)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>3. Tính thuế:</b></div>
				<table>
			<tr>
				<td>
					<table class="tkhai_table"  >
								 <thead>
								  <tr>
								   <!-- <td rowspan="2" class="align-c"><b>STT</b></td> -->
								   <td colspan="6" class="align-c"><b>Địa chỉ thửa đất</b></td>
								   <td rowspan="2" class="align-c"><b>Thửa đất số</b></td>
								   <td rowspan="2" class="align-c"><b>Tờ bản đồ số</b></td>
								   <td rowspan="2" class="align-c"><b>Diện tích (ha)</b></td>
								   <td rowspan="2" class="align-c"><b>Loại đất</b></td>
								   <td rowspan="2" class="align-c"><b>Hạng đất</b></td>
								   <td rowspan="2" class="align-c"><b>Định suất thuế (kg thóc/ha)</b></td>
								   <td rowspan="2" class="align-c"><b>Thuế tính bằng thóc (kg)</b></td>
								  </tr>
								  <tr>
								   <td class="align-c"><b>Số nhà</b></td>
								   <td class="align-c"><b>Đường/ phố</b></td>
								   <td class="align-c"><b>Tổ/thôn</b></td>
								   <td class="align-c"><b>Xã/Phường/Đặc khu</b></td>
								   <td class="align-c"><b>Quận/huyện</b></td>
								   <td class="align-c"><b>Tỉnh/Thành phố</b></td>
								  </tr>
								  <tr>
								   <td colspan="3" class="align-c"><b>[10.1]</b></td>
								   <td class="align-c"><b>[10.2]</b></td>
								   <td class="align-c"><b>[10.3]</b></td>
								   <td class="align-c"><b>[10.4]</b></td>
								   <td class="align-c"><b>[11]</b></td>
								   <td class="align-c"><b>[12]</b></td>
								   <td class="align-c"><b>[13]</b></td>
								   <td class="align-c"><b>[14]</b></td>
								   <td class="align-c"><b>[15]</b></td>
								   <td class="align-c"><b>[16]</b></td>
								   <td class="align-c"><b>[17]</b></td>
								  </tr>
								 </thead>
						<xsl:for-each select="$tkchinh/TinhThue/CtietTinhThue">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<!-- <td class="align-c"><xsl:value-of select="$currentRows"/></td> -->
								<td class="align-l"><xsl:value-of select="ct10_1"/></td>
								<td class="align-l"><xsl:value-of select="ct10_2"/></td>
								<td class="align-l"><xsl:value-of select="ct10_3"/></td>
								<td class="align-l"><xsl:value-of select="ct10_4_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct10_5_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct10_6_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct11"/></td>
								<td class="align-l"><xsl:value-of select="ct12"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-l"><xsl:value-of select="ct14_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct15_ten"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
	         				</tr>	
						</xsl:for-each>
						<!-- <tr>
							<td></td>
							<td colspan="6" class="align-c"><b>Tổng cộng:</b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/tong_ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/tong_ct17a)"/></b></td>
						</tr> -->
					</table>
					  </td>
				  </tr>
				  </table>
				<table class="ttinnnt_table">
					<tr>
					     <td> <b>[18]</b> Thời điểm bắt đầu sử dụng đất:  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TinhThue/ct18,'dd/mm/yyyy')"/></td>
				    </tr>
					<tr>
					     <td> <b>[19]</b> Thời điểm thay đổi diện tích đất:  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TinhThue/ct19,'dd/mm/yyyy')"/></td>
				    </tr>
					<tr>
					     <td> <b>[20]</b> Thuế được miễn, giảm:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct20)"/> kg.</td>
				    </tr>
					<tr>
					     <td> <b>[21]</b> Thuế phải nộp tính bằng thóc (<b>[21]</b> = <b>[17]</b> – <b>[20]</b>):  <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct21)"/> kg.</td>
				    </tr>
					<tr>
					     <td> <b>[22]</b> Giá thóc tính thuế (đồng/kg):  <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct22)"/></td>
				    </tr>
					<tr>
					     <td> <b>[23]</b> Thuế phải nộp tính bằng tiền (<b>[23]</b> = <b>[21]</b> x <b>[22]</b>):  <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/ct23)"/> đồng.</td>
				    </tr>
			</table>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

