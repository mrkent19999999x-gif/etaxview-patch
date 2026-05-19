<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 96/2016/TT-BTC ngày 28/6/2016 của Bộ Tài Chính)'" />
		<xsl:call-template name="tkhaiHeader_01_XNCG_DNMT">
			<xsl:with-param name="mauTKhai"   select="'01/XNCG - ĐNMT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td class="tentkhai">
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							 Lần đầu: [X] &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							 Lần đầu: [&#32;] &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
				</td>
			</table>
		</div>	
		<div style="width:90%;padding-top: 6pt;text-align:center"><b>Kính gửi: </b><xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thực hiện Quyết định số 06/2016/QĐ-TTg ngày 22/02/2016 của Thủ tướng Chính phủ về việc miễn thuế thu nhập cá nhân đối với chuyên gia nước ngoài thực hiện chương trình, dự án viện trợ phi Chính phủ nước ngoài tại Việt Nam và Thông tư số 96/2016/TT-BTC ngày 28/6/2016 của Bộ Tài Chính về việc hướng dẫn hồ sơ, thủ tục miễn thuế thu nhập cá nhân đối với Chuyên gia nước ngoài thực hiện chương trình, dự án viện trợ phi Chính phủ nước ngoài tại Việt Nam.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$tkchinh/ct4_cqcq"/><xsl:value-of select="$tkchinh/ct5_ckvt"/> thực hiện chương trình, dự án viện trợ phi Chính phủ nước ngoài tại Việt Nam xác nhận Chuyên gia nước ngoài và Đề nghị miễn thuế thu nhập cá nhân như sau:</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tên chương trình, dự án viện trợ PCPNN: <xsl:value-of select="$tkchinh/ct1_ten_ChuongTrinhDuAn"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Bên tài trợ: <xsl:value-of select="$tkchinh/ct2_ten_NhaTaiTro"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Văn kiện chương trình, dự án, được <xsl:value-of select="$tkchinh/CT3/ct3_ten_nguoiPheDuyet"/> phê duyệt tại văn bản số <xsl:value-of select="$tkchinh/CT3/ct3_soVanBan"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT3/ct3_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT3/ct3_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT3/ct3_ngay,'yyyy')"/> của <xsl:value-of select="$tkchinh/CT3/ct3_ten_CoQuan"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Cơ quan chủ quản: <xsl:value-of select="$tkchinh/ct4_cqcq"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;5. Chủ Khoản viện trợ PCPNN: <xsl:value-of select="$tkchinh/ct5_ckvt"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;6. Tổng ngân sách chương trình, dự án viện trợ: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct6_tong_NganSach)"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;7. Thời hạn thực hiện chương trình, dự án tại Việt Nam: từ tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/tuNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/tuNgay,'yyyy')"/> đến tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/denNgay,'yyyy')"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;8. Địa Điểm thực hiện chương trình, dự án: <xsl:value-of select="$tkchinh/ct8_diaDiem"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;9. Xác nhận các cá nhân theo danh sách dưới đây là Chuyên gia nước ngoài và đề nghị được miễn thuế thu nhập cá nhân theo quy định tại Quyết định số 06/2016/QĐ-TTg ngày 22/02/2016 của Thủ tướng Chính phủ và hướng dẫn tại Thông tư số 96/2016/TT-BTC ngày 28/6/2016 của Bộ Tài chính:</div><br/>
		
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c" rowspan="2"> <b>STT</b></td>
						<td class="align-c" rowspan="2"><b>Họ và tên</b></td>
						<td class="align-c" rowspan="2"><b>Quốc tịch</b></td>
						<td class="align-c" rowspan="2"><b>Số hộ chiếu</b></td>
						<td class="align-c" colspan="2"><b>Thời hạn thực hiện Hợp đồng </b></td>
						<td class="align-c" rowspan="2"><b>Thu nhập được miễn thuế (theo Hợp đồng)</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Từ ngày</b></td>
						<td class="align-c"><b>Đến ngày</b></td>
					</tr>
					<tr>
						<td class="align-c"> <b>[1]</b></td>
						<td class="align-c"><b>[2]</b></td>
						<td class="align-c"><b>[3]</b></td>
						<td class="align-c"><b>[4]</b></td>
						<td class="align-c"><b>[5]</b></td>
						<td class="align-c"><b>[5.1]</b></td>
						<td class="align-c"><b>[6]</b></td>
					</tr>
					<xsl:for-each select="$tkchinh/CT9/CTiet">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-l"><xsl:value-of select="ct9_hoTen"/></td>
							<td class="align-l"><xsl:value-of select="ct9_tenQuocTich"/></td>
							<td class="align-c"><xsl:value-of select="ct9_soHoChieu"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct9_tuNgay,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct9_denNgay,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9_thuNhap)"/></td>
						</tr>														 
					</xsl:for-each>
					<tr>
						<td></td>
						<td colspan="5" class="align-l">Tổng cộng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/CT9/tongThuNhap)"/></td>
					</tr>
				</table>
			</div>	
		</div>	
	<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Tài liệu gửi kèm:</div>	
	<div>
		<xsl:for-each select="$tkchinh/HoSoDinhKem/CTiet">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="ten_HSo"/></div>													 
		</xsl:for-each>
	</div>			

	<br/><span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi xin cam đoan nội dung xác nhận trên là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã xác nhận./.</span>
	<div class="footer_div">
		<table>
			<tr>
				<td width="40%"></td>
				<td width="60%" class="align-c">
					<b>ĐẠI DIỆN CÓ THẨM QUYỀN CỦA CƠ QUAN CHỦ QUẢN/CHỦ KHOẢN VIỆN TRỢ PCPNN TẠI VIỆT NAM</b>
					<br/>
					<i> (Ký, ghi rõ họ tên và đóng dấu (nếu có))</i><br/><br/><br/><br/>
					<xsl:value-of select="$ttkthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>	
		</table>
		<br/>
		</div>

	</xsl:template>
</xsl:stylesheet>
