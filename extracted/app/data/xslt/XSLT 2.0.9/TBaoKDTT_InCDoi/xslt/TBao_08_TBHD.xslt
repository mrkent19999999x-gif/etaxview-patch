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
										Mẫu số: <b>08/CC</b>
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
					<p style="font-weight:bold;font-size:14px;">THÔNG BÁO</p>
					<div style="font-weight:bold;">
					Về việc hóa đơn không còn giá trị sử dụng
					</div>
				</td>
			</tr>
		</tbody>
	</table>
					
						<xsl:for-each select="$NDungTBao">
							<div class="align-j fz18_5px">								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16/10/2013 của Chính phủ quy định về xử lý vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
							</div>
							
							<div class="align-j fz18_5px">								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 và Thông tư số 87/2018/TT-BTC ngày 27/9/2018 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
							</div>
							<div class="align-j fz18_5px">
								
								<xsl:if test="$NDungTBao/TTinCanCuQD/canCuQDSo !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định số <xsl:value-of select="$NDungTBao/TTinCanCuQD/canCuQDSo" />
									</span>
								</xsl:if>
								
								<xsl:if test="$NDungTBao/TTinCanCuQD/canCuQDNgay !=''">
									<span>
										ngày <xsl:value-of select="$NDungTBao/TTinCanCuQD/canCuQDNgay" />
									</span>
								</xsl:if>
								
								<xsl:if test="$NDungTBao/TTinCanCuQD/canCuQDCua !=''">
									<span>
										của Cục Thuế/Chi cục Thuế <xsl:value-of select="$NDungTBao/TTinCanCuQD/canCuQDCua" />
									</span>
								</xsl:if>
								về việc cưỡng chế thi hành quyết định hành chính thuế bằng biện pháp thông báo hóa đơn không còn giá trị sử dụng đối với 
								<xsl:if test="$NDungTBao/TTinCanCuQD/doiVoi !=''">
									<span>
										<xsl:value-of select="$NDungTBao/TTinCanCuQD/doiVoi" />
									</span>
								</xsl:if>								
							</div>
							<div class="align-j fz18_5px">	
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								</xsl:if>	
								thông báo hóa đơn không còn giá trị sử dụng:	
							</div>
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đối với
								<xsl:if test="$NDungTBao/DoiTuongBiCC/doiVoi !=''">
									<span>
										<xsl:value-of select="$NDungTBao/DoiTuongBiCC/doiVoi" />
									</span>
								</xsl:if>
							</div>
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
								<xsl:if test="$NDungTBao/DoiTuongBiCC/mst !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/mst" />
								</xsl:if>
							</div>
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ trụ sở kinh doanh:
								<xsl:if test="$NDungTBao/DoiTuongBiCC/diaChi !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/diaChi" />
								</xsl:if>
							</div>
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Giấy chứng nhận đăng ký kinh doanh số: 
								<xsl:if test="$NDungTBao/DoiTuongBiCC/dKyKDSo !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/dKyKDSo" />
								</xsl:if>
								, cấp ngày 
								<xsl:if test="$NDungTBao/DoiTuongBiCC/dKyKDNgay !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/dKyKDNgay" />
								</xsl:if>
								, nơi cấp: 
								<xsl:if test="$NDungTBao/DoiTuongBiCC/dKyKDNoiCap !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/dKyKDNoiCap" />
								</xsl:if>
								
							</div>
							
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do thông báo hóa đơn không còn giá trị sử dụng: đơn vị không chấp hành Thông báo tiền thuế nợ và tiền phạt chậm nộp số							
								<xsl:if test="$NDungTBao/DoiTuongBiCC/tBaoNoSo !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/tBaoNoSo" />
								</xsl:if>
								ngày
								<xsl:if test="$NDungTBao/DoiTuongBiCC/tBaoNoNgay !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/tBaoNoNgay" />
								</xsl:if>
								của Cục Thuế/Chi cục Thuế
								<xsl:if test="$NDungTBao/DoiTuongBiCC/tBaoNoCua !=''">
									<xsl:value-of select="$NDungTBao/DoiTuongBiCC/tBaoNoCua" />
								</xsl:if>
							</div>
							<div class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ dữ liệu theo dõi tại cơ quan thuế hoặc dữ liệu của cơ quan có thẩm quyền khác (nếu có), số hóa đơn tồn đến ngày ban hành quyết định cưỡng chế gồm:				
							</div>
							<div class="align-j fz18_5px">
								<table class="tkhai_table fz14px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
									<tbody >
										<tr class="align-c" height="50px">
											<td id="td_table" width="7%">
												<b>TT</b>
											</td>
											<td id="td_table" width="13%">
												<b>Loại hóa đơn</b>
											</td>
											<td id="td_table" width="15%">
												<b>Ký hiệu mẫu</b>
											</td>
											<td id="td_table" width="15%">
												<b>Ký hiệu Hóa đơn</b>
											</td>
											<td id="td_table" width="17%">
												<b>Từ số - đến số</b>
											</td>
											<td id="td_table" width="33%">
												<b>Ghi chú</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/CTietHoaDon/ChiTiet">
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="loaiHDon !=''">
														<xsl:value-of select="loaiHDon" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="kHieuMau !=''">
														<xsl:value-of select="kHieuMau" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="kHieuHDon !=''">
														<xsl:value-of select="kHieuHDon" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="soHDon !=''">
														<xsl:value-of select="soHDon" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="ghiChu !=''">
														<xsl:value-of select="ghiChu" />
													</xsl:if>
												</td>
											</tr>
										</xsl:for-each>	
									</tbody>
								</table>
							</div>
							<div class="align-l fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số hóa đơn trên không còn giá trị sử dụng nếu sử dụng từ ngày quyết định cưỡng chế có hiệu lực thi hành 
								(ngày
								<xsl:value-of select="ihtkk:stringDatetime($NDungTBao/hieuluc,'dd')" />
								tháng
								<xsl:value-of select="ihtkk:stringDatetime($NDungTBao/hieuluc,'mm')" />
								năm
								<xsl:value-of select="ihtkk:stringDatetime($NDungTBao/hieuluc,'yyyy')" />).
								
							</div>
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
				
				</xsl:if>(Ký, ghi rõ họ tên và đóng dấu) 
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
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>