<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<html>
				<body>
					<div class="content_kdt">
						<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
									<br></br>
									<div class="box_mau_so fz13px">
										Mẫu số: <b>01/CC</b>
										<br />
										<i>(Ban hành kèm theo Thông tư số
										<br />
										215/2013/TT-BTC ngày 
										<br />
										31/12/2013 của Bộ Tài chính)</i>
									</div>
								</td>
							</tr>
						</table>
						<xsl:for-each select="$NDungTBao">
							<table cellpadding="0" cellspacing="0" class="table_hd1">
								<tbody>
									<tr class="align-c">
										<td class="fz17px" >
											<xsl:value-of select="ihtkk:getMaCTcapTren($TTinChung/CQT/maCQT)" />	
										</td>
										<td class="fz17px" width="60%">
											<b>CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
										</td>
									</tr>
									<tr class="align-c">
										<td class="fz17px">
											<b><xsl:value-of select="ihtkk:getTenUpperCT($TTinChung/CQT/maCQT)" />		
											</b>	
										</td>
										<td class="fz18_5px">
											<b>Độc lập - Tự do - Hạnh phúc</b>
										</td>
									</tr>
									<tr class="align-c">
										<td>
											<hr class="table_hr1" />
										</td>
										<td>
											<hr class="table_hr2" />
										</td>
									</tr>
									<tr class="align-c fz17px">
										<td>
											Số:
											<span >
												<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
													<span>
														<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
													</span>
												</xsl:if>
											</span>
										</td>
										<td >	
											<i>
												<xsl:value-of select="ihtkk:getTenNganCT($TTinChung/CQT/maCQT)" />,												
												ngày
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,9,2)" />
												tháng
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,6,2)" />
												năm
												<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,4)" />
											</i>
										</td>
									</tr>
								</tbody>
							</table>
							<br></br>
							<table cellpadding="0" cellspacing="0" class="table_hd1">
								<tbody>
									<tr class="align-c">
										<td class="fz17px">
											<b>QUYẾT ĐỊNH</b>
										</td>
									</tr>
									<tr class="align-c">
										<td class="fz18_5px">
											<b>Về việc cưỡng chế thi hành quyết định hành chính thuế bằng biện pháp.....</b>
										</td>
									</tr>
									<tr>
										<td>
											<b>(THỦ TRƯỞNG CƠ QUAN BAN HÀNH QUYẾT ĐỊNH CƯỠNG CHẾ)</b>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="align-j fz18_5px">
								Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16/10/2013 của Chính phủ quy định về xử lý vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
								<br />
								Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">
								Căn cứ văn bản giao quyền số
								<xsl:if test="$NDungTBao/TTinCanCuQD/ttinCanCuVBan !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/ttinCanCuVBan" />
									</span>
								</xsl:if>
								(nếu có);
							</p>
							<p class="align-j fz18_5px">
								Căn cứ đề nghị thi hành quyết định hành chính thuế
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue" />
									</span>
								</xsl:if>	
								ngày
								<xsl:value-of select="substring($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,9,2)" />
								tháng
								<xsl:value-of select="substring($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,6,2)" />
								năm
								<xsl:value-of select="substring($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,1,4)" />
								của
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueCua !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueCua" />
									</span>
								</xsl:if>
								tại văn bản số
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueSo !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueSo" />
									</span>
								</xsl:if>
								(nếu có);
							</p>
							<p class="align-j fz18_5px">
								Theo đề nghị của
								<xsl:if test="$NDungTBao/TTinCanCuQD/theoDNghiCua !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/theoDNghiCua" />
									</span>
								</xsl:if>
							</p>
							<p class="align-c fz17px">
								<b>QUYẾT ĐỊNH:</b>
							</p>
							<p class="align-j fz18_5px">
								<b>Điều 1.</b> Cưỡng chế bằng biện pháp
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/bienPhapCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/bienPhapCChe" />
									</span>
								</xsl:if>
								để thi hành quyết định hành chính thuế số
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo" />
									</span>
								</xsl:if>
								ngày
								<xsl:value-of select="substring($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,9,2)" />
								tháng
								<xsl:value-of select="substring($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,6,2)" />
								năm
								<xsl:value-of select="substring($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,1,4)" />
								của
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua" />
									</span>
								</xsl:if>;
								<br></br>
								1. Đối với: ông (bà)/tổ chức bị cưỡng chế, địa chỉ, mã số thuế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />
								</xsl:if>
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">,
								địa chỉ: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />
								</xsl:if>								
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">,
								mã số thuế: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />;
								</xsl:if>
								<br />
								2. Lý do bị cưỡng chế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe" />;
									</span>
								</xsl:if>
								<br />
								(Ghi cụ thể trường hợp bị cưỡng chế theo quy định tại Điều 2 Thông tư 215/2013/TT-BTC ngày 31/12/2013).
								<br />
								3. Số tiền bị cưỡng chế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
									<span>
										<xsl:value-of select="ihtkk:formatNumber($NDungTBao/QuyetDinh/Dieu1/soTienBiCChe)" />
									</span>
								</xsl:if>
								<br />
								Số tài khoản của đối tượng bị cưỡng chế
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/stkDTuongBiCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/stkDTuongBiCChe" />
									</span>
								</xsl:if>
								mở tại kho bạc nhà nước/tổ chức tín dụng
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/noiMoTKhoanBiCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/noiMoTKhoanBiCChe" />
									</span>
								</xsl:if>
								(nếu có);
								<br />
								- Yêu cầu kho bạc nhà nước, ngân hàng thương mại và tổ chức tín dụng phong tỏa tài khoản
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/d11TT215TKBiPToa !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/d11TT215TKBiPToa" />
									</span>
								</xsl:if>
								(đối với trường hợp thực hiện theo qui định tại điểm d Khoản 3 Điều 11 Thông tư 215/2013/TT-BTC);
								<br />
								- Tên, địa chỉ cơ quan, tổ chức quản lý tiền lương hoặc thu nhập:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/d12TT215TTinDTuongQLTNhap !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/d12TT215TTinDTuongQLTNhap" />
									</span>
								</xsl:if>
								(đối với trường hợp thực hiện theo quy định tại Điều 12 Thông tư 215/2013/TT-BTC);
								<br />
								- Tên, mã số thuế, nơi cư trú, trụ sở của tổ chức, cá nhân đang nắm giữ tiền, tài sản của đối tượng bị cưỡng chế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/d15TT215TTinNGiuTSanCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/d15TT215TTinNGiuTSanCChe" />
									</span>
								</xsl:if>
								(đối với trường hợp thực hiện theo quy định tại Điều 15 Thông tư 215/2013/TT-BTC);
							</p>
							<p class="align-j fz18_5px">
								<b>Điều 2.</b> Ông (bà)/tổ chức
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD" />
									</span>
								</xsl:if>
								phải nghiêm chỉnh thực hiện Quyết định này và phải chịu mọi chi phí về việc tổ chức thực hiện các biện pháp cưỡng chế theo quy định của pháp luật.
							</p>
							<p class="align-j fz18_5px">
								<b>Điều 3.</b> Quyết định này có hiệu lực kể từ ngày
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu !=''">
									<span>
										<xsl:value-of select="concat(substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 9,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 6,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 1,4))" />
									</span>
								</xsl:if>
								đến ngày
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen !=''">
									<span>
										<xsl:value-of select="concat(substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 9,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 6,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 1,4))" />;
									</span>
								</xsl:if>
								<br />
								Đối với cưỡng chế bằng biện pháp kê biên tài sản, bán đấu giá tài sản kê biên phải ghi cụ thể thời gian, địa điểm thực hiện cưỡng chế và tài sản kê biên;
								<br />
								Quyết định có
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/soTrangQD !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/soTrangQD" />
									</span>
								</xsl:if>
								trang không tách rời, được đóng dấu giáp lai giữa các trang.
								<br />
								Quyết định này được giao cho ông (bà)/tổ chức
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD" />
									</span>
								</xsl:if>
								để thực hiện. Quyết định này được gửi cho:
								<table style="font-size:18.5px;" padding-top="-2px">
									<xsl:for-each select="$NDungTBao/QuyetDinh/Dieu3/TTinDTuongDuocGuiQD">
										<tr>
											<td>
												<span >
													<countNo>
														<xsl:value-of select="position()" />.
													</countNo>
												</span>
												<xsl:if test="guiCho !=''">
													<span>
														<xsl:value-of select="guiCho" />
													</span>
												</xsl:if>
												để
												<xsl:if test="guiDe !=''">
													<span>
														<xsl:value-of select="guiDe" />
													</span>
												</xsl:if>
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</p>
						</xsl:for-each>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>