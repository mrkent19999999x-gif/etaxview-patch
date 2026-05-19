<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="THONG_BAO/TBAO_TK_GIAODICH">
			<xsl:variable name="TBAO_TK_GIAODICH" select="." />
			<xsl:variable name="LOAI_TBAO" select="./LH_TBAO" />
			<xsl:variable name="NGAY_TBAO" select="./NGAY_TBAO" />
			<div style="font-size:15px; font-family: Times New Roman; margin: auto; position: relative; width: 100%;">
				<p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">&#160;</p>
				<div align="center" style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 285px;">
					<span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					Mẫu số: <b>03/TB-TĐT</b><br/>
                    (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban hành kèm theo Thông tư số 110/2015/TT-BTC
                    ngày 28/07/2015 của Bộ Tài chính</span>)
						<!-- <xsl:if test="MAU_TBAO !=''">
							<span>
								<xsl:value-of select="MAU_TBAO" />
							</span>
						</xsl:if> -->
					</span>
				</div>
				<table cellpadding="0" cellspacing="0" style="width: 100%; text-align: center;">
					<tbody>
						<tr style="height: 22pt; text-align: center;">
							<td style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; text-align: center; width: 45%;">
								<span style="font-size: 13px;font-family: Times New Roman; display: block">BỘ TÀI CHÍNH</span>
							</td>
							<td style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align: center;  width: 55%;">
								<span style="font-size: 13px;font-family: Times New Roman; font-weight: bold">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
							</td>
						</tr>
						<tr style="height: 22pt;">
							<td style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; text-align: center;">
								<span style="font-size: 14px;font-family: Times New Roman; font-weight: bold">
									CỤC THUẾ
								</span>
								<hr style="margin-top: -8px; border-width: 1px thin; width: 105px; margin:auto;" />
							</td>
							<td style="padding: 0px; text-align: center;">
								<span style="font-size: 14px;font-family: Times New Roman; font-weight: bold">Độc lập - Tự do - Hạnh phúc</span>
								<hr style="border-width: 1px thin; margin-top: 8px; width: 165px; margin:auto;" />
							</td>
						</tr>
						<tr style="height: 27pt; line-height: 40px;">
							<td style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt;">
								<span style="font-size: 13px;font-family: Times New Roman;">
									Số:
									<!-- <span style="font-size: 15px;font-family: Times New Roman;">&#160;</span> -->
									<xsl:if test="SO_TBAO !=''">
										<span style="font-size: 13px; font-family: Times New Roman;">
											<xsl:value-of select="SO_TBAO" />
										</span>
									</xsl:if>
									/TB-TĐT
								</span>
							</td>
							<td style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align: center;">
								<!-- <span id="ngaythang11" hidden="true" style="font-size: 13px; font-family: Times New Roman; display: none;">
									<xsl:if test="$NGAY_TBAO !=''">
										<xsl:value-of select="NGAY_TBAO" />
										<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'yyyy')"/></i>
									</xsl:if>
								</span> -->
								<!-- <span style="font-size: 13px; font-family: Times New Roman; font-style: italic" id="ngay_thang">Ngày....tháng.....năm....</span> -->
								<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_TBAO,'yyyy')"/></i>
							</td>
						</tr>
					</tbody>
				</table>
				<p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt; text-align: center">&#160;</p>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span style="font-size: 15px; font-family: Times New Roman; font-weight: bold">THÔNG BÁO</span>
				</p>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span style="font-size: 15px; font-family: Times New Roman; font-weight: bold">
						<xsl:if test="TEN_TBAO !=''">
							<xsl:value-of select="TEN_TBAO" />
						</xsl:if>
					</span>
				</p>
				<!-- <hr style="border-width: 1px thin; margin-top: 8px; width: 150px; margin:auto;" /> -->
				<!-- <p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt; text-align: center">&#160;</p>  -->
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Kính gửi:
					</span>
					<span style="font-size: 15px; font-family: Times New Roman; font-style: italic">
						<xsl:if test="TEN_NNT !=''">
							<xsl:value-of select="TEN_NNT" />
						</xsl:if>
					</span>
				</p>
				<p style="font-size: 15px; font-family: Times New Roman; margin-left: 72px; font-style: italic">
					Mã số thuế:
					<span style="font-size: 15px; font-family: Times New Roman; font-style: italic">
						<xsl:if test="MST !=''">
							<xsl:value-of select="MST" />
						</xsl:if>
					</span>
				</p>
				<p style="font-size: 15px; font-family: Times New Roman; margin-left: 72px; font-style: italic">
					Địa chỉ:
					<span style="font-size: 15px; font-family: Times New Roman; font-style: italic">
						<xsl:if test="DIACHI_NNT !=''">
							<xsl:value-of select="DIACHI_NNT" />
						</xsl:if>
					</span>
				</p>
				<br />
				&#160;&#160;&#160;&#160;Căn cứ hồ sơ
				<xsl:if test="LH_TBAO !=''">
					<xsl:if test="LH_TBAO ='01'">
						đăng ký giao dịch thuế điện tử
					</xsl:if>
					<xsl:if test="LH_TBAO ='02'">
						đăng ký thay đổi, bổ sung thông tin giao dịch thuế điện tử
					</xsl:if>
					<xsl:if test="LH_TBAO ='03'">
						đăng ký ngừng giao dịch thuế điện tử
					</xsl:if>
				</xsl:if>
				<xsl:if test="VAN_ID !=''">
					<xsl:if test="VAN_ID ='00000'">
						qua Cổng thông tin điện tử của Cục Thuế
					</xsl:if>
					qua tổ chức cung cấp dịch vụ T-VAN
				</xsl:if>
				qua Cổng thông tin điện tử của Cục Thuế của người nộp thuế.
				<br />
				<br />

				&#160;&#160;&#160;&#160;Mã giao dịch điện tử:
				<xsl:if test="MA_GIAODICH_DT !=''">
					<xsl:value-of select="MA_GIAODICH_DT" />;
				</xsl:if>
				<br />
				<br />
				&#160;&#160;&#160;&#160;Xét điều kiện thực hiện và cam kết của người nộp thuế.
				<br />
				<!-- Vào
				<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt" id="hpgiayngaythang">
					<xsl:if test="NGAY_TBAO !=''">
						<xsl:value-of select="NGAY_TBAO" />
					</xsl:if>
				</span>
				<br /> -->
				<xsl:for-each select="./TTIN_XNHAN">
					<xsl:if test="TTHAI_XNHAN !=''">
						<xsl:if test="TTHAI_XNHAN ='Y'">

							<xsl:if test="$LOAI_TBAO !=''">
								<xsl:if test="$LOAI_TBAO ='01'">
									<!-- cap tai khoan -->
									<xsl:for-each select="$TBAO_TK_GIAODICH/TTIN_TK_GIAODICH">
										<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											&#160;&#160;&#160;&#160;Cơ quan thuế chấp nhận đề nghị về việc đăng ký giao dịch thuế điện tử qua Cổng thông tin điện tử
											của Cục Thuế của người nộp thuế kể từ
											<xsl:for-each select="$TBAO_TK_GIAODICH">
												<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt" id="hpgiayngaythang">
													<xsl:if test="NGAY_TBAO !=''">
													<xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>
													
				<!--	<xsl:value-of select="NGAY_TBAO" /> -->
				
													</xsl:if>
												</span>
											</xsl:for-each>, cụ thể như sau:
											</span>
										</p>
										<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											&#160;&#160;&#160;
											<span style="font-size: 15px; font-family: Times New Roman; font-style: italic" id="username">Mã tài khoản:&#160;</span>
											<span style="font-size: 15px; font-family: Times New Roman; ">
												<xsl:if test="MA_TAI_KHOAN !=''">
													<xsl:value-of select="MA_TAI_KHOAN" />
												</xsl:if>
											</span>
										</p>
										<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											&#160;&#160;&#160;
											<span style="font-size: 15px; font-family: Times New Roman; font-style: italic" id="username">Mật khẩu:&#160;</span>
											<span style="font-size: 15px; font-family: Times New Roman; ">
												<xsl:if test="MAT_KHAU !=''">
													<xsl:value-of select="MAT_KHAU" />
												</xsl:if>
											</span>
										</p>
									</xsl:for-each>
								</xsl:if>
							</xsl:if>

							<xsl:if test="$LOAI_TBAO !=''">
								<xsl:if test="$LOAI_TBAO ='03'">

									<!-- dang ky ngung -->
									<xsl:for-each
										select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_DK_NGUNG">
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;Cơ quan thuế chấp nhận đề nghị về việc đăng ký ngừng giao dịch thuế điện tử qua 
												Cổng thông tin điện tử của Cục Thuế kể từ <xsl:for-each select="$TBAO_TK_GIAODICH">
												<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt" id="hpgiayngaythang">
													<xsl:if test="NGAY_TBAO !=''">
													<xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>
												<!--		<xsl:value-of select="NGAY_TBAO" />  -->
													</xsl:if>
												</span>
											</xsl:for-each>, cụ thể như sau:
											</span>
										</p>
										<xsl:for-each
											select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_DK_NGUNG/DV_NGUNG">
											<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
													&#160;&#160;&#160;&#160;1. Thông tin dịch vụ đăng ký ngừng:</span>
											    <table align="center" style="margin: auto; width: 100%; line-height:20px; text-align:center; border-left:#d1d1d1 1px solid; border-top:#d1d1d1 1px solid;"
											    	border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															STT
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Thủ tục thuế điện tử đăng ký ngừng sử dụng
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Lý do ngừng
														</td>
													</tr>

													<xsl:for-each
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_DK_NGUNG/DV_NGUNG/CHI_TIET">
														<tr>
															<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STT !=''">
																	<xsl:value-of select="STT" />
																</xsl:if>
															</td>
															<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="SERVICE_NAME !=''">
																	<xsl:value-of select="SERVICE_NAME" />
																</xsl:if>
															</td>
															<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="LY_DO_NGUNG !=''">
																	<xsl:value-of select="LY_DO_NGUNG" />
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</p>
										</xsl:for-each>
										<xsl:for-each
											select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_DK_NGUNG/NGAN_HANG_NGUNG">
											<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
													&#160;&#160;&#160;&#160;1. Thông tin ngân hàng đăng ký ngừng:</span>
												<table align="center" style="margin: auto; width: 100%; line-height:20px; text-align:center; border-left:#d1d1d1 1px solid; border-top:#d1d1d1 1px solid;"
													border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															STT
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Ngân hàng đăng ký ngừng sử dụng
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Lý do ngừng
														</td>
													</tr>

													<xsl:for-each
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_DK_NGUNG/NGAN_HANG_NGUNG/CHI_TIET">
														<tr>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
																		<xsl:value-of select="STT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="TEN_NH !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
																		<xsl:value-of select="TEN_NH" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="LY_DO_NGUNG !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
																		<xsl:value-of select="LY_DO_NGUNG" /></span>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</p>
										</xsl:for-each>

									</xsl:for-each>
								</xsl:if>
							</xsl:if>
							<!-- thong tin dang ky -->
							<xsl:if test="$LOAI_TBAO !=''">
								<xsl:if test="$LOAI_TBAO ='02'">
									<xsl:for-each select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY">
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;Cơ quan thuế chấp nhận đề nghị về việc đăng ký thay đổi,
												bổ sung thông tin giao dịch thuế điện tử qua Cổng thông tin điện tử của Cục Thuế của người nộp thuế kể từ
											<xsl:for-each select="$TBAO_TK_GIAODICH">
												<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt" id="hpgiayngaythang">
													<xsl:if test="NGAY_TBAO !=''">
													<xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>
													</xsl:if>
												</span>
											</xsl:for-each>, cụ thể như sau:
											</span>
										</p>
										<!-- <span style="font-size: 15px">
											<strong style="align: center;">I. THÔNG TIN NGƯỜI NỘP THUẾ</strong>
										</span> -->
										<!-- <p style="font-size: 15px; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												1. Thời gian đề nghị được áp dụng từ:&#160;</span>
											<xsl:if test="NGAY_THUC_HIEN !=''">
												<xsl:value-of select="NGAY_THUC_HIEN" />
											</xsl:if>
										</p> -->
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;1. Thông tin đăng ký chứng thư số sử dụng giao dịch thuế điện tử:</span>
											<xsl:for-each
												select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_CKS">
												<table align="center" style="margin: auto; width: 100%;" border="0" cellspacing="0" cellpadding="0" class="md_list2">
													<tr>
														<td rowspan="2" style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-left:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
															STT
														</td>
														<td rowspan="2" style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
															Tên tổ chức/cơ quan chứng thực/cấp/công nhận chữ ký số
														</td>
														<td rowspan="2" style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
															Số sê-ri chứng thư số
														</td>
														<td colspan="2" style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
															Thời hạn sử dụng chứng thư số
														</td>
														<td rowspan="2" style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
															Thủ tục thuế điện tử đăng ký sử dụng
														</td>
													</tr>
													<tr>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Từ ngày
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															đến ngày
														</td>
													</tr>

													<xsl:for-each
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_CKS/DS_DICHVU">
														<tr>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;border-left:#d1d1d1 1px solid;border-top:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="STT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="ISSUER_CERT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="ISSUER_CERT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="SERIAL_CERT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="SERIAL_CERT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="CERT_VALIDATED_FROM !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center;"><xsl:value-of select="CERT_VALIDATED_FROM" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="CERT_VALIDATED_TO !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="CERT_VALIDATED_TO" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="SERVICE_NAME !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="SERVICE_NAME" /></span>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</xsl:for-each>
										</p>
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;2. Thông tin đăng ký tài khoản thực hiện thủ
												tục nộp thuế điện tử:</span>
											<xsl:for-each
												select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_NGANHANG">
												<table align="center" style="margin: auto; width: 100%;" border="0" cellspacing="0" cellpadding="0" class="md_list2">
													<tr>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															STT
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Số tài khoản
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Tên tài khoản
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Ngân hàng
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Số sê-ri chứng thư số
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Tên tổ chức/cơ quan chứng thực/cấp/công nhận chữ ký số
														</td>
													</tr>

													<xsl:for-each
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_NGANHANG/DS_NGANHANG">
														<tr>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="STT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STK_NH !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="STK_NH" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="TEN_TK_NH !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="TEN_TK_NH" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="TEN_NH !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="TEN_NH" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="SERIAL_CERT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="SERIAL_CERT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="ISSUER_CERT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="ISSUER_CERT" /></span>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</xsl:for-each>
										</p>
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;3. Địa chỉ thư điện tử:</span>
											<br />
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;3.1. Địa chỉ thư điện tử chính thức nhận tất cả các thông
												báo trong quá trình thực hiện giao dịch điện tử với cơ quan
												thuế:
												<xsl:if
													test="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/EMAIL_CHINH !=''">
													<xsl:value-of
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/EMAIL_CHINH" />
												</xsl:if>
											</span>
											<br />
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;3.2. Địa chỉ thư điện tử bổ sung theo mỗi
												thủ
												tục hành chính thuế:
											</span>
											<br />
											<xsl:for-each
												select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_EMAIL_PHU">
												<table align="center" style="margin: auto; width: 100%; line-height:20px; text-align:center; border-left:#d1d1d1 1px solid; border-top:#d1d1d1 1px solid;"
													border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															STT
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Địa chỉ thư điện tử
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Họ tên người sử dụng
														</td>
														<td style="font-size: 15px; font-family: Times New Roman; padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
															Thủ tục thuế điện tử đăng ký sử dụng
														</td>
													</tr>

													<xsl:for-each
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/TTIN_EMAIL_PHU/DS_EMAIL">
														<tr>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid; text-align: center;">
																<xsl:if test="STT !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="STT" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="EMAIL !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="EMAIL" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="TEN_NSD !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="TEN_NSD" /></span>
																</xsl:if>
															</td>
															<td style="padding: 3px 5px 3px 5px;  border-right:#d1d1d1 1px solid; border-bottom:#d1d1d1 1px solid;" align="left">
																<xsl:if test="SERVICE_NAME !=''">
																	<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt"><xsl:value-of select="SERVICE_NAME" /></span>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</xsl:for-each>
										</p>
										<p style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
											<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												&#160;&#160;&#160;&#160;4. Số điện thoại:
												<xsl:if test="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/SDT !=''">
													<xsl:value-of
														select="$TBAO_TK_GIAODICH/DKY_DICHVU/TTIN_DANGKY/SDT" />
												</xsl:if>
											</span>
										</p>

										<!-- <span style="font-size: 15px">
											<strong style="align: center;">II. XÁC NHẬN CỦA NGƯỜI NỘP THUẾ</strong>
											<p style="font-size: 15px; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
												<span style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
													Chúng tôi cam kết nhận các phản hồi, thông
													báo của cơ quan thuế bằng phương thức điện tử. Chúng tôi
													chịu
													trách nhiệm về tính hợp pháp, đầy đủ, chính xác với các
													thông
													tin đăng ký nêu trên./.</span>
											</p>
										</span> -->

									</xsl:for-each>
								</xsl:if>
							</xsl:if>
						</xsl:if>
						<xsl:if test="TTHAI_XNHAN ='N'">
							Cơ quan thuế không chấp nhận đề nghị về việc
							<xsl:if test="LH_TBAO !=''">
								<xsl:if test="LH_TBAO ='01'">
									đăng ký giao dịch thuế điện tử
								</xsl:if>
								<xsl:if test="LH_TBAO ='02'">
									đăng ký thay đổi, bổ sung thông tin giao dịch thuế điện tử
								</xsl:if>
								<xsl:if test="LH_TBAO ='03'">
									đăng ký ngừng giao dịch thuế điện tử
								</xsl:if>
							</xsl:if>
							của người nộp thuế.
							<br />
							<xsl:if test="LY_DO_TU_CHOI !=''">
								Lý do:
								<xsl:value-of select="LY_DO_TU_CHOI" />
								.
							</xsl:if>

						</xsl:if>
					</xsl:if>
				</xsl:for-each>

			</div>
			<div style="float: left; margin: auto; position: relative; width: 100%;">
				<!-- <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					    Người nộp thuế cần biết thêm chi tiết, xin vui
						lòng truy cập theo đường dẫn: http://www.nhantokhai.gdt.gov.vn
						hoặc gọi điện tới số hotline để được hỗ trợ trực tiếp.</span>
				</p> -->
				<!-- <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">  -->
				<div>&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm chi tiết, xin vui lòng truy cập theo đường dẫn: http://thuedientu.gdt.gov.vn hoặc gọi điện tới số hotline: để được hỗ trợ trực tiếp.</div><br/>
				
					<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế được biết, thực hiện./.</span>

			</div>
			<div style="width: 700px"></div>
			<div style="clear: both;">&#160;</div>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>
