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
			<xsl:variable name="TTinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="$tbThue/NDungTBao" />
			
			<div class="content">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr style="float:right">
						<td width="60%">&#160;</td>
						<td style="float:right;">
							<div class="box_mau_so">
								Mẫu số: <b>01/CC</b>
										<br />
										<i>(Ban hành kèm theo Thông tư
										<br />
										87/2018/TT-BTC ngày 27/9/2018
										<br />
										của Bộ Tài chính)</i>
							</div>
						</td>
					</tr>
				</table>
				<br/>
				<table cellpadding="0" cellspacing="0" width="100%">
					<tbody>
						<tr>
							<td width="40%">
								<div align="center" style="margin:0; padding:0;">
									<span style="text-transform:uppercase"><xsl:value-of select="$TTinChung/CQT/coQuanCapTren"/></span> <br/>
									<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/CQT/coQuanCapDuoi"/></span><br/>
									Số: <xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
								</div>
							</td>
							<td width="60%">
								<div align="center" style="margin:0; padding:0; ">
									<span style="font-weight:bold;font-size:13pt;">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</span><br/>
									<span style="font-weight:bold;">Độc lập-Tự do-Hạnh phúc</span><br/>
									----------oOo----------<br/>
									<i><xsl:value-of select="$TTinChung/CQT/diaDanh" />, Ngày <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
								</div>
							</td>
						</tr>
					</tbody>
				</table>					
				<p class="b align-c">QUYẾT ĐỊNH<br/>
					Về việc cưỡng chế thi hành quyết định hành chính thuế <br/>
					bằng biện pháp kê biên tài sản, bán đấu giá tài sản kê biên
				</p>
				<div>
				<p class="align-c b">THỦ TRƯỞNG CƠ QUAN BAN HÀNH QUYẾT ĐỊNH CƯỠNG CHẾ</p>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16/10/2013 của Chính phủ quy định về xử lý vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
				<br/>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 và Thông tư số 87/2018/TT-BTC ngày 27/9/2018 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
				<br/>
				<span>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định 
						<xsl:if test="$NDungTBao/TTinCanCuQD/ccQDinh !=''">
							<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccQDinh" />
						</xsl:if>
						<xsl:if test="$NDungTBao/TTinCanCuQD/ccQDinh =''">
							............
						</xsl:if>
							 quy định về chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của cơ quan ban hành quyết định cưỡng chế
					</span>
				<xsl:if test="$NDungTBao/TTinCanCuQD/ttinCanCuVBan!=''">
					<br/>
					<span>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ văn bản giao quyền số <xsl:value-of select="$NDungTBao/TTinCanCuQD/ttinCanCuVBan" />
					</span>
				</xsl:if>								
		
							<br/>
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThue" />
									</span>
								</xsl:if>				
						<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueSo!=''">
									<span>
									Số <xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueSo" />
									</span>
								</xsl:if>	
				
								ngày <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueNgay,'yyyy')"/>

								của														
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueCua !=''">
									<span>
									<xsl:value-of select="$NDungTBao/TTinCanCuQD/ccuTHanhQDHChinhThueCua" />
									</span>
								</xsl:if>				
	<br/>
							<span>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Xét đề nghị của 
								<xsl:if test="$NDungTBao/TTinCanCuQD/theoDNghiCua !=''">
									<xsl:value-of select="$NDungTBao/TTinCanCuQD/theoDNghiCua" />,
								</xsl:if>
								<xsl:if test="$NDungTBao/TTinCanCuQD/theoDNghiCua =''">
									........,
								</xsl:if>
							</span>
							<br/>
								<div class="align-c b"> QUYẾT ĐỊNH:</div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 1.</b> Cưỡng chế bằng biện pháp kê biên tài sản, bán đấu giá tài sản kê biên để thi hành quyết định hành chính thuế số 
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo !=''">
								<span>
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo" />
								</span>
							</xsl:if>
							Ngày <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'mm')"/> 
							năm <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'yyyy')"/>
							
							của
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua !=''">
								<span>
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua" />
								</span>
							</xsl:if>;
							<div>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Đối với: 
								<br/>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên:  
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />
								</xsl:if>
								<br/>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ: 
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">
								   <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />
								</xsl:if>	
                                <br/>	
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã số thuế: 								
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">
								  <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />
								</xsl:if>
								<br/>
								</div>
							<div>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Lý do bị cưỡng chế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe" />;
									</span>
								</xsl:if>
								</div>
							(Ghi cụ thể trường hợp bị cưỡng chế theo quy định tại Điều 2 Thông tư 215/2013/TT-BTC ngày 31/12/2013).
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Số tiền bị cưỡng chế:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
									<span>
										<xsl:value-of select="ihtkk:formatNumber($NDungTBao/QuyetDinh/Dieu1/soTienBiCChe)" />
									</span>
								</xsl:if>
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i>(Số tiền bằng chữ: 
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
								<span>
									<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/QuyetDinh/Dieu1/soTienBiCChe)"/>
								</span>
							</xsl:if> đồng)</i>.
							<br/><br/>
							
							
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%">
												STT
											</td>
											<td id="td_table"  width="20%">
												Tài sản kê biên
											</td>
											<td id="td_table"  width="20%">
												Giá trị tài sản
											</td>
											<td id="td_table"  width="20%">
												Thời gian cưỡng chế
											</td>
											<td id="td_table"  width="30%">
												Địa điểm cưỡng chế
											</td>
										</tr>										
										<xsl:for-each select="$NDungTBao/QuyetDinh/Dieu1/TTinCTietTSanKBien">
										<xsl:variable name="pos2" select="position()"/>
											<tr>
											<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="$pos2" />
													</countNo>
												</td>
												<td class="align-c" id="td_table" >
													<span>
														<xsl:if test="taisankebien !=''">
															<xsl:value-of select="taisankebien" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="giatritaisan !=''">
															<xsl:value-of select="ihtkk:formatNumber(giatritaisan)" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="thoigiancuongche !=''">
															<xsl:value-of select="thoigiancuongche" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="diadiemcuongche !=''">
															<xsl:value-of select="diadiemcuongche" />
														</xsl:if>
													</span>
												</td>
																				
											</tr>
										</xsl:for-each>
										
									</tbody>
								</table>
								<br/>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 2.</b> 
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD !=''">
									<span>
										<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD" />
									</span>
								</xsl:if>
								phải nghiêm chỉnh thực hiện Quyết định này và phải chịu mọi chi phí về việc tổ chức thực hiện các biện pháp cưỡng chế theo quy định của pháp luật.
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 3.</b> Quyết định này có hiệu lực kể từ ngày
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu !=''">
									<span>
										<xsl:value-of select="concat(substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 1,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 4,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDTu, 7,4))" />
									</span>
								</xsl:if>
								đến ngày
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen !=''">
									<span>
										<xsl:value-of select="concat(substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 1,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 4,2),'/',substring($NDungTBao/QuyetDinh/Dieu3/ngayHLucQDDen, 7,4))" />;
									</span>
								</xsl:if>
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đối với cưỡng chế bằng biện pháp kê biên tài sản, bán đấu giá tài sản kê biên phải ghi cụ thể thời gian, địa điểm thực hiện cưỡng chế và tài sản kê biên;						
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định có
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/soTrangQD !=''">
								<span>
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/soTrangQD" />
								</span>
							</xsl:if>
							trang không tách rời, được đóng dấu giáp lai giữa các trang.
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định này được giao cho ông (bà)/tổ chức
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD !=''">
								<span>
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD" />
								</span>
							</xsl:if>
							để thực hiện.
							<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Quyết định này được gửi cho:
							<xsl:for-each select="$NDungTBao/QuyetDinh/Dieu3/TTinDTuongDuocGuiQD">
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
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
							<br/>
							<table style="page-break-inside: avoid;width:100%">
				<tr>
				<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietNoiNhan/tenNoiNhan">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietLuu/luu">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						</td>
				<td style="width:60%;text-align:center;">
				<xsl:if test="$TTinChung/TTinKy/hThucTL !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/hThucTL" />: <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTTL" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/hThucKT !=''">
				<span style="font-weight:bold;text-transform:uppercase;">KT: <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKT" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
			
				</xsl:if> 
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
				<span style="font-weight:bold;text-transform:uppercase;">
				<xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
				</xsl:if> 
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy =''">
				<span style="font-size:13pt;font-weight:bold;text-transform:uppercase;">THỦ TRƯỞNG CƠ QUAN</span>
				<br/>
				<span style="font-size:13pt;font-weight:bold;text-transform:uppercase;">BAN HÀNH VĂN BẢN</span>
				<br/>
				(Ký, ghi rõ họ tên và đóng dấu)
				</xsl:if>
				<br/>
				<br/>
				<br/>
				<br/>
				<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />
				</td>
				</tr>
				</table>
				
					</div>
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