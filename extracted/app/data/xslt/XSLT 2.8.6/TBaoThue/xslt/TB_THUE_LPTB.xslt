<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../include/TBaoLPTBHeader.xsl"/>
	<xsl:include href="../include/TBaoLPTBFooter.xsl"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue'/>
		<xsl:variable name="NNhanTBaoThue" select='TTBaoThueDTu/TBaoThue/NNhanTBaoThue'/>
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao'/>
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/> 
		<xsl:call-template name="TBaoLPTBHeader">
			<xsl:with-param name="mauTBao" select="'02/TB-LPTB'"/>
			<xsl:with-param name="soTBao" select="$tbThue/soTBao"/>
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao"/>
		</xsl:call-template>
		<br/>
		<div style="padding-left:80px; padding-bottom:10px; text-align: center">
					<td>
						[<xsl:if test="$ndungTBao/tBaoLanDau = 'true'"> X </xsl:if>] Thông báo lần đầu     
                      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[ <xsl:if test="$ndungTBao/tBaoBoSung = 'true'"> X </xsl:if> ] Thông báo điều chỉnh, bổ sung  
                    </td>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		Căn cứ Luật Quản lý thuế và các văn bản hướng dẫn thi hành;
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		Căn cứ Luật Phí, lệ phí và các văn bản hướng dẫn thi hành về lệ phí trước bạ;
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		Căn cứ hồ sơ khai của người nộp lệ phí trước bạ;
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		<xsl:value-of select="$ndungTBao/tenCQTNoiNop"/> xác định và thông báo tiền lệ phí trước bạ phải nộp như sau:
		</div>
		<div
		style="font-weight:bold; padding-left:80px; padding-bottom:8px">
		 I. THÔNG TIN VỀ NGƯỜI NỘP THUẾ 
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 1. Tên người nộp thuế: <xsl:value-of select="$ndungTBao/tenNNT"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 2. Mã số thuế: <xsl:value-of select="$ndungTBao/mst"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 3. Địa chỉ: <xsl:value-of select="$ndungTBao/diaChiNNT"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 4. Điện thoại: <xsl:value-of select="$ndungTBao/dienThoai"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Email: <xsl:value-of select="$ndungTBao/email"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 5. Tên đại lý thuế hoặc tổ chức, cá nhân được ủy quyền khai thay theo quy định của pháp luật (nếu có): <xsl:value-of select="$ndungTBao/tenDLyThue"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 6. Mã số thuế: <xsl:value-of select="$ndungTBao/mstDLyThue"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 7. Địa chỉ: <xsl:value-of select="$ndungTBao/dchiDLyThue"/>
		</div>
		<div
		style="font-weight:bold; padding-left:80px; padding-bottom:8px">
		 II. THÔNG TIN VỀ TÀI SẢN
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 1. Loại tài sản: <xsl:value-of select="$ndungTBao/loaiTsan"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 2. Nhãn hiệu: <xsl:value-of select="$ndungTBao/nhanHieu"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 3. Kiểu loại xe [Số loại hoặc tên thương mại; tên thương mại và mã kiểu loại (nếu có) đối với ôtô]: <xsl:value-of select="$ndungTBao/kieuLoaiXe"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		4. Thể tích làm việc/Công suất: <xsl:value-of select="$ndungTBao/theTichLamViec"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		5. Trọng tải: <xsl:value-of select="$ndungTBao/trongTai"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		6. Số người cho phép chở (kể cả lái xe): <xsl:value-of select="$ndungTBao/soCho"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		7. Số máy: <xsl:value-of select="$ndungTBao/soMay"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		8. Số khung: <xsl:value-of select="$ndungTBao/soKhung"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		9. Biển kiểm soát: <xsl:value-of select="$ndungTBao/bienKiemSoat"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 10. Số đăng ký: <xsl:value-of select="$ndungTBao/soDKy"/>
		</div>
		<div
		style="font-weight:bold; padding-left:80px; padding-bottom:8px">
		 III. TÍNH THUẾ CỦA CƠ QUAN THUẾ
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px" >
		 1. Trị giá tài sản tính lệ phí trước bạ (đồng): <xsl:value-of select="ihtkk:formatNumber($ndungTBao/triGiaTSanTinhLPTB)"/> đồng
		</div>
		<div
		style="font-style:italic ;padding-left:80px; padding-bottom:8px">
		 (Viết bằng chữ: <xsl:value-of select="$ndungTBao/vietBangChuTriGiaTS"/>)
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 2. Số tiền lệ phí trước bạ phải nộp (đồng): <xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienLPTBPhaiNop)"/> đồng
		</div>
		<div
		style="font-style:italic ;padding-left:80px; padding-bottom:8px">
		 (Viết bằng chữ: <xsl:value-of select="$ndungTBao/vietBangChuSoTienLPTB"/>)
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		3. Miễn lệ phí trước bạ:
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		3.1. Lý do miễn: Thuộc diện được miễn lệ phí trước bạ theo quy định tại  <xsl:value-of select="$ndungTBao/lyDoMienThue"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		3.2. Số tiền được miễn:  <xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienMienThue)"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		4. Số tiền lệ phí trước bạ đã nộp:  <xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienLPTBDaNop)"/> đồng
		</div>
		<div
		style="font-style:italic ;padding-left:80px; padding-bottom:8px">
		 (Viết bằng chữ: <xsl:value-of select="$ndungTBao/vietBangChuSoTienLPTBDaNop"/>)
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		5. Số tiền lệ phí trước bạ còn phải nộp [(5)=(2)-(3.2)-(4)]: <xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienLPTBConPhaiNop)"/> đồng
		</div>
		<div
		style="font-style:italic ;padding-left:80px; padding-bottom:8px">
		 (Viết bằng chữ: <xsl:value-of select="$ndungTBao/vietBangChuSoTienLPTBConPhaiNop"/>)
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 6. Thời hạn nộp tiền: <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/hanNopCham, 'dd/mm/yyyy')"/>
		</div>
		<div
		style="font-weight:bold; padding-left:80px; padding-bottom:8px">
		 IV. THÔNG TIN NỘP NGÂN SÁCH 
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 1. Tên người nộp thuế: <xsl:value-of select="$ndungTBao/tenNNT"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 2. Mã số thuế: <xsl:value-of select="$ndungTBao/mst"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 3. Tài khoản thu ngân sách nhà nước của kho bạc nhà nước: <xsl:value-of select="$ndungTBao/tenKBNN"/> mở tại ngân hàng: <xsl:value-of select="$ndungTBao/nganHangTM"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 4. Tên cơ quan quản lý thu: <xsl:value-of select="$ndungTBao/tenCQQuanLyThu"/>, Mã cơ quan quản lý thu: <xsl:value-of select="$ndungTBao/maCQQuanLyThu"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 5. Tên Chương: <xsl:value-of select="$ndungTBao/tenChuong"/>, Mã Chương: <xsl:value-of select="$ndungTBao/maChuong"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 6. Tên nội dung kinh tế (Tiểu mục): <xsl:value-of select="$ndungTBao/tenTieuMuc"/>, Mã Tiểu mục: <xsl:value-of select="$ndungTBao/maTieuMuc"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 7. Tên địa bàn hành chính: <xsl:value-of select="$ndungTBao/tenDBHanhChinh"/>, Mã địa bàn hành chính: <xsl:value-of select="$ndungTBao/maDBHanhChinh"/>
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 8. Mã định danh hồ sơ/mã hồ sơ: <xsl:value-of select="$ndungTBao/maHoSo"/>
		</div>
		<div
		style="font-style:italic ;padding-left:80px; padding-bottom:8px">
		 &#160;&#160;&#160;&#160;&#160; Trường hợp người nộp thuế chậm nộp tiền lệ phí trước bạ vào ngân sách nhà nước sau thời hạn nộp theo thông báo này thì ngoài số tiền lệ phí trước bạ phải nộp, người nộp thuế phải tự xác định số tiền chậm nộp (= số ngày chậm nộp x 0,03%/ngày); nộp đầy đủ tiền lệ phí trước bạ phải nộp và tiền chậm nộp vào ngân sách nhà nước.
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với <xsl:value-of select="$ndungTBao/tenCQTNoiNop"/> để được hướng dẫn cụ thể.
		</div>
		<div
		style="padding-left:80px; padding-bottom:8px">
		 <xsl:value-of select="$ndungTBao/tenCQTNoiNop"/> thông báo để người nộp thuế được biết và thực hiện.
		</div>
		
		<xsl:call-template name="TBaoLPTBFooter"/>
		<table style="page-break-inside: avoid;">
			<tr>
				<td>
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
