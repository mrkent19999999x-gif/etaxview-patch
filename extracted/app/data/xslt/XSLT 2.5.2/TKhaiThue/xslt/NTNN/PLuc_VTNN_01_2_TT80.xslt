<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
        <xsl:variable name="ghiChuPL"   select="'(Áp dụng đối với trường hợp hoán đổi/chia chỗ)'"/>
		<xsl:variable name="ghiChuPL1"   select="'(Kèm theo Tờ khai quyết toán thuế TNDN đối với hãng vận tải nước ngoài mẫu 01/VTNN)'"/>
			
	<!--start phu luc 01-2/VTNN - BẢNG KÊ THU NHẬP VẬN TẢI QUỐC TẾ  -->
  <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN">	
	<xsl:variable name="pluc02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN' />	
	<xsl:call-template name="tkhaiHeaderPL01-2_VTNN_TT80">
		<xsl:with-param name="mauTKhai"   select="'01-2/VTNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ THU NHẬP VẬN TẢI QUỐC TẾ'"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL"/>
		<xsl:with-param name="ghiChuPL1"   select="$ghiChuPL1"/>
	  </xsl:call-template>
	  
	    
	<xsl:for-each select="$pluc02/NoiDungPL01_2_VTNN">
		<xsl:variable name="currentRowsParent" select='position()'/>
		<xsl:if test="$currentRowsParent > 1 ">
		<br/>____________________________________________________________________________________________________________________________________________________________________________________
		<br/>
		</xsl:if>
			<table>
				<tr>
					<td class="align-l"><b>[04] Tên hãng vận tải nước ngoài: </b><xsl:value-of select="ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l"><b>[05]</b> Nước cư trú: <xsl:value-of select="ct05_ten"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2"><b>[06]</b> Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="ct06"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2"><b>[07] Bên Việt Nam khấu trừ và nộp thuế thay:</b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2"><b>[08]</b> Mã số thuế nộp thay của Bên Việt Nam: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
	<div class="ndungtkhai_div">
		<div class="content">
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>Số Chứng từ vận chuyển</b></td>
							<td class="align-c" colspan="2"><b>Hoá đơn</b></td>
							<td class="align-c" rowspan="2"><b>Cảng đi</b></td>
							<td class="align-c" rowspan="2"><b>Cảng đến</b></td>
							<td class="align-c" colspan="2"><b>Khách hàng</b></td>
							<td class="align-c" rowspan="2"><b>Số chỗ hoán đổi/chia </b><br/>(theo thoả thuận hoán đổi/chia chỗ)</td>
							<td class="align-c" rowspan="2"><b>Số chỗ hoán đổi thực tế </b></td>
							<td class="align-c" rowspan="2"><b>Doanh thu quy đổi</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNDN phải nộp</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNDN miễn, giảm theo Hiệp định</b></td>
						</tr> 
						<tr>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày, tháng năm phát hành</b></td>
							<td class="align-c"><b>Tên</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)</b></td>
						</tr>
				        <xsl:for-each select="BKeTNhapVTaiQTe/ChiTietBKeTNhapVTaiQTe">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="ct1"/></td>
								<td class="align-c"><xsl:value-of select="ct2"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6"/></td>
								<td class="align-l"><xsl:value-of select="ct7"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							    <td colspan="7" class="tkhaiheader"><b>Tổng cộng</b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCot8)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCot9)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCot10)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCot11)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(tongCot12)"/></b></td>
						</tr>		
			      </table>	
</div>
</div>
	</xsl:for-each>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	
		<xsl:call-template name="tkhaiFooter"/>
 <div class="ghichu">
             <u><b>Ghi chú:</b></u><br/>
             - <i>Cột (1) đến (5) ghi trên cơ sở vận đơn xuất cho khách hàng</i><br/>
             - <i>Cột (6) ghi số TEU hoặc số chỗ được sử dụng miễn phí quy định trong thoả thuận hoán đổi/chia chỗ</i><br/>
             - <i>Cột (7) ghi số TEU hoạc số chỗ đã thực tế sử dụng trên tàu của hãng đối tác</i><br/>
             - <i>Cột (8) ghi doanh thu quy đổi đã là số tiền thu được từ khách hàng đối với số chỗ đã sử dụng thực tế không vượt quá hạn mức được sử dụng</i><br/>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:if>
	<!--end phu luc 01-2/VTNN-->

	</xsl:template>		
</xsl:stylesheet>