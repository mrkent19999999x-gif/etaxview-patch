<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="ihtkk">

	<xsl:template match="/">
		<style type="text/css">ol { margin: 0; padding: 0 }
			#wrapper { background:
			none repeat scroll 0 0 #FFFFFF; min-height: 100%;
			height: 100%;
			margin: auto; padding: 40px; position: relative; width:
			700px;}
			#headermct { margin: auto; position: relative; width: 100%;
			height:100%; }
			#conten { float: left; margin: auto; position:
			relative; width: 100%; height:100%; }
			.ms09 { border: 1px solid;
			float: right; height: 70px; padding: 10px;
			position: relative; top:
			-13px; width: 230px; text-align:center; }
			.table_hd1 { width: 100%;
			text-align: center; }
			.table_hd1 td { padding: 0px;}
			#headermct table
			td{ padding: 0px;}
			.table_hr1 { margin-top: -8px; border-width: 1px
			thin; width: 105px; }
			.table_hr2 { border-width: 1px thin; margin-top:
			8px; width: 210px; }
			.table_hr3 { border-width: 1px thin; margin-top:
			8px; width: 150px; }
			.c5 { width: 35px; border-style: solid;
			border-color: #000000;
			border-width: 0.5pt; text-align: center; }
			.c9 {
			width: 74.4pt; border-style: solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
			.c8 {
			border-style: solid; border-color: #000000; border-width: 0pt;
			padding: 0pt 5.8pt 0pt 5.8pt }
			.c20 { width: 54.2pt; border-style:
			solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt
			0pt 5.8pt text-align: center;
			}
			.c13 { width: 233.7pt; border-style:
			solid; border-color: #000000;
			border-width: 0pt; padding: 0pt 5.8pt
			0pt 5.8pt }
			.c14 { width: 47.7pt; border-style: solid; border-color:
			#000000;
			border-width: 0.5pt; padding: 2px; }
			.c22 { width: 233.6pt;
			border-style: solid; border-color: #000000;
			border-width: 0pt;
			padding: 0pt 5.8pt 0pt 5.8pt }
			.c6 { width: 52.8pt; border-style:
			solid; border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt
			0pt 5.8pt }
			.c21 { width: 61.4pt; border-style: solid; border-color:
			#000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt text-align:
			center;
			}
			.c26 {border-style: solid; border-color: #000000;
			border-width: 0pt; }
			.c7 { width: 97.1pt; border-style: solid;
			border-color: #000000;
			border-width: 0.5pt; padding: 0pt 5.8pt 0pt
			5.8pt }
			.c2 { line-height: 1.5; padding-top: 6pt; height: 11pt;
			direction: ltr;
			padding-bottom: 0pt }
			.c3 { line-height: 1.5;
			padding-top: 6pt; direction: ltr;
			padding-bottom: 0pt }
			.c19 { height:
			11pt; direction: ltr }
			.c10 { height: 28pt }
			.c1 { font-size: 13px; }
			.c18 { height: 22pt; }
			.c15 { font-size: 12px; }
			.c4 { font-weight:
			bold }
			.c0 { font-size: 15px; }
			.c25 { height: 0pt }
			.c11 { text-align:
			center }
			.c23 { font-style: italic }
			.c12 { height: 27pt; line-height:
			40px; }
			.title { padding-top: 24pt; line-height: 1.1500000000000001;
			text-align:
			left; color: #000000; font-size: 12px; }
			.subtitle {
			padding-top: 18pt; line-height: 1.1500000000000001; text-align:
			left;
			color: #666666; font-style: italic; font-size: 24px; }
			li { color:
			#000000; font-size: 12px; }
			#conten .table_hd { border-collapse:
			collapse; border-color: #000000;
			border-style: solid; border-width:
			1pt; float: left; margin-top:
			10px; position: relative; width: 100%; }
			#conten .table_hd tr { border-collapse: collapse; border-color:
			#000000;
			border-style: solid; border-width: 1pt; text-align: center; }
			#conten .table_hd td { border-collapse: collapse; border-color:
			#000000;
			border-style: solid; border-width: 1pt; }
			.contenms9 {
			font-size: 13px; }
			.tb_strong { align: center; }
			.contenfter{float:
			left; position: relative; width: 100%; display: inline;}
		</style>
		<xsl:for-each select="THONGBAO">
			<xsl:variable name="NDUNG_TBAO" select="./NDUNG_TBAO" />
			<xsl:variable name="THONGBAO_HDR" select="./NDUNG_TBAO/THONGBAO_HDR" />
			<xsl:variable name="THONGBAO_CTIET" select="./NDUNG_TBAO/THONGBAO_CTIET" />
			<html>
				<body>



					<div id="contentprint" style="text-align:center;">
						<xsl:for-each select="$NDUNG_TBAO">
							<div id="headermct">
								<p class="c2">&#160;</p>
								<div class="ms09 c1">
									<span>
										Mẫu số:18/QTr-KK
										<br />
										(Ban hành kèm theo Quyết định số
										<br />
										879/QĐ -TCT ngày 15/5/2015 của Tổng cục trưởng Tổng cục Thuế)

									</span>
								</div>
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr class="c18 align-c">
											<td class="c26 align-c">
												<span class="c1 c4 c0">
													<xsl:if test="$THONGBAO_HDR/TEN_CQT_CAP_TREN !=''">
														<span>
															<xsl:value-of select="$THONGBAO_HDR/TEN_CQT_CAP_TREN" />
														</span>
													</xsl:if>
												</span>
												<br />
												<span class="c1 c4 c0">
													<xsl:if test="$THONGBAO_HDR/TEN_CQT !=''">
														<span>
															<xsl:value-of select="$THONGBAO_HDR/TEN_CQT" />
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
														<xsl:if test="$THONGBAO_HDR/SO_TBAO !=''">
															<span>
																<xsl:value-of select="$THONGBAO_HDR/SO_TBAO" />
															</span>
														</xsl:if>
													</span>
													/TB
												</span>
											</td>
											<td class="c8 align-c" valign="top">
												<span class="c1" id="ngay_thang">
													Ngày
													<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,1,2)" />
													tháng
													<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,4,2)" />
													năm
													<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,7,4)" />
												</span>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="c2 c11">&#160;</p>
								<p class="c3 c11">
									<span class="c1 c0 c4">
										<!--<xsl:if test="$THONGBAO_HDR/TEN_TBAO !=''"> <span> <xsl:value-of 
											select="$THONGBAO_HDR/TEN_TBAO"/> </span> </xsl:if> -->
										THÔNG BÁO
										<br />
										Về việc yêu cầu nộp hồ sơ khai thuế
									</span>
								</p>
								<hr class="table_hr3" />
								<p class="c2 c11">&#160;</p>
								<div style="text-align:left;">
									Cơ quan thuế thông báo để NNT:
									<xsl:if test="$THONGBAO_CTIET/TBAO/TEN_NNT !=''">
										<span>
											<xsl:value-of select="$THONGBAO_CTIET/TBAO/TEN_NNT" />
										</span>
									</xsl:if>
									, MST:
									<xsl:if test="$THONGBAO_CTIET/TBAO/MST !=''">
										<span>
											<xsl:value-of select="$THONGBAO_CTIET/TBAO/MST" />
										</span>
									</xsl:if>
									được biết: Tính đến ngày
									<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,1,2)" />
									tháng
									<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,4,2)" />
									năm
									<xsl:value-of select="substring($THONGBAO_HDR/NGAY_TBAO,7,4)" />
									, cơ quan thuế chưa nhận được các hồ sơ khai thuế của người nộp
									thuế, cụ thể như sau:
								</div>
							</div>
						</xsl:for-each>
						<div id="conten" style="text-align:center;align:center;">
							<table cellpadding="0" cellspacing="0" class="table_hd">
								<tbody id="msthongbao09">
									<tr>
										<td style="height:23px;">
											<strong class="tb_strong">Số TT</strong>
										</td>
										<td style="height:23px;">
											<strong class="tb_strong">Loại thuế</strong>
										</td>
										<td style="height:23px;">
											<strong class="tb_strong">Ký hiệu mẫu hồ sơ khai thuế</strong>
										</td>
										<td style="height:23px;">
											<strong class="tb_strong">Kỳ tính thuế</strong>
										</td>
										<td style="height:23px;">
											<strong class="tb_strong">Hạn nộp</strong>
										</td>
										<td style="height:23px;">
											<strong class="tb_strong">Số ngày quá hạn</strong>
										</td>
									</tr>
									<xsl:for-each select="$THONGBAO_CTIET/TBAO/HO_SO/ROW_CTIET">
										<tr>
											<td align="center">
												<span class="ttnt_27" id="stt">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</span>
											</td>
											<td>
												<span class="contenms9">
													<xsl:if test="LOAI_THUE !=''">
														<xsl:value-of select="LOAI_THUE" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;">
												<span class="contenms9">
													<xsl:if test="KY_HIEU !=''">
														<xsl:value-of select="KY_HIEU" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;">
												<span class="contenms9">
													<xsl:if test="KY !=''">
														<xsl:value-of select="KY" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;">
												<span class="contenms9">
													<xsl:if test="HAN_NOP !=''">
														<xsl:value-of select="HAN_NOP" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;">
												<span class="contenms9">
													<xsl:if test="SO_NGAY_QUA_HAN !=''">
														<xsl:value-of select="SO_NGAY_QUA_HAN" />
													</xsl:if>
												</span>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>

							<div class="contenfter" style="text-align:left;">
								<p class="c3">
									Đề nghị người nộp thuế nộp ngay các hồ sơ khai thuế còn thiếu
									nói trên cho cơ quan thuế. Người nộp thuế phải chịu trách nhiệm
									và bị xử phạt vi phạm pháp luật về thuế theo các quy định của
									Luật Quản lý thuế và các văn bản hướng dẫn thi hành Luật.
									<br />
									NNT cần biết thêm chi tiết, xin vui lòng liên hệ với cơ quan
									thuế theo địa chỉ:
									<span class="contenms9">
										<xsl:if test="$THONGBAO_HDR/TEN_CQT !=''">
											<xsl:value-of select="$THONGBAO_HDR/TEN_CQT" />
										</xsl:if>
									</span>
									,
									<span class="contenms9">
										<xsl:if test="$THONGBAO_HDR/BO_PHAN_LHE !=''">
											<xsl:value-of select="$THONGBAO_HDR/BO_PHAN_LHE" />
										</xsl:if>
									</span>
									<br />
									Địa chỉ:
									<xsl:if test="$THONGBAO_HDR/DIACHI_CQT !=''">
										<xsl:value-of select="$THONGBAO_HDR/DIACHI_CQT" />
									</xsl:if>
									<br />
									Số điện thoại:
									<xsl:if test="$THONGBAO_HDR/PHONE_CQT !=''">
										<xsl:value-of select="$THONGBAO_HDR/PHONE_CQT" />
									</xsl:if>
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
									Địa chỉ E-mail:
									<xsl:if test="$THONGBAO_HDR/EMAIL_CQT !=''">
										<xsl:value-of select="$THONGBAO_HDR/EMAIL_CQT" />
									</xsl:if>
									<br />
									Cơ quan thuế thông báo để NNT biết, thực hiện./.

								</p>
							</div>
						</div>
						<div style="clear: both;">&#160;</div>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>