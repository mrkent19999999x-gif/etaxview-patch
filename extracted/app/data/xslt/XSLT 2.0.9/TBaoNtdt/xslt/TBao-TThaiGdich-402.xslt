<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
 xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>

	<xsl:template match="/">
	
	<xsl:variable name="tbThue1" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
	<xsl:variable name="NGAY_THONGBAO_NEW"   select="$tbThue1/NGAY_THONGBAO" />

	 
	  <xsl:variable name="date" select="10000 * substring($NGAY_THONGBAO_NEW, 7, 4) + 100 * substring($NGAY_THONGBAO_NEW, 4, 2) + substring($NGAY_THONGBAO_NEW, 1, 2)"/>

		<xsl:for-each select="THONGBAO/NDUNG_TBAO">
			<xsl:variable name="NDUNG_TBAO" select="." />
			<xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
			<xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />

			<xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
			<xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
			<xsl:variable name="NGAY_THONGBAO" select="./THONGBAO_HDR/NGAY_THONGBAO" />
			<xsl:variable name="MA_NGHANG_NOP" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGHANG_NOP" />
			<xsl:for-each select="$NDUNG_TBAO/THONGBAO_HDR">
				<div style="margin: auto; position: relative; width: 100%;">
					<p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">&#160;</p>
					<div style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -13px; width: 285px; text-align:center;font-size: 16px;">
						<span style="font-size: 15px;line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
							Mẫu số:&#160;
							<xsl:if test="MAU_THONGBAO !=''">
							 <b>05/TB-TĐT</b><br/>
							</xsl:if>
							(<span style="font-style: italic; font-size: 15px; font-family: Times New Roman;">Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính</span>)
						</span>
					</div>
					<table cellpadding="0" cellspacing="0" style="width: 100%; text-align: center;">
						<tbody>
							<tr style="height: 22pt; text-align:center!important;vertical-align:middle !important;">
			                  <td style="width: 140pt; border-style: solid; border-color: #000000 !important; border-width: 0pt; text-align:center!important;vertical-align:middle !important;" width="10%">
			                    <span style="font-size: 17px; font-family: Times New Roman; font-weight: bold;">NGÂN HÀNG
			                      <xsl:if test="$MA_NGHANG_NOP !=''">
			                        <span style="font-size: 17px; font-family: Times New Roman; font-weight: bold;">
			                          <xsl:value-of select="$MA_NGHANG_NOP"/>
			                        </span>
			                      </xsl:if>
			                    </span>
			                  </td>
			                  <td style="border-style: solid; border-color: #000000 !important; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align:center!important;vertical-align:middle !important;" width="60%">
			                    <span style="font-size: 16px; font-family: Times New Roman; font-weight: bold;">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
			                  </td>
			                </tr>
							<tr style="height: 18pt; ">
			                  <td style="text-align:center!important;vertical-align:middle !important;">
			                    <hr style="margin-top: -8px; border-width: 1px thin; width: 105px; margin:auto; "/>
			                  </td>
			                  <td style="text-align:center!important;vertical-align:middle !important;">
			                    <span style="font-size: 17px; font-family: Times New Roman; font-weight: bold;">Độc lập - Tự do - Hạnh phúc</span>
			                    <hr style="border-width: 1px thin; margin-top: 8px; width: 165px; margin:auto;"/>
			                  </td>
			                </tr>
			                <tr style="height: 20pt; line-height: 40px;">
			                  <td style="width: 140pt; border-style: solid; border-color: #000000 !important; border-width: 0pt; text-align:center!important;vertical-align:middle !important;">
			                    <span style="font-size: 16px; font-family: Times New Roman; ">Số:
			                      <xsl:if test="SO_THONGBAO !=''">
			                        <span style="font-size: 16px; font-family: Times New Roman; ">
			                          <xsl:value-of select="SO_THONGBAO"/>
			                        </span>
			                      </xsl:if>
			                      /TB-TĐT</span>
			                  </td>
			                  <td style="border-style: solid; border-color: #000000 !important; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; text-align:center!important;vertical-align:middle !important;">
			                    <span style="font-size: 16px; font-family: Times New Roman; font-style: italic">Hà Nội,&#160;
									<xsl:if test="$NGAY_THONGBAO !=''">
										Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>
									</xsl:if>
								</span>
			                  </td>
			                </tr>
						</tbody>
					</table>
		            <p style="direction: ltr; padding-bottom: 0pt ;text-align: center">
		              <span style="font-size: 18px; font-family: Times New Roman; font-weight: bold;">THÔNG BÁO</span>
		            </p>
		            <p style="direction: ltr; padding-bottom: 0pt ;text-align: center">
		              <span style="font-size: 18px; font-family: Times New Roman; font-weight: bold;">Về việc xác nhận nộp thuế điện tử</span>
		            </p>
		            <!-- <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
		              <span style="font-size: 18px;font-family: Times New Roman; ">
		                &#160;&#160;&#160;&#160;Kính gửi:
		              </span>
		              <span style="font-size: 18px; font-family: Times New Roman; font-style: italic">
							<xsl:choose>
								<xsl:when test="MST_NTHAY !=''">
									<xsl:if test="TEN_NTHAY !=''">
										<xsl:value-of select="TEN_NTHAY" />
									</xsl:if>
								</xsl:when>
								<xsl:otherwise>
									<xsl:if test="TEN_NNOP !=''">
										<xsl:value-of select="TEN_NNOP" />
									</xsl:if>
								</xsl:otherwise>
							</xsl:choose>
						</span>
					</p> -->
					<!-- <p style="font-size: 18px; font-family: Times New Roman; margin-left: 77px; font-style: italic">Mã số thuế:
              			<span style="font-size: 18px; font-family: Times New Roman; font-style: italic">
							<xsl:choose>
								<xsl:when test="MST_NTHAY !=''">
									<xsl:if test="MST_NTHAY !=''">
										<xsl:value-of select="MST_NTHAY" />
									</xsl:if>
								</xsl:when>
								<xsl:otherwise>
									<xsl:if test="MST_NNOP !=''">
										<xsl:value-of select="MST_NNOP" />
									</xsl:if>
								</xsl:otherwise>
							</xsl:choose>
						</span>
					</p> -->
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt ;font-size: 18px;font-family: Times New Roman; ">
            			&#160;&#160;&#160;&#160;Vào
            			<xsl:if test="$NGAY_THONGBAO !=''">
						  <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>,
						</xsl:if>
						<span style="font-size: 18px; font-family: Times New Roman; ">
							Ngân hàng
							<xsl:if test="$MA_NGHANG_NOP !=''">
								<span>
									<span style="font-size: 18px; font-family: Times New Roman; "><xsl:value-of select="$MA_NGHANG_NOP" /></span>
								</span>
							</xsl:if>
							thông báo trạng thái thực hiện thủ tục nộp thuế điện tử của người nộp thuế, cụ thể như sau:
						</span>
					</p>
				</div>
			</xsl:for-each>
			<div>
				<table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; margin-top: 10px;">
					<tbody>
					<xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
							<xsl:variable name="TONGTIENNOP" select="TONGTIENNOP" />
						<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						    <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								<span style="align: center; font-size: 18px; font-family: Times New Roman;"><b>STT</b></span>
							</td>
							<td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								<span style="align: center; font-size: 18px; font-family: Times New Roman;"><b>Nội dung</b></span>
							</td>
							<td style="height:23px; width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								<span style="align: center; font-size: 18px; font-family: Times New Roman;"><b>Giá trị</b></span>
							</td>
						</tr>
						<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						       <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">1</span>
							   </td>
							   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								    <span style="align: left; font-size: 18px; font-family: Times New Roman;">Số tham chiếu</span>
							   </td>
							   <td style="height:23px;text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
							 		<span style="font-size: 18px; font-family: Times New Roman;">
							 			<xsl:value-of select="MA_THAMCHIEU" />
							 		</span>
							   </td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   	<td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">2</span>
							   </td>
							   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Mã hiệu chứng từ</span>
							   </td>
							   <td style="height:23px;text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="MAHIEU_CTU !=''">
											<xsl:value-of select="MAHIEU_CTU" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">3</span>
							   </td>
							   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Số chứng từ nộp NSNN</span>
							   </td>
							   <td style="height:23px;text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="SO_CTU !=''">
											<xsl:value-of select="SO_CTU" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">4</span>
							   </td>
							   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Tài khoản trích Nợ</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="STK_NGHANG_NOP !=''">
											<xsl:value-of select="STK_NGHANG_NOP" />
										</xsl:if>
									</span>
								</td>
						  </tr>
						  <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">5</span>
							   </td>
							   <td style="width: 97.1pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Nộp cho KBNN</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="TEN_KHOBAC_NOP !=''">
											<xsl:value-of select="TEN_KHOBAC_NOP" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">6</span>
							   </td>
							   <td style="width: 74.4pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Ngày gửi GNT</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="NGAY_GUI !=''">
											<xsl:value-of select="NGAY_GUI" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">7</span>
							   </td>
							   <td style="width: 74.4pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Ngày nộp thuế điện tử</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="NGAY_NTHUE !=''">
											<xsl:value-of select="NGAY_NTHUE" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">8</span>
							   </td>
							   <td style="width: 54.2pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Tổng số khoản</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:if test="TONGSOMON !=''">
											<xsl:value-of select="TONGSOMON" />
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">9</span>
							   </td>
							   <td style="width: 61.4pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Loại tiền</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										 <xsl:choose>
										 	<xsl:when test="MA_NGUYENTE !=''">
										 		<xsl:value-of select="MA_NGUYENTE" />
										 	</xsl:when>
										 	<xsl:otherwise>
										  		VND
										 	</xsl:otherwise>
										 </xsl:choose>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">10</span>
							   </td>
							   <td style="width: 61.4pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Tổng số tiền nộp NSNN</span>
							   </td>
							   <td style="height:23px;text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;" id="tongtien">
										<xsl:if test="$TONGTIENNOP !=''">
											<xsl:choose>
											 	<xsl:when test="MA_NGUYENTE = 'USD'">
											 		<xsl:value-of select="format-number(string($TONGTIENNOP), '###,###.00')" />
											 	</xsl:when>
											 	<xsl:otherwise>
											  		<xsl:value-of select="format-number(string($TONGTIENNOP), '###,###')" />
											 	</xsl:otherwise>
											</xsl:choose>
										</xsl:if>
									</span>
								</td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">11</span>
							   </td>
							   <td style="width: 61.4pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Trạng thái</span>
							   </td>
							   <td style="height:23px;text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:choose>
										 	<xsl:when test="MA_TTHAI = '11'">
										 		Nộp thuế thành công
										 	</xsl:when>
										 	<xsl:when test="MA_TTHAI = '13' or MA_TTHAI = '15' or MA_TTHAI = '16' or MA_TTHAI = '17'">
										 		Xử lý chứng từ không thành công tại Ngân hàng
										 	</xsl:when>
										 	<xsl:otherwise>
										  		<xsl:value-of select="TEN_TTHAI" />
										 	</xsl:otherwise>
										</xsl:choose>
									</span>
							   </td>
						 </tr>
						 <tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
						   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important" >
								    <span style="align: center; font-size: 18px; font-family: Times New Roman;">12</span>
							   </td>
							   <td style="width: 47.7pt; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px 2px 2px 10px;text-align: left !important" >
								<span style="align: left; font-size: 18px; font-family: Times New Roman;">Lý do</span>
							   </td>
							   <td style="height:23px;text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
									<span style="font-size: 18px; font-family: Times New Roman;">
										<xsl:choose>
										 	<xsl:when test="MA_TTHAI = '11'">
										 	</xsl:when>
										 	<xsl:otherwise>
										  		<xsl:if test="TEN_TTHAI !=''">
													<xsl:value-of select="TEN_TTHAI" />
												</xsl:if>
										 	</xsl:otherwise>
										</xsl:choose>
									</span>
							   </td>
						 </tr>						
						</xsl:for-each>
					</tbody>
				</table>
				<div style="float: left; position: relative; width: 100%; display: inline;">
					<p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;">
						<span style="font-size: 18px; font-family: Times New Roman;">
						&#160;&#160;&#160;&#160;Để tra cứu thông tin đã nộp thuế điện tử nói trên, xin vui lòng truy cập theo đường dẫn:&#160;</span>
						<span style="font-size: 18px; font-family: Times New Roman; font-style: italic">
			               <b><a style="color:#666;" href="http://thuedientu.gdt.gov.vn">https://thuedientu.gdt.gov.vn</a></b>
			            </span>
			            <span style="font-size: 18px; font-family: Times New Roman; ">.</span>
					</p>
				</div>
			</div>
			<div style="clear: both;">&#160;</div>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>
