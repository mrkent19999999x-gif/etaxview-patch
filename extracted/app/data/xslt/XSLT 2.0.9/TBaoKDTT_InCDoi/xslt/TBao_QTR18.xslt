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
			<xsl:variable name="ttinVBanCDoi" select="./TTinVBanCDoi" />
			<html>
				<body>
				<div class="content">
				<table cellpadding="0" cellspacing="0" width="100%">
						<tr style="float:right">
						<td style="float:right">
						<div class="box_mau_so">
										Mẫu số: <b>18/QTr-KK</b>
										<br />
										<i>(Ban hành kèm theo Quyết định số
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
					<p style="font-weight:bold;font-size:14px;">THÔNG BÁO</p>
					<div style="font-weight:bold;">
					Về việc yêu cầu nộp hồ sơ khai thuế
					</div>
				</td>
			</tr>
		</tbody>
	</table>
					
						<xsl:for-each select="$NDungTBao">
							<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để NNT
									<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
										<span>
											<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
										</span>
									</xsl:if>, MST: 
									<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan !=''">
										<span>
											<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
										</span>
									</xsl:if>
									được biết: Tính đến	ngày
									<xsl:value-of select="ihtkk:stringDatetime($NDungTBao/tinhDenNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/tinhDenNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/tinhDenNgay,'yyyy')"/>
									 cơ quan thuế chưa nhận được các hồ sơ khai thuế của người nộp thuế, cụ thể như sau:
								</p>
								<table cellpadding="0" cellspacing="0" class="tkhai_table" border ="1px" >
									<tbody >
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="7%">
												<b>Số TT</b>
											</td>
											<td id="td_table" width="15%">
												<b>Loại thuế</b>
											</td>
											<td id="td_table" width="25%">
												<b>Ký hiệu mẫu hồ sơ khai thuế</b>
											</td>
											<td id="td_table" width="20%">
												<b>Kỳ tính thuế</b>
											</td>
											<td id="td_table" width="20%">
												<b>Hạn nộp</b>
											</td>
											<td id="td_table" width="13%">
												<b>Số ngày quá hạn</b>
											</td>
										</tr>
										<tr class="align-c">
											<td id="td_table" >
												<i>(1)</i>
											</td>
											<td id="td_table" >
												<i>(2)</i>
											</td>
											<td id="td_table" >
												<i>(3)</i>
											</td>
											<td id="td_table" >
												<i>(4)</i>
											</td>
											<td id="td_table" >
												<i>(5)</i>
											</td>
											<td id="td_table" >
												<i>(6)</i>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/HSoKThueQuaHanNop/ChTietHSoKThueQuaHanNop">
											<tr>
												<td class="align-c" id="td_table" >
													<span id="stt">
														<countNo>
															<xsl:value-of select="position()" />
														</countNo>
													</span>
												</td>
												<td id="td_table" class="align-l">
													<span>
														<xsl:if test="loaiThue !=''">
															<xsl:value-of select="loaiThue" />
														</xsl:if>
													</span>
												</td>
												<td id="td_table" class="align-l">
													<span >
														<xsl:if test="kyHieuMauHSoKThue !=''">
															<xsl:value-of select="kyHieuMauHSoKThue" />
														</xsl:if>
													</span>
												</td>
												<td id="td_table" class="align-l">
													<span >
														<xsl:if test="kyTinhThue !=''">
															<xsl:value-of select="kyTinhThue" />
														</xsl:if>
													</span>
												</td>
												<td id="td_table" class="align-l" >
													<span >
														<xsl:if test="hanNop !=''">
															<xsl:value-of select="hanNop" />
														</xsl:if>
													</span>
												</td>
												<td id="td_table" class="align-r">
													<span >
														<xsl:if test="soNgayQuaHan !=''">
															<xsl:value-of select="soNgayQuaHan" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị người nộp thuế nộp ngay các hồ sơ khai thuế còn thiếu nói trên cho cơ quan thuế. Người nộp thuế phải chịu trách nhiệm và bị xử phạt vi phạm pháp luật về thuế theo các quy định của Luật Quản lý thuế và các văn bản hướng dẫn thi hành Luật.
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;NNT cần biết thêm chi tiết, xin vui lòng liên hệ với cơ quan thuế theo địa chỉ:
									<xsl:if test="$NDungTBao/ThongTinCQT/tenCQT !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/tenCQT" />																				
										</span>
									</xsl:if>
									-
									<xsl:if test="$NDungTBao/ThongTinCQT/boPhanLienHe !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/boPhanLienHe" />																				
										</span>
									</xsl:if>
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ:
									<xsl:if test="$NDungTBao/ThongTinCQT/diaChi !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/diaChi" />																				
										</span>
									</xsl:if>
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại:
									<xsl:if test="$NDungTBao/ThongTinCQT/soDienThoai !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/soDienThoai" />																				
										</span>
									</xsl:if>
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ E-mail:
									<xsl:if test="$NDungTBao/ThongTinCQT/email !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/email" />																				
										</span>
									</xsl:if> <br/>
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để NNT biết, thực hiện./.
								</p>
							<table style="page-break-inside: avoid;width:100%">
								<tr>
								<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietNoiNhan/tenNoiNhan">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietLuu/luu">
						-&#160;Lưu: <xsl:value-of select="." /><br/>
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
						</xsl:for-each>
						<table style="page-break-inside: avoid;width:100%" >
							<tr>
								<td>
									<div id="sigDiv"></div>
								</td>
							</tr>
						</table>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>