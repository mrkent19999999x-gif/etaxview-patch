<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<html>
				<body>
					<div class="content_kdt" >
						<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
								<br></br>
									<div class="box_mau_so fz13px" >
										Mẫu số:17/QTr-KK
										<br />
										<i>(Ban hành kèm theo Quyết định số 
										<br />
										879/QĐ -TCT ngày 15/5/2015 của Tổng 
										<br />
										cục trưởng Tổng cục Thuế)</i>
									</div>
								</td>
							</tr>
						</table>
						<xsl:for-each select="$NDungTBao">
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr class="align-c">
											<td class="fz17px">
												<xsl:value-of select="$NDungTBao/coQuanCapTren" />	
											</td>
											<td class="fz17px">
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
										<tr>
											<td class="align-c">
												<hr class="table_hr1"/>
											</td>
											<td class="align-c">
												<hr class="table_hr2"/>
											</td>
										</tr>
										<tr class="align-c fz17px" >
											<td>
												Số:
												<span>
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
								<p class="line1_5 align-c fz18_5px">
									<b >THƯ NHẮC NỘP HỒ SƠ KHAI THUẾ</b>
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế đề nghị NNT
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
									lập và nộp hồ sơ khai thuế kỳ này đúng thời hạn quy định để đảm bảo quyền lợi theo pháp luật của người nộp thuế. Các hồ sơ khai thuế phải nộp kỳ này của người nộp thuế như sau:
								</p>
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="10%">
												<b>Số TT</b>
											</td>
											<td id="td_table"  width="20%">
												<b>Loại thuế</b>
											</td>
											<td id="td_table"  width="30%">
												<b>Ký hiệu mẫu hồ sơ khai thuế</b>
											</td>
											<td id="td_table"  width="20%">
												<b>Kỳ tính thuế</b>
											</td>
											<td id="td_table"  width="20%">
												<b>Hạn nộp</b>
											</td>
										</tr>
										<tr class="align-c">
											<td class="align-c" id="td_table" >
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
										</tr>
										<xsl:for-each select="$NDungTBao/HSoKThuePhNopKNay/ChTietHSoKThuePhNopKNay">
											<tr>
												<td class="align-c" id="td_table" >
													<span id="stt">
														<countNo>
															<xsl:value-of select="position()" />
														</countNo>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="loaiThue !=''">
															<xsl:value-of select="loaiThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="kyHieuMauHSoKThue !=''">
															<xsl:value-of select="kyHieuMauHSoKThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="kyTinhThue !=''">
															<xsl:value-of select="kyTinhThue" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="hanNop !=''">
															<xsl:value-of select="hanNop" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Xin chân thành cảm ơn sự hợp tác của người nộp thuế. 
									<br />
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
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Email:
									<xsl:if test="$NDungTBao/ThongTinCQT/email !=''">
										<span>
											<xsl:value-of select="$NDungTBao/ThongTinCQT/email" />																				
										</span>
									</xsl:if>
								</p>
								<p class="align-l fz18_5px">
								<i><b>Nơi nhận :</b></i>
								<br/>
								<xsl:for-each select="$NDungTBao/NoiNhan/CTietNoiNhan">
								-&#160;<xsl:value-of select="tenNoiNhan" /><br/>
								</xsl:for-each>
								-&#160;Lưu VT,
								<xsl:for-each select="$NDungTBao/NoiNhan/CTietLuu">
								&#160;<xsl:value-of select="luu" /><br/>
								</xsl:for-each>
							</p>
						</xsl:for-each>
					</div>
				</body>
			</html>
		</xsl:for-each>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>