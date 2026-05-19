<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_Pxuat_ThuocLa">
		<xsl:with-param name="mauTKhai"   select="'CTT24/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table width='100%'>
			<tr>
			<td/>
			<td width="38%"></td>
			</tr>
			<tr>
					
					
					<td width="18%">
					
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Mã số thuế:</b>
					
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
			</tr>
			<tr>
					
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Tên người nộp thuế: </b> 
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
			</tr>
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Cơ quan thuế nơi nộp: </b> 
							
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/>
					</td>
			</tr>
			<!-- <tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Từ số tem: </b> 
							
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/TKhaiThue/tuSo"/>
					</td>
			</tr>
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Đến số tem: </b> 
							
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/TKhaiThue/denSo"/>
					</td>
			</tr> -->
			
		</table>
			<table class="tkhai_table">		
			
				
					<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Mã QR</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu tem</b></td>
						   <td class="align-c"><b>Ký hiệu tem</b></td>
						   <td class="align-c"><b>Năm phát hành</b></td>
							<td class="align-c"><b>Số hiệu block/thùng/tem</b></td>
							<td class="align-c"><b>Số nhảy của tem đầu tiên trong thùng/block/tem</b></td>
							<td class="align-c"><b>Số nhảy của tem cuối cùng trong thùng/block/tem</b></td>
							<!-- <td class="align-c"><b>Dãy số nhảy của tem</b></td> -->
							<td class="align-c"><b>Đơn vị tính</b></td>
							
					</tr>
					<xsl:for-each select="$tkchinh/NDPXuat/DSHangHoa/HangHoa">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="maQr"/></td>
									
									<td class="align-c"><xsl:value-of select="kHMau"/></td>
									<td class="align-c"><xsl:value-of select="kHieu"/></td>		
									<td class="align-c"><xsl:value-of select="nam"/></td>
									<td class="align-c"><xsl:value-of select="maLo"/></td>
									<td class="align-c"><xsl:value-of select="tuSo"/></td>
									<td class="align-c"><xsl:value-of select="denSo"/></td>
									<!-- <td class="align-c"><xsl:value-of select="daySo"/></td> -->
									<td class="align-c"><xsl:if test="dVTinh = 'S' ">Tem</xsl:if><xsl:if test="dVTinh = 'B' ">Block</xsl:if><xsl:if test="dVTinh = 'T' ">Thùng</xsl:if></td>
									<!-- <td class="align-c"><xsl:value-of select="dVTinh"/></td> -->
								 	
								</tr>
					</xsl:for-each>
					<tr>
						<td colspan='6' class="align-c"><b>Tổng cộng số thùng</b></td>
						<td colspan='5' class="align-c"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/tongThung)"/></b></td>
					</tr>
					<tr>
						<td colspan='6' class="align-c"><b>Tổng cộng số block</b></td>
						<td colspan='5' class="align-c"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/tongBlock)"/></b></td>
					</tr>
					<tr>
						<td colspan='6' class="align-c"><b>Tổng tem</b></td>
						<td colspan='5' class="align-c"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/tongTem)"/></b></td>
					</tr>
					<tr>
						<td colspan='6' class="align-c"><b>Tổng cộng</b></td>
						<td colspan='5' class="align-c"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/tong)"/></b></td>
					</tr>
					
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		
		
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>