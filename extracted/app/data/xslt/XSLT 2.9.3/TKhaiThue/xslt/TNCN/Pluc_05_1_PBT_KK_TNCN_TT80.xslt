<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL" select="'Kèm theo tờ khai 05/KK-TNCN hoặc Kèm theo tờ khai 06/TNCN'"/>
	  <!-- Phụ lục 05_1_PBT_KK_TNCN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_PBT_KK_TNCN"/>	
		<xsl:variable name="pl05_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_05_1_PBT_KK_TNCN'/>
		<xsl:call-template name="tkhaiHeader_PLuc_05_1_PBT_KK_TNCN_TT80">
			<xsl:with-param name="mauTKhai"   select="'05-1/PBT-KK-TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="tenPL"   select="'BẢNG XÁC ĐỊNH SỐ THUẾ THU NHẬP CÁ NHÂN PHẢI NỘP ĐỐI VỚI THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG VÀ TRÚNG THƯỞNG'"/>
			<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai 05/KK-TNCN hoặc Kèm theo tờ khai 06/TNCN)'"/>
		</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<tr>
					<br></br>
					<td><b>I. Phân bổ thuế thu nhập cá nhân đối với thu nhập từ tiền lương, tiền công:</b></td>
				</tr>
				<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Trụ sở chính/đơn vị hạch toán phụ thuộc</b></td>
							<td class="align-c" rowspan="2"><b>Mã số thuế/ Mã địa điểm kinh doanh </b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập chịu thuế trả cho cá nhân</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập chịu thuế thuộc diện khấu trừ</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng cá nhân nhận thu nhập</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng cá nhân phát sinh khấu trừ thuế</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNCN đã khấu trừ</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Xã/phường/đặc khu</b></td>
							
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[06]</b></td>
							<td class="align-c"><b>[07]</b></td>
							<td class="align-c"><b>[08]</b></td>
							
							<td class="align-c"><b>[08a]</b></td>
							<td class="align-c"><b>[08b]</b></td>
							<td class="align-c"><b>[09]</b></td>
							<td class="align-c"><b>[10]</b></td>
							<td class="align-c"><b>[11]</b></td>
							<td class="align-c"><b>[12]</b></td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-c"><b>[14]</b></td>
						</tr>
						<xsl:for-each select="$pl05_1/PhanBoTuTienLuong/NDungPhanBoTuTienLuong">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct07"/></td>
							  <td class="align-l"><xsl:value-of select="ct08"/></td>
							  <td class="align-l"><xsl:value-of select="ten_xa"/></td>
							  
							  <td class="align-l"><xsl:value-of select="ct08b_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct09_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td class="align-c" colspan="6"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTienLuong/ct15)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTienLuong/ct16)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTienLuong/ct17)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTienLuong/ct18)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTienLuong/ct19)"/></b></td>
						</tr>
					</table>
					<br></br>
					<tr>
							<td><b>II. Phân bổ thuế thu nhập cá nhân đối với thu nhập từ trúng thưởng của cá nhân trúng thưởng xổ số điện toán:</b></td>
					</tr>
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							<td class="align-c" colspan="2"><b>Địa bàn hoạt động sản suất, kinh doanh</b></td>
							<td class="align-c" rowspan="2"><b>Cơ quan thuế quản lý địa bàn nhận phân bổ</b></td>
							<td class="align-c" rowspan="2"><b>Thu nhập tính thuế cho cá nhân</b></td>
							<td class="align-c" rowspan="2"><b>Số thuế TNCN đã khấu trừ</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Xã/phường/đặc khu</b></td>
							
							<td class="align-c"><b>Tỉnh</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>[20]</b></td>
							<td class="align-c"><b>[21]</b></td>
							
							<td class="align-c"><b>[21a]</b></td>
							<td class="align-c"><b>[21b]</b></td>
							<td class="align-c"><b>[22]</b></td>
							<td class="align-c"><b>[23]</b></td>
							<td class="align-c"><b>[24]</b></td>
						</tr>
						<xsl:for-each select="$pl05_1/PhanBoTuTrungThuong/NDungPhanBoTuTrungThuong">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							  <td class="align-l"><xsl:value-of select="ct21"/></td>
							  <td class="align-l"><xsl:value-of select="ct21a_xa_ten"/></td>
							
							  <td class="align-l"><xsl:value-of select="ct21b_tinh_ten"/></td>
							  <td class="align-l"><xsl:value-of select="ct22_cqt_ten"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct23)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct24)"/></td>
							</tr>
						</xsl:for-each>						 											
						<tr>
							<td class="align-c" colspan="5"><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTrungThuong/ct25)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl05_1/PhanBoTuTrungThuong/ct26)"/></b></td>
						</tr>
					</table>
			</div>
		</div>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>		  
					<div class="ghichu">   
					<xsl:call-template name="tkhaiFooter_TT80"/>
					</div>
					<div><b><u><i>Ghi chú:</i></u></b></div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Chỉ tiêu [08a], [08b]: </i>Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh khác tỉnh với nơi người nộp thuế đóng trụ sở chính.</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Cột [21]:</i></div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</i>Phân bổ thuế TNCN đối với thu nhập của cá nhân trúng thưởng được thực hiện theo điểm b Khoản 2 Điều 6 Nghị định số 122/2017/NĐ-CP ngày 13/11/2017 của Chính phủ.</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên đơn vị phụ thuộc khác tỉnh với nơi NNT đóng trụ sở chính: </i>Kê khai cho tỉnh nơi đơn vị phụ thuộc đóng trụ sở vào chỉ tiêu này. Trường hợp trong một tỉnh có nhiều đơn vị phụ thuộc ở nhiều huyện thì chọn 01 đơn vị phụ thuộc tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào chỉ tiêu huyện tại cột [21]. </div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên địa điểm kinh doanh khác tỉnh với nơi NNT đóng trụ sở chính: </i>Kê khai cho tỉnh nơi có địa điểm kinh doanh nếu phát sinh doanh thu bán vé theo từng địa điểm kinh doanh. Trường hợp có nhiều địa điểm kinh doanh trên nhiều huyện thuộc một tỉnh thì chọn 01 địa điểm kinh doanh tại 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [21].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;-  Nơi không có đơn vị phụ thuộc, địa điểm kinh doanh: </i>Kê khai cho tỉnh nơi không có đơn vị phụ thuộc, địa điểm kinh doanh nhưng có phát sinh doanh thu bán vé. Trường hợp trong một tỉnh có phát sinh doanh thu bán vé ở nhiều huyện thì chọn 01 địa bàn huyện phát sinh doanh thu để kê khai vào cột [21].</div>
					<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Chỉ tiêu [21a], [21b]: </i>Kê khai địa bàn cấp huyện, tỉnh nơi có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé khác tỉnh với nơi người nộp thuế đóng trụ sở chính. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc một cơ quan thuế quản lý địa bàn nhận phân bổ là Cục Thuế thì chọn 1 đơn vị đại diện hoặc một huyện để kê khai vào chỉ tiêu này. Trường hợp có đơn vị phụ thuộc, địa điểm kinh doanh hoặc hoạt động bán vé trên nhiều huyện thuộc 1 cơ quan thuế quản lý địa bàn nhận phân bổ là Chi cục Thuế khu vực thì chọn 1 đơn vị đại diện hoặc 1 huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</div>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>

