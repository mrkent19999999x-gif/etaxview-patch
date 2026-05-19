<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<style type="text/css">ol { margin: 0; padding: 0 }
			#wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%;
			height: 100%; margin: auto; padding: 40px; position: relative; width:
			90%;}
			#headermct { margin: auto; position: relative; width: 100%; }
			#conten { float: left; margin: auto; position: relative; width: 100%; height: 100%; }
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
		</style>
		<xsl:for-each select="BKE_TBAO">
			<xsl:variable name="NDUNG_BKE_TBAO" select="./NDUNG_BKE_TBAO" />
			<xsl:variable name="BKE_TBAO_HDR" select="./NDUNG_BKE_TBAO/BKE_TBAO_HDR" />
			<xsl:variable name="BKE_TBAO_DTL" select="./NDUNG_BKE_TBAO/BKE_TBAO_DTL" />
			<html>
				<body>
					<div id="contentprint">
						<div id="conten">
							<p class="c2 c11">&#160;</p>
							<table cellpadding="0" cellspacing="0" class="table_hd">
								<tbody id="msthongbao09">
									<tr>
										<td colspan="8" style="height:45px;">
											<xsl:if test="$BKE_TBAO_HDR/TEN_BK !=''">
												<strong class="tb_strong">
													<xsl:value-of select="$BKE_TBAO_HDR/TEN_BK" />
												</strong>
											</xsl:if>
											<br />
											Cơ quan thuế:
											<xsl:if test="$BKE_TBAO_HDR/TEN_CQT !=''">
												<strong class="tb_strong">
													<xsl:value-of select="$BKE_TBAO_HDR/TEN_CQT" />
												</strong>
											</xsl:if>
										</td>
									</tr>
									<tr>
										<td style="height:23px;" rowspan="2">
											<strong class="tb_strong">Số TT</strong>
										</td>
										<td colspan="5">
											<strong class="tb_strong">THÔNG TIN NGƯỜI NỘP THUẾ</strong>
										</td>
										<td colspan="2" height="30px">
											<strong class="tb_strong">THÔNG TIN CƠ QUAN THUẾ QUẢN LÝ</strong>
										</td>
									</tr>
									<tr>

										<td style="height:30px;">
											<strong class="tb_strong">MST</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Tên NNT</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Địa chỉ</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Số điện thoại</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Thư điện tử</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Cơ quan thuế</strong>
										</td>
										<td style="height:30px;">
											<strong class="tb_strong">Bộ phận liên hệ</strong>
										</td>
									</tr>
									<xsl:for-each select="$BKE_TBAO_DTL/TBAO">
										<tr>
											<td align="center">
												<span class="ttnt_27" id="stt">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="MST !=''">
														<xsl:value-of select="MST" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="TEN_NNT !=''">
														<xsl:value-of select="TEN_NNT" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="DIACHI_NNT !=''">
														<xsl:value-of select="DIACHI_NNT" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="PHONE_NNT !=''">
														<xsl:value-of select="PHONE_NNT" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="EMAIL_NNT !=''">
														<xsl:value-of select="EMAIL_NNT" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="$BKE_TBAO_HDR/TEN_CQT !=''">
														<xsl:value-of select="$BKE_TBAO_HDR/TEN_CQT" />
													</xsl:if>
												</span>
											</td>
											<td style="height:23px;text-align: left;">
												<span class="contenms9">
													<xsl:if test="$BKE_TBAO_HDR/BO_PHAN_LHE !=''">
														<xsl:value-of select="$BKE_TBAO_HDR/BO_PHAN_LHE" />
													</xsl:if>
												</span>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</div>
						<div style="clear: both;">&#160;</div>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>