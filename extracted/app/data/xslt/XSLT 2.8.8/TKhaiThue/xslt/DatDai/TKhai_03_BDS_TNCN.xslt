<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
		<xsl:include href="../../include/TKhaiHeader.xsl"/>
		<xsl:include href="../../include/TKhaiFooter.xsl"/>    
		<xsl:include href="../../common/common.xsl"/>   
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
	  <xsl:call-template name="tkhaiHeader_03_BDS_TNCN">
		<xsl:with-param name="mauTKhai"   select="'03/BĐS_TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<div class="align-l">
				   <p><b>I. THÔNG TIN NGƯỜI CHUYỂN NHƯỢNG, NHẬN THỪA KẾ, QUÀ TẶNG</b></p>
				   <p><b>[04]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></p>
				   <p><b>[05]</b> Mã số thuế(nếu có): <xsl:value-of select="$ttkthue/NNT/mst"/></p>
				   <p><b>[06]</b> Số Định danh cá nhân(trường hợp cá nhân quốc tịch Việt Nam): <xsl:value-of select="$tkchinh/TTinCNhuong/soDinhDanh"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[06.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/ngayCapSDD,'dd/mm/yyyy')"/>. <b>[06.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/TTinCNhuong/noiCapSDD"/></p>
				   <p><b>[07]</b> Hộ chiếu (trường hợp cá nhân không có quốc tịch Việt Nam): <xsl:value-of select="$tkchinh/TTinCNhuong/hoChieu"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;<b>[07.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/ngayCapHC,'dd/mm/yyyy')"/>. <b>[07.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/TTinCNhuong/ngayCapHC"/></p>
				   <p><b>[08]</b> Địa chỉ chỗ ở hiện tại: <xsl:value-of select="$tkchinh/TTinCNhuong/diaChiHT"/></p>
				   <p><b>[09]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>. <b>[10]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
					<p><b>[11]</b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>. <b>[12]</b> Email: <xsl:value-of select="$ttkthue/NNT/emailNNT"/></p>
					<p><b>[13]</b> Tên tổ chức, cá nhân khai thay (nếu  có): <xsl:value-of select="$tkchinh/TTinCNhuong/tenKhaiThay"/></p>
					<p><b>[14]</b> Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/TTinCNhuong/mstKhaiThay"/></p>
					<p><b>[15]</b> Địa chỉ: <xsl:value-of select="$tkchinh/TTinCNhuong/diaChi_khaiThay"/></p>
					<p><b>[16]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/TTinCNhuong/tenPhuong_khaiThay"/>. <b>[17]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/TTinCNhuong/tenTinh_khaiThay"/></p>
					<p><b>[20]</b> Tên đại lý thuế (nếu có)</p>
				   <p><b>[21]</b> Mã số thuế(nếu có): </p>
				   <p><b>[22]</b> Địa chỉ: </p>
				    <p><b>[23]</b> Xã/phường/đặc khu: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>[24]</b> Tỉnh/Thành phố:</p>
					<p><b>[25]</b> Điện thoại: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>[26]</b> Email:</p>
				   <p><b>[27]</b> Hợp đồng đại lý thuế: <b>[28]</b> Số: &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>[29]</b> Ngày:</p>
				   <p><b>[30]</b> Giấy tờ về quyền sử dụng đất, quyền sở hữu nhà ở và tài sản gắn liền với đất: <xsl:value-of select="$tkchinh/TTinCNhuong/GiayToSoHuu/loaiGiayTo"/></p>
				   <p><b>[30.1]</b> Số: <xsl:value-of select="$tkchinh/TTinCNhuong/GiayToSoHuu/soGiayTo"/>&#160;&#160;&#160;<b>[30.2]</b> Do cơ quan: <xsl:value-of select="$tkchinh/TTinCNhuong/GiayToSoHuu/coQuanCap"/>&#160;&#160;&#160;Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/GiayToSoHuu/ngayCap,'dd/mm/yyyy')"/></p>
				    <p><b>[31]</b> Hợp đồng mua bán nhà ở, công trình xây dựng hình thành trong tương lai ký với chủ dự án cấp 1, cấp 2 hoặc Sàn giao dịch của chủ dự án: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongMuaBan/chuDuAn"/></p>
				     <p>&#160;&#160;&#160;&#160;&#160;<b>[31.1]</b> Số: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongMuaBan/soHopDong"/><b>[31.2]</b> Ngày:  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/HopDongMuaBan/ngayHopDong,'dd/mm/yyyy')"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[31.3]</b> Tỷ lệ góp vốn: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongMuaBan/tyLeGopVon"/></p>
					 <p><b>[32]</b> Hợp đồng chuyển nhượng trao đổi bất động sản: </p>
					 <p>&#160;&#160;&#160;&#160;&#160;<b>[32.1]</b> Số: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongCNhuong/soHopDong"/>&#160;&#160;&#160;<b>[32.2]</b> Nơi lập: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongCNhuong/noiLap"/>&#160;&#160;&#160;<b>[32.3]</b> Ngày lập: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/HopDongCNhuong/ngayHopDong,'dd/mm/yyyy')"/></p>
					  <p>&#160;&#160;&#160;&#160;&#160;<b>[32.4]</b> Cơ quan chứng thực: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongCNhuong/coQuanCThuc"/>&#160;&#160;&#160;<b>[32.5]</b>Ngày chứng thực: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinCNhuong/HopDongCNhuong/ngayCThuc,'dd/mm/yyyy')"/></p>
					  <p>&#160;&#160;&#160;&#160;&#160;<b>[32.6]</b> Tỷ lệ chuyển nhượng: <xsl:value-of select="$tkchinh/TTinCNhuong/HopDongCNhuong/tyLeChuyenNhuong"/></p>
					
					<p><b>II. THÔNG TIN NGƯỜI NHẬN CHUYỂN NHƯỢNG, NHẬN THỪA KẾ, QUÀ TẶNG</b></p>
					<p><b>[33]</b> Họ và tên đại diện: <xsl:value-of select="$tkchinh/TTinNhanCNhuong/hoTen"/></p>
					<p><b>[34]</b> Mã số thuế (nếu có): <xsl:value-of select="$tkchinh/TTinNhanCNhuong/mst"/></p>
					<p><b>[35]</b> Số Định danh cá nhân/Hộ chiếu (trường hợp chưa có mã số thuế): <xsl:value-of select="$tkchinh/TTinNhanCNhuong/soDinhDanh"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[35.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinNhanCNhuong/ngayCap,'dd/mm/yyyy')"/>. <b>[35.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/TTinNhanCNhuong/noiCap"/></p>
				    <p><b>[36]</b> Văn bản Phân chia di sản thừa kế, quà tặng là Bất động sản</p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[36.1]</b> Nơi lập hồ sơ nhận thừa kế, quà tặng: <xsl:value-of select="$tkchinh/TTinNhanCNhuong/VanBanPhanChia/noiLap"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[36.2]</b> Ngày lập:  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinNhanCNhuong/VanBanPhanChia/ngayLap,'dd/mm/yyyy')"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[36.3]</b> Cơ quan chứng thực: <xsl:value-of select="$tkchinh/TTinNhanCNhuong/VanBanPhanChia/coQuanCThuc"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[36.4]</b> Ngày chứng thực:  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTinNhanCNhuong/VanBanPhanChia/ngayCThuc,'dd/mm/yyyy')"/></p>
					<p><b>III. LOẠI BẤT ĐỘNG SẢN CHUYỂN NHƯỢNG, NHẬN THỪA KẾ, QUÀ TẶNG</b></p>
					 <table class="tkhai_table" > 
						<tr>
							<td width = "70%" class="align-l"> <b>[37]</b> Quyền sử dụng đất và tài sản gắn liền trên đất</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/LoaiBatDongSan/quyenSD = 'true' or $tkchinh/LoaiBatDongSan/quyenSD= '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td width = "70%" class="align-l"> <b>[38]</b> Quyền sở hữu hoặc sử dụng nhà ở</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/LoaiBatDongSan/quyenSH = 'true' or $tkchinh/LoaiBatDongSan/quyenSH= '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td width = "70%" class="align-l"> <b>[39]</b> Quyền thuê đất, thuê mặt nước</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/LoaiBatDongSan/quyenThue = 'true' or $tkchinh/LoaiBatDongSan/quyenThue= '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td width = "70%" class="align-l"> <b>[40]</b> Bất động sản khác</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/LoaiBatDongSan/batDongSan = 'true' or $tkchinh/LoaiBatDongSan/batDongSan= '1'" >x</xsl:if>]</td>
						</tr>
					 </table>
					<p><b>IV. ĐẶC ĐIỂM BẤT ĐỘNG SẢN CHUYỂN NHƯỢNG, NHẬN THỪA KẾ, QUÀ TẶNG</b></p>
					<p><b>[41]</b> Thông tin về đất: </p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[41.1]</b> Thửa đất số (Số hiệu thửa đất): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/thuaDatSo"/>; Tờ bản đồ số (số hiệu): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/toBDoSo"/></p>
					
					<div style="width:100%; text-align:left">
					  <span style="margin-right: 60px;">
						<label style="cursor:default;">
						  <input type="radio" disabled="disabled" style="transform: scale(1.2); margin-left: 10px;">
							<xsl:if test="$tkchinh/DacDiemBDS/TTinDat/bdsTaiVN = 'true' or $tkchinh/DacDiemBDS/TTinDat/bdsTaiVN = '1'">
							  <xsl:attribute name="checked"> checked </xsl:attribute>
							</xsl:if>
						  </input>
						  Bất động sản tại Việt Nam
						</label>
					  </span>

					  <span>
						<label style="cursor:default;">
						  <input type="radio" disabled="disabled" style="transform: scale(1.2); margin-left: 10px;">
							<xsl:if test="$tkchinh/DacDiemBDS/TTinDat/bdsTaiNN = 'true' or $tkchinh/DacDiemBDS/TTinDat/bdsTaiNN = '1'">
							  <xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:if>
						  </input>
						  Bất động sản tại Nước ngoài
						</label>
					  </span>
				</div>
					
					<p>&#160;&#160;&#160;&#160;&#160;<b>[41.2]</b> Địa chỉ: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/diaChi"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[41.3]</b> Số nhà: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/soNha"/>&#160;&#160;&#160;&#160;&#160;&#160; Toà nhà: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/toaNha"/>&#160;&#160;&#160;&#160;&#160;&#160; Ngõ/hẻm:  <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/ngoHem"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;&#160; Đường/phố: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/duongPho"/>&#160;&#160;&#160;&#160;&#160;&#160; Thôn/xóm/ấp: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/thonXom"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[41.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/tenPhuong"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;<b>[41.5]</b> Tỉnh/thành phố: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/tenTinh"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[41.7]</b> Loại đất, vị trí thửa đất</p>
				    <table class="tkhai_table" border="1">	
						 <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Loại đất</b></td>
							<td class="align-c"><b>Vị trí</b></td>						
							<td class="align-c"><b>Diện tích</b></td>							
						</tr>
						
						<xsl:for-each select="$tkchinh/DacDiemBDS/TTinDat/CTietDat/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ten_Dat"/></td>
								<td class="align-l"><xsl:value-of select="viTri"/></td>
								<td class="align-l"><xsl:value-of select="dienTich"/></td>	
	         				</tr>
						</xsl:for-each>
				   </table>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[41.8]</b> Hệ số (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/heSo"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[41.9]</b> Nguồn gốc đất: (Đất được nhà nước giao, cho thuê; Đất nhận chuyển nhượng; nhận thừa kế, hoặc nhận tặng, cho…): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/ten_NGDat"/></p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[41.10]</b> Giá trị đất thực tế chuyển giao (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinDat/gTriDat"/> đồng</p>
				   <p><b>[42]</b> Thông tin về nhà ở, công trình xây dựng </p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[42.1]</b> Nhà ở riêng lẻ:</p>
				   <p>&#160;&#160;&#160;&#160;&#160;[42.2] Loại 1: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/loai1"/>.&#160;&#160;&#160;&#160;&#160;Cấp nhà ở <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/capNha_1"/>.&#160;&#160;&#160;&#160;&#160;Diện tích sàn xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/dienTich_1"/> m2</p>
				   <p>&#160;&#160;&#160;&#160;&#160;[42.3] Loại 2: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/loai2"/>.&#160;&#160;&#160;&#160;&#160;Cấp nhà ở <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/capNha_2"/>.&#160;&#160;&#160;&#160;&#160;Diện tích sàn xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/dienTich_2"/> m2</p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[42.4]</b> Giá trị nhà thực tế chuyển giao (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaRiengLe/gTriNha"/> đồng</p>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[42.5]</b> Nhà ở chung cư:</p>
				   <p>&#160;&#160;&#160;&#160;&#160;[42.6] Chủ dự án: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/chuDuAn"/>.&#160;&#160;&#160;&#160;&#160; [42.7] Địa chỉ dự án, công trình <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/diaChi"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;[42.8] Diện tích xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/dienTichXD"/> m2.&#160;&#160;&#160;&#160;&#160; [42.9] Diện tích sàn xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/dienTichSan"/> m2</p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.10] Diện tích sở hữu chung: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/dienTichChung"/> m2.&#160;&#160;&#160;&#160;&#160; [42.11] Diện tích sở hữu riêng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/dienTichRieng"/> m2</p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.12] Kết cấu: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/ketCau"/>.&#160;&#160;&#160;&#160;&#160; [42.13] Số tầng nổi: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/soTangNoi"/>.&#160;&#160;&#160;&#160;&#160; [42.14] Số tầng hầm: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/soTangHam"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.15] Năm hoàn công: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/namHoanCong"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[42.16]</b> Giá trị nhà thực tế chuyển giao (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/gTriNha"/> đồng</p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[42.17]</b> Nguồn gốc nhà: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/gTriNha"/> đồng</p>
					<table class="tkhai_table" > 
						<tr>
							<td width = "30%" class="align-l">Tự xây dựng</td>
							<td width = "10%" class="align-r"> [<xsl:if test="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/tuXay = 'true' or $tkchinh/DacDiemBDS/TTinNha/NhaChungCu/tuXay = '1'" >x</xsl:if>]</td>
							<td width = "70%" class="align-l">[42.18] Năm hoàn thành (hoặc năm bắt đầu sử dụng nhà): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/namHoanThanh"/></td>
						</tr>
						<tr>
							<td width = "30%" class="align-l">Chuyển nhượng</td>
							<td width = "10%" class="align-r"> [<xsl:if test="$tkchinh/DacDiemBDS/TTinNha/NhaChungCu/chuyenNhuong = 'true' or $tkchinh/DacDiemBDS/TTinNha/NhaChungCu/chuyenNhuong = '1'" >x</xsl:if>]</td>
							<td width = "70%" class="align-l">[42.19] Thời điểm làm giấy tờ chuyển giao nhà: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DacDiemBDS/TTinNha/NhaChungCu/thoiDiemCGiao,'dd/mm/yyyy')"/></td>
						</tr>
					 </table>
				   <p>&#160;&#160;&#160;&#160;&#160;<b>[42.20]</b> Công trình xây dựng (trừ nhà ở)</p>
				    <p>&#160;&#160;&#160;&#160;&#160;[42.21] Chủ dự án: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/chuDuAn"/>.&#160;&#160;&#160;&#160;&#160; [42.22] Địa chỉ dự án, công trình: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/diaChi"/></p>
				    <p>&#160;&#160;&#160;&#160;&#160;[42.23] Loại công trình: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/loaiCTrinh"/>.&#160;&#160;&#160;&#160;&#160;Hạng mục công trình: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/hangMuc"/>.&#160;&#160;&#160;&#160;&#160;Cấp công trình: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/capCongTrinh"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.24] Diện tích xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/dienTichXD"/> m2.&#160;&#160;&#160;&#160;&#160; [42.25] Diện tích sàn xây dựng: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/dienTichSan"/> m2</p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.26] Hệ số (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/heSo"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;[42.27] Đơn giá: <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/donGia"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[42.28]</b> Giá trị công trình thực tế chuyển giao (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TTinNha/CongTrinhXD/gTriCTrinh"/> đồng</p>
					<p><b>[43]</b> Tài sản gắn liền với đất</p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[43.1]</b> Loại tài sản gắn liền với đất: <xsl:value-of select="$tkchinh/DacDiemBDS/TaiSan/loaiTaiSan"/></p>
					<p>&#160;&#160;&#160;&#160;&#160;<b>[43.2]</b> Giá trị tài sản gắn liền với đất thực tế chuyển giao (nếu có): <xsl:value-of select="$tkchinh/DacDiemBDS/TaiSan/gTriTaiSan"/> đồng</p>
					<p><b>V. THU NHẬP TỪ CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN; TỪ NHẬN THỪA KẾ, QUÀ TẶNG LÀ BẤT ĐỘNG SẢN</b></p>
					<p><b>[44]</b> Loại thu nhập</p>
					<table class="tkhai_table" > 
						<tr>
							<td width = "70%" class="align-l"> <b>[44.1]</b> Thu nhập từ chuyển nhượng bất động sản:</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/ThuNhap/thuNhapCN = 'true' or $tkchinh/ThuNhap/thuNhapCN= '1'" >x</xsl:if>]</td>
						</tr>
						<tr>
							<td width = "70%" class="align-l"> <b>[44.2]</b> Thu nhập từ nhận thừa kế, quà tặng</td>
							<td width = "30%" class="align-r"> [<xsl:if test="$tkchinh/ThuNhap/thuNhapKT = 'true' or $tkchinh/ThuNhap/thuNhapKT= '1'" >x</xsl:if>]</td>
						</tr>
					</table>
					<p><b>[45]</b> Giá trị chuyển nhượng bất động sản và tài sản khác gắn liền với đất hoặc giá trị bất động sản nhận thừa kế, quà tặng: <xsl:value-of select="$tkchinh/ThuNhap/gTriCN"/> đồng</p>
					<p><b>[46]</b> Thuế thu nhập cá nhân phát sinh đối với chuyển nhượng bất động sản ([46]=[45]x2%): <xsl:value-of select="$tkchinh/ThuNhap/thueTNCN"/> đồng</p>
					<p><b>[47]</b> Thu nhập miễn thuế: <xsl:value-of select="$tkchinh/ThuNhap/thuNhapMien"/> đồng</p>
					<p><b>[48]</b> Thuế thu nhập cá nhân được miễn ([48] = [47] x 2%): <xsl:value-of select="$tkchinh/ThuNhap/thueDuocMien"/> đồng</p>
					<p><b>[49]</b> Thuế thu nhập cá nhân phải nộp đối với chuyển nhượng bất động sản:{[49]=([46]-[48])}: <xsl:value-of select="$tkchinh/ThuNhap/thuePhaiNopCN"/> đồng</p>
					<p><b>[50]</b> Thuế thu nhập cá nhân phải nộp đối với nhận thừa kế, quà tặng là bất động sản {[50]=([45]-[47]-10.000.000) x 10%}: <xsl:value-of select="$tkchinh/ThuNhap/thuePhaiNopKT"/> đồng</p>
					<p><b>[51]</b> Số thuế phải nộp, được miễn của chủ sở hữu (chỉ khai trong trường hợp có đồng sở hữu hoặc chủ sở hữu, đồng sở hữu được miễn thuế theo quy định):</p>			
					<p style="text-align:right; margin:8px 0;"><i>Đơn vị tiền: Đồng Việt Nam</i></p>
					<table class="tkhai_table" border="1" style="border-collapse:collapse; width:100%; table-layout:fixed">
						 <thead>
							<tr class="txcenter">
							  <th width="7%">STT</th>
							  <th width="16%">Họ và tên</th>
							  <th width="16%">Mã số thuế</th>
							  <th width="9%">Tỷ lệ sở hữu (%)</th>
							  <th width="12%">Số thuế phải nộp</th>
							  <th width="12%">Số thuế được miễn</th>
							 <th style="32%">Lý do cá nhân được miễn với nhà ở, quyền sử dụng đất ở duy nhất</th>
							  <th width="10%">Lý do miễn khác</th>
							</tr>

							<tr class="txcenter">
							  <td class="align-c">[51.1]</td>
							  <td class="align-c">[51.2]</td>
							  <td class="align-c">[51.3]</td>
							  <td class="align-c">[51.4]</td>
							  <td class="align-c">[51.5]</td>
							  <td class="align-c">[51.6]</td>
							  <td class="align-c">[51.7]</td>
							  <td class="align-c">[51.8]</td>
							</tr>
						 </thead>

						  <tbody>
							<xsl:for-each select="$tkchinh/ThuNhap/CTietThue/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="hoTen"/></td>
								<td class="align-l"><xsl:value-of select="mst"/></td>
								<td class="align-l"><xsl:value-of select="tyLe"/></td>	
								<td class="align-l"><xsl:value-of select="thuePhaiNop"/></td>
								<td class="align-l"><xsl:value-of select="thueDuocMien"/></td>						
								<td class="align-l">
									<input type="checkbox">
									  <xsl:if test="$tkchinh/ThuNhap/CTietThue/ChiTiet/lyDo='true' or $tkchinh/ThuNhap/CTietThue/ChiTiet/lyDo='1'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									  </xsl:if>
									</input>
								</td>							
								<td class="align-l"><xsl:value-of select="lyDoKhac"/></td>
	         				</tr>
							</xsl:for-each>
						  </tbody>
						</table>												
				</div>
		</div>		
      </div>

		<xsl:call-template name="tkhaiFooter_03_BDS_TNCN">
			<xsl:with-param name="mauTKhai"   select="'03/BĐS_TNCN'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
	</xsl:template>		
</xsl:stylesheet>

