<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="XACNHAN_THUE/NOIDUNG_XN">
			<xsl:variable name="NOIDUNG_XN" select="." />
			<xsl:variable name="TEN_NNT" select="./NOIDUNG_XACNHAN_HDR/TEN_NNT" />
			<xsl:variable name="NGAY_NOP" select="./NOIDUNG_XACNHAN_HDR/NGAY_NOP" />
			<xsl:variable name="LOAI_XN" select="./NOIDUNG_XACNHAN_HDR/LOAI_XN" />
			<xsl:variable name="TEN_CQT" select="./NOIDUNG_XACNHAN_HDR/TEN_CQT" />
			<xsl:variable name="SO_XN" select="./NOIDUNG_XACNHAN_HDR/SO_XN" />
			  
        <div class="header_div">	
            <table class="tb_header">
                <tr>
                    <td style="width: 40%;font-size: 10pt;" class="align-c">  
					<br/>&#160;
					<br/>&#160;
                           <b>
                            <strong>
							CƠ QUAN/CÁ NHÂN ĐỀ NGHỊ: <br/>	
							<xsl:if test="$TEN_NNT !=''">
								<xsl:value-of select="$TEN_NNT" />
							</xsl:if>
						</strong>
                            </b>
                            <br/>								
                            Số: <xsl:if test="$SO_XN !=''">
							<xsl:value-of select="$SO_XN" />
						</xsl:if>
						</td>
					<td style="width: 30%"> &#160;</td>
				<td style="width: 30%" class="align-c">   
					  <div class="bieu_mau_div" style="padding-top: 5px; text-align: center; width: 285px;height: 55px;font-size: 10pt;">
            <div >Mẫu số: <b>
                    C1-10a/NS-TĐT
                </b><br/>
				(Ban hành kèm theo Thông tư số 66/2019/TT-
				<br/>BTC ngày 20/09/2019 của Bộ Tài Chính) 
            </div>
			        </div>	
			   </td>
                </tr>
                <tr>
				<td></td>
				<td></td>
				<td class="align-c" style="top:5px; height:40px;font-size: 10pt;">
				<xsl:if test="$NGAY_NOP !=''">			
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_NOP,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_NOP,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_NOP,'yyyy')"/> </i>
				</xsl:if>	
					<xsl:if test="$NGAY_NOP =''">			
						<i>Ngày ... tháng ... năm ... </i>
				</xsl:if>	
						</td>
				</tr>
				
            </table>
        </div>
            <p style="line-height: 1.0; padding-top: 5pt; direction: ltr; padding-bottom: 0pt; text-align: center; top:5px " >
              <span style=" font-weight: bold ;font-size: 11pt; ">GIẤY ĐỀ NGHỊ XÁC NHẬN SỐ THUẾ ĐÃ NỘP NGÂN SÁCH NHÀ NƯỚC</span>
            </p>
            <p  style=" line-height: 1.0; padding-top: 5pt; direction: ltr; padding-bottom: 0pt; text-align: center "> 
              <span style=" font-weight: bold ;font-size: 10pt; ">Kính gửi:
						<xsl:if test="$TEN_CQT !=''">
							<span>
								<xsl:value-of select="$TEN_CQT" />
							</span>
						</xsl:if>
						<xsl:if test="$TEN_CQT =''">
							............................
						</xsl:if></span>
            </p>
			<div
				style="float: left; font-size: 10pt; line-height: 22px; margin: auto; position: relative; width: 100%;top: 25px;padding-left: 15px;">
				<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_HDR">
					<xsl:variable name="NOIDUNG_XACNHAN_HDR" select="." />
					<div style="margin: auto; position: relative; float: left; width: 100%;">
						<span style="float: left; position: relative;">Tên người nộp thuế:&#160;</span>
						<div
							style="width: 300px; word-wrap: break-word; -ms-word-wrap: break-word; float: left; position: relative;">
							<xsl:if test="TEN_NNT !=''">
								<span
									style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative; text-transform:uppercase;">
									<xsl:value-of select="TEN_NNT" />
								</span>
							</xsl:if>
						</div>
						<span style="left: 400px; position: absolute;">
							Mã số thuế:&#160;
							<xsl:if test="MST_NNT !=''">
								<span
									style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
									<xsl:value-of select="MST_NNT" />
								</span>
							</xsl:if>
						</span>
					</div>
					<p style="line-height: 25px;">
						Đề nghị cơ quan thuế:&#160;
						<xsl:if test="TEN_CQT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TEN_CQT" />
							</span>
						</xsl:if>
					</p>
					<p>
						Xác nhận số tiền đã nộp vào ngân sách nhà nước của:&#160;
						<br />
						<xsl:if test="TEN_NNT !=''">
							<span
								style="padding-left: 20px; color: #2E2E2E; font-size: 12px; position: relative; text-transform:uppercase;">
								<i>
									<xsl:value-of select="TEN_NNT" />
								</i>
							</span>
						</xsl:if>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:&#160;
						<xsl:if test="MST_NNT !=''">
							<span style="color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="MST_NNT" />
							</span>
						</xsl:if>
					</p>
					<p>
						Và các đơn vị phụ thuộc:&#160;
						<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/DVI_PT">
							<xsl:variable name="DVI_PT" select="." />
							<xsl:for-each select="$DVI_PT/ROW">
								<br />
								<xsl:if test="TEN_NPT !=''">
									<xsl:if test="TEN_NPT !=''">
										<span
											style="padding-left: 20px; color: #2E2E2E; font-size: 12px; position: relative; text-transform:uppercase;">
											+
											<i>
												<xsl:value-of select="TEN_NPT" />
											</i>
										</span>
									</xsl:if>
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:&#160;
									<xsl:if test="MST_NPT !=''">
										<span
											style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
											<xsl:value-of select="MST_NPT" />
										</span>
									</xsl:if>
								</xsl:if>
							</xsl:for-each>
						</xsl:for-each>
					</p>
					<p style="line-height: 27px;">
						Các thông tin đề nghị xác nhận:
						<br />
						1. Thời gian nộp tiền vào NSNN (trong năm dương lịch): Từ ngày
						<xsl:value-of select="NOP_TU_NGAY" />
						đến ngày
						<xsl:value-of select="NOP_DEN_NGAY" />
						<br />
						2. Loại thuế (Người nộp thuế chọn xác nhận một trong hai trường
						hợp):
						<xsl:if test="$LOAI_XN = '02'">
							<div style="left: 0px; width: 200px; padding-bottom: 5px;">
								<span style="left: 0; display: block;">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; [&#32;] &#160;&#160;
									Tất cả các loại thuế
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; [&#32;] &#160;&#160;
									Một hoặc nhiều loại thuế
								</span>
							</div>
						</xsl:if>
						<xsl:if test="$LOAI_XN = '01'">
							<xsl:for-each
								select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/ROW_CTIET_LOAI_THUE">
								<xsl:if test="STT ='1' ">
									<div style="left: 0px; width: 200px; padding-bottom: 5px;">
										<xsl:if test="MA_LOAI_THUE ='0000' ">
											<span style="left: 0; display: block;">
												&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[X] &#160;
												Tất cả các loại thuế
												<br />
												&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;] &#160;&#160;
												Một hoặc nhiều loại thuế
											</span>
										</xsl:if>
										<xsl:if test="MA_LOAI_THUE !='0000' ">
											<span style="left: 0; display: block;">
												&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;] &#160;&#160;
												Tất cả các loại thuế
												<br />
												&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[X] &#160;
												Một hoặc nhiều loại thuế
											</span>
										</xsl:if>
									</div>
								</xsl:if>
							</xsl:for-each>
							<div
								style="position: relative; float: left; width: 100%;padding-bottom: 5px;">
								<table cellpadding="0" cellspacing="0" border="1"
									style="width: 98%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; position: relative; margin-top: 5px; padding: 3px;">
									<tbody>
										<xsl:for-each
											select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/ROW_CTIET_LOAI_THUE">
											<xsl:if test="MA_LOAI_THUE !='0000' ">
												<xsl:if test="STT ='1' ">
													<tr align="center"
														style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
														<td
															style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:47px; text-align: center;">
															<strong
																style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">STT</strong>
														</td>
														<td
															style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:100px; text-align: center;">
															<strong
																style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Loại thuế</strong>
														</td>
														<td
															style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:247px; text-align: center;">
															<strong
																style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tiểu mục</strong>
														</td>
													</tr>
												</xsl:if>
												<tr
													style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
													<td
														style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;">
														<span style="font: 10pt arial, helvetica, sans-serif; ;"
															id="stt"></span>
														<span style="font: 10pt arial, helvetica, sans-serif; ;">
															<xsl:number format="1" />
														</span>
													</td>
													<td
														style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;">
														<span style="font: 10pt arial, helvetica, sans-serif; ;">
															<xsl:if test="MA_LOAI_THUE !='' ">
																<xsl:if test="MA_LOAI_THUE !='0000' ">
																	<xsl:value-of select="MA_LOAI_THUE" />
																	-
																	<xsl:value-of select="TEN_LOAI_THUE" />
																</xsl:if>
																<xsl:if test="MA_LOAI_THUE ='0000' ">
																	<xsl:value-of select="MA_LOAI_THUE" />
																	-
																	Tất cả các loại thuế
																</xsl:if>
															</xsl:if>
														</span>
													</td>
													<td
														style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;">
														<span style="font: 10pt arial, helvetica, sans-serif; ;">
															<xsl:if test="MA_NDKT !='' ">
																<xsl:value-of select="MA_NDKT" />
																-
																<xsl:value-of select="TEN_NDKT" />
															</xsl:if>
														</span>
													</td>
												</tr>
											</xsl:if>
										</xsl:for-each>
									</tbody>
								</table>
							</div>
						</xsl:if>
						3. Chứng từ nộp thuế:
						<br />
					</p>
				</xsl:for-each>
				<div style="position: relative; float: left; width: 98%;">
					<table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet"
						style="width: 100%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; position: relative; margin-top: 10px;">
						<tbody>
							<tr align="center"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:47px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">STT</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:100px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Mã số thuế</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:247px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tên NNT</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:100px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Số chứng từ</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:91px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Ngày chứng từ</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:377px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Nội dung nộp NSNN</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:47px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Số tiền</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:57px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Loại tiền</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:377px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Cơ quan quản lý thu</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:96px; text-align: center;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Ghi chú</strong>
								</td>
							</tr>
							<xsl:if test="$LOAI_XN = '01'">
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">

									<td colspan="6" rowspan="2"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
										<strong
											style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
										<br />
										(Chi tiết theo từng loại tiền)
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
										<span style="font: 10pt arial, helvetica, sans-serif;"></span>
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center;"></td>
									<td colspan="2"
										style="border-collapse: collapse; border-color: #000000 !important;border-bottom-color: #ffffff !important; border-style: solid; border-width: 1pt;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
										<span style="font: 10pt arial, helvetica, sans-serif;"></span>
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center;"></td>
									<td colspan="2"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;"></td>
								</tr>
							</xsl:if>
							<xsl:if test="$LOAI_XN = '02'">
								<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/ROW_CTIET_CTU">
									<tr
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:number format="1" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="MST_NNOP !='' ">
													<xsl:value-of select="MST_NNOP" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="TEN_NNOP !='' ">
													<xsl:value-of select="TEN_NNOP" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="SO_CTU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="NGAY_CTU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_NDKT" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="MA_NGUYENTE = 'VND'">
													<xsl:value-of select="ihtkk:formatNumber(SO_TIEN)" />
												</xsl:if>
												<xsl:if test="MA_NGUYENTE = 'USD'">
													<xsl:value-of select="ihtkk:toFormatDecimall(SO_TIEN)" />
												</xsl:if>

											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="MA_NGUYENTE" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_CQTHU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="GHI_CHU" />
											</span>
										</td>
									</tr>
								</xsl:for-each>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">

									<td colspan="6" rowspan="2"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
										<strong
											style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
										<br />
										(Chi tiết theo từng loại tiền)
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
										<span style="font: 10pt arial, helvetica, sans-serif;">
											<xsl:value-of
												select="ihtkk:formatNumber($NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/TONG_TIEN)" />
										</span>
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center;">
										VND
									</td>
									<td colspan="2"
										style="border-collapse: collapse; border-color: #000000 !important;border-bottom-color: #ffffff !important; border-style: solid; border-width: 1pt;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
										<span style="font: 10pt arial, helvetica, sans-serif;">
											<xsl:value-of
												select="ihtkk:toFormatDecimall($NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/TONG_TIEN_NGUYENTE)" />
										</span>
									</td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center;">
										USD
									</td>
									<td colspan="2"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;"></td>
								</tr>
							</xsl:if>
						</tbody>
					</table>
				</div>

				<table cellpadding="0" cellspacing="0"
					style="width: 100%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;
						float: left; position: relative; margin-top: 7px; border: none;">
					<tbody>
						<tr
							style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; border: 0px">
							<td colspan="3"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; border: none; text-align: center;">
								<br />
								<br />
								<strong
									style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">
									Người lập</strong>
								<br />
								<i>(Ký và ghi rõ họ tên)</i>
							</td>
							<td align="center" colspan="3"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; border: none; text-align: center;">
								<br />
								<br />
								<strong
									style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">
									Thủ trưởng cơ quan/người đề nghị</strong>
								<br />
								<i>(Ký và đóng dấu)</i>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
					        <div style="clear: both;">&#160;</div>
							<br />
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