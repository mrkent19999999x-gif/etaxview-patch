<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<style type="text/css">ol { margin: 0; padding: 0 }
			#wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%;
			height: 100%; margin: auto; padding: 40px; position: relative; width:
			700px;}
			#headermct { margin: auto; position: relative; width: 100%; height:100%; }
			#conten { float: left; margin: auto; position: relative; width: 100%; height:100%; }
			.ms09 { border: 1px solid; float: right; height: 70px; padding: 10px;
			position: relative; top: -13px; width: 230px; text-align:center; }
			.table_hd1 { width: 100%; text-align: center; }
			.table_hd1 td { padding: 0px;}
			#headermct table td{ padding: 0px;}
			.table_hr1 { margin-top: -8px; border-width: 1px thin; width: 105px; }
			.table_hr2 { border-width: 1px thin; margin-top: 8px; width: 210px; }
			.table_hr3 { border-width: 1px thin; margin-top: 8px; width: 150px; }
			.c5 { width: 35px; border-style: solid; border-color: #000000;
			border-width: 0.5pt; text-align: center; }
			.c9 { width: 74.4pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c8 { border-style: solid; border-color: #000000; border-width: 0pt;
			padding: 0pt 5.8pt 0pt 5.8pt }
			.c20 { width: 54.2pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt text-align: center;
			}
			.c13 { width: 233.7pt; border-style: solid; border-color: #000000;
			border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c14 { width: 47.7pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 2px; }
			.c22 { width: 233.6pt; border-style: solid; border-color: #000000;
			border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c6 { width: 52.8pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c21 { width: 61.4pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt text-align: center;
			}
			.c26 {border-style: solid; border-color: #000000; border-width: 0pt; }
			.c7 { width: 97.1pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c2 { line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr;
			padding-bottom: 0pt }
			.c3 { line-height: 1.5; padding-top: 6pt; direction: ltr;
			padding-bottom: 0pt }
			.c19 { height: 11pt; direction: ltr }
			.c10 { height: 28pt }
			.c1 { font-size: 13px; }
			.c18 { height: 22pt; }
			.c15 { font-size: 12px; }
			.c4 { font-weight: bold }
			.c0 { font-size: 15px; }
			.c25 { height: 0pt }
			.c11 { text-align: center }
			.c23 { font-style: italic }
			.c12 { height: 27pt; line-height: 40px; }
			.title { padding-top: 24pt; line-height: 1.1500000000000001; text-align:
			left; color: #000000; font-size: 12px; }
			.subtitle { padding-top: 18pt; line-height: 1.1500000000000001; text-align:
			left; color: #666666; font-style: italic; font-size: 24px; }
			li { color: #000000; font-size: 12px; }
			#conten .table_hd { border-collapse: collapse; border-color: #000000;
			border-style: solid; border-width: 1pt; float: left; margin-top:
			10px; position: relative; width: 100%; }
			#conten .table_hd tr { border-collapse: collapse; border-color: #000000;
			border-style: solid; border-width: 1pt; text-align: center; }
			#conten .table_hd td { border-collapse: collapse; border-color: #000000;
			border-style: solid; border-width: 1pt; }
			.contenms9 { font-size: 13px; }
			.tb_strong { align: center; }
			.contenfter{float: left; position: relative; width: 100%; display: inline;}
			.content {padding: 0px 40px 0px 60px; text-align: justify;}
		</style>
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<html>
				<body>

					<div id="contentprint" class="content">
						<xsl:for-each select="$NDungTBao">
							<div id="headermct">
								<p class="c2">&#160;</p>
								<div class="ms09 c1">
									<span>
										Mẫu số: <b>01_01/TB-TĐT</b><i>(Ban hành 
										<br />
										kèm theo Thông tư số 110 TT-BTC ngày
										<br />
										27/07/2015 của Bộ Tài chính) </i>

									</span>
								</div>
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr class="c18 align-c">
											<td class="c26 align-c">
												
												<br />
												<span class="c1 c4 c0">
													<xsl:if test="$TTinChung/CQT/tenCQT !=''">
														<span>
															<xsl:value-of select="$TTinChung/CQT/tenCQT" />
														</span>
													</xsl:if>
												</span>
											</td>
											<td class="c8 align-c">
												<span class="c1 c4 c0">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
											</td>
										</tr>
										<tr class="c18 ">
											<td class="align-c">
												<hr class="table_hr1" />
											</td>
											<td class="align-c">
												<span class="c1 c4 c0 ">Độc lập - Tự do - Hạnh phúc</span>
												<hr class="table_hr2" />
											</td>
										</tr>
										<tr class="c12">
											<td class="c26 align-c" valign="top">
												<span class="c1">
													Số:
													<span class="contenms9">
														<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
															<span>
																<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
															</span>
														</xsl:if>
													</span>
													/TB-TĐT
												</span>
											</td>
											<td class="c8 align-c" valign="top">
												<span class="c1" id="ngay_thang">
													ngày
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,2)" />
													tháng
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,4,2)" />
													năm
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,7,4)" />
												</span>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="c2 c11">&#160;</p>
								<p class="c3 c11">
									<span class="c1 c0 c4">
										<xsl:if test="$TTinChung/TTinTBaoThue/tenTBao !=''">
											<span>
												<xsl:value-of select="$TTinChung/TTinTBaoThue/tenTBao" />								
											</span>
										</xsl:if>
									</span>
									<br />
									<b>V/v: Tiếp nhận hồ sơ thuế điện tử</b>
								</p>
								<hr class="table_hr3" />
								<p class="c2 c11">&#160;</p>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Kính gửi:
								<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>
								<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan !=''">
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
									</span>
								</xsl:if>
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc
								ngày
								<xsl:value-of select="substring($NDungTBao/ngayGiayDNHT,1,2)" />
								tháng
								<xsl:value-of select="substring($NDungTBao/ngayGiayDNHT,4,2)" />
								năm
								<xsl:value-of select="substring($NDungTBao/ngayGiayDNHT,7,4)" />
								. 
								Cơ quan thuế thông báo tiếp nhận hồ sơ thuế điện tử của người nộp thuế, cụ thể như sau:
								<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan"/>
									</span>
								</xsl:if>
								, mã số thuế:&#160;
								<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan !=''">
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
									</span>
								</xsl:if>
								&#160;và hồ sơ gửi kèm theo.
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế nhận được hồ sơ hoàn thuế: 
								<xsl:value-of select="$NDungTBao/ngayNhanHSoHoan" />
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế thông báo hồ sơ hoàn thuế chưa đầy đủ thủ tục: 
								<xsl:value-of select="$NDungTBao/ngayTBaoChuaDuTTuc" />
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế nhận được đủ hồ sơ hoàn thuế theo quy định: 
								<xsl:value-of select="$NDungTBao/ngayNhanDuHSo" />
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế, Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế và các văn bản hướng dẫn thi hành, cơ quan Thuế thông báo hồ sơ đề nghị hoàn thuế của 
								<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>
								 thuộc diện kiểm tra trước, hoàn thuế sau.
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do: 
								<xsl:value-of select="$NDungTBao/lyDo" />
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thời hạn giải quyết hồ sơ hoàn thuế là 40 ngày kể từ ngày cơ quan Thuế nhận được đủ hồ sơ theo quy định.
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin liên hệ với cơ quan Thuế để được giải đáp.
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại: 
								<xsl:value-of select="$NDungTBao/soDienThoai" />
								<p />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: 
								<xsl:value-of select="$NDungTBao/diaChi" />
							</div>
						</xsl:for-each>
						<div style="clear: both;">&#160;</div>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>