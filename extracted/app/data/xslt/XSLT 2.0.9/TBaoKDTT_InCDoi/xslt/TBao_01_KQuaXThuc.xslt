<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="../common/common.xsl"/>

	<xsl:template match="/">
		<style type="text/css">ol { margin: 0; padding: 0 }
			#wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%;
			height: 100%; margin: auto; padding: 40px; position: relative; width:
			700px;}
			#headermct { margin: auto; position: relative; width: 100%; height:100%; }
			#conten { float: left; margin: auto; position: relative; width: 100%; height:100%; }
			.ms09 { border: 1px solid; float: right; height: 67px; padding: 5px;
			position: relative; top: -10px; width: 185px; text-align:center; }
			.table_hd1 { width: 100%; text-align: center; }
			.table_hd1 td { padding: 0px;}
			#headermct table td{ padding: 0px;}
			.table_hr1 { margin-top: -8px; border-width: 1px thin; width: 105px; }
			.table_hr2 { border-width: 1px thin; margin-top: 8px; width: 145px; }
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
			.c1 { font-size: 10px; }
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
			.content {padding: 0px 60px 0px 80px; text-align: justify;}
		</style>
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<html>
				<body>

					<div id="contentprint" class="content" style="padding: 0px 60px 0px 100px; text-align: justify;">
						<xsl:for-each select="$NDungTBao">
							<div id="headermct">
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tr>
										<td>
											<br></br>
											<div class="ms09" style="font-size:13px">
												Mẫu số: <b>01/GD-KDTTT</b>
												<br />
												<span style="font-size: 13px" >
												<i>(Ban hành kèm theo Thông tư số
												<br />
												số 156/2013/TT-BTC ngày 
												<br />
												6/11/2013 của Bộ Tài chính)</i>
												</span>
											</div>
										</td>
									</tr>
								</table>
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr style="text-align: center">
											<td style="font-size: 17px; ">
												<xsl:value-of select="ihtkk:getMaCTcapTren($TTinChung/CQT/maCQT)" />	
													
											</td>
											<td style="font-size: 17px; ">
												<b>CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
											</td>
										</tr>
										<tr style="text-align: center">
											<td style="font-size: 17px; ">
												<b><xsl:value-of select="ihtkk:getTenUpperCT($TTinChung/CQT/maCQT)" />		
												</b>	
											</td>
											<td style="font-size: 18.5px; ">
												<b>Độc lập - Tự do - Hạnh phúc</b>
											</td>
										</tr>
										<tr>
											<td class="align-c">
												<hr class="table_hr1" />
											</td>
											<td class="align-c">
												<hr class="table_hr2" />
											</td>
										</tr>
										<tr style="text-align:center; font-size:17px;">
											<td>
												Số:
												<span class="contenms9">
													<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
														<span>
															<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
														</span>
													</xsl:if>
												</span>
											</td>
											<td >	
												<i>
													<xsl:value-of select="ihtkk:getTenNganCT($TTinChung/CQT/maCQT)" />,												
													ngày
													<xsl:value-of select="substring($NDungTBao/ngayGDich,0,3)" />
													tháng
													<xsl:value-of select="substring($NDungTBao/ngayGDich,4,2)" />
													năm
													<xsl:value-of select="substring($NDungTBao/ngayGDich,7,10)" />
												</i>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="c3 c11" style="font-size:18.5px;">
									<b >THÔNG BÁO</b>
									<br />
									<xsl:value-of select="$TTinChung/TTinTBaoThue/tenTBao" />
								</p>


								<div style="padding-left:105px; font-size:18.5px;">
								
									Kính gửi:
									<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
										<span>
											<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
										</span>
									</xsl:if>
									<br />
									Mã số thuế:
									<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan !=''">
										<span>
											<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
										</span>
									</xsl:if>
									<br />
									Địa chỉ nhận thông báo:
									<xsl:if test="$TTinChung/NNhanTBaoThue/diaChiNNhan !=''">
										<span>
											<xsl:value-of select="$TTinChung/NNhanTBaoThue/diaChiNNhan" />
										</span>
									</xsl:if>
								</div>
								<p style="font-size:18.5px;">
								Nội dung thông báo như sau:
								</p>
								<p style="font-size:18.5px;">															
									&#160;&#160;&#160;&#160;&#160;
									- Mã giao dịch: 
									<span>
										<xsl:value-of select="$NDungTBao/maGDich " />
									</span>									
									<br/>
									&#160;&#160;&#160;&#160;&#160;
									- Tên hệ thống giao dịch: 
									<span>
										<xsl:value-of select="$NDungTBao/tenHThongGDich " />
									</span>
									<br/>
									&#160;&#160;&#160;&#160;&#160;
									- Nội dung giao dịch: 
									<span>
										<xsl:value-of select="$NDungTBao/ndungGDich " />
									</span>
									<br/>
									&#160;&#160;&#160;&#160;&#160;
									- Ngày giao dịch: 
									<span>
										<xsl:value-of select="$NDungTBao/ngayGDich " />
									</span>								
								</p>
								<p style="font-size:18.5px;">
									&#160;&#160;&#160;&#160;&#160;
									- Chi tiết giao dịch:												
								</p>

								<table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Số serial</b></td>
										<td class="align-c"><b>Tên chủ thể</b></td>
										<td class="align-c"><b>Trạng thái đăng ký</b></td>
										<td class="align-c"><b>Mã số thuế</b></td>
										<td class="align-c"><b>Mã kết quả giao dịch</b></td>
										<td class="align-c"><b>Kết quả giao dịch</b></td>
										<td class="align-c"><b>Mã lỗi</b></td>
										<td class="align-c"><b>Mô tả lỗi</b></td>
								    </tr>								
								<xsl:for-each select="$NDungTBao/CTietGDich/NDungCTietGDich">
									<tr>									  
									  <td class="align-c"><xsl:value-of select="stt"/></td>
									  <td class="align-c"><xsl:value-of select="soSerial"/></td>
									  <td class="align-l"><xsl:value-of select="chuThe"/></td>
									  <td class="align-l"><xsl:value-of select="tthaiDKy"/></td>
									  <td class="align-l"><xsl:value-of select="maSoThue"/></td>
									  <td class="align-c"><xsl:value-of select="maKQuaGDich"/></td>
									  <td class="align-l"><xsl:value-of select="kquaGDich"/></td>
									  <td class="align-c"><xsl:value-of select="maLoiGDich"/></td>
									  <td class="align-l"><xsl:value-of select="mtaLoiGDich"/></td>
									</tr>
								</xsl:for-each>
								
							</table> <br/>
								
								<p style="font-size:18.5px;">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<span>
										<xsl:value-of select="$TTinChung/CQT/tenCQT" />
									</span>
								</xsl:if>
								thông báo để 
								<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>
								được biết và thực hiện./.
								</p>
								
							</div>
						</xsl:for-each>
						<div style="clear: both;">&#160;</div>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>