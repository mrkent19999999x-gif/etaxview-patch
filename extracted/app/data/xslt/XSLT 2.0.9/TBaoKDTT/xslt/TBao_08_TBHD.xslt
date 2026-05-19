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
			<xsl:variable name="PLuc" select="TBaoThue/PLuc" />
			<xsl:variable name="TB_08_TBHD" select="$PLuc/TB_08_TBHD" />
			<html>
				<body>
					<div class="content_kdt">
						<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
									<br></br>
									<div class="box_mau_so fz13px">
										Mẫu số: <b>08/TB-HĐ</b>
										<br />
										<i>Ban hành kèm theo Quyết định số
										<br />
										751/QĐ-TCT ngày 20/4/2015 của
										<br />
										Tổng cục trưởng Tổng cục Thuế</i>
									</div>
								</td>
							</tr>
						</table>
						<xsl:for-each select="$NDungTBao">
							<table cellpadding="0" cellspacing="0" class="table_hd1">
								<tbody>
									<tr class="align-c">
										<td class="fz17px" >
											<xsl:value-of select="$NDungTBao/coQuanCapTren" />	
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
												<xsl:if test="$TB_08_TBHD/soThongBao !=''">
													<span>
														<xsl:value-of select="$TB_08_TBHD/soThongBao" />
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
											<b>THÔNG BÁO</b>
										</td>
									</tr>
									<tr class="align-c">
										<td class="fz18_5px">
											<b>Về việc hóa đơn không còn giá trị sử dụng</b>
										</td>
									</tr>
									<tr>
										<td>
											<hr class="table_hr3" />
										</td>
									</tr>									
								</tbody>
							</table>
							<p class="align-j fz18_5px">								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn về cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định số
								<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
									<span>
										<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
									</span>
								</xsl:if>
								ngày
								<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,9,2)" />
								tháng
								<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,6,2)" />
								năm
								<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,4)" />
								của Cục Thuế/Chi cục Thuế
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								</xsl:if>
								về việc áp dụng biện pháp cưỡng thông báo hóa đơn không còn giá trị sử dụng đối với
								<xsl:if test="$NDungTBao/tenNNT !=''">
									<xsl:value-of select="$NDungTBao/tenNNT" />
								</xsl:if>								
							</p>
							<p class="align-j fz18_5px">	
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								</xsl:if>	
								thông báo hóa đơn không còn giá trị sử dụng:	
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đối với
								<xsl:if test="$NDungTBao/tenNNT !=''">
									<xsl:value-of select="$NDungTBao/tenNNT" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
								<xsl:if test="$NDungTBao/maSoThue !=''">
									<xsl:value-of select="$NDungTBao/maSoThue" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ trụ sở kinh doanh:
								<xsl:if test="$NDungTBao/diaChiNNT !=''">
									<xsl:value-of select="$NDungTBao/diaChiNNT" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đăng ký kinh doanh số:
								<xsl:if test="$TB_08_TBHD/soDKKinhDoanh !=''">
									<xsl:value-of select="$TB_08_TBHD/soDKKinhDoanh" />,
								</xsl:if>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cấp
								ngày
								<xsl:value-of select="substring($TB_08_TBHD/ngayDKKinhDoanh,9,2)" />
								tháng
								<xsl:value-of select="substring($TB_08_TBHD/ngayDKKinhDoanh,6,2)" />
								năm
								<xsl:value-of select="substring($TB_08_TBHD/ngayDKKinhDoanh,1,4)" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;nơi cấp:
								<xsl:if test="$TB_08_TBHD/noiCapDKy !=''">
									<xsl:value-of select="$TB_08_TBHD/noiCapDKy" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do thông báo hóa đơn không còn giá trị sử dụng: đơn vị không chấp hành Thông báo tiền thuế nợ và tiền phạt chậm nộp số							
								<xsl:if test="$TB_08_TBHD/soTBNo !=''">
									<xsl:value-of select="$TB_08_TBHD/soTBNo" />
								</xsl:if>
								ngày
								<xsl:value-of select="substring($TB_08_TBHD/ngayTBNo,9,2)" />
								tháng
								<xsl:value-of select="substring($TB_08_TBHD/ngayTBNo,6,2)" />
								năm
								<xsl:value-of select="substring($TB_08_TBHD/ngayTBNo,1,4)" />
								của Cục Thuế/Chi cục Thuế
								<xsl:if test="$TTinChung/CQT/maCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/maCQT" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số hóa đơn không còn giá trị sử dụng gồm:				
							</p>
							<p class="align-j fz18_5px">
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
										<xsl:for-each select="$TB_08_TBHD/NDungHoaDon/TTinHoaDon">
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="loaiHoaDon !=''">
														<xsl:value-of select="loaiHoaDon" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="kyHieuMau !=''">
														<xsl:value-of select="kyHieuMau" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="kyHieuHoaDon !=''">
														<xsl:value-of select="kyHieuHoaDon" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="tuSoDenSo !=''">
														<xsl:value-of select="tuSoDenSo" />
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
							</p>
							<p class="align-l fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số hóa đơn không còn giá trị sử dụng
								<i>thuộc những hóa đơn trong bảng kê trên đây nếu xuất sử dụng từ/sau 
								ngày
								<xsl:value-of select="substring($TB_08_TBHD/ngaySDungHDon,9,2)" />
								tháng
								<xsl:value-of select="substring($TB_08_TBHD/ngaySDungHDon,6,2)" />
								năm
								<xsl:value-of select="substring($TB_08_TBHD/ngaySDungHDon,1,4)" />.
								</i>
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
						<hr class="table_hr1" />
						<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Hướng dẫn lập thông báo:</b><br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tại dòng "ngày ... tháng ... năm ..." phía trên của thông báo: ngày trùng với ngày ban hành quyết định cưỡng chế.<br/>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Dòng cuối cùng: "Số hóa đơn không còn giá trị sử dụng <i> thuộc những hóa đơn trong bảng kê dưới/trên đây nếu xuất sử dụng từ/sau ngày..."</i>: là ngày trùng với ngày <i>có hiệu lực của</i> quyết định cưỡng chế.				
						</p>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>