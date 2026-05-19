<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:include href="../include/TBaoHeader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'01/QĐ-TL'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="'QUYẾT ĐỊNH'" />
			<xsl:with-param name="motaTBao"   select="'Về việc cưỡng chế thi hành quyết định hành chính thuế'" />
			<xsl:with-param name="motaTBao_1"   select="'bằng biện pháp khấu trừ một phần tiền lương hoặc thu nhập'" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
					<div class="content">
							<hr class="table_hr3" />
					<div class="align-c align-j b">(THỦ TRƯỞNG CƠ QUAN BAN HÀNH QUYẾT ĐỊNH CƯỠNG CHẾ)</div>
					<br/>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16/10/2013 của Chính phủ quy định về xử lý vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">								
								<xsl:if test="$ndungTBao/TTinCanCuQD/ttinCanCuVBan !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ndungTBao/TTinCanCuQD/ttinCanCuVBan" />
									</span>
								</xsl:if>								
							</p>
							<p class="align-j fz18_5px">								
								<xsl:if test="$ndungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ndungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue" />
									</span>
								</xsl:if>									
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Theo đề nghị của
								<xsl:if test="$ndungTBao/TTinCanCuQD/theoDNghiCua !=''">
									<span>
										<xsl:value-of select="$ndungTBao/TTinCanCuQD/theoDNghiCua" />,
									</span>
								</xsl:if>
							</p>
							<p class="align-c fz17px">
								<b>QUYẾT ĐỊNH:</b>
							</p>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 1.</b> Cưỡng chế bằng biện pháp khấu trừ một phần tiền lương hoặc thu nhập để thi hành quyết định hành chính thuế số 
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo !=''">
								<span>
									<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo" />
								</span>
							</xsl:if>
							ngày
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,9,2)" />
							tháng
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,6,2)" />
							năm
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,1,4)" />
							của
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua !=''">
								<span>
									<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua" />
								</span>
							</xsl:if>;
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Đối với: ông (bà)/tổ chức bị cưỡng chế, địa chỉ, mã số thuế:
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
								<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />
							</xsl:if>
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">,
							địa chỉ: <xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />
							</xsl:if>								
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">,
							mã số thuế: <xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />;
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Lý do bị cưỡng chế:
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/lyDoCChe !=''">
								<span>
									<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/lyDoCChe" />;
								</span>
							</xsl:if>
							</div>
							<div>
							(Ghi cụ thể trường hợp bị cưỡng chế theo quy định tại Điều 2 Thông tư 215/2013/TT-BTC ngày 31/12/2013).
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Số tiền bị cưỡng chế:
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
									<span>
										<xsl:value-of select="ihtkk:formatNumber($ndungTBao/QuyetDinh/Dieu1/soTienBiCChe)" />
									</span>
								</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Tên, địa chỉ cơ quan, tổ chức quản lý tiền lương hoặc thu nhập: 
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/tenDTuongQLTNhap !=''">
									<span>
										<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/tenDTuongQLTNhap" />
									</span>
								</xsl:if>
								(đối với trường hợp thực hiện theo quy định tại Điều 12 Thông tư số 215/2013/TT-BTC);
							</div>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 2.</b> Ông (bà)/tổ chức
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD !=''">
									<span>
										<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD" />
									</span>
								</xsl:if>
								phải nghiêm chỉnh thực hiện Quyết định này và phải chịu mọi chi phí về việc tổ chức thực hiện các biện pháp cưỡng chế theo quy định của pháp luật.
							</p>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 3.</b> Quyết định này có hiệu lực kể từ ngày
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu3/ngayHLucQDTu !=''">
									<span>
										<xsl:value-of select="concat(substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 9,2),'/',substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 6,2),'/',substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 1,4))" />
									</span>
								</xsl:if>
								đến ngày
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu3/ngayHLucQDDen !=''">
									<span>
										<xsl:value-of select="concat(substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 9,2),'/',substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 6,2),'/',substring($ndungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 1,4))" />;
									</span>
								</xsl:if>
							</div>
							<div>
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu3/soQDCu !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu3/soQDCu" />
									</span>
								</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định có
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu3/soTrangQD !=''">
									<span>
										<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu3/soTrangQD" />
									</span>
								</xsl:if>
								trang không tách rời, được đóng dấu giáp lai giữa các trang.
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định này được giao cho ông (bà)/tổ chức
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD !=''">
									<span>
										<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD" />
									</span>
								</xsl:if>
								để thực hiện. 
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định này được gửi cho:
							<xsl:for-each select="$ndungTBao/QuyetDinh/Dieu3/TTinDTuongDuocGuiQD">
							<div>
							<countNo>
								<xsl:value-of select="position()" />.
							</countNo>
							<xsl:if test="guiCho !=''">
								<xsl:value-of select="guiCho" />
							</xsl:if>
							để
							<xsl:if test="guiDe !=''">
								<xsl:value-of select="guiDe" />
							</xsl:if>
							</div>
							</xsl:for-each>
							</div>
							
							<table style="page-break-inside: avoid;width:100%">
								<tr>
								<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
								<xsl:for-each select="$ndungTBao/NoiNhan/CTietNoiNhan">
								-&#160;<xsl:value-of select="tenNoiNhan" /><br/>
								</xsl:for-each>
								-&#160;Lưu VT,
								<xsl:for-each select="$ndungTBao/NoiNhan/CTietLuu">
								&#160;<xsl:value-of select="luu" /><br/>
								</xsl:for-each>
								</td>
								<td style="width:60%;text-align:center;">
								<xsl:if test="$ndungTBao/TTinKy/hThucKy !=''">
								<xsl:if test="$ndungTBao/TTinKy/hThucKy = '01'">
								<span style="font-weight:bold;text-transform:uppercase;">KT: <xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTUyQuyen" /></span><br/>
								</xsl:if>
								</xsl:if>
								<xsl:if test="$ndungTBao/TTinKy/chucDanhCBTKy !=''">
								<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTKy" /></span><br/>
								(Ký, ghi rõ họ tên và đóng dấu)
								</xsl:if> 
								<br/>
								<br/>
								<xsl:value-of select="$ndungTBao/TTinKy/tenCBTKy" />
								</td>
								</tr>
							</table>
								<br/>
								<br/>
								<br/>
					</div>
		</xsl:for-each>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>