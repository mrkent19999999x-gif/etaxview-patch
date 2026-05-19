<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_02_PBVMT_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/PBVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với hoạt động khai thác khoáng sản)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Loại khoáng sản</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng đất đá bốc xúc thải (m3)</b></td>
							<td class="align-c" rowspan="2"><b>Mức phí của đất đá bốc xúc thải</b></td>
							<td class="align-c" colspan="2"><b>Số lượng quặng khoáng sản nguyên khai khai thác</b></td>
							<td class="align-c" rowspan="2"><b>Mức phí theo từng loại khoáng sản</b></td>
							<td class="align-c" rowspan="2"><b>Hệ số tính phí theo phương pháp khai thác</b></td>
							<td class="align-c" rowspan="2"><b>Số phí phải nộp theo quyết toán</b></td>
							<td class="align-c" rowspan="2"><b>Số phí đã kê khai trong năm</b></td>
							<td class="align-c" rowspan="2"><b>Chênh lệch giữa số quyết toán và số đã kê khai</b></td>
						</tr>
						 <tr>
						<td class="align-c"><b>Đơn vị tính</b></td>
						<td class="align-c"><b>Số lượng</b></td>
						
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
							<td class="align-c">(9) = [(3)x(4)x(8)] + [(6)x(7)x(8)]</td>
							<td class="align-c">(10)</td>
							<td class="align-c">((11) = (9) -(10))</td>
						</tr>
						<tr>
						    <td class="align-c"><b>I</b></td>
						    <td class="align-l"><b>Khoáng sản do cơ sở tự khai thác:</b></td>
  						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
							<td></td>
							<td></td>
          				</tr>
						
	          				<xsl:for-each select="$tkchinh/PhiBVMT/KSDoCSoTuKhaiThac/TTinKhoangSan/KhoangSan">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenKhoangSan"/></td>
									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongDDBXT)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhiCuaDDBXT)"/></td>
									<td class="align-c"><xsl:value-of select="donViTinh"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhiTheoTungLoaiKS)"/></td>
									<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(heSoTinhPhi)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soPhiPhaiNopQuyetToan)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soPhiKKTrongNam)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chenhLech)"/></td>	
								</tr>
							</xsl:for-each>	       				 
						
						<tr>
						    <td class="align-c"><b>II</b></td>
						    <td class="align-l"><b>Khoáng sản do tổ chức thu mua gom nộp thay người khai thác nhỏ lẻ</b></td>
  						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
						    <td></td>
							<td></td>
							<td></td>
          				</tr>
						<xsl:for-each select="$tkchinh/PhiBVMT/KSanCoSoThuMuaNopThay/TTinKhoangSan/KhoangSan">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenKhoangSan"/></td>
									
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongDDBXT)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhiCuaDDBXT)"/></td>
									<td class="align-c"><xsl:value-of select="donViTinh"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mucPhiTheoTungLoaiKS)"/></td>
									<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(heSoTinhPhi)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soPhiPhaiNopQuyetToan)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soPhiKKTrongNam)"/></td>	
								    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chenhLech)"/></td>	
								</tr>
						</xsl:for-each>							
						<tr>
							
							<td class="align-l" colspan="8"><b>Tổng cộng:</b></td>
					
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhiBVMT/tongSoPhiPhaiNopQuyetToan)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhiBVMT/tongSoPhiKKTrongNam)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/PhiBVMT/tongChenhLech)"/></b></td>
						</tr>
					</table>
				</div>

		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Chỉ tiêu [09a], [09b], [09c]: kê khai thông tin địa bàn nơi NNT có hoạt động khai thác khoáng sản khác tỉnh với nơi đóng trụ sở chính theo quy định tại Điểm i Khoản 1 Điều 11 Nghị định 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp người nộp thuế có hoạt động khai thác khoáng sản trên nhiều huyện thì thực hiện khai vào chỉ tiêu này như sau: </i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Nếu Cục Thuế là cơ quan thuế quản lý thu, người nộp thuế khai 01 huyện đại diện nơi có phát sinh hoạt động khai thác khoáng sản.</i></div>
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  - Nếu Chi cục Thuế khu vực là cơ quan thuế quản lý thu, người nộp thuế khai 01 huyện đại diện thuộc Chi cục Thuế khu vực nơi có phát sinh hoạt động khai thác khoáng sản. </i></div>
				
<div id="sigDiv"></div>
</td>
</tr>
</table>	  
	</xsl:template>		
</xsl:stylesheet>

