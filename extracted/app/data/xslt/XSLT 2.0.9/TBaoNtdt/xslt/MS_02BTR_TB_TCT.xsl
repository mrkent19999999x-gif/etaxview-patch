<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="THONGBAO">
			<xsl:variable name="THONGBAO" select="." />
			<xsl:variable name="SO_THONGBAO" select="./NDUNG_TBAO/SO_THONGBAO" />
			<xsl:variable name="TEN_THONGBAO" select="./NDUNG_TBAO/TEN_THONGBAO" />
			<xsl:variable name="NGAY_THONGBAO" select="./NDUNG_TBAO/NGAY_THONGBAO" />
			<xsl:variable name="NGAY_TIEPNHAN" select="./NDUNG_TBAO/NGAY_TIEPNHAN" />			
			<xsl:variable name="TEN_NNOP" select="./NDUNG_TBAO/TEN_NNOP" />
			<xsl:variable name="MST_NNOP" select="./NDUNG_TBAO/MST_NNOP" />
			<xsl:variable name="TEN_DLT" select="./NDUNG_TBAO/TEN_DLT" />
			<xsl:variable name="MST_DLT" select="./NDUNG_TBAO/MST_DLT" />
			<xsl:variable name="TEN_CQT" select="./NDUNG_TBAO/TEN_CQT" />
			<xsl:variable name="TTHAI_XNHAN" select="./NDUNG_TBAO/TTHAI_XNHAN" />
			<xsl:variable name="MA_LOI" select="./NDUNG_TBAO/MA_LOI" />
			<xsl:variable name="MO_TA_LOI" select="./NDUNG_TBAO/MO_TA_LOI" />
			<xsl:variable name="MA_THAMCHIEU" select="./NDUNG_TBAO/MA_THAMCHIEU" />
			<xsl:variable name="DIACHICOQUANTHUE" select="./DIACHICOQUANTHUE" />
			<xsl:variable name="LOAI_VB" select="./NDUNG_TBAO/LOAI_VB" />
			<xsl:variable name="NGAY_TRA_KQUA" select="./NDUNG_TBAO/NGAY_TRA_KQUA" />
			<xsl:variable name="TLIEU_DINHKEM" select="./NDUNG_TBAO/TLIEU_DINHKEM" />
			<xsl:variable name="URL" select="./URL" />
			<xsl:variable name="MA_HSO_DVC" select="./maHoSoDvc" />

			<div style="margin: auto; position: relative; width: 100%;">
				<p
					style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">&#160;</p>
				<div align="center"
					style="border: 1px solid; float: right; height: 45px; padding: 10px; position: relative; top: -14px; width: 250px;">
					<span
						style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						Mẫu số:
						<b>01-2/TB-TĐT</b>
						<br />
						(
						<span
							style="font-style: italic; font-size: 12px; font-family: Times New Roman;">
							Ban hành kèm theo Thông tư số 19/2021/TT-
							<br />
							BTC ngày 18/3/2021 của Bộ Tài chính
						</span>
						)
					</span>					
				</div>
				<table cellpadding="0" cellspacing="0"
					style="width: 100%; text-align: center;">
					<tbody>
						<tr style="height: 22pt; text-align: center;">
							<td
								style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; text-align: center; width: 45%">
								<span
									style="font-size: 13px; font-family: Times New Roman; display: block">BỘ TÀI CHÍNH</span>
							</td>
							<td
								style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align: center;  width: 55%">
								<span
									style="font-size: 13px; font-family: Times New Roman; font-weight: bold">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
							</td>
						</tr>
						<tr style="height: 22pt;">
							<td
								style="padding: 0px; border-style: solid; border-color: #000000; border-width: 0pt; text-align: center;">
								<span
									style="font-size: 14px; font-family: Times New Roman; font-weight: bold">
									CỤC THUẾ
								</span>
								<hr
									style="margin-top: -8px; border-width: 1px thin; width: 105px; margin:auto;" />
							</td>
							<td style="padding: 0px; text-align: center;">
								<span
									style="font-size: 14px; font-family: Times New Roman; font-weight: bold">Độc lập - Tự do - Hạnh phúc</span>
								<hr
									style="border-width: 1px thin; margin-top: 8px; width: 165px; margin:auto;" />
							</td>
						</tr>
						<tr style="height: 27pt; line-height: 40px;">
							<td
								style="border-style: solid; border-color: #000000; border-width: 0pt;">
								<span style="font-size: 13px; font-family: Times New Roman; ">
									Số:
									<xsl:if test="$SO_THONGBAO !=''">
										<span>
											<xsl:value-of select="$SO_THONGBAO" />
											/TB-TĐT
										</span>
									</xsl:if>
								</span>
							</td>
							<td
								style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align:center!important;vertical-align:middle !important;">
								<span
									style="font-size: 13px; font-family: Times New Roman; font-style: italic;">
									Hà Nội,&#160;
									<xsl:if test="$NGAY_THONGBAO !=''">
										ngày <xsl:value-of select='substring($NGAY_THONGBAO,1,2)' /> 
				tháng <xsl:value-of select='substring($NGAY_THONGBAO,4,2)' /> năm <xsl:value-of select='substring($NGAY_THONGBAO,7,4)' />.
									</xsl:if>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span style="font-size: 15px; font-family: Times New Roman; font-weight: bold;">THÔNG BÁO</span>
				</p>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span style="font-size: 15px; font-family: Times New Roman; font-weight: bold;">
						<xsl:value-of select="$TEN_THONGBAO" />
					</span>
				</p>
				<p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt; text-align: center">&#160;</p>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;<br/>
						&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT- BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.<br/>
					</span>
				</p>
				<xsl:if test="$TTHAI_XNHAN ='Y'">
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Căn cứ hồ sơ đề nghị bù trừ khoản nộp thừa của ông/bà 
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if>
						<xsl:if test="$MST_DLT !=''">
							do <xsl:value-of select="$TEN_DLT" />, <xsl:value-of select="$MST_DLT" />
						</xsl:if>
 						gửi tới
 						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if>
						đã được Cổng thông tin điện tử của Cục Thuế thông báo tiếp nhận vào lúc
						<xsl:if test="$NGAY_THONGBAO !=''">
						<xsl:value-of select='substring($NGAY_TIEPNHAN,12,2)' /> giờ <xsl:value-of select='substring($NGAY_TIEPNHAN,15,2)' /> 
				phút <xsl:value-of select='substring($NGAY_TIEPNHAN,18,2)' /> giây, ngày <xsl:value-of select='substring($NGAY_TIEPNHAN,1,2)' /> 
				tháng <xsl:value-of select='substring($NGAY_TIEPNHAN,4,2)' /> năm <xsl:value-of select='substring($NGAY_TIEPNHAN,7,4)' />
						</xsl:if>, mã giao dịch điện tử
						<xsl:if test="$MA_THAMCHIEU !=''">
							<xsl:value-of select="$MA_THAMCHIEU" />
						</xsl:if>.
						Cơ quan thuế thông báo về việc chấp nhận hồ sơ đề nghị bù trừ khoản nộp thừa của ông/bà 
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if>
						<xsl:if test="$MST_DLT !=''">
							do <xsl:value-of select="$TEN_DLT" />, <xsl:value-of select="$MST_DLT" />
						</xsl:if>
						gửi tới
						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if>, cụ thể như sau:
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Hồ sơ đề nghị bù trừ khoản nộp thừa của người nộp thuế được cơ quan thuế chấp nhận vào lúc
						<xsl:if test="$NGAY_THONGBAO !=''">
						
						 <xsl:value-of select='substring($NGAY_THONGBAO,12,2)' /> giờ <xsl:value-of select='substring($NGAY_THONGBAO,15,2)' /> 
				phút <xsl:value-of select='substring($NGAY_THONGBAO,18,2)' /> giây,	ngày <xsl:value-of select='substring($NGAY_THONGBAO,1,2)' /> 
				tháng <xsl:value-of select='substring($NGAY_THONGBAO,4,2)' /> năm <xsl:value-of select='substring($NGAY_THONGBAO,7,4)' />.
						</xsl:if>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Thời gian hẹn trả kết quả giải quyết:
						<xsl:if test="$LOAI_VB !='03'">
							ngày <xsl:value-of select="$NGAY_TRA_KQUA" /> kể từ ngày tiếp nhận văn bản đề nghị tra soát.
						</xsl:if>
						<xsl:if test="$LOAI_VB ='03'">
							ngày <xsl:value-of select="$NGAY_TRA_KQUA" /> kể từ ngày tiếp nhận văn bản đề nghị bù trừ khoản nộp thừa.
						</xsl:if>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Trường hợp hồ sơ cần giải trình, bổ sung thông tin, tài liệu, cơ quan thuế sẽ có thông báo gửi người nộp thuế.
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Cơ quan thuế sẽ thực hiện trả kết quả giải quyết hồ sơ đề nghị bù trừ khoản nộp thừa cho người nộp thuế qua Hệ thống 
						<xsl:if test="$URL =''">
							Thuế điện tử eTax (<b><a style="color:#666;" href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a></b>).
						</xsl:if>
						<xsl:if test="$URL !=''">
							Thông tin giải quyết Thủ tục hành chính (<b><a style="color:#666;" href="{$URL}">
								<xsl:value-of select="$URL"/>
							</a></b>
						</xsl:if>).
					</p>
				</xsl:if>
				<xsl:if test="$TTHAI_XNHAN ='N'">
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Căn cứ hồ sơ đề nghị bù trừ khoản nộp thừa của ông/bà 
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if>
						<xsl:if test="$MST_DLT !=''">
							do <xsl:value-of select="$TEN_DLT" />, <xsl:value-of select="$MST_DLT" />
						</xsl:if>
 						gửi tới
 						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if>
						đã được Cổng thông tin điện tử của Cục Thuế thông báo tiếp nhận vào lúc
						<xsl:if test="$NGAY_THONGBAO !=''">
							Ngày <xsl:value-of select='substring($NGAY_THONGBAO,1,2)' /> 
				tháng <xsl:value-of select='substring($NGAY_THONGBAO,4,2)' /> năm <xsl:value-of select='substring($NGAY_THONGBAO,7,4)' />.
						</xsl:if>, mã giao dịch điện tử
						<xsl:if test="$MA_THAMCHIEU !=''">
							<xsl:value-of select="$MA_THAMCHIEU" />
						</xsl:if>.
						Cơ quan thuế thông báo về việc không chấp nhận hồ sơ đề nghị bù trừ khoản nộp thừa của ông/bà 
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if>
						<xsl:if test="$MST_DLT !=''">
							do <xsl:value-of select="$TEN_DLT" />, <xsl:value-of select="$MST_DLT" />
						</xsl:if>
						gửi tới
						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if>, cụ thể như sau:
					</p>
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;- Tên hồ sơ:  
						<xsl:if test="$TLIEU_DINHKEM !=''">
							Hồ sơ đề nghị bù trừ khoản nộp thừa, gồm: Văn bản đề nghị xử lý số tiền thuế, tiền chậm nộp, tiền phạt nộp thừa, <xsl:value-of select="$TLIEU_DINHKEM" />
						</xsl:if>
						<xsl:if test="$TLIEU_DINHKEM =''">
							Hồ sơ đề nghị bù trừ khoản nộp thừa, gồm: Văn bản đề nghị xử lý số tiền thuế, tiền chậm nộp, tiền phạt nộp thừa.
						</xsl:if><br/>
					</p>
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;- Lý do không chấp nhận cụ thể như sau:
					</p> 
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<table cellpadding="0" cellspacing="0" width="800px"
							style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; margin-top: 10px">
							<tbody>
								<tr
									style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
									<td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span style="align: center; font-size: 15px; font-family: Times New Roman;"><b>STT</b></span>
									</td>
									<td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span style="align: center; font-size: 15px; font-family: Times New Roman;"><b>Thông tin có sai sót</b></span>
									</td>
									<td style="width: 100pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span style="align: center; font-size: 15px; font-family: Times New Roman;"><b>Hướng dẫn xử lý</b></span>
									</td>
									<td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span style="align: center; font-size: 15px; font-family: Times New Roman;"><b>Ghi chú</b></span>
									</td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">(1)</span>
									</td>
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">(2)</span>
									</td>
									<td
										style="width: 100pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">(3)</span>
									</td>
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">(4)</span>
									</td>
								</tr>
								<xsl:for-each select="$THONGBAO/NDUNG_TBAO/NOIDUNG_XNHAN/ROW_CTIET">
									<tr style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
										<td style="height:23px;text-align: center;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
											<span style="font-size: 15px; font-family: Times New Roman;" id="stt"></span>
											<span style="font-size: 15px; font-family: Times New Roman;">
												<xsl:number format="1" />
											</span>
										</td>
										<td
											style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
											<span style="font-size: 15px; font-family: Times New Roman;">
												<xsl:if test="MA_LOI !=''">
													<xsl:value-of select="MA_LOI" /> - <xsl:value-of select="MO_TA_LOI" />
												</xsl:if>
											</span>
										</td>
										<td
											style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;"><xsl:value-of select="HUONGDAN_XULY" /></td>
										<td
											style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">&#160;</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</p>
				</xsl:if>
			</div>
			<div style="float: left; margin: auto; position: relative; width: 100%;">
				<xsl:if test="$TTHAI_XNHAN ='N'">
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
							&#160;&#160;&#160;&#160;Đề nghị ông/bà 
							<xsl:if test="$TEN_NNOP !=''">
								<xsl:value-of select="$TEN_NNOP" />
							</xsl:if>
							điều chỉnh và gửi lại hồ sơ đề nghị bù trừ khoản nộp thừa theo hướng dẫn nêu trên để được giải quyết hồ sơ thuế theo quy định.
						</span>
					</p>
				</xsl:if>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng truy cập theo đường dẫn <b>
						<xsl:if test="$URL =''">
							<a style="color:#666;" href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a>
						</xsl:if>
						<xsl:if test="$URL !=''">
							<a style="color:#666;" href="{$URL}">
								<xsl:value-of select="$URL"/>
							</a>
						</xsl:if>
						</b>
						hoặc liên hệ với
						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if> để được hỗ trợ.
					</span>
				</p>
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span
						style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để ông/bà 
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if> biết, thực hiện./.
					</span>
				</p>
				<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Mã dịch vụ công: 
						<xsl:if test="$MA_HSO_DVC !=''">
		                  	<xsl:value-of select="$MA_HSO_DVC"/>
		                </xsl:if>
					</span>
				</p>
			</div>
			<br/>
			<div style="float: left; margin: auto; position: relative; width: 100%;">
				<table>
					<tr>
						<td width="40%">
							<br/>
							<span style="font-size: 13px; font-family: Times New Roman; font-weight: bold;"><i>Nơi nhận:</i></span>
						</td>
						<td colspan="1" width="20%"></td>
						<td width="40%" class="align-c">
							<br/>
							<span style="font-size: 15px; font-family: Times New Roman; font-weight: bold;">CỤC THUẾ</span>
						</td>
					</tr>
					<tr>
						<td width="40%">
							<span style="font-size: 13px; font-family: Times New Roman;">
							- <xsl:value-of select="$TEN_NNOP" />;<br/><br/>
							- Lưu: Cổng thông tin điện tử của Cục Thuế.
							</span>
						</td>
						<td colspan="1" width="20%"></td>
						<td width="40%" class="align-c"></td>
					</tr>
				</table>
			</div>
			<div style="clear: both;">&#160;</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
