<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="THONGBAO">
			<xsl:variable name="THONGBAO" select="." />
			<xsl:variable name="SO_THONGBAO" select="./NDUNG_TBAO/SO_THONGBAO" />
			<xsl:variable name="NGAY_THONGBAO" select="./NDUNG_TBAO/NGAY_THONGBAO" />
			<xsl:variable name="TEN_NNOP" select="./NDUNG_TBAO/TEN_NNOP" />
			<xsl:variable name="MST_NNOP" select="./NDUNG_TBAO/MST_NNOP" />
			<xsl:variable name="TEN_CQT" select="./NDUNG_TBAO/TEN_CQT" />
			<xsl:variable name="TTHAI_XNHAN" select="./NDUNG_TBAO/TTHAI_XNHAN" />
			<xsl:variable name="LDO_TCHOI" select="./NDUNG_TBAO/LDO_TCHOI" />
			<xsl:variable name="MA_THAMCHIEU" select="./NDUNG_TBAO/MA_THAMCHIEU" />
			<xsl:variable name="DIACHICOQUANTHUE" select="./DIACHICOQUANTHUE" />

			<div style="margin: auto; position: relative; width: 100%;">
				<p
					style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">&#160;</p>
				<div align="center"
					style="border: 1px solid; float: right; height: 45px; padding: 10px; position: relative; top: -14px; width: 250px;">
					<span
						style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						Mẫu số:
						<b>01-1/TB-TĐT</b>
						<br />
						(
						<span
							style="font-style: italic; font-size: 12px; font-family: Times New Roman;">
							Ban hành kèm theo Thông tư số 
							66/2019/TT-BTC ngày 20/9/2019 
							của Bộ Tài chính
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
						            <i>ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/> </i>
				                    </xsl:if>	
					           <xsl:if test="$NGAY_THONGBAO =''">			
						           <i>ngày ... tháng ... năm ... </i>
				               </xsl:if>	
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span
						style="font-size: 15px; font-family: Times New Roman; font-weight: bold;">THÔNG BÁO</span>
				</p>
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center">
					<span
						style="font-size: 15px; font-family: Times New Roman; font-weight: bold;">
						Về việc tiếp nhận hồ sơ xác nhận số thuế đã nộp ngân sách
					</span>
				</p>
				<p
					style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt; text-align: center">&#160;</p>
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span style="font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Kính gửi:
					</span>
					<span
						style="font-size: 15px; font-family: Times New Roman; font-style: italic">
						<xsl:if test="$TEN_NNOP !=''">
							<xsl:value-of select="$TEN_NNOP" />
						</xsl:if>
					</span>
				</p>
				<p style="font-size: 15px; margin-left: 77px; font-style: italic">
					Mã số thuế của NNT:
					<span
						style="font-size: 15px; font-family: Times New Roman; font-style: italic">
						<xsl:if test="$MST_NNOP !=''">
							<xsl:value-of select="$MST_NNOP" />
						</xsl:if>
					</span>
				</p>
				<xsl:if test="$TTHAI_XNHAN ='Y'">
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Hồ sơ xác nhận số thuế đã nộp ngân sách
						điện tử đã được cơ quan thuế tiếp nhận vào lúc
						<xsl:if test="$NGAY_THONGBAO !=''">
							<xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>
						</xsl:if>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<span style="font-size: 15px; font-family: Times New Roman; ">&#160;&#160;&#160;&#160;Cơ quan thuế sẽ trả Thông báo xác nhận hoặc không xác nhận, lý do không xác nhận trong thời hạn (3 ngày làm việc với đề nghị xác nhận số nộp ngân sách) kể từ ngày cơ quan thuế tiếp nhận hồ sơ đề nghị của người nộp thuế.</span>
					</p>
				</xsl:if>
				<xsl:if test="$TTHAI_XNHAN ='N'">
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;font-size: 15px; font-family: Times New Roman; ">
						&#160;&#160;&#160;&#160;Căn cứ hồ sơ xác nhận số thuế đã nộp ngân
						sách của NNT gửi tới cơ quan thuế lúc
						<xsl:if test="$NGAY_THONGBAO !=''">
							<xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>
						</xsl:if>
						<span style="font-size: 15px; font-family: Times New Roman; ">&#160;Cơ quan thuế thông báo về việc không tiếp
							nhận hồ sơ xác nhận số thuế đã nộp ngân sách của NNT, cụ thể như
							sau:</span>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<span style="font-size: 15px; font-family: Times New Roman; ">&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử:
							Hồ sơ xác nhận số thuế đã nộp ngân sách</span>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<span style="font-size: 15px; font-family: Times New Roman; ">
							&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử:
							<xsl:if test="$MA_THAMCHIEU !=''">
								<xsl:value-of select="$MA_THAMCHIEU" />
							</xsl:if>
						</span>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<span style="font-size: 15px; font-family: Times New Roman; ">&#160;&#160;&#160;&#160;+ Lý do không tiếp nhận:</span>
					</p>
					<p
						style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
						<table cellpadding="0" cellspacing="0" width="800px"
							style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; float: left; margin-top: 10px">
							<tbody>
								<tr
									style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">STT</span>
									</td>
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">Mô tả lỗi</span>
									</td>
									<td
										style="width: 100pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">Hướng dẫn xử lý</span>
									</td>
									<td
										style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
										<span
											style="align: center; font-size: 15px; font-family: Times New Roman;">Ghi chú</span>
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
								<tr
									style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
									<td
										style="height:23px;text-align: center;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
										<span style="font-size: 15px; font-family: Times New Roman;">1</span>
									</td>
									<td
										style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
										<span style="font-size: 15px; font-family: Times New Roman;">
											<xsl:if test="$LDO_TCHOI !=''">
												<xsl:value-of select="$LDO_TCHOI" />
											</xsl:if>
										</span>
									</td>
									<td
										style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">&#160;</td>
									<td
										style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">&#160;</td>
								</tr>
							</tbody>
						</table>
						<p>&#160;</p>
						<p
							style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
							<span style="font-size: 15px; font-family: Times New Roman; ">&#160;&#160;&#160;&#160;Đề nghị NNT điều chỉnh và gửi
								lại hồ sơ xác nhận số thuế đã nộp ngân sách theo hướng dẫn nêu trên để
								được ghi nhận nghĩa vụ nộp hồ sơ thuế theo quy định.</span>
						</p>
					</p>
				</xsl:if>
			</div>
			<div style="float: left; margin: auto; position: relative; width: 100%;">
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span
						style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Trường hợp NNT cần biết thêm thông tin chi
						tiết, xin vui lòng truy cập theo đường dẫn
						<b>
							<a style="color:#666;" href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a>
						</b>
						hoặc liên hệ với
						<xsl:if test="$TEN_CQT !=''">
							<xsl:value-of select="$TEN_CQT" />
						</xsl:if>
						theo địa chỉ
						<xsl:if test="$DIACHICOQUANTHUE !=''">
							<xsl:value-of select="$DIACHICOQUANTHUE" />
						</xsl:if>
						để được hỗ trợ.
					</span>
				</p>
				<p
					style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
					<span
						style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
						&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp
						thuế biết và thực hiện./.</span>
				</p>
			</div>
			<div style="clear: both;">&#160;</div>
			 <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		
<div id="sigDiv"></div>
</td>
</tr>
</table>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
