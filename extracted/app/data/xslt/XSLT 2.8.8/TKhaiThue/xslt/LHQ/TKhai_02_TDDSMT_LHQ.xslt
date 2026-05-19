<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 97/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_01_DSMT_LHQ">
			<xsl:with-param name="mauTKhai"   select="'02/TĐDSMT-LHQ'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;I. XÁC NHẬN CỦA CƠ QUAN ĐẠI DIỆN CỦA TỔ CHỨC QUỐC TẾ THUỘC HỆ THỐNG LIÊN HỢP QUỐC TẠI VIỆT NAM</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Danh sách Nhân viên Việt Nam dưới đây thuộc đối tượng được miễn thuế thu nhập cá nhân theo quy định tại Quyết định số 07/2016/QĐ-TTg ngày 22/2/2016 của Thủ tướng Chính phủ và hướng dẫn tại Thông tư số 97/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính có thay đổi so với Danh sách đã gửi tại văn bản số <xsl:value-of select="$tkchinh/vanBanSo"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'dd/mm/yyyy')"/></div><br/>
		
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <b>STT</b></td>
						<td class="align-c"><b>Họ và tên</b></td>
						<td class="align-c"><b>Chức danh</b></td>
						<td class="align-c"><b>Lý do thay đổi</b></td>
						<td class="align-c"><b>Mã số thuế/ CMND</b></td>
						<td class="align-c"><b>Thu nhập theo hợp đồng lao động được miễn thuế</b></td>
						<td class="align-c"><b>Thời Điểm bắt đầu miễn thuế theo Hợp đồng lao động (tháng/năm)</b></td>
						<td class="align-c"><b>Thời Điểm kết thúc miễn thuế theo Hợp đồng lao động - nếu có (tháng/năm)</b></td>
						<td class="align-c"><b>Ghi chú</b></td>
					</tr>
					<tr>
						<td class="align-c"> <b>[1]</b></td>
						<td class="align-c"><b>[2]</b></td>
						<td class="align-c"><b>[3]</b></td>
						<td class="align-c"><b>[4]</b></td>
						<td class="align-c"><b>[5]</b></td>
						<td class="align-c"><b>[6]</b></td>
						<td class="align-c"><b>[7]</b></td>
						<td class="align-c"><b>[8]</b></td>
						<td class="align-c"><b>[9]</b></td>
					</tr>
					<xsl:for-each select="$tkchinh/DanhSachNhanVien/ChitietDanhSachNhanVien">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-l"><xsl:value-of select="hoTen"/></td>
							<td class="align-l"><xsl:value-of select="chucDanh"/></td>
							<td class="align-l"><xsl:value-of select="lyDoThayDoi"/></td>
							<td class="align-c"><xsl:value-of select="mst_cccd"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap)"/></td>
							<td class="align-c"><xsl:value-of select="thoiDiemBatDau"/></td>
							<td class="align-c"><xsl:value-of select="thoiDiemKetThuc"/></td>
							<td class="align-l"><xsl:value-of select="ghiChu"/></td>
						</tr>														 
					</xsl:for-each>
					<tr>
						<td></td>
						<td class="align-l"><b>Tổng cộng:</b></td>
						<td></td>
						<td></td>
						<td></td>
						<b><td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DanhSachNhanVien/tong_thunhap)"/></td></b>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>		
		</div><br/>	
		
		
	<br/><span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi xin cam đoan nội dung xác nhận trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã xác nhận./.</span>
	<div class="footer_div">
		<table>
			<tr>
				<td width="60%"></td>
				<td width="40%" class="align-c">
					<b>TRƯỞNG CƠ QUAN ĐẠI DIỆN</b>
					<br/>
					<i> (Ký, ghi rõ họ tên và đóng dấu - nếu có)</i><br/><br/><br/><br/>
					<xsl:value-of select="$ttkthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>	
		</table>
		<br/>
		</div>
		
	<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;II. XÁC NHẬN CỦA BỘ NGOẠI GIAO:</div>
	<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Bộ ngoại giao (Cục Lễ tân Nhà nước) xác nhận Danh sách các cá nhân nêu tại Mục I nêu trên, được miễn thuế thu nhập cá nhân theo Quyết định số 07/2016/QĐ-TTg ngày 22/2/2016 của Thủ tướng Chính phủ và hướng dẫn tại Thông tư số 97/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính, trừ những cá nhân có số thứ tự  <xsl:value-of select="$tkchinh/soThuTu"/> trong Danh sách nêu tại Mục I trên. </div>
	
	<div class="footer_div">
		<table>
			<tr>
				<td width="60%"></td>
				<td width="40%" class="align-c">
					<b>TL. BỘ TRƯỞNG BỘ NGOẠI GIAO<br/>CỤC TRƯỞNG CỤC LỄ TÂN NHÀ NƯỚC </b>
					<br/>
					<i> (Ký, ghi rõ họ tên và đóng dấu)</i><br/><br/><br/><br/>

				</td>
			</tr>	
		</table>
		<br/>
		</div>
	
	
	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		

	
</xsl:stylesheet>
