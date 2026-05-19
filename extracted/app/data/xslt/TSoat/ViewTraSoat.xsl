<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0"
	xmlns:java="http://xml.apache.org/xalan/java" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	<style type="text/css">#wrapper1 { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto;
                              padding: 20px; position: relative; width: 750px; line-height: 18px; } #headermct { height:
                              160px; width: 100%; position: relative; margin: auto; } #headerlef { border: 1px solid;
                              height: 43px; padding: 18px; position: absolute; text-align: center; width: 98px; top:
                              10px; } #headerright { position: absolute; right: 0; text-align: center; } #headercenter {
                              left: 190px; position: absolute; top: 40px; text-align: center; line-height: 22px; }
                              #conten { float: left; font-size: 10pt; line-height: 21px; margin: auto; position:
                              relative; width: 100%; } #conten_ttnt { margin: auto; position: relative; float: left;
                              width: 100%; } 
                              #conten_ttnt1 { margin: auto; position: relative; float: left;
                              width: 100%; }
                              
                              #contenTk21_29{ position: relative; float: left; width: 100%; margin: auto;
                              } #contenTk21_291{ position: relative; float: left; display: inline-block; width: 100%;
                              margin: auto; } #contenTk21_22 {line-height: 22px; float: left; height: 40px; left: 2px;
                              position: relative; width: 400px; } .tk352_2 { left: 0;margin-left:0px; } .tk352_1 { left:
                              0;margin-left:60px; } #contenTk21_22 .tk3521 { left: 0; display: block; } #contenTk21_22
                              .tk3522 { left: 0; display: block; } #contenTk21_22 .tk3521_1 { border: 1px solid; height:
                              14px; margin: 0px 20px 10px; text-align: center; width: 14px; position: absolute; }
                              #contenTk24_12 { float: left; height: 40px; left: 0px; width: 160px; } 
                              #contenTkTien24_12 { float: left; height: 50px; left: 0px; width: 550px;  display: inline;}
                               #contenTkTien24_12 .tk3231 { left: 0;  font-size: 14px; margin: 0px 0px 0px 20px ;}
                              #contenTk24_12
                              .tk3231 { left: 0; display: block; font-size: 14px; margin: 0px 0px 0px 20px ;}
                              #contenTk24_12 .tk3232 { left: 0; display: block; } #contenTk24_12 .tk3231_1 { border: 1px
                              solid; height: 14px; margin: 3px 20px 0px 0px; position: absolute; text-align: center;
                              width: 14px; } #contenTk24_12 .tk3232_1 { border: 1px solid; height: 14px; margin: 0px
                              21px; position: absolute; text-align: center; width: 14px; } #contenTk25_12 {height: 40px;
                              float: left;width:270px} #contenTk25_12 .tk2112 { left: 0;display: block; font-size: 15px; margin:
                              0px 0px 0px 15px ;} #contenTk25_12 .tk2113 { left: 0; display: block; } #contenTk25_12
                              .tk2112_1 { border: 1px solid; height: 14px; margin: 3px 20px 0px 0px; position: absolute;
                              text-align: center; width: 14px; } #contenTk25_12 .tk2113_1 { border: 1px solid; height:
                              14px; margin: 0px 21px; position: absolute; text-align: center; width: 14px; }
                              #contenTk26_12 {height: 25px; width: 500px; float: left;} #contenTk26_12 .tk2114 { left:
                              0;display: block; font-size: 14px; margin: 0px 0px 0px 5px;}
                              #contenTk26_121 {height: 42px; width: 95%; float: left;} #contenTk26_121 .tk21141 { left:
                              0;display: block; font-size: 14px; margin: 0px 0px 0px 5px;} #contenTk26_12 .tk2115 {
                              left: 0; display: block; } #contenTk26_12 .tk2114_1 { border: 1px solid; height: 14px;
                              margin: 3px 20px 0px 0px; position: absolute; text-align: center; width: 14px; }
                              #contenTk26_12 .tk2115_1 { border: 1px solid; height: 14px; margin: 3px 21px; position:
                              absolute; text-align: center; width: 14px; } .tk3521_2 { border: 1px solid; height: 14px;
                              margin-top: -4px; } #contenTk21_22 .tk3522_1 { border: 1px solid; height: 14px; margin:
                              3px 21px; position: absolute; text-align: center; width: 14px; } #contenTk23_29 { float:
                              right; height: 40px; position: relative; width: 248px; } #contenTk23_29 .tk3523 { left: 0;
                              display: block; } #contenTk23_29 .tk3529 { left: 0; display: block; } #contenTk23_29
                              .tk3523_1{ border: 1px solid; height: 14px; margin: 3px 74px; position: absolute;
                              text-align: center; width: 14px; } #contenTk23_29 .tk3529_1 { border: 1px solid; height:
                              14px; margin: 3px 10px; position: absolute; text-align: center; width: 14px; } .divcheckx
                              { margin-top: -4px; } .conten_ht { left: 60px; position: relative; top: 19px; float: left;
                              } #conten_ttntbt { position: relative; float: left; width: 100%; } #conten_table {
                              position: relative; float: left; width: 100%; } #conten_table table { width: 100%;
                              border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt;
                              float: left; position: relative; margin-top: 10px; } #conten_table table tr {
                              border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt;
                              } #conten_table table td { border-collapse: collapse; border-color: #000000; border-style:
                              solid; border-width: 1pt; } #conten_table p { float: left; position: relative; display:
                              block; } #conten_table p span{ float: left; position: relative; } .uppercase
                              {text-transform:uppercase;} .capitalize {text-transform:capitalize;} .tb_strong { color:
                              #000000; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center
                              !important; } .title_strong { color: #000000; font: 11pt arial, helvetica, sans-serif;
                              font-weight: bold; }
                              .ttnt_1,.ttnt_3,.ttnt_4,.ttnt_5,.ttnt_7,.ttnt_8,.ttnt_10,.ttnt_11,.ttnt_12,.ttnt_14,.ttnt_15,.ttnt_17,.ttnt_20,.ttnt_21,.ttnt_23,.ttnt_24,.ttnt_26{
                              border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; left: 10px; position:
                              relative; } .ttnt_2 { left: 450px; position: absolute; } .ttnt_6 { left: 450px; position:
                              absolute; } .ttnt_9 { left: 450px; position: absolute; } .ttnt_13 { left: 450px; position:
                              absolute; } .ttnt_16 { left: 450px; position: absolute; } .ttnt_19 { left: 450px;
                              position: absolute; } .ttnt_22 { left: 450px; position: absolute; } .ttnt_25 { position:
                              absolute; right: 130px; } .ttnt_26a { left: 270px; position: absolute; } .ttnt_26b { left:
                              450px; position: absolute; } .ttnt_26c { left: 270px; position: absolute; } .ttnt_27{
                              font: 10pt arial, helvetica, sans-serif; padding: 5px; } .ttnt_28{ font: 10pt arial,
                              helvetica, sans-serif; padding: 4px; } .sptienmatCk1 { border: 1px solid; height: 15px;
                              margin: 0 -23px; position: absolute; width: 15px; } .sptienmatCk2 { border: 1px solid;
                              height: 15px; margin: 0; position: absolute; width: 15px; } .tienmatCk { font-size: 15px;
                              margin-top: -4px; } div.break_word { width: 300px; word-wrap: break-word; -ms-word-wrap:
                              break-word; float: left; position: relative; } .float_l{ float: left; position: relative; }
                             .c1 { font-size: 13px; }
                             .c1dl { font-size: 14px; }
                             .c18 { height: 22pt; }
                             .c15 {  font-size: 12px; }
                             .c4 { font-weight: bold }
                             .c0 {  font-size: 14px; }
                             .table_hr2 { border-width: 1px thin; margin-top: 8px; width: 210px;text-align:center; }
                             #contenTk27_12 {height: 50px; width: 200px; float: left;} #contenTk26_12 .tk2114 { left:
                              0;display: block; font-size: 14px; margin: 0px 0px 0px 5px;} 
                              
                                                         #contenTkTien28_12 { float: left; height: 60px; left: 0px; width: 500px;  display: inline;}
                               #contenTkTien28_12 .tk3231 { left: 0;  font-size: 14px; margin: 0px 0px 0px 20px ;}
                           
                              </style>
		<xsl:for-each select="TRASOAT_THUE/NOIDUNG_TRASOAT">
			<xsl:variable name="NOIDUNG_TRASOAT" select="." />
			<xsl:variable name="TEN_NNT" select="./NOIDUNG_TRASOAT_HDR/TEN_NNT" />
			<xsl:variable name="NGAY_NOP" select="./NOIDUNG_TRASOAT_HDR/NGAY_NOP" />
			<xsl:variable name="LOAI_TS" select="./NOIDUNG_TRASOAT_HDR/LOAI_TS" />
			<xsl:variable name="TEN_CQT" select="./NOIDUNG_TRASOAT_HDR/TEN_CQT" />
			<xsl:variable name="SO_TS" select="./NOIDUNG_TRASOAT_HDR/SO_TS" />
			
			<div style="height: 160px; width: 100%; position: relative; margin: auto;  margin: auto; position: relative; width: 100%;  text-align: center; ">
                <p style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;"> </p>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td style="vertical-align: top;" align="right" colspan="2">
                                <div></div>
                                <div style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 250px; text-align: center !important;">
                                    <span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 5pt; height: 10pt; direction: ltr; padding-bottom: 0pt">
                                        Mẫu số: <strong>01/TS</strong>
                                        <br/>
                                        (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">
                                        Ban hành kèm theo Thông tư số <br/>80/2021/TT-BTC ngày 29 tháng 9 năm 2021<br/>của Bộ trưởng Bộ Tài chính</span>)
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellpadding="0" cellspacing="0" style="text-align: center !important;" width="100%">
                    <tbody style="text-align: center !important;">
                        <tr class="c18 align-c">
                            <td class="c8 align-c">
                               <span class="c1 c4">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                            </td>
                        </tr>
                        <tr class="c18 ">
                            <td style="text-align: center !important;">
                                <span class="c1dl c4 ">Độc lập - Tự do - Hạnh phúc</span>
                                <div align="center" style="padding-top: 5pt;" >  <hr width="200px" style=" border-width: 1px;"></hr></div>
                              
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div><br/><br/>
             <p style="line-height: 1.5; padding-top:15pt; direction: ltr; padding-bottom: 0pt; text-align: center ">
                <span style=" font-weight: bold ;font-size: 15px; ">VĂN BẢN ĐỀ NGHỊ TRA SOÁT</span>
            </p>
            <p style="line-height: 1.5; padding-top:6pt; direction: ltr; padding-bottom: 5pt; text-align: center ">
                Kính gửi:
						<xsl:if test="$TEN_CQT !=''">
							<span>
								<xsl:value-of select="$TEN_CQT" />
							</span>
						</xsl:if>
						<xsl:if test="$TEN_CQT =''">
							............................
						</xsl:if>
            </p>
			<div
				style="float: left; font-size: 10pt; line-height: 22px; margin: auto; position: relative; width: 100%;top: 17px;padding-left: 15px;">
				<xsl:for-each select="$NOIDUNG_TRASOAT/NOIDUNG_TRASOAT_HDR">
					<xsl:variable name="NOIDUNG_TRASOAT_HDR" select="." />
						
					<p style="line-height: 25px;">
						<strong>[01] Tên người nộp thuế:&#160;
						<xsl:if test="TEN_NNT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<input type="text" readOnly="true" id="tenNNT" value="{TEN_NNT}" style="width: 40%;border: none;border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px;"/>
							</span>
						</xsl:if></strong>
					</p>
					<p style="line-height: 25px;">
						[02] Mã số thuế:&#160;
						<xsl:if test="MST_NNT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="MST_NNT" />
							</span>
						</xsl:if>
					</p>
					<p style="line-height: 25px;">
						<strong>[03] Tên đại lý thuế (nếu có):&#160;
						<xsl:if test="TT_DLT/TEN_DLT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TT_DLT/TEN_DLT" />
							</span>
						</xsl:if></strong>
					</p>
					<p style="line-height: 25px;">
						[04] Mã số thuế:&#160;
						<xsl:if test="TT_DLT/MST_DLT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TT_DLT/MST_DLT" />
							</span>
						</xsl:if>
					</p>
					<p style="line-height: 25px;">
						[05] Hợp đồng đại lý thuế: Số&#160;
						<xsl:if test="TT_DLT/SO_HD !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TT_DLT/SO_HD" />
							</span>
						</xsl:if>
						&#160;ngày&#160;
						<xsl:if test="TT_DLT/NGAY_HD !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TT_DLT/NGAY_HD" />
							</span>
						</xsl:if>
					</p>
					<p style="line-height: 25px;">
						[06] Thông tin đơn vị đề nghị tra soát:&#160;
					</p>
					<br/>
				</xsl:for-each>
				
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;<strong>1. Nội dung đề nghị tra soát, điều chỉnh:</strong>&#160;
				</p>
				<div style="position: relative; float: left; width: 98%;">
					<table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet"
						style="width: 100%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; position: relative; margin-top: 10px; margin-bottom: 10px;">
						<tbody>
							<tr align="center" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">STT</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Chỉ tiêu</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Nội dung đề nghị tra soát</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Nội dung đề nghị điều chỉnh</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Lý do</strong>
								</td>
							</tr>
							<tr align="center" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(1)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(2)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(3)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(4)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(5)</strong>
								</td>
							</tr>
							<xsl:if test="$LOAI_TS = '01'">
								<xsl:for-each select="$NOIDUNG_TRASOAT/NOIDUNG_TRASOAT_CTIET/CTIET_NVT/ROW_CTIET_NVT">
									<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:number format="1" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:if test="CHI_TIEU/TEN_LOAIGD !='' ">
													Loại giao dịch: <xsl:value-of select="CHI_TIEU/TEN_LOAIGD" />;
												</xsl:if>
												<xsl:if test="CHI_TIEU/SO_QDINH !='' ">
													Số tờ khai/số quyết định/số thông báo: <xsl:value-of select="CHI_TIEU/SO_QDINH" />;
												</xsl:if>
												<xsl:if test="CHI_TIEU/MA_HSO !='' ">
													Mã định danh hồ sơ (ID): <xsl:value-of select="CHI_TIEU/MA_HSO" />;
												</xsl:if>
												<xsl:if test="CHI_TIEU/NGAY_QDINH !='' ">
													Kỳ thuế/Ngày quyết định/Ngày thông báo: <xsl:value-of select="CHI_TIEU/NGAY_QDINH" />;
												</xsl:if>
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:if test="NOIDUNG_TS/CHUONG !='' ">
													Chương: <xsl:value-of select="NOIDUNG_TS/CHUONG" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_TS/MA_NDKT !='' ">
													Tiểu mục: <xsl:value-of select="NOIDUNG_TS/MA_NDKT" /> - <xsl:value-of select="NOIDUNG_TS/TEN_NDKT" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_TS/SO_TIEN !='' ">
													Số tiền:&#160;
													<xsl:if test="NOIDUNG_TS/LOAI_TIEN = 'VND'">
														<xsl:value-of select="format-number(NOIDUNG_TS/SO_TIEN, '###,###')" />
													</xsl:if>
													<xsl:if test="NOIDUNG_TS/LOAI_TIEN != 'VND'">
														<xsl:value-of select="format-number(NOIDUNG_TS/SO_TIEN, '###,###.##')" />
													</xsl:if>
												</xsl:if>
												<xsl:if test="NOIDUNG_TS/LOAI_TIEN !='' ">
													Loại tiền: <xsl:value-of select="NOIDUNG_TS/LOAI_TIEN" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_TS/MA_CQTHU !='' ">
													Cơ quan thu: <xsl:value-of select="NOIDUNG_TS/MA_CQTHU" /> - <xsl:value-of select="NOIDUNG_TS/TEN_CQTHU" />;
												</xsl:if>
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:if test="NOIDUNG_DC/CHUONG !='' ">
													Chương: <xsl:value-of select="NOIDUNG_DC/CHUONG" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_DC/MA_NDKT !='' ">
													Tiểu mục: <xsl:value-of select="NOIDUNG_DC/MA_NDKT" /> - <xsl:value-of select="NOIDUNG_DC/TEN_NDKT" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_DC/SO_TIEN !='' ">
													Số tiền:&#160;
													<xsl:if test="NOIDUNG_DC/LOAI_TIEN = 'VND'">
														<xsl:value-of select="format-number(NOIDUNG_DC/SO_TIEN, '###,###')" />
													</xsl:if>
													<xsl:if test="NOIDUNG_DC/LOAI_TIEN != 'VND'">
														<xsl:value-of select="format-number(NOIDUNG_DC/SO_TIEN, '###,###.##')" />
													</xsl:if>
												</xsl:if>
												<xsl:if test="NOIDUNG_DC/LOAI_TIEN !='' ">
													Loại tiền: <xsl:value-of select="NOIDUNG_DC/LOAI_TIEN" />;
												</xsl:if>
												<xsl:if test="NOIDUNG_DC/MA_CQTHU !='' ">
													Cơ quan thu: <xsl:value-of select="NOIDUNG_DC/MA_CQTHU" /> - <xsl:value-of select="NOIDUNG_DC/TEN_CQTHU" />;
												</xsl:if>
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="LYDO" />
											</span>
										</td>
									</tr>
								</xsl:for-each>
							</xsl:if>
							<xsl:if test="$LOAI_TS = '02'">
								<xsl:for-each select="$NOIDUNG_TRASOAT/NOIDUNG_TRASOAT_CTIET/CTIET_CTU/ROW_CTIET_CTU">
									<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;vertical-align: initial !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:number format="1" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;vertical-align: initial !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:if test="CHI_TIEU/MA_TCHIEU !='' ">
													Số tham chiếu: <xsl:value-of select="CHI_TIEU/MA_TCHIEU" />;
												</xsl:if>
												<xsl:if test="CHI_TIEU/SO_CHUNGTU !='' ">
													Số chứng từ ( Số chứng từ nộp tại NH/ Số chứng từ tại CQT): <xsl:value-of select="CHI_TIEU/SO_CHUNGTU" />;
												</xsl:if>
												<xsl:if test="CHI_TIEU/NGAY_CTU !='' ">
													Ngày chứng từ: <xsl:value-of select="CHI_TIEU/NGAY_CTU" />;
												</xsl:if>
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;vertical-align: initial !important; padding: 5px 6px;">
											<xsl:for-each select="NOIDUNG_TS/ROW_CTIET_TS">
											<span style="font: 10pt arial, helvetica, sans-serif;">
													<xsl:value-of select="STT" />;
												<xsl:if test="SO_QDINH !='' ">
													Số tờ khai/số quyết định/số thông báo/mã định danh hồ sơ (ID): <xsl:value-of id="SO_QDINH" select="SO_QDINH" />;
												</xsl:if>
												<xsl:if test="NGAY_QDINH !='' ">
													Kỳ thuế/Ngày quyết định/Ngày thông báo: <xsl:value-of select="NGAY_QDINH" />;
												</xsl:if>
												<xsl:if test="CHUONG !='' ">
													Chương: <xsl:value-of select="CHUONG" />;
												</xsl:if>
												<xsl:if test="MA_NDKT !='' ">
													Tiểu mục: <xsl:value-of select="MA_NDKT" /> - <xsl:value-of select="TEN_NDKT" />;
												</xsl:if>
												<xsl:if test="SO_TIEN !='' ">
													Số tiền:&#160;
													<xsl:if test="LOAI_TIEN = 'VND'">
														<xsl:value-of select="format-number(SO_TIEN, '###,###')" />;
													</xsl:if>
													<xsl:if test="LOAI_TIEN != 'VND'">
														<xsl:value-of select="format-number(SO_TIEN, '###,###.##')" />;
													</xsl:if>
												</xsl:if>
												<xsl:if test="LOAI_TIEN !='' ">
													Loại tiền: <xsl:value-of select="LOAI_TIEN" />;
												</xsl:if>
												<xsl:if test="TEN_TK_THU !='' ">
													Thông tin tài khoản: <xsl:value-of select="TEN_TK_THU" />;
												</xsl:if>
												<xsl:if test="TEN_TK_KNGHI !='' ">
													Thông tin nộp theo văn bản của cơ quan có thẩm quyền: <xsl:value-of select="TEN_TK_KNGHI" />;
												</xsl:if>
												<xsl:if test="MA_CQTHU !='' ">
													Cơ quan thu: <xsl:value-of select="MA_CQTHU" /> - <xsl:value-of select="TEN_CQTHU" />;
												</xsl:if>
												<xsl:if test="MA_KBNN !='' ">
													Thông tin KBNN: <xsl:value-of select="MA_KBNN" /> - <xsl:value-of select="TEN_KBNN" />;
												</xsl:if>
											</span>
											<br/><br/>
											</xsl:for-each>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;vertical-align: initial !important; padding: 5px 6px;">
											<xsl:for-each select="NOIDUNG_DC/ROW_CTIET_DC">
											<span style="font: 10pt arial, helvetica, sans-serif;">
													<xsl:value-of select="STT" />;
												<xsl:if test="MST_DC !='' ">
													MST: <xsl:value-of select="MST_DC" /> - <xsl:value-of select="TEN_NNT_DC" />;
												</xsl:if>
												<xsl:if test="SO_QDINH !='' ">
													Số tờ khai/số quyết định/số thông báo/mã định danh hồ sơ (ID): <xsl:value-of select="SO_QDINH" />;
												</xsl:if>
												<xsl:if test="NGAY_QDINH !='' ">
													Kỳ thuế/Ngày quyết định/Ngày thông báo: <xsl:value-of select="NGAY_QDINH" />;
												</xsl:if>
												<xsl:if test="CHUONG !='' ">
													Chương: <xsl:value-of select="CHUONG" />;
												</xsl:if>
												<xsl:if test="MA_NDKT !='' ">
													Tiểu mục: <xsl:value-of select="MA_NDKT" /> - <xsl:value-of select="TEN_NDKT" />;
												</xsl:if>
												<xsl:if test="SO_TIEN !='' ">
													Số tiền:&#160;
													<xsl:if test="LOAI_TIEN = 'VND'">
														<xsl:value-of select="format-number(SO_TIEN, '###,###')" />;
													</xsl:if>
													<xsl:if test="LOAI_TIEN != 'VND'">
														<xsl:value-of select="format-number(SO_TIEN, '###,###.##')" />;
													</xsl:if>
												</xsl:if>
												<xsl:if test="LOAI_TIEN !='' ">
													Loại tiền: <xsl:value-of select="LOAI_TIEN" />;
												</xsl:if>
												<xsl:if test="TEN_TK_THU !='' ">
													Thông tin tài khoản: <xsl:value-of select="TEN_TK_THU" />;
												</xsl:if>
												<xsl:if test="TEN_TK_KNGHI !='' ">
													Thông tin nộp theo văn bản của cơ quan có thẩm quyền: <xsl:value-of select="TEN_TK_KNGHI" />;
												</xsl:if>
												<xsl:if test="MA_CQTHU !='' ">
													Cơ quan thu: <xsl:value-of select="MA_CQTHU" /> - <xsl:value-of select="TEN_CQTHU" />;
												</xsl:if>
												<xsl:if test="MA_KBNN !='' ">
													Thông tin KBNN: <xsl:value-of select="MA_KBNN" /> - <xsl:value-of select="TEN_KBNN" />;
												</xsl:if>
											</span>
											<br/><br/>
											</xsl:for-each>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;vertical-align: initial !important; padding: 5px 6px;">
											<xsl:for-each select="NOIDUNG_DC/ROW_CTIET_DC">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="LYDO" />
											</span>
											<br/>
											</xsl:for-each>
										</td>
									</tr>
								</xsl:for-each>
							</xsl:if>
							<xsl:if test="$LOAI_TS = '03'">
								<xsl:for-each select="$NOIDUNG_TRASOAT/NOIDUNG_TRASOAT_CTIET/CTIET_KHAC/ROW_CTIET_KHAC">
									<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:number format="1" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="CHI_TIEU" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="NOIDUNG_TS" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="NOIDUNG_DC" />
											</span>
										</td>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="LYDO" />
											</span>
										</td>
									</tr>
								</xsl:for-each>
							</xsl:if>
						</tbody>
					</table>
					<br/>
				</div>
				<br/><br/>
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;<strong>2. Tài liệu đính kèm (nếu có):</strong>&#160;
					<xsl:value-of select="$NOIDUNG_TRASOAT/NOIDUNG_TRASOAT_CTIET/TLIEU_DINHKEM" />
				</p>
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;Kính đề nghị&#160;
					<xsl:if test="$TEN_CQT !=''">
							<span>
								<xsl:value-of select="$TEN_CQT" />
							</span>
						</xsl:if>
						<xsl:if test="$TEN_CQT =''">
							............................
						</xsl:if> xem xét, giải quyết./.
				</p>
				<table width="100%">
			<tr>
				<td width="25%">	
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" style="text-align: center !important;">
				<i>....., ngày.....tháng.....năm.....</i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b><br/><br/>
					Họ và tên: ..........<br/>
					Chứng chỉ hành nghề số: ..........
				</td>
				<td colspan="1" width="30%">
					
				</td>
				
					<td width="35%" style="text-align: center !important;">
					<b>NGƯỜI NỘP THUẾ hoặc ĐẠI DIỆN<br/>HỢP PHÁP CỦA NGƯỜI NỘP<br/>THUẾ</b>
					<br/>
					<i>(Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu(nếu<br/>có)/Ký điện tử)</i>
					</td>
			</tr>
			<tr>
				
				<td width="25%"></td>
				<td colspan="1" width="30%">
					
				</td>
				<td width="35%" style="text-align: center !important;">
					
				</td>
			</tr>
			<tr>
				
				<td width="25%"/>
				<td width="35%"/>
				<td colspan="1" width="30%" style="text-align: center !important;">
				</td>
			</tr>
		</table>
			</div>
			<div style="clear: both;"> </div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>