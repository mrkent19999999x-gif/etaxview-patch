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
		<xsl:for-each select="XACNHAN_THUE/NOIDUNG_XN">
			<xsl:variable name="NOIDUNG_XN" select="." />
			<xsl:variable name="TEN_NNT" select="./NOIDUNG_XACNHAN_HDR/TEN_NNT" />
			<xsl:variable name="NGAY_NOP" select="./NOIDUNG_XACNHAN_HDR/NGAY_NOP" />
			<xsl:variable name="LOAI_XN" select="./NOIDUNG_XACNHAN_HDR/LOAI_XN" />
			<xsl:variable name="TEN_CQT" select="./NOIDUNG_XACNHAN_HDR/TEN_CQT" />
			<xsl:variable name="SO_XN" select="./NOIDUNG_XACNHAN_HDR/SO_XN" />
			<xsl:variable name="DTUONG_DN" select="./NOIDUNG_XACNHAN_HDR/DTUONG_DN" />
			
			<div style="height:
                              160px; width: 100%; position: relative; margin: auto;  margin: auto; position: relative; width: 100%;  text-align: center; ">
                <p class="c2"
                   style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;"> </p>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td style="vertical-align: top;" align="right" colspan="2">
                                <div></div>
                                <div align="center"
                                     style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 250px;">
                                    <span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 5pt; height: 10pt; direction: ltr; padding-bottom: 0pt">
                                        Mẫu số: <strong>01/ĐNXN</strong>
                                        <br/>
                                        (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">
                                        Ban hành kèm theo Thông tư số <br/>80/2021/TT-BTC ngày 29 tháng 9 năm 2021<br/>của Bộ trưởng Bộ Tài chính</span>)
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellpadding="0" cellspacing="0" align="center" width="100%">
                    <tbody align="center">
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

            </div>
			<p class="c2 c11"> </p>
             <p style="line-height: 1.5; padding-top:15pt; direction: ltr; padding-bottom: 0pt; text-align: center ">
                <span style=" font-weight: bold ;font-size: 15px; ">VĂN BẢN ĐỀ NGHỊ XÁC NHẬN <br/>VIỆC THỰC HIỆN NGHĨA VỤ THUẾ VỚI NGÂN SÁCH NHÀ NƯỚC</span>
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
			
					<div style="left: 0px; padding-bottom: 5px;margin-left: 250px" align="left">
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">&#160;</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Xác nhận việc thực hiện nghĩa vụ thuế với ngân sách nhà nước
						</span>
							<br />
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<xsl:if test="$DTUONG_DN != 'NTNN'">
									<div style="margin-top: -1px;">X</div>
								</xsl:if>
								<xsl:if test="$DTUONG_DN = 'NTNN'">
									<div style="margin-top: -1px;">&#160;</div>
								</xsl:if>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Xác nhận số thuế đã nộp ngân sách nhà nước
						</span>
							<br />
						<span style="left: 0; display: block;line-height: 20px;" >
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<xsl:if test="$DTUONG_DN != 'NTNN'">
									<div style="margin-top: -3px;">&#160;</div>
								</xsl:if>
								<xsl:if test="$DTUONG_DN = 'NTNN'">
									<div style="margin-top: -2px;">X</div>
								</xsl:if>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Xác nhận cho Nhà thầu nước ngoài không trực tiếp kê khai, nộp thuế  với cơ quan thuế mà do tổ chức, cá nhân Bên Việt Nam khấu trừ, nộp thay
						</span>
					</div>
					
			<div
				style="float: left; font-size: 10pt; line-height: 22px; margin: auto; position: relative; width: 100%;top: 17px;padding-left: 15px;">
				<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_HDR">
					<xsl:variable name="NOIDUNG_XACNHAN_HDR" select="." />
						
					<p style="line-height: 25px;">
						<strong>[01] Tên người nộp thuế:&#160;
						<xsl:if test="TEN_NNT !=''">
							<span
								style="border-bottom: 1px dotted salmon; color: #2E2E2E; font-size: 12px; position: relative;">
								<xsl:value-of select="TEN_NNT" />
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
					<p style="line-height: 17px;">
						&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế và các văn bản hướng dẫn Luật Quản lý thuế, đề nghị cơ quan thuế xác nhận việc thực hiện nghĩa vụ thuế như sau: &#160;
					</p>
					<p style="line-height: 25px;">
						&#160;&#160;&#160;&#160;&#160;&#160;1. Thời gian nộp tiền vào ngân sách nhà nước (trong năm dương lịch) đề nghị xác nhận: Từ ngày
						<xsl:value-of select="NOP_TU_NGAY" />
						đến ngày
						<xsl:value-of select="NOP_DEN_NGAY" />
					</p>
					<p style="line-height: 25px;">
						&#160;&#160;&#160;&#160;&#160;&#160;2. Thông tin số thuế đã nộp ngân sách nhà nước đề nghị xác nhận:&#160;
					</p>
					
					<xsl:if test="LOAI_XN ='01' ">
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">X</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Theo loại thuế:
						</span>
					</xsl:if>
					<xsl:if test="LOAI_XN !='01' ">
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">&#160;</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Theo loại thuế:
						</span>
					</xsl:if>
				</xsl:for-each>
				
				<div style="position: relative; float: left; width: 98%;">
					<table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet"
						style="width: 100%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; position: relative; margin-top: 10px; margin-bottom: 10px;">
						<tbody>
							<tr align="center"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">STT</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Mã số thuế</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tên người nộp thuế</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tên loại thuế, tiền chậm nộp, tiền phạt</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Chương</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tiểu mục</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Loại tiền</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Số tiền thuế, tiền chậm nộp, tiền phạt đã nộp</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Cơ quan thu</strong>
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
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(6)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(7)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(8)</strong>
								</td>
								<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(9)</strong>
								</td>
							</tr>
							<xsl:if test="$LOAI_XN = '02'">
								<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:277px;text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;height: 48px;">
									<td colspan="5"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
										<strong
											style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
										<br />
										<i>(Chi tiết theo từng loại tiền)</i>
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;"></td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;"></td>
								</tr>
							</xsl:if>
							<xsl:if test="$LOAI_XN = '01'">
								<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_LOAI_THUE/ROW_CTIET_LOAI_THUE">
									<tr
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:number format="1" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="MST_NNT !='' ">
													<xsl:value-of select="MST_NNT" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="TEN_NNT !='' ">
													<xsl:value-of select="TEN_NNT" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_LOAI_THUE" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="CHUONG" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="MA_NDKT" /> - <xsl:value-of select="TEN_NDKT" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="LOAI_TIEN" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="LOAI_TIEN = 'VND'">
													<xsl:value-of select="format-number(TIEN_DANOP, '###,###')" />
												</xsl:if>
												<xsl:if test="LOAI_TIEN != 'VND'">
													<xsl:value-of select="format-number(TIEN_DANOP, '###,###.##')" />
												</xsl:if>

											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_CQTHU" />
											</span>
										</td>
									</tr>
								</xsl:for-each>
								<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_LOAI_THUE/TONGTIEN/CTIET_TONGTIEN">
								<xsl:variable name="stt1" select='position()' />	
									<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;height: 48px;">
										<xsl:if test="$stt1 = '1'">
										<td colspan="7" rowspan="14" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
											<br />
											<i>(Chi tiết theo từng loại tiền)</i>
										</td>
										</xsl:if>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="format-number(TONGTIEN_PNOP, '###,###.##')" />&#160;<xsl:value-of select="LOAI_TIEN" />
											</span>
										</td>
										<xsl:if test="$stt1 = '1'">
										<td rowspan="14" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;"></td>
										</xsl:if>
									</tr>
								</xsl:for-each>
							</xsl:if>
						</tbody>
					</table>
					<br/>
				</div>
				<br/>
				<xsl:if test="$LOAI_XN ='02' ">
					
						[X].Theo chứng từ nộp thuế:
				
				</xsl:if>
				<xsl:if test="$LOAI_XN !='02' ">
					[ ].Theo chứng từ nộp thuế:
				
				</xsl:if>
				
				<div style="position: relative; float: left; width: 98%;">
					<table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet"
						style="width: 100%; border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; float: left; position: relative; margin-top: 10px; margin-bottom: 10px;">
						<tbody>
							<tr align="center"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">STT</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Mã số thuế</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tên người nộp thuế</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Số chứng từ nộp NSNN</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Ngày chứng từ nộp NSNN</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Mã ID khoản phải nộp (nếu có)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Nội dung nộp NSNN</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px;text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Chương</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Tiểu mục</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Số tiền</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Loại tiền</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Cơ quan thu</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">Ghi chú</strong>
								</td>
							</tr>
							<tr align="center"
								style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(1)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(2)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(3)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(4)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(5)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(6)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(7)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(8)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(9)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(10)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(11)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px;text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(12)</strong>
								</td>
								<td
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: center; padding: 5px 6px;">
									<strong
										style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">(13)</strong>
								</td>
							</tr>
							<xsl:if test="$LOAI_XN = '01'">
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: left !important;"></td>
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
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px;text-align: left !important;"></td>
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
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; text-align: left !important;"></td>
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
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
									<td
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important;"></td>
								</tr>
								<tr
									style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;height: 48px;">

									<td colspan="7"
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center;">
										<strong
											style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
										<br />
										<i>(Chi tiết theo từng loại tiền)</i>
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
									<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right;">
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="$LOAI_XN = '02'">
								<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_CTU/ROW_CTIET_CTU">
									<tr
										style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;">
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;text-align: center !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;"
												id="stt"></span>
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:number format="1" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height:23px; width:100px;text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="MST_NNOP !='' ">
													<xsl:value-of select="MST_NNOP" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="TEN_NNOP !='' ">
													<xsl:value-of select="TEN_NNOP" />
												</xsl:if>
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="SO_CTU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="NGAY_CTU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="ID_KHOANNOP" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_NDKT" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="CHUONG" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="MA_NDKT" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: right !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:if test="MA_NGUYENTE = 'VND'">
													<xsl:value-of select="format-number(SO_TIEN, '###,###')" />
												</xsl:if>
												<xsl:if test="MA_NGUYENTE != 'VND'">
													<xsl:value-of select="format-number(SO_TIEN, '###,###.##')" />
												</xsl:if>

											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="MA_NGUYENTE" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="TEN_CQTHU" />
											</span>
										</td>
										<td
											style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: left !important; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif; ;">
												<xsl:value-of select="GHI_CHU" />
											</span>
										</td>
									</tr>
								</xsl:for-each>
								<xsl:for-each select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_CTU/TONGTIEN/CTIET_TONGTIEN">
								<xsl:variable name="stt2" select='position()' />	
									<tr style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;height: 48px;">
										<xsl:if test="$stt2 = '1'">
										<td colspan="9" rowspan="14" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; text-align: center; padding: 5px 6px;">
											<strong style="color: #000000 !important; font: 10pt arial, helvetica, sans-serif; font-weight: bold; text-align: center !important;">TỔNG CỘNG</strong>
											<br />
											<i>(Chi tiết theo từng loại tiền)</i>
										</td>
										</xsl:if>
										<td style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt; height: 23px; text-align: right; padding: 5px 6px;">
											<span style="font: 10pt arial, helvetica, sans-serif;">
												<xsl:value-of select="format-number(TONG_TIEN, '###,###.##')" />&#160;<xsl:value-of select="LOAI_TIEN" />
											</span>
										</td>
										<xsl:if test="$stt2 = '1'">
										<td colspan="3" rowspan="14" style="border-collapse: collapse; border-color: #000000 !important; border-style: solid; border-width: 1pt;"></td>
										</xsl:if>
									</tr>
								</xsl:for-each>
							</xsl:if>
						</tbody>
					</table>
					<br/>
				</div>
				
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;3. Lý do đề nghị:&#160;
					<xsl:value-of select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/LYDO" />
				</p>
				
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;4. Thông tin, tài liệu gửi kèm <i>(ghi rõ tên tài liệu, bản chính, bản sao)</i>:&#160;
					<xsl:value-of select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/TLIEU_DINHKEM" />
				</p>
				
				<p style="line-height: 25px;">
					&#160;&#160;&#160;&#160;&#160;&#160;5. Hình thức đề nghị nhận kết quả xác nhận:&#160;
					<br/>
					<div style="left: 0px; padding-bottom: 5px; padding-left: 30px">
					<xsl:if test="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/HTHUC_NHANKQUA ='01' ">
						<span style="left: 0; display: block;">
							<span style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">X</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Qua tài khoản giao dịch thuế điện tử tại:&#160;
							<xsl:if test="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_NHANKQUA/TKHOAN_GD ='TCT' ">
								Cổng thông tin điện tử của Tổng cục Thuế
							</xsl:if>
							<xsl:if test="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_NHANKQUA/TKHOAN_GD ='DVC' ">
								Cổng dịch vụ công quốc gia
							</xsl:if>
						</span>
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">&#160;</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Qua bưu điện theo địa chỉ:&#160;
						</span>
					</xsl:if>
					<xsl:if test="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/HTHUC_NHANKQUA ='02' ">
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">&#160;</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Qua tài khoản giao dịch thuế điện tử tại:&#160;
						</span>
						<span style="left: 0; display: block;">
							<span
								style="border: 1px solid; height: 14px; margin: 2px 20px; position: absolute; text-align: center; width: 14px;">
								<div style="margin-top: -3px;">X</div>
							</span>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Qua bưu điện theo địa chỉ:&#160;
							<xsl:value-of select="$NOIDUNG_XN/NOIDUNG_XACNHAN_CTIET/CTIET_NHANKQUA/DCHI_NHAN" />
						</span>
					</xsl:if>
					</div>
				</p>
				<br/>
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