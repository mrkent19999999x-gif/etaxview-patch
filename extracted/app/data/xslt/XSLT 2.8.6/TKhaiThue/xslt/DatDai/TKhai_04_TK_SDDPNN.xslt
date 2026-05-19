<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:ihtkk="vn.com.seatechit.genxmlservice.taxviewpdf.FunctionXSLT"
				xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
				xmlns:lxslt="http://xml.apache.org/xslt"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:result="http://www.example.com/results"
				extension-element-prefixes="result xsl xsi ihtkk">
	<xsl:include href="data/xslt/XSLT 2.8.6/TKhaiThue/include/TKhaiHeader.xsl"/>
	<xsl:include href="data/xslt/XSLT 2.8.6/TKhaiThue/include/tkhaifooter.xsl"/>
	<xsl:include href="data/xslt/XSLT 2.8.6/TKhaiThue/common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_04_TK_SDDPNN">
		<xsl:with-param name="mauTKhai"   select="'04/TK_SDDPNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div class="align-l">
				   <p><b>I. PHẦN NGƯỜI NỘP THUẾ TỰ KHAI</b></p>
				   <p><b>1. Người nộp thuế:</b></p>
				   <p><b>[04]</b> Họ và tên: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></p>
				   <p><b>[05]</b> Ngày/tháng/năm sinh: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinNNT/ngaySinh,'dd/mm/yyyy')"/></p>
				   <p><b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></p>
				   <p><b>[07]</b> Số định danh cá nhân (trường hợp cá nhân chưa có MST: <xsl:value-of select="$tkchinh/TTinNNT/soDinhDanh"/></p>
				   <p><b>[08]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinNNT/ngayCap,'dd/mm/yyyy')"/>. <b>[08]</b> Nơi cấp: <xsl:value-of select="$tkchinh/TTinNNT/noiCap"/></p>
				   <p><b>[10]</b> Địa chỉ cư trú:</p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[10.1]</b> Số nhà: <xsl:value-of select="$tkchinh/TTinNNT/soNha"/>. <b>[10.2]</b> Đường/phố: <xsl:value-of select="$tkchinh/TTinNNT/duongPho"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[10.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/TTinNNT/toThon"/>. <b>[10.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/phuongXa"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[10.5]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
				   <p><b>[11]</b> Địa chỉ nhận thông báo thuế: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/></p>
				   <p><b>[12]</b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/></p>
				   
				   <p><b>2. Đại lý thuế (nếu có):</b></p>
				   <p><b>[13]</b> Tên đại lý thuế</p>
				   <p><b>[14]</b> Mã số thuế: </p>
				   <p><b>[15]</b> Hợp đồng đại lý thuế: Số: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Ngày:</p>
				   
				   <p><b>3. Thửa đất chịu thuế:</b></p>
				   <p><b>[16]</b> Thông tin người sử dụng đất:</p>
				   <table class="tkhai_table" border="1">
						<tr class="align-c" >
							<th width="8%">
								STT
							</th>		
							<th width="23%">
								Họ và tên
							</th>
							<th width="23%">
								MST
							</th>
							<th width="23%">
								Số định danh cá nhân
							</th>
							<th width="23%">
								Tỷ lệ
							</th>
						</tr>
						<xsl:for-each select="$tkchinh/TTinThuaDat/NguoiSuDungDat">
							<tr>
								<td  class="align-c">
									<xsl:if test="stt !=''">
										<xsl:value-of select="stt" />
									</xsl:if>
								</td>										
								<td  class="align-l">
									<xsl:if test="hoTen !=''">
										<xsl:value-of select="hoTen" />
									</xsl:if>
								</td>
								<td class="align-c">
									<xsl:if test="mst !=''">
										<xsl:value-of select="mst" />
									</xsl:if>
								</td>
								<td class="align-l">
									<xsl:if test="soDinhDanh !=''">
										<xsl:value-of select="soDinhDanh" />
									</xsl:if>
								</td>
								<td class="align-l">
									<xsl:if test="tyLe !=''">
										<xsl:value-of select="tyLe" />
									</xsl:if>
								</td>
							</tr>
						</xsl:for-each>
				   </table>
				   <p><b>[17]</b> Địa chỉ thửa đất:</p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[17.1]</b> Số nhà: <xsl:value-of select="$tkchinh/TTinThuaDat/DiaChiThuaDat/soNha"/>. <b>[17.2]</b> Đường/phố: <xsl:value-of select="$tkchinh/TTinThuaDat/DiaChiThuaDat/duongPho"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[17.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/TTinThuaDat/DiaChiThuaDat/toThon"/>. <b>[17.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/TTinThuaDat/DiaChiThuaDat/phuongXa"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[17.5]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/TTinThuaDat/DiaChiThuaDat/tenTinhNNT"/></p>
				   <p><b>[18]</b> Là thửa đất duy nhất: [<xsl:if test="$tkchinh/TTinThuaDat/thuaDat_duyNhat = 'true' or $tkchinh/TTinThuaDat/thuaDat_duyNhat= '1'" >x</xsl:if>]</p>
				   <p><b>[19]</b> Đăng ký kê khai tổng hợp tại (Xã/phường/đặc khu): <xsl:value-of select="$tkchinh/TTinThuaDat/KeKhaiTai/tenPhuong"/></p>
				   <p><b>[20]</b> Đã có giấy chứng nhận: [<xsl:if test="$tkchinh/TTinThuaDat/CoGiayCNhan/giayCNhan = 'true' or $tkchinh/TTinThuaDat/CoGiayCNhan/giayCNhan= '1'" >x</xsl:if>]</p>
				    <p>&#160;&#160;&#160;&#160;&#160;<b>[20.1]</b> Số giấy chứng nhận: <xsl:value-of select="$tkchinh/TTinThuaDat/CoGiayCNhan/soGiay"/>. <b>[20.2]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinThuaDat/CoGiayCNhan/ngayCap,'dd/mm/yyyy')"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[20.3]</b> Thửa đất số: <xsl:value-of select="$tkchinh/TTinThuaDat/CoGiayCNhan/soThuaDat"/>. <b>[20.4]</b> Tờ bản đồ số: <xsl:value-of select="$tkchinh/TTinThuaDat/CoGiayCNhan/soToBanDo"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[20.5]</b> Diện tích: <xsl:value-of select="$tkchinh/TTinThuaDat/CoGiayCNhan/dienTich"/>. <b>[20.6]</b> Loại đất/ Mục đích sử dụng: <xsl:value-of select="$tkchinh/TTinThuaDat/CoGiayCNhan/loaiDat"/></p>
				   <p><b>[21]</b> Tổng diện tích thực tế sử dụng cho mục đích phi nông nghiệp:</p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[21.1]</b> Diện tích đất sử dụng đúng mục đích: <xsl:value-of select="$tkchinh/TTinThuaDat/DienTichThucTe/dienTichDung"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[21.2]</b> Diện tích đất sử dụng sai mục đích/chưa sử dụng theo đúng quy định: <xsl:value-of select="$tkchinh/TTinThuaDat/DienTichThucTe/dienTichSai"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;<b>[21.3]</b> Hạn mức (nếu có): <xsl:value-of select="$tkchinh/TTinThuaDat/DienTichThucTe/hanMuc"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[21.4]</b> Diện tích đất lấn, chiếm: <xsl:value-of select="$tkchinh/TTinThuaDat/DienTichThucTe/dienTichChiem"/></p>
					<p><b>[22]</b> Chưa có giấy chứng nhận: [<xsl:if test="$tkchinh/TTinThuaDat/ChuaGiayCNhan/chuaCoGiayCN = 'true' or $tkchinh/TTinThuaDat/ChuaGiayCNhan/chuaCoGiayCN= '1'" >x</xsl:if>]</p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[22.1]</b> Diện tích: <xsl:value-of select="$tkchinh/TTinThuaDat/ChuaGiayCNhan/dienTich"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;<b>[22.2]</b> Loại đất/ Mục đích đang sử dụng: <xsl:value-of select="$tkchinh/TTinThuaDat/ChuaGiayCNhan/loaiDat"/></p>
					<p><b>[23]</b>Thời điểm bắt đầu sử dụng đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinThuaDat/thoiDiemSD,'dd/mm/yyyy')"/></p>
					<p><b>[23]</b>Thời điểm thay đổi thông tin của thửa đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinThuaDat/thoiDiemTD,'dd/mm/yyyy')"/></p>
					<p><b>4. Đối với đất ở nhà nhiều tầng nhiều hộ ở, nhà chung cư [25]</b></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[25.1]</b> Loại nhà: <xsl:value-of select="$tkchinh/NhaChungCu/loaiNha"/>. <b>[25.2]</b> Diện tích: <xsl:value-of select="$tkchinh/NhaChungCu/dienTich"/>. <b>[25.3]</b> Hệ số phân bổ: <xsl:value-of select="$tkchinh/NhaChungCu/heSo"/> </p>
					<p><b>5. Trường hợp miễn, giảm thuế [26]</b><i> (ghi rõ trường hợp thuộc diện được miễn, giảm thuế như: thương binh, gia đình thương binh liệt sỹ, đối tượng chính sách, ...)</i>: <xsl:value-of select="$tkchinh/MienGiam/thuocDien"/></p>
			   </div>
		</div>		
      </div>

		<xsl:call-template name="tkhaiFooter_04_TK_SDDPNN">
			<xsl:with-param name="mauTKhai"   select="'04/TK_SDDPNN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
	</xsl:template>		
</xsl:stylesheet>

