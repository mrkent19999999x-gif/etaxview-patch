<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_Pxuat_NhaIn">
		<xsl:with-param name="mauTKhai"   select="'CTT24/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table width='100%'>
			<tr>
			<td/>
			<td width="38%"></td>
			<td>
					
					<br/>
					
					<b>Số: </b>
					<xsl:value-of select="$tkchinh/TTchung/soPhieu"/>
			</td>
			</tr>
			<tr>
			<td/>
			<td/>
			<td>
					
					<b>Biên bản nghiệm thu: </b>
					<xsl:value-of select="$tkchinh/TTchung/bienBanNT"/>
			</td>
			</tr>
			<tr>
					
					
					<td width="18%">
					
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Xuất cho:</b>
					
					</td>
					
					<td colspan='2'>Tổng Cục Thuế
					</td>
			</tr>
			<tr>
					
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Từ kho: </b> 
					</td>
					<td colspan='2'>
					<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
			</tr>
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Nơi nhận: </b> 
							
					</td>
					<td colspan='2'>
					<xsl:value-of select="$tkchinh/TTchung/tenCQT"/>
					</td>
			</tr>
			
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Lý do xuất: </b> 
					</td>
					<td colspan='2'>
					<xsl:value-of select="$tkchinh/TTchung/lyDoXuat"/>
					</td>
			</tr>
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Hợp đồng:</b>
						
					</td>
					<td colspan='2'>
					Số <xsl:value-of select="$tkchinh/TTchung/soHD"/>&#160;&#160; &#160;&#160;  Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTchung/ngayHD,'dd/mm/yyyy')" />
					</td>
			</tr>
			<tr>
					<td width="18%">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ghi chú: </b>
					</td>
					<td colspan='2'>
					<xsl:value-of select="$tkchinh/TTchung/ghiChu"/>
					</td>
			</tr>
			
			<tr>
				<td colspan='3' class="align-r">
					<i>Đơn vị tính: Tem</i>
				</td>
			</tr>
		</table>
			<table class="tkhai_table">		
			
				
					<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên tem</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu</b></td>
						   <td class="align-c"><b>Ký hiệu</b></td>
						   <td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Đơn giá vốn</b></td>
							<td class="align-c"><b>Trị giá vốn (VNĐ)</b></td>
							
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
							<td class="align-c"><b>(9)=(7)x(8)</b></td>						
					</tr>
					<xsl:for-each select="$tkchinh/NDPXuat/DSHangHoa/HangHoa">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenTem"/></td>
									
									<td class="align-c"><xsl:value-of select="kHMau"/></td>
									<td class="align-c"><xsl:value-of select="kHieu"/></td>		
									<td class="align-c"><xsl:value-of select="tuSo"/></td>
									<td class="align-c"><xsl:value-of select="denSo"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(sLTem)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(donGia)"/></td>	
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tTien)"/></td>
								 	
								</tr>
					</xsl:for-each>
					<tr>
					<td/>
					<td colspan='5' class="align-c"><b>Tổng cộng</b></td>
					
					<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/TongSo/tongSLTem)"/></b></td>
					<td/>
					<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NDPXuat/TongSo/tongTTien)"/></b></td>
					</tr>
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
	<xsl:call-template name="tkhaiFooter_Pxuat_NhaIn"/>
		
		
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>