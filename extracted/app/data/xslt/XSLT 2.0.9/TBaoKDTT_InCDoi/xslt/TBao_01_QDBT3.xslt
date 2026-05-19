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
			<xsl:variable name="ttinVBanCDoi" select="./TTinVBanCDoi" />
			<table cellpadding="0" cellspacing="0" width="100%">
						<tr style="float:right">
						<td style="float:right">
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
						<br></br>
						<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<span style="text-transform:uppercase"><xsl:value-of select="$TTinChung/CQT/coQuanCapTren"/></span> <br/>
						<span style="font-weight:bold;text-transform:uppercase;font-size:14px;"><xsl:value-of select="$TTinChung/CQT/coQuanCapDuoi"/></span><br/>
						 Số: <xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0; ">
					<span style="font-weight:bold;font-size:14px;">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</span><br/>
					<span style="font-weight:bold;font-size:14px;">Độc lập-Tự do-Hạnh phúc</span><br/>
					----------oOo----------<br/>
					<i><xsl:value-of select="$TTinChung/CQT/diaDanh" />, Ngày <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<p style="font-weight:bold;font-size:14px;alignCenter;">QUYẾT ĐỊNH</p>
					<div style="font-weight:bold;alignCenter;">Về việc cưỡng chế thi hành quyết định hành chính thuế <br/>
				bằng biện pháp thu tiền, tài sản khác của đối tượng bị cưỡng chế <br/>
				do tổ chức, cá nhân khác đang giữ
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	
			
					<div class="content">
					
					<div class="align-c align-j b">THỦ TRƯỞNG CƠ QUAN BAN HÀNH QUYẾT ĐỊNH CƯỠNG CHẾ</div>
					<br/>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16/10/2013 của Chính phủ quy định về xử lý vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
					</p>
					<p class="align-j fz18_5px">
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccQDinh !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định  <xsl:value-of select="$NDungTBao/TTinCanCuQD/ccQDinh" />quy định về chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của cơ quan ban hành quyết định cưỡng chế
									</span>
								</xsl:if>
							</p>
					<p class="align-j fz18_5px">						
								<xsl:if test="$NDungTBao/TTinCanCuQD/ttinCanCuVBan !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ văn bản giao quyền số <xsl:value-of select="$NDungTBao/TTinCanCuQD/ttinCanCuVBan" />;
									</span>
								</xsl:if>
							</p>
					<p class="align-j fz18_5px">
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
							</p>
					<p>
					
					<xsl:if test="$NDungTBao/TTinCanCuQD/theoDNghiCua !=''">
						<span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Theo đề nghị của<xsl:value-of select="$NDungTBao/TTinCanCuQD/theoDNghiCua" />
						</span>
					</xsl:if>
					</p>
					<p class ="align-c b">QUYẾT ĐỊNH:</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<b>Điều 1.</b> Cưỡng chế bằng biện pháp thu tiền, tài sản khác của đối tượng bị cưỡng chế do tổ chức, cá nhân khác đang giữ để thi hành quyết định hành chính thuế số
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueSo" />
						</span>
					</xsl:if>
					Ngày <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,'yyyy')"/>
					của
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueCua" />
						</span>
					</xsl:if>;
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Đối với: 
								<br/>
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên:  <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />
								</xsl:if>
								<br/>
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">
								   &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />
								</xsl:if>	
                                <br/>								
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">,
								  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã số thuế: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />
								</xsl:if>
								<br/>
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					2. Lý do bị cưỡng chế:
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/lyDoCChe" />;
						</span>
					</xsl:if>
					<br/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					(Ghi cụ thể trường hợp bị cưỡng chế theo quy định tại Điều 2 Thông tư số 215/2013/TT-BTC ngày 31/12/2013).
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					3. Số tiền bị cưỡng chế:
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
						<span>
							<xsl:value-of select="ihtkk:formatNumber($NDungTBao/QuyetDinh/Dieu1/soTienBiCChe)" />;
						</span>
					</xsl:if>
					</p>
					<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i>(bằng chữ: 
							<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/soTienBiCChe !=''">
								<span>
									<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/QuyetDinh/Dieu1/soTienBiCChe)"/>
								</span>
							</xsl:if>)</i>.
							</div>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Tên, mã số thuế, nơi cư trú, trụ sở của tổ chức, cá nhân đang nắm giữ tiền, tài sản của đối tượng bị cưỡng chế: 
					<br/>
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/tenDTuongGiuTSanCChe!=''">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên:  <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/tenDTuongGiuTSanCChe" />
								</xsl:if>
								<br/>
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/mstDTuongGiuTSanCChe!=''">
								   &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã số thuế: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/mstDTuongGiuTSanCChe" />
								</xsl:if>	
                                <br/>								
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/diaChiDTuongGiuTSanCChe !=''">,
								  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ: <xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/TTinDTuongGiuTSanCChe/diaChiDTuongGiuTSanCChe" />
								</xsl:if>
								<br/>
					
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<b>Điều 2.</b> 
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu2/ttinDTuongNChinhTHienQD" />
						</span>
					</xsl:if>
					phải nghiêm chỉnh thực hiện Quyết định này và phải chịu mọi chi phí về việc tổ chức thực hiện các biện pháp cưỡng chế theo quy định của pháp luật.
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<b>Điều 3.</b> Quyết định này có hiệu lực kể từ ngày
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
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Quyết định có
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/soTrangQD !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/soTrangQD" />
						</span>
					</xsl:if>
					trang không tách rời, được đóng dấu giáp lai giữa các trang.
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Quyết định này được giao cho 
					<xsl:if test="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD !=''">
						<span>
							<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu3/ttinDTuongDuocGiaoTHienQD" />
						</span>
					</xsl:if>
					để thực hiện.
					</p>
					<p>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Quyết định này được gửi cho:
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
					
					</p>
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
				
				</xsl:if> (Ký, ghi rõ họ tên và đóng dấu)
				<br/>
				<br/>
				<br/>
				<br/>
				<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />
				</td>
				</tr>
				</table>
				<br/>
				<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:40%;">

							</td>			
							<td style="width:60%;text-align:center;">
								<div style="font-weight:bold;">Văn bản chuyển đổi từ văn bản điện tử </div>
								<div>Ngày chuyển đổi: <xsl:if test="$TTinVBanCDoi/NgayCDoi !=''"><xsl:value-of select="ihtkk:stringDatetime($TTinVBanCDoi/NgayCDoi,'dd/mm/yyyy')" /></xsl:if></div>
								<div style="font-weight:bold;">Thông tin người chuyển đổi</div>
								<div style="text-align:center;">(Ký tên, đóng dấu)</div>
								<br/><br/><br/>
								<div><xsl:if test="$TTinVBanCDoi/NguoiCDoi !=''"><xsl:value-of select="$TTinVBanCDoi/NguoiCDoi" /></xsl:if></div>	
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