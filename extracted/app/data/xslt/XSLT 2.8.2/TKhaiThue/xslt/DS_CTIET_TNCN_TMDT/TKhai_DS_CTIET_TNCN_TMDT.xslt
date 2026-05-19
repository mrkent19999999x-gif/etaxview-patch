<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
	<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Nghị định số 117-NĐ-CP/2025/NĐ-CP ngày 09 tháng 06 năm 2025 của Chính Phủ)'"/>
		<xsl:call-template name="tkhaiHeader_DS_TNCN">
			<xsl:with-param name="mauTKhai"   select="'01/BKNT-TMĐT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table>
					<tr>
						<td colspan="3">
							<b>[05] Số tờ khai/Số quyết định/Số thông báo/Mã định danh hồ sơ (ID): </b><xsl:value-of select="$tkchinh/Header/ct5"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[06] Kỳ thuế/Ngày quyết định/Ngày thông báo: </b>
							<xsl:if test="$tkchinh/Header/ct6_kyThue/KyKeKhai != ''"> <xsl:value-of select="$tkchinh/Header/ct6_kyThue/KyKeKhai" /> </xsl:if>
							<xsl:if test="$tkchinh/Header/ct6_ngayQD != ''"> <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct6_ngayQD,'dd/mm/yyyy')" /> </xsl:if>
							<xsl:if test="$tkchinh/Header/ct6_kyThue/ct6_ngayTB != ''"> <xsl:value-of select="
							ihtkk:stringDatetime($tkchinh/Header/ct6_ngayTB,'dd/mm/yyyy')" />
							 </xsl:if>
						</td>
					</tr>
					<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[06] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[08] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td>
					   Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[06] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
					
				</table>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>	
					<table class="tkhai_table">
							  <tr>
							<td class="align-c" ><b>STT</b></td>
							<td class="align-c "><b>Mã số thuế/Số định danh cá nhân (Số CCCD)/ Số hộ chiếu/ Số giấy tờ định danh của hộ, cá nhân </b></td>
							<td class="align-c" ><b>Tên hộ/ Họ và tên cá nhân </b></td>
							<td class="align-c" ><b>Nội dung các khoản nộp NSNN (Tiểu mục)</b></td>
							<td class="align-c" ><b>Số tiền nộp NSNN</b></td>
						</tr>
						
						<tr>
								<td class="align-c">(01)<br/></td>
								<td class="align-c">(02)<br/></td>
								<td class="align-c">(03)<br/></td>
								<td class="align-c">(04)<br/></td>
								<td class="align-c">(05)<br/></td>
								
						</tr>
							<tr>
								<td class="align-c"><b>I</b></td>
								<td colspan="7"><b>Tiểu mục 1701 – Thuế GTGT</b></td>
							</tr>
						<xsl:for-each select="$tkchinh/NoiDungDS/TieuMuc1701/CTietTieuMuc1701">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct2_MST"/></td>
							<td class="align-l"><xsl:value-of select="ct3_tenNNT"/></td>
							<td class="align-l"><xsl:value-of select="ct4_noiDungKhoanNop"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5_soTienNopNSNN)"/></td>
							
						</tr>
					</xsl:for-each>
	         		
					<tr>
						<td class="align-c"><b>II</b></td>
						<td colspan="7"><b>Tiểu mục 1003 – Thuế TNCN</b></td>
					</tr>
						<xsl:for-each select="$tkchinh/NoiDungDS/TieuMuc1003/CTietTieuMuc1003">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="ct2_MST"/></td>
							<td class="align-l"><xsl:value-of select="ct3_tenNNT"/></td>
							<td class="align-l"><xsl:value-of select="ct4_noiDungKhoanNop"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5_soTienNopNSNN)"/></td>
							
	         				</tr>	
	         		</xsl:for-each>	
	         		<tr>
						<td class="align-c" colspan="4"><b>Tổng cộng tiểu mục 1701</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCot5_TM1701)"/></b></td>
					</tr>
	                <tr>
						<td class="align-c" colspan="4"><b>Tổng cộng tiểu mục 1003</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCot5_TM1003)"/></b></td>
					</tr>
				<tr>
						<td class="align-c" colspan="4"><b>Tổng cộng</b></td>
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCot5)"/></b></td>
					</tr>
						</table>
			</div>
				
		</div>
		<xsl:call-template name="tkhaiFooter"/>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

