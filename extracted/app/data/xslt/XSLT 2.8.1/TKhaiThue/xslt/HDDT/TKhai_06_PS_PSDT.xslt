<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="DNghi/DLDNghi/NDDNghi" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	  <xsl:call-template name="tkhaiHeader_06_PS_PSDT">
		<xsl:with-param name="MSo"   select="'06/PS-PSĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<br/>
				<tr>
					<td colspan="3"><b>II. DOANH THU PHÁT SINH TỪ HOẠT ĐỘNG BÁN HÀNG HÓA, CUNG ỨNG DỊCH VỤ</b></td>
				</tr>
				<br/>
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Tên hàng hóa, dịch vụ</b></td>
							<td class="align-c"><b>Tên người mua</b></td>
							<td class="align-c"><b>Địa chỉ người mua</b></td>
							<td class="align-c"><b>MST/ Mã số QHVNS</b></td>
							<td class="align-c"><b>Số, ngày hợp đồng mua bán hàng hóa, dịch vụ</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Đơn giá</b></td>
							<td class="align-c"><b>Thành tiền</b></td>					   						   						   						   						   
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td>						   
						   <td class="align-c">(9)</td>						   
						 </tr>	
							<xsl:for-each select="DNghi/DLDNghi/NDDNghi/NDDTPSinh/DSDLieu/DLieu">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-l"><xsl:value-of select="THHDVu"/></td>
								  <td class="align-l"><xsl:value-of select="Ten"/></td>
								  <td class="align-l"><xsl:value-of select="DChi"/></td>
								  <td class="align-c"><xsl:value-of select="MST"/><xsl:value-of select="MDVQHNSach"/></td>
								  <td class="align-c"> Số <xsl:value-of select="SHDong"/>, Ngày <xsl:value-of select="ihtkk:stringDatetime(NHDong,'dd/mm/yyyy')"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(SLuong)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DGia)"/></td>
	      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTien)"/></td>			
								 </tr>
							</xsl:for-each>	
							<tr>
								<td colspan="8" class="align-l">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng doanh thu phát sinh</b>
								</td>
								<td class="align-r">
									<b><xsl:value-of select="ihtkk:formatNumber(DNghi/DLDNghi/NDDNghi/NDDTPSinh/DThu/TgDTPSinh)"/></b>
								</td>
							</tr>
					</table>							
				<br/>
				<tr>
					<td><b>III. THÔNG TIN HÓA ĐƠN ĐIỀU CHỈNH/THAY THẾ</b></td>
				</tr>
				<br/>
				<tr>
					<td><b>1. Thông tin hóa đơn bị điều chỉnh/thay thế</b></td>
				</tr>
				<br/>
				<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Mã hồ sơ</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn, ký hiệu mẫu số hóa đơn</b></td>
							<td class="align-c"><b>Số hóa đơn/Ngày hóa đơn</b></td>
							<td class="align-c"><b>Tên người mua</b></td>
							<td class="align-c"><b>MST/Mã số QHVNS</b></td>
							<td class="align-c"><b>Số, ngày hợp đồng mua bán hàng hóa, dịch vụ</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Đơn giá</b></td>
							<td class="align-c"><b>Thành tiền</b></td>
							<td class="align-c"><b>Thuế suất thuế GTGT</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td>						   
						   <td class="align-c">(9)</td>
						   <td class="align-c">(10)</td>						   
						   <td class="align-c">(11)</td>							   
						 </tr>	
							<xsl:for-each select="DNghi/DLDNghi/NDDNghi/TTHDDCTThe/TTHDBDCTThe/HDBDCTThe">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="MHSo"/></td>
								  <td class="align-c"><xsl:value-of select="KHHDon"/>, <xsl:value-of select="KHMSHDon"/></td>
								  <td class="align-c"> Số <xsl:value-of select="SHDon"/>, Ngày <xsl:value-of select="ihtkk:stringDatetime(NHDon,'dd/mm/yyyy')"/></td>
								  <td class="align-l"><xsl:value-of select="TNMua"/></td>
								  <td class="align-c"><xsl:value-of select="MST"/><xsl:value-of select="MDVQHNSach"/></td>
								  <td class="align-c"> Số <xsl:value-of select="SHDong"/>, Ngày <xsl:value-of select="ihtkk:stringDatetime(NHDong,'dd/mm/yyyy')"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(SLuong)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DGia)"/></td>
	      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTien)"/></td>	
								  <td class="align-c"><xsl:value-of select="TSuat"/></td>
								 </tr>
							</xsl:for-each>
				</table>
				<br/>
				<tr>
					<td colspan="3"><b>2. Nội dung cần điều chỉnh/thay thế</b></td>
				</tr>
				<br/>
				<table class="tkhai_table">
					<xsl:for-each select="DNghi/DLDNghi/NDDNghi/TTHDDCTThe/DSNDDCTThe/NDDCTThe">
					<xsl:variable name="currentRows1" select='position()'/>
						<tr>
							<td class="align-c"><b>Chỉ tiêu cần điều chỉnh/thay thế</b></td>
							<td class="align-c"><b>Thông tin điều chỉnh/thay thế</b></td>
						</tr>
						<tr>
							<td class="align-l">Tên hàng hóa, dịch vụ</td>
							<td class="align-l"><xsl:value-of select="THHDVu"/></td>
						</tr>
						<tr>
							<td class="align-l">Đơn vị tính</td>
							<td class="align-l"><xsl:value-of select="DVTinh"/></td>
						</tr>
						<tr>
							<td class="align-l">Số lượng</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(SLuong)"/></td>
						</tr>
						<tr>
							<td class="align-l">Đơn giá</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DGia)"/></td>
						</tr>
						<tr>
							<td class="align-l">Thuế suất (Thuế suất thuế GTGT)</td>
							<td class="align-l"><xsl:value-of select="TSuat"/></td>
						</tr>
						<tr>
							<td class="align-l"><b><i>Thành tiền (Thành tiền chưa có thuế GTGT)</i></b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTien)"/></td>
						</tr>
						<tr>
							<td class="align-l">Tiền thuế (Tiền thuế GTGT)</td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(TThue)"/></td>
						</tr>
						<tr>
							<td class="align-l"><b><i>Tổng tiền có thuế (Tổng tiền có thuế GTGT)</i></b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(TgTCThue)"/></td>
						</tr>
						<tr>
							<td class="align-l"><b>Chỉ tiêu khác</b></td>
							<td class="align-l"><xsl:value-of select="TTKhac"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<br/>
				<tr>
					<td colspan="3"><b>3. Thông tin số thuế</b></td>
				</tr>
				<br/>
				<table class="tkhai_table">
						 <tr>
							<td rowspan="2" class="align-c"><b>STT</b></td>
							<td rowspan="2" class="align-c"><b>Mã hồ sơ</b></td>
							<td rowspan="2" class="align-c"><b>Ký hiệu hóa đơn, ký hiệu mẫu số hóa đơn</b></td>
							<td rowspan="2" class="align-c"><b>Số hóa đơn/Ngày hóa đơn</b></td>
							<td colspan="4" class="align-c"><b>Số thuế đã nộp (*)</b></td>
							<td colspan="4" class="align-c"><b>Số thuế điều chỉnh</b></td>
						 </tr>
						 <tr>
								<td class="align-c"><b>Thuế GTGT</b></td>
								<td class="align-c"><b>Thuế TNDN</b></td>
								<td class="align-c"><b>Thuế TNCN</b></td>
								<td class="align-c"><b>Thuế khác (nếu có)</b></td>
								<td class="align-c"><b>Thuế GTGT</b></td>
								<td class="align-c"><b>Thuế TNDN</b></td>
								<td class="align-c"><b>Thuế TNCN</b></td>
								<td class="align-c"><b>Thuế khác (nếu có)</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						   <td class="align-c">(5)</td>
						   <td class="align-c">(6)</td>
						   <td class="align-c">(7)</td>
						   <td class="align-c">(8)</td>						   
						   <td class="align-c">(9)</td>
						   <td class="align-c">(10)</td>						   
						   <td class="align-c">(11)</td>	
						   <td class="align-c">(11)</td>						   
						 </tr>	
							<xsl:for-each select="DNghi/DLDNghi/NDDNghi/TTHDDCTThe/TTSThue/HDon">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="MHSo"/></td>
								  <td class="align-c"><xsl:value-of select="KHHDon"/>, <xsl:value-of select="KHMSHDon"/></td>
								  <td class="align-c"><xsl:value-of select="SHDon"/>, <xsl:value-of select="ihtkk:stringDatetime(NHDon,'dd/mm/yyyy')"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(TGTGTDNop)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTNDNDNop)"/></td>
	      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTNCNDNop)"/></td>	
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThKDNop)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(TGTGTDChinh)"/></td>
	      						  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTNDNDChinh)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ThTNCNDChinh)"/></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(TKDChinh)"/></td>
								 </tr>
							</xsl:for-each>
				</table>

				
			</div>	
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_06_PS_PSDT"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>