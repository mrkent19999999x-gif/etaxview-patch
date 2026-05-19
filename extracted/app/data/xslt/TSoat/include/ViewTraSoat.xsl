<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
 xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 
 <xsl:include href="../common/common.xsl"/> 
    <xsl:template match="/">
       <style type="text/css">#wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto;
                              padding: 20px; position: relative; width: 700px; line-height: 18px; } #headermct { height:
                              160px; width: 100%; position: relative; margin: auto; } #headerlef { border: 1px solid;
                              height: 43px; padding: 18px; position: absolute; text-align: center; width: 98px; top:
                              10px; } #headerright { position: absolute; right: 0; text-align: center; } #headercenter {
                              left: 190px; position: absolute; top: 40px; text-align: center; line-height: 22px; }
                              #conten { float: left; font-size: 10pt; line-height: 21px; margin: auto; position:
                              relative; width: 100%; } #conten_ttnt { margin: auto; position: relative; float: left;
                              width: 100%; } #contenTk21_29{ position: relative; float: left; width: 100%; margin: auto;
                              } #contenTk21_291{ position: relative; float: left; display: inline-block; width: 100%;
                              margin: auto; } #contenTk21_22 {line-height: 22px; float: left; height: 40px; left: 2px;
                              position: relative; width: 400px; } .tk352_2 { left: 0;margin-left:0px; } .tk352_1 { left:
                              0;margin-left:60px; } #contenTk21_22 .tk3521 { left: 0; display: block; } #contenTk21_22
                              .tk3522 { left: 0; display: block; } #contenTk21_22 .tk3521_1 { border: 1px solid; height:
                              14px; margin: 0px 20px 10px; text-align: center; width: 14px; position: absolute; }
                              #contenTk24_12 { float: left; height: 40px; left: 0px; width: 160px; margin-left:170px} 
                              #contenTkTien24_12 { float: left; height: 50px; left: 0px; width: 500px;  display: inline;}
                               #contenTkTien24_12 .tk3231 { left: 0;  font-size: 15px; margin: 0px 0px 0px 20px ;}
                              #contenTk24_12
                              .tk3231 { left: 0; display: block; font-size: 15px; margin: 0px 0px 0px 0px ;}
                              #contenTk24_12 .tk3232 { left: 0; display: block; } #contenTk24_12 .tk3231_1 { border: 1px
                              solid; height: 14px; margin: 3px 20px 0px 0px; position: absolute; text-align: center;
                              width: 14px; } #contenTk24_12 .tk3232_1 { border: 1px solid; height: 14px; margin: 0px
                              21px; position: absolute; text-align: center; width: 14px; } #contenTk25_12 {height: 40px;
                              float: left;margin-left:25px} #contenTk25_12 .tk2112 { left: 0;display: block; font-size: 15px; margin:
                              0px 0px 0px 20px ;} #contenTk25_12 .tk2113 { left: 0; display: block; } #contenTk25_12
                              .tk2112_1 { border: 1px solid; height: 14px; margin: 3px 20px 0px 0px; position: absolute;
                              text-align: center; width: 14px; } #contenTk25_12 .tk2113_1 { border: 1px solid; height:
                              14px; margin: 0px 21px; position: absolute; text-align: center; width: 14px; }
                              #contenTk26_12 {height: 40px; width: 100%; float: left;} #contenTk26_12 .tk2114 { left:
                              0;display: block; font-size: 15px; margin: 0px 0px 0px 5px;} #contenTk26_12 .tk2115 {
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
                              .ttnt_1,.ttnt_3,.ttnt_4,.ttnt_5,.ttnt_7,.ttnt_8,.ttnt_10,.ttnt_11,.ttnt_12,.ttnt_14,.ttnt_15,.ttnt_17,.ttnt_18,.ttnt_20,.ttnt_21,.ttnt_23,.ttnt_24,.ttnt_26{
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
                              break-word; float: left; position: relative; } .float_l{ float: left; position: relative; }</style>
    <xsl:for-each select="TRASOAT_THUE/NOIDUNG_TRASOAT_TMS">
      <xsl:variable name="NOIDUNG_TRASOAT_TMS" select="."/>
           <div id="headermct" style=" margin: auto; position: relative; width: 100%; ">
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
                                        <b>Mẫu số C1- 11/NS</b>
                                        <br/>
                                        (
                                        <span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban
                                                                                                                          hành
                                                                                                                          theo
                                                                                                                          Thông
                                                                                                                          tư
                                                                                                                          số
                                                                                                                          84/2016/TT-BTC
                                                                                                                          của
                                                                                                                          Bộ
                                                                                                                          Tài
                                                                                                                          chính</span>
                                        )
                                    </span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellpadding="0" cellspacing="0" class="table_hd">
                    <tbody>
                        <tr class="c18 align-c">
                            <td class="c8 align-c">
                                <span class="c1 c4 c0">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                            </td>
                        </tr>
                        <tr class="c18 ">
                            <td class="align-c">
                                <span class="c1 c4 c0 ">Độc lập - Tự do - Hạnh phúc</span>
                                <hr class="table_hr2"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="c2 c11"> </p>
             <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center ">
                <span style=" font-weight: bold ;font-size:25px; ">THƯ TRA SOÁT</span>
            </p>
            
            <p class="c2 c11"> </p>
            <p class="c3" style=" margin-left: 30px;">
                <span style="font-size: 20px;  font-weight: bold ;">Kính gửi :</span>                 
                <span class="c1 c0 c23" style="font-size: 15px;">
                    <xsl:value-of select="$NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT/TEN_CQTHU"/>
                </span>
            </p>
      <xsl:for-each select="$NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT">
        <xsl:variable name="NOIDUNG_TRASOAT" select="."/>
      <div id="conten">
                    <xsl:for-each select="$NOIDUNG_TRASOAT">
                    <table>
                            <tr>
                                <td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Tên cá nhân/ đơn vị:
                                        <xsl:value-of select="TEN_NNOP"/>
                                    </span>
                                </td>
                             
                            </tr>
							<tr>
							   <td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Mã số thuế:
                                        <xsl:value-of select="MST_NNOP"/>
                                    </span>
                                </td>
							</tr>
                            <tr>
                                <td colspan="3">
                                    <span style="font-size: 15px;  ">
                                        Địa chỉ:
                                        <xsl:value-of select="DIACHI_NNOP"/>
                                    </span>
                                </td>                             
                            </tr>
							<tr>
							   <td width="340px">
                                    <span style="font-size: 15px;  ">
                                        Quận/Huyện: 
                                        <xsl:value-of select="TEN_HUYEN_NNOP"/>
                                    </span>
                                </td>								
                                <td style="padding-left:30px">
                                    <span style="font-size: 15px;  ">
                                        Tỉnh,TP:
                                        <xsl:value-of select="TEN_TINH_NNOP"/>
                                    </span>
                                </td>
							</tr>
                            <tr></tr>
                        </table>
                              <table>
                            <tr>
                                <td colspan="4">
                                    <span width="800px" style="font-size: 15px;  ">Thực hiện nộp tiền vào NSNN bằng hình
                                                                                   thức:</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="20%"></td>
                                <td width="25%">
                                    <span style="font-size: 15px;  ">Tiền mặt </span>
                                         <span style=" border: 1px solid;height: 34px; 
                              text-align: center; width: 34px;   ">  
                                            <xsl:if test="LOAI_TS = 01">&#160;X &#160;</xsl:if>
                                            <xsl:if test="LOAI_TS != 01">&#160;&#160;&#160; </xsl:if>
                                      </span>
                                </td>
                                <td width="25%">
                                    <span style="font-size: 15px;  ">Chuyển khoản </span>
                                    <span style=" border: 1px solid;height: 34px; 
                              text-align: center; width: 34px;   ">   
                                            <xsl:if test="LOAI_TS = 02">&#160;X &#160;</xsl:if>
                                            <xsl:if test="LOAI_TS != 02">&#160;&#160;&#160; </xsl:if></span>
                                        
                                </td>
                                <td width="30%">
                                    <span style="font-size: 15px;  ">Nộp thuế điện tử </span>
                                    
                                        <span style=" border: 1px solid;height: 34px; 
                              text-align: center; width: 34px;   ">     <xsl:if test="LOAI_TS = 03">&#160;X &#160;</xsl:if>
                                            <xsl:if test="LOAI_TS != 03">&#160;&#160;&#160; </xsl:if></span>
                                       
                                         
                                      
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Tên cá nhân/ đơn vị:
                                        <xsl:value-of select="TEN_NNOP"/>
                                    </span>
                                </td>
                                <td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Mã số thuế:
                                        <xsl:value-of select="MST_NNOP"/>
                                    </span>
                                </td>
                            </tr>
                        </table>
                        
                            <table>
                            <tr>
                                <td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Đã được NH/ KBNN:
                                        <xsl:value-of select="TEN_NHANG_NOP"/>
                                    </span>
                                </td>
                                
                            </tr>
                            <tr>
				<td colspan="2">
                                    <span style="font-size: 15px;  ">
                                        Trích TK số:
                                        <xsl:value-of select="STK_NHANG_NOP"/>
                                    </span>
                                </td>
				</tr>
                        </table>
                        
        
                 <div id="conten_ttnt">
                            <div id="contenTk21_30">
                                <div id="contenTk26_12">
                                    <span class="tk2114">Để nộp vào NSNN theo:</span>
                                </div>
                            </div>
                            <div id="contenTk24_12">
                                <span class="tk3231">
                                    Nộp vào NSNN
                                    <span class="tk3231_1">
                                        <div class="divcheckx">
                                            <xsl:if test="STK_THU = 7111">X</xsl:if>
                                            <xsl:if test="STK_THU != 7111"> </xsl:if>
                                        </div>
                                    </span>
                                    <span style="VISIBILITY:hidden">
                                        <xsl:value-of select="STK_THU"/>
                                    </span>
                                </span>
                            </div>
                            <div id="contenTk25_12">
                                <span class="tk2112">
                                    TK thu hồi quỹ hoàn thuế GTGT
                                    <span class="tk2112_1">
                                        <div class="divcheckx">
                                            <xsl:choose>
												<xsl:when test="STK_THU = 3397">
													X
												</xsl:when>
												<xsl:when test="STK_THU = 8993">
													X
												</xsl:when>
												<xsl:when test="STK_THU = 8991">
													X
												</xsl:when>
												<xsl:otherwise>
												</xsl:otherwise>
											</xsl:choose>
                                        </div>
                                    </span>
                                </span>
                            </div>
                        </div>
                     <div id="conten_ttnt">                       
                                <div id="contenTk26_12">
                                <span class="tk2114">
                                    Số tiền:
                                    <span id="tiennop">
									<xsl:if test="MA_NT ='VND'">
										<xsl:value-of select="ihtkk:formatNumber($NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT/TIEN_PNOP)"/>
									 </xsl:if>
									  <xsl:if test="MA_NT ='USD'">
										<xsl:value-of select="ihtkk:toFormatDecimall($NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT/TIEN_PNOP)"/>
									 </xsl:if>  									 
                                    </span>
									<span style="padding-left:5px">
									 <xsl:if test="MA_NT !=''">
										<xsl:value-of select="MA_NT"/>
									 </xsl:if>
									 </span>
                                </span>                       
                            </div>                            								
                        </div>
						<br/>
							<div id="" style="font-size:15px">
                               <span class="">
                                   Bằng chữ:  
								     <xsl:if test="MA_NT ='VND'">
                                     <xsl:value-of select="ihtkk:DocTienBangChu($NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT/TIEN_PNOP)"/> đồng (VND)
									 </xsl:if>
									  <xsl:if test="MA_NT ='USD'">
                                     <xsl:value-of select="ihtkk:toEnglishCashUSD($NOIDUNG_TRASOAT_TMS/NOIDUNG_TRASOAT/TIEN_PNOP)"/> dollar (USD)
									 </xsl:if>
                                </span>								
                            </div> 				
							
            <!--- End Bieudt-->
              <p style="font-size:15px; ">
             Vào tài khoản của KBNN:
              <xsl:if test="TEN_KBAC !=''">
                <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="TEN_KBAC"/>
                </span>
              </xsl:if>              
            </p>
			<p style="font-size:15px; ">
				<span >
                Tỉnh/TP:
                <xsl:if test="TEN_TINH_KBAC !=''">
                  <span class="ttnt_20" style="font-size:15px;">
                    <xsl:value-of select="TEN_TINH_KBAC"/>
                  </span>
                </xsl:if>
              </span>
			</p>
              <p style="font-size:15px; margin-top: 5px;">    Mở tại ngân hàng ủy nhiệm thu:  <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="TEN_NHANG_THU"/>
                </span></p>
                   <p style="font-size:15px; margin-top: 5px;">   Ngày thực hiện giao dịch:  <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="NGAY_NOP"/>
                </span></p>
                
                   <p style="font-size:15px; margin-top: 5px;">   Nội dung sai sót:  <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="NOI_DUNG"/> ;
                    
                </span></p>
                       <p style="font-size:15px; margin-top: 5px;">   Nội dung đề nghị điều chỉnh:  <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="NOI_DUNG_DC"/>
                </span></p>
                
				<p style="font-size:15px; margin-top: 5px;">
				Đính kèm (chứng từ/tài liệu):
					<xsl:if test="SO_CTU !=''">
							 Chứng từ NH/KB số:                   
                           <xsl:value-of select="SO_CTU"/>.
                     </xsl:if>    
					<xsl:if test="LOAI_TS =03">
						<xsl:if test="MA_TCHIEU !=''">					 
							Mã giao dịch/Số tham chiếu: 
                        <xsl:value-of select="MA_TCHIEU"/>.
						</xsl:if>
						<xsl:if test="SO_GNT !=''">
							Số GNT                      
                        <xsl:value-of select="SO_GNT"/>.
						</xsl:if>
					</xsl:if>
                </p>
				
                     <p style="font-size:15px; margin-top: 5px;">     Kính đề nghị:  <span class="ttnt_18" style="font-size:15px;">
                  <xsl:value-of select="TEN_CQTHU"/> xem xét, giải quyết./. 				                      
                </span></p>
				
                <p style="font-size:15px; margin-top: 5px; text-align: right;">
                             <span class="contenms9"  >
                      <xsl:if test="NGAY_GUI !=''">                     
							Ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_GUI,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_GUI,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_GUI,'yyyy')"/>
                      </xsl:if>
                 </span>
                    </p>
      
                    </xsl:for-each>
                </div>
      </xsl:for-each>
      <div style="clear: both;"> </div>
    </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>