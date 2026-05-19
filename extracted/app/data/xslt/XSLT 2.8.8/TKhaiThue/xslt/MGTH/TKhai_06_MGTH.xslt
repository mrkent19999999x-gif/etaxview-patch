<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_06_MGTH">
			<xsl:with-param name="mauTKhai"   select="'06/MGTH'"/>
			<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
			<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho trường hợp người nộp thuế tự xác định)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
			<div class="content">
				<table class="ttinnnt_table"  width="100%">
					<br></br>
					<tr>
						<td colspan="3">
						<b>[01] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[02] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[03] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[03a]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[03b]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
						</td>
					</tr>
					<!-- <tr>
						<td>
							<b>[04] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
						</td>
						<td>
							<b>[05] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
						</td>
						<td>
							<b>[06]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
						</td>
					</tr> -->
					<tr>
						<td class="align-l">
							<b>[04] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							<b>[05] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							<b>[06]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
						
						</td>
					</tr>
					<tr>
							<td>
							<br></br>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị được miễn thuế tài nguyên trong trường hợp sau: 
							</td>
					</tr>
					<br/>
					<tr>
						<td class="align-l"><xsl:value-of select="$tkchinh/CanhNgonCuiTre/ten"/></td>				  
					</tr>
					<tr>
						<td class="align-l"><xsl:value-of select="$tkchinh/NuocThienNhien/ten"/></td>
					</tr>
					<tr>
						<td class="align-l"><xsl:value-of select="$tkchinh/DatKhaiThacDuocGiao/ten"/></td>
					</tr>
					<tr>
						<td class="align-l"><xsl:value-of select="$tkchinh/DatKhaiThacSanLap/ten"/></td>
					</tr>

 					
					<tr>
						<td>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./.
						</td>
					</tr>
				</table>
			</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_06_MGTH"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
