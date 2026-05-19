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
			<xsl:with-param name="mauTBao"   select="'07/QĐ-HĐ'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="'QUYẾT ĐỊNH'" />
			<xsl:with-param name="motaTBao"   select="'Về việc áp dụng cưỡng chế bằng biện pháp'" />
			<xsl:with-param name="motaTBao_1"   select="'thông báo hóa đơn không còn giá trị sử dụng'" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
			<html>
				<body>
					<div class="content">
					<p class="align-c b" style="text-transform:uppercase;">
					CỤC TRƯỞNG CỤC THUẾ/CHI CỤC TRƯỞNG CHI CỤC THUẾ 
					<xsl:value-of select="$ttinChung/CQT/tenCQT" />
					</p>
							<p class="align-j fz18_5px">								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">						
								<xsl:if test="$ndungTBao/TTinCanCuQD/ttinCanCuVBan !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ndungTBao/TTinCanCuQD/ttinCanCuVBan" />;
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
										<xsl:value-of select="$ndungTBao/TTinCanCuQD/theoDNghiCua" />;
									</span>
								</xsl:if>
							</p>
							<p class="align-c fz17px">
								<b>QUYẾT ĐỊNH:</b>
							</p>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 1.</b>Áp dụng cưỡng chế bằng biện pháp thông báo hóa đơn không còn giá trị sử dụng để thi hành quyết định hành chính thuế số 
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
								</xsl:if> đối với: ông (bà)/tổ chức bị cưỡng chế:
								<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
									<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />;
								</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ:
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">
							 <xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />;
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:								
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">
							 <xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />;
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngành nghề kinh doanh:								
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/nganhKDDTuongBiCChe !=''">
							 <xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/nganhKDDTuongBiCChe" />;
							</xsl:if>
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thời gian thực hiện cưỡng chế: vào lúc 	
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,11,2)" />
							ngày
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,9,2)" />
							tháng
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,6,2)" />
							năm
							<xsl:value-of select="substring($ndungTBao/QuyetDinh/Dieu1/TTinBienPhapCChe/thiHanhQDHChinhThueNgay,1,4)" />
							</div>
							<div>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do bị cưỡng chế:
							<xsl:if test="$ndungTBao/QuyetDinh/Dieu1/lyDoCChe !=''">
								<span>
									<xsl:value-of select="$ndungTBao/QuyetDinh/Dieu1/lyDoCChe" />;
								</span>
							</xsl:if>
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
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 3.</b> Quyết định này có hiệu lực thi hành trong thời hạn 01 năm, kể từ ngày
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
							</p>
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
				</body>
			</html>
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