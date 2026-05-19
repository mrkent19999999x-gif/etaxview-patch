<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số  23/2021/TT-BTC ngày 30/03/2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_04_TEM">
		<xsl:with-param name="mauTKhai"   select="'04/TEM'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<table width='100%'>
			<tr>
					<td>
					<br/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
			</tr>
			<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
			</tr>
			<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, 
							<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>, 
							<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
			</tr>
			<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do hủy: <xsl:value-of select="$tkchinh/lyDoHuy"/>
							
					</td>
			</tr>
			<tr>
					<td>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Phương pháp hủy: <xsl:value-of select="$tkchinh/phuongPhapHuy"/>
						<br/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTem,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTem,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTem,'yyyy')"/>,
					<xsl:value-of select="$ttkthue/NNT/tenNNT"/> thông báo hủy tem điện tử thuốc lá hoặc tem điện tử rượu sản xuất để tiêu thụ trong nước như sau:
					</td>
					
			</tr>
			<tr>
				<td class="align-r">
					<i>Đơn vị tính: Tem</i>
				</td>
			</tr>
		</table>
			<table class="tkhai_table">		
			
				
					<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên loại tem điện tử</b></td>
						   <td class="align-c"><b>Ký hiệu mẫu</b></td>
						   <td class="align-c"><b>Ký hiệu tem</b></td>
						   <td class="align-c"><b>Số lượng</b></td>	
							
					</tr>
					<tr>
						   <td class="align-c"><b>(1)</b></td>
						   <td class="align-c"><b>(2)</b></td>
						   <td class="align-c"><b>(3)</b></td>
						   <td class="align-c"><b>(4)</b></td>
						   <td class="align-c"><b>(5)</b></td>
													
					</tr>
					<xsl:for-each select="$tkchinh/BangHuyTem/ChiTietHuyTem">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenTemDT"/></td>
									
									<td class="align-c"><xsl:value-of select="kyHieuMauTem"/></td>
									<td class="align-c"><xsl:value-of select="kyHieuTem"/></td>									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
										
								 	
								</tr>
					</xsl:for-each>
													 
			</table>
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_04_TEM_TT23"/>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân</i></div>
		
<div id="sigDiv"></div>
</td>
</tr>
</table>		


	</xsl:template>		
</xsl:stylesheet>