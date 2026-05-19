<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<!--<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo công văn số 1912/TCT-KK ngày 02/06/2021 của Tổng cục Thuế'"/>-->
		<xsl:call-template name="tkhaiHeader_DS_TNCN">
			<!--<xsl:with-param name="mauTKhai"   select="'01/DS-TK'"/>-->
			<!--<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>-->
			</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table>
					<tr>
						<td colspan="3">
							<b>[05] Số tờ khai/ Số quyết định / Số thông báo/Mã định danh hồ sơ (ID): </b><xsl:value-of select="$tkchinh/Header/ct5"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[06] Kỳ thuế/ Ngày quyết định/Ngày thông báo: </b>
							<xsl:if test="$tkchinh/Header/ct6_kyThue/KyKeKhai != ''"> <xsl:value-of select="$tkchinh/Header/ct6_kyThue/KyKeKhai" /> </xsl:if>
							<xsl:if test="$tkchinh/Header/ct6_ngayQD != ''"> <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct6_ngayQD,'dd/mm/yyyy')" /> </xsl:if>
							<xsl:if test="$tkchinh/Header/ct6_kyThue/ct6_ngayTB != ''"> <xsl:value-of select="
							ihtkk:stringDatetime($tkchinh/Header/ct6_ngayTB,'dd/mm/yyyy')" />
							 </xsl:if>
						</td>
					</tr>
						<tr>
						<td colspan="3">
							<b> [07] Tiểu mục (Nội dung khoản nộp NSNN): </b><xsl:value-of select="$tkchinh/Header/ct7_tieuMuc"/>	- Thuế thu nhập từ tiền lương, tiền công
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[08] Tổng số tiền đã nộp NSNN:  </b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Header/ct8_soTienDaNop)"/>	
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[09] Tổng số tiền đã nộp thừa kỳ trước (nếu có): </b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Header/ct9_soNopThua)"/>	
						</td>
					</tr>
				</table>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>	
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>MST</b></td>
						<td class="align-c"><b>Tên NNT</b></td>
						<td class="align-c"><b>Số tiền đã khấu trừ</b></td>
						<td class="align-c"><b>Số tiền đã nộp NSNN</b></td>
						<td class="align-c"><b>Số nộp thừa kỳ trước được bù trừ (nếu có)</b></td>
					</tr>
					<tr>
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>
						<td class="align-c">(6)</td>
					</tr>
					<xsl:for-each select="$tkchinh/NoiDungDS/CTietDS">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct2_MST"/></td>
							<td class="align-l"><xsl:value-of select="ct3_tenNNT"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4_soKhauTru)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5_soDaNop)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6_soNopThua)"/></td>
						</tr>
					</xsl:for-each>
					<tr>
							<td class="align-c" colspan ='3'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDS/tongCot4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDS/tongCot5)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDS/tongCot6)"/></b></td>
							</tr>
				</table>
			</div>
				
		</div>
		<xsl:call-template name="tkhaiFooter_DS_TNCN"/>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

