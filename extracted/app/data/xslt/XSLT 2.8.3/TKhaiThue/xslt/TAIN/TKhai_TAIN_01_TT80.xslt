<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:call-template name="tkhaiHeader_01_TAIN_283">
			<xsl:with-param name="mauTKhai"   select="'01/TAIN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK"   select="''"/>
		</xsl:call-template>
		
		<div class="ndungtkhai_div">
			<div class="content">
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table"  >
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên loại tài nguyên</b></td>
							<td class="align-c" colspan="2"><b>Sản lượng tài nguyên tính thuế</b></td>
							<td class="align-c" rowspan="2"><b>Giá tính thuế đơn vị tài nguyên</b></td>
							<td class="align-c" rowspan="2"><b>Thuế suất (%)</b></td>
							<td class="align-c" rowspan="2"><b>Mức thuế tài nguyên ấn định trên 1 đơn vị tài nguyên</b></td>					   						   						   						   
							<td class="align-c" rowspan="2"><b>Thuế tài nguyên phải nộp</b></td>						   						   						   						   						   
						</tr>
						<tr>
							<td class="align-c"><b>Đơn vị tính</b></td>
							<td class="align-c"><b>Sản lượng</b></td>						    
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8) = (4) x (5) x (6) hoặc (8) = (4) x (7)</td>						   						   
						</tr>	
						<tr>
							<td class="align-c"><b>A</b></td>
							<td class="align-l"><b>Tài nguyên khai thác:</b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
          				</tr>						 
						<tr>
						    <td class="align-c"><b>I</b></td>
						    <td class="align-l"><b>Khoáng sản</b></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangChiTietTNguyen/TaiNguyenKhaiThac/KhoangSan/MoKhoangSan">
							<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td class="align-l"><xsl:value-of select="$currentRows"/>.</td>
									<td class="align-l"><xsl:value-of select="ten_moKhoangSan"/></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
	          				<xsl:for-each select="NoiDungMoKhoangSan">
								<xsl:variable name="currentRows1" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows1"/></td>
									<td class="align-l"><xsl:value-of select="ct2_tenKhoangSan"/></td>
									<td class="align-l"><xsl:value-of select="ct3"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>				
								</tr>
							</xsl:for-each>	       				 
						</xsl:for-each>						 											
					    <tr>
						    <td class="align-c"><b>II</b></td>
						    <td class="align-l"><b>Tài nguyên khác</b></td>
  						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangChiTietTNguyen/TaiNguyenKhaiThac/TaiNguyenKhac/NoiDungTaiNguyenKhac">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_tenTaiNguyen"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>				
							</tr>
						</xsl:for-each>			
						<tr>
						    <td class="align-c"><b>B</b></td>
						    <td class="align-l"><b>Tài nguyên thu mua nộp thay:</b></td>
   						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangChiTietTNguyen/TaiNguyenThuMuaNopThay/ThueTaiNguyenThuMuaNopThay">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows" /></td>
								<td class="align-l"><xsl:value-of select="ct2_tenTaiNguyen"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>				
							</tr>
						</xsl:for-each>	
						<tr>
						    <td class="align-c"><b>C</b></td>
						    <td class="align-l"><b>Tài nguyên bắt giữ, tịch thu</b></td>
   						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/BangChiTietTNguyen/TaiNguyenBatGiuTichThu/ThueTaiNguyenBatGiuTichThu">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_tenTaiNguyen"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>				
							</tr>
						</xsl:for-each>								
						<tr>
							<td></td>
							<td class="align-"><b>Tổng cộng</b></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietTNguyen/tongSanLuong)"/></b></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietTNguyen/tongThuePhaiNop)"/></b></td>
  						</tr>
					</table>
				</div>		
			</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<xsl:call-template name="tkhaiFooter_TT80"/>
					<div><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<u><i>Ghi chú:</i></u></b></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Đối với tài nguyên khai thác được ấn định số thuế tài nguyên phải nộp trên 1 đơn vị sản lượng tài nguyên thì thuế tài nguyên phải nộp tại chỉ tiêu (8)= (4) x (7).</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Các chỉ tiêu tại cột (2), cột (3) Tên loại tài nguyên và đơn vị tính phải đảm bảo theo đúng quy định về khung giá tính thuế tài nguyên do Bộ Tài chính quy định; Bảng giá tính thuế tài nguyên do Ủy ban nhân dân tỉnh, thành phố ban hành.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Chỉ tiêu [09]: kê khai thông tin địa bàn nơi NNT có hoạt động khai thác tài nguyên khác tỉnh với nơi đóng trụ sở chính theo quy định tại Điểm g Khoản 1 Điều 11 Nghị định 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp người nộp thuế có hoạt động khai thác tài nguyên trên nhiều huyện thì thực hiện khai vào chỉ tiêu này như sau:</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Nếu Cục Thuế là cơ quan thuế quản lý thu, người nộp thuế khai 01 huyện đại diện nơi có phát sinh hoạt động khai thác tài nguyên.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Nếu Chi cục Thuế khu vực là cơ quan thuế quản lý thu, người nộp thuế khai 01 huyện đại diện thuộc Chi cục Thuế khu vực nơi có phát sinh hoạt động khai thác tài nguyên.</i></div>
		<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp người nộp thuế có văn bản giao cho đơn vị phụ thuộc trên địa bàn có hoạt động khai thác tài nguyên khác tỉnh với nơi đóng trụ sở chính trực tiếp kê khai, nộp thuế tài nguyên thì không phải khai vào chỉ tiêu này.</i></div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>		
 	</xsl:template>		
</xsl:stylesheet>