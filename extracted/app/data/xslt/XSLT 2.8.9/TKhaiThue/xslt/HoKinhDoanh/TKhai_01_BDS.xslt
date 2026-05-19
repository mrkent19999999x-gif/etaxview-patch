<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_BDS">
		<xsl:with-param name="mauTKhai"   select="'01/BĐS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với cá nhân có hoạt động cho thuê bất động sản trừ hoạt động kinh doanh lưu trú trực tiếp khai thuế với cơ quan thuế)'"/>
	 </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<div  class="align-l"><b>A. KÊ KHAI THÔNG TIN TÍNH THUẾ</b></div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng doanh thu phát sinh trong kỳ</td>
										<td class="align-c">[09]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct09)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Doanh thu tính thuế TNCN được trừ</td>
										<td class="align-c">[10]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct10)"/></td>
									</tr>
									<tr>
										<td class="align-c">3</td>
										<td>Tổng số thuế GTGT phải nộp [11] = [09] x5%</td>
										<td class="align-c">[11]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct11)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế TNCN phát sinh trong kỳ [12]= ([09] – [10]) x 5%</td>
										<td class="align-c">[12]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct12)"/></td>
									</tr>
									<tr>
										<td class="align-c">5</td>
										<td>Tiền phạt, bồi thường mà bên cho thuê nhận được theo thỏa thuận tại hợp đồng (nếu có)</td>
										<td class="align-c">[13]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct13)"/></td>
									</tr>
									<tr>
										<td class="align-c">6</td>
										<td>Tổng số thuế TNCN phải nộp từ nhận tiền phạt, bồi thường (nếu có) [14] = [13] x 5%</td>
										<td class="align-c">[14]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct14)"/></td>
									</tr>
									<tr>
										<td class="align-c">7</td>
										<td>Tổng số thuế TNCN phải nộp [15]=[12]+[14]</td>
										<td class="align-c">[15]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct15)"/></td>
									</tr>
									<tr>
										<td class="align-c">8</td>
										<td>Số thuế TNCN được miễn</td>
										<td class="align-c">[16]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct16)"/></td>
									</tr>
									<tr>
										<td class="align-c">9</td>
										<td>Số thuế TNCN còn phải nộp</td>
										<td class="align-c">[17]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct17)"/></td>
									</tr>
									<tr>
										<td class="align-c">10</td>
										<td>Tổng số thuế còn phải nộp [18]=[11]+[17]</td>
										<td class="align-c">[18]</td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CaNhanKeKhai/ct18)"/></td>
									</tr>
									</table>
				<br/>
				<div><i>(TNCN: Thu nhập cá nhân; GTGT: Giá trị gia tăng)</i></div>
				<div  class="align-l"><b>B. HỖ TRỢ THÔNG TIN NỘP THUẾ</b></div>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Mã địa điểm kinh doanh</b></td>
						<td class="align-c"><b>Nội dung các khoản nộp NSNN</b></td>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Chương</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Mã địa bàn hành chính </b></td>
						<td class="align-c"><b>Cơ quan thu</b></td>
						<td class="align-c"><b>Cơ quan thuế</b></td>
						<td class="align-c"><b>Hạn nộp thuế</b></td>
						
					</tr>
					<tr>
							<td class="align-c"><b>[19]</b></td>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
							<td class="align-c"><b>[25]</b></td>
							<td class="align-c"><b>[26]</b></td>
							<td class="align-c"><b>[27]</b></td>
							<td class="align-c"><b>[28]</b></td>
							
						</tr>
					<xsl:for-each select="$tkchinh/HoTroThongTinNopThue/ChiTietThongTinNopTHue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="ct20_ma"/></td>
							<td class="align-c"><xsl:value-of select="ct21_ten"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct22)"/></td>
							<td class="align-c"><xsl:value-of select="ct23_ma"/></td>
							<td class="align-c"><xsl:value-of select="ct24_ma"/></td>
							<td class="align-c"><xsl:value-of select="ct25_maDBHC"/>-<xsl:value-of select="ct25_tenDBHC"/></td>
							<td class="align-c"><xsl:value-of select="ct26_maCQThu"/>-<xsl:value-of select="ct26_tenCQThu"/></td>
							<td class="align-c"><xsl:value-of select="ct27_maCQThue"/>-<xsl:value-of select="ct27_tenCQThue"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct28,'dd/mm/yyyy')"/></td>
						</tr>
					</xsl:for-each>
					<tr>
						
						<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r"><b>&#160;&#160;&#160;<xsl:value-of select="ihtkk:formatNumber($tkchinh/HoTroThongTinNopThue/tong_sotienCT29)"/></b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>						
					</tr>
				</table>

				<div  class="align-l"><b><i><u>Người nộp thuế còn được tiếp tục trừ <xsl:value-of select="ihtkk:formatNumber($tkchinh/soTienTruKyTiep)"/> đồng vào doanh thu tính thuế TNCN của kỳ tiếp theo.</u></i></b></div>
				<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</div>
		<br/>
				
		<xsl:call-template name="tkhaiFooter_01_BDS"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
		<table style="page-break-inside: avoid;width:100%" >

</table>	
					</xsl:template>	

</xsl:stylesheet>