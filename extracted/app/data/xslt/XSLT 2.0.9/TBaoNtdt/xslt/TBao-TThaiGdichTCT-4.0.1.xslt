<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
 xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 <xsl:include href="../common/common.xsl"/>
  <xsl:template match="/">
     <style type="text/css">ol { margin: 0; padding: 0 }
      #wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto; padding: 40px; position: relative; width: 700px;}
      #headermct { margin: auto; position: relative; width: 1000px; }
      #conten { float: left; margin: auto; position: relative; width: 100%; }
      .ms09 { border: 1px solid; float: right; height: 19px; padding: 10px; position: relative; top: -13px; width: 145px; text-align:center; }
      .table_hd { width: 100%; text-align: center; }
      #headermct table td{ padding: 0px;}
      .table_hr1 { margin-top: -8px; border-width: 1px thin; width: 105px; }
      .table_hr2 { border-width: 1px thin; margin-top: 8px; width: 210px; }
      .table_hr3 { border-width: 1px thin; margin-top: 8px; width: 150px; }
      .c5 { width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; }
      .c9 { width: 50px; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c8 { border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c20 { width: 54.2pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;
      }
      .c13 { width: 233.7pt; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c14 { width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; }
      .c22 { width: 233.6pt; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c6 { width: 52.8pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c21 { width: 61.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;
      }
      .c26 { border-style: solid; border-color: #000000; border-width: 0pt; }
      .c7 { width: 97.1pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c2 { line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt }
      .c3 { line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt }
      .c19 { height: 11pt; direction: ltr }
      .c10 { height: 28pt }
      .c1 { font-size: 13px; }
      .c18 { height: 22pt; }
      .c15 {  font-size: 12px; }
      .c4 { font-weight: bold }
      .c0 {  font-size: 15px; }
      .c25 { height: 0pt }
      .c11 { text-align: center }
      .c23 { font-style: italic }
      .c12 { height: 27pt; line-height: 40px; }
      .title { padding-top: 24pt; line-height: 1.1500000000000001; text-align: left; color: #000000;  font-size: 12px; }
      .subtitle { padding-top: 18pt; line-height: 1.1500000000000001; text-align: left; color: #666666; font-style: italic; font-size: 24px; }
      li { color: #000000;  font-size: 12px;  }
      #conten .table_hd { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; float: left; margin-top: 10px; position: relative; width: 100%; }
      #conten .table_hd tr { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center; }
      #conten .table_hd td { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; }
      .contenms9 {  font-size: 13px; }
      .tb_strong { align: center; }</style>
      	<xsl:variable name="tbThue1" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
	<xsl:variable name="NGAY_THONGBAO_NEW"   select="$tbThue1/NGAY_THONGBAO" />

	 
	  <xsl:variable name="date" select="10000 * substring($NGAY_THONGBAO_NEW, 7, 4) + 100 * substring($NGAY_THONGBAO_NEW, 4, 2) + substring($NGAY_THONGBAO_NEW, 1, 2)"/>

	  
  <xsl:choose>
        <xsl:when test="$date > 20141001 ">
            <!-- code for dates later than 2014-10-01  -->
			
			  
      <xsl:for-each select="THONGBAO/NDUNG_TBAO">
        <xsl:variable name="NDUNG_TBAO" select="." />
        <xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
        <xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />        
        <xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
        <xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
        <xsl:variable name="NGAY_THONGBAO" select="$NDUNG_TBAO/THONGBAO_HDR/NGAY_THONGBAO" />
        <xsl:variable name="MA_GDICH" select="$NDUNG_TBAO/THONGBAO_HDR/MA_GDICH" />
        <xsl:variable name="NGAY_HOSO" select="$NDUNG_TBAO/THONGBAO_HDR/NGAY_HOSO" />
        <xsl:variable name="MA_NGHANG_NOP" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGHANG_NOP" />
        <xsl:variable name="SO_GNT" select="./THONGBAO_CTIET/ROW_CTIET/SO_GNT" />
        <xsl:variable name="MA_TTHAI" select="./THONGBAO_CTIET/ROW_CTIET/MA_TTHAI" />
        <xsl:variable name="TEN_TTHAI" select="./THONGBAO_CTIET/ROW_CTIET/TEN_TTHAI" />
        <xsl:variable name="MA_NGUYENTE" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGUYENTE" />

         <xsl:for-each select="$NDUNG_TBAO/THONGBAO_HDR">
          <div id="headermct" style=" margin: auto; position: relative; width: 100%; ">
		  
             <p class="c2" style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;">&#160;</p>
					<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
						<div align="center" style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 250px;">
					<span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 5pt; height: 10pt; direction: ltr; padding-bottom: 0pt">
					Mẫu số: <b><xsl:value-of select="MAU_THONGBAO"/></b><br/>
                    (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban hành kèm theo Thông tư số 84/2016/TT-BTC
				của Bộ Tài Chính</span>)
					</span>
				</div>
				</td>
			</tr>
		</tbody>
	</table>
             <table cellpadding="0" cellspacing="0" class="table_hd">
              <tbody>
                  <tr class="c18 align-c">
                  <td class="c26 align-c">
                    <span class="c1 c4 c0" style="display: block; font-weight: normal">BỘ TÀI CHÍNH</span>
                    <span class="c1 c4 c0">
                      <b>TỔNG CỤC THUẾ</b>
                    </span>
                  </td>
                  <td class="c8 align-c">
                    <span class="c1 c4 c0">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                  </td>
                </tr>
                <tr class="c18 ">
                  <td class="align-c">
                    <hr class="table_hr1"/>
                  </td>
                  <td class="align-c">
                    <span class="c1 c4 c0 ">Độc lập - Tự do - Hạnh phúc</span>
                    <hr class="table_hr2"/>
                  </td>
                </tr>
                <tr class="c12">
                  <td class="c26 align-c">
                    <span class="c1 c15">Số:
                      <span class="contenms9">&#160;</span>
                      <xsl:if test="SO_THONGBAO !=''">
                        <span>
                          <xsl:value-of select="SO_THONGBAO"/>
                        </span>
                      </xsl:if>
                      /TB-TĐT</span>
                  </td>
                  <td class="c8 align-c">
                     <span>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/></i>
				</span>
                    
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="c2 c11">&#160;</p>
             <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center " >
              <span style=" font-weight: bold ;font-size: 15px; ">THÔNG BÁO</span>
            </p>
            <p  style=" line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center "> 
              <span style=" font-weight: bold ;font-size: 15px; "> V/v: Xác nhận nộp chứng từ nộp thuế điện tử</span>
            </p>
            <p class="c2 c11">&#160;</p>
            <p class="c3"  style=" margin-left: 30px;">
              <span style="font-size: 15px;  font-weight: bold ;">
              &#160;&#160;&#160;&#160;&#160;&#160;Kính gửi:
              </span>
              &#160;&#160;
              <span class="c1 c0 c23" style="font-size: 15px;">
              <xsl:choose>
                <xsl:when test="MST_NTHAY !=''">
                  <xsl:if test="TEN_NTHAY !=''">
                      <xsl:value-of select="TEN_NTHAY"/>
                  </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    <xsl:if test="TEN_NNOP !=''">
                      <xsl:value-of select="TEN_NNOP"/>
                    </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
              </span>
            </p>
            <p  style="margin-left: 30px; font-size:15px;padding-top:5px; "> <span  style=" font-size:15px; font-style:italic; ">&#160;&#160;&#160;&#160;&#160;Mã số thuế của NNT: &#160; </span>
              <span>
                <xsl:choose>
                <xsl:when test="MST_NTHAY !=''">
                  <xsl:if test="MST_NTHAY !=''">
                      <xsl:value-of select="MST_NTHAY"/>
                  </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    <xsl:if test="MST_NNOP !=''">
                      <xsl:value-of select="MST_NNOP"/>
                    </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
              </span>
            </p>
            	  	  <xsl:choose>
        <xsl:when test="$MA_TTHAI='17' ">
      
            <p  style="margin-left: 30px;line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">&#160;&#160;&#160;&#160;&#160;Căn cứ chứng từ nộp thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc
              <span class="c1 c23"  style="font-size:15px" id="hpgiayngaythang">
	<xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'yyyy')"/>		  
			  
			  
			  </span>
              <span class="c1 " style="font-size:15px;">, Cơ quan thuế xác nhận việc nộp chứng từ nộp thuế điện tử của người nộp thuế,cụ thể như sau:</span>     
            </p>
             <p class="c3"  style="margin-left: 30px;font-size:15px;"> &#160;&#160;&#160;&#160;&#160;Tên chứng từ nộp thuế điện tử:&#160;
              <span >
                 Thông tin Giấy nộp tiền.
              </span>
            </p>
             </xsl:when>
        <xsl:otherwise>
         <p  style="margin-left: 30px;line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">&#160;&#160;&#160;&#160;&#160;Căn cứ chứng từ nộp thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc
              <span class="c1 c23" id="hpgiayngaythang" style="font-size:15px">
			  <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_THONGBAO,'yyyy')"/></span>
		  <span class="c1 " style="font-size:15px;">, Cơ quan thuế thông báo về việc không nhận hồ sơ thuế điện tử/ chứng từ nộp thuế điện tử của người nộp thuế,cụ thể như sau: &#160;
            </span>
            </p>
        </xsl:otherwise>
    </xsl:choose>
          </div>
        </xsl:for-each>
       <div id="conten">
            	  	  <xsl:choose>
        <xsl:when test="$MA_TTHAI='17' ">
          <table cellpadding="0" cellspacing="0" class="table_hd" style="font-size:14px">
            <tbody id="msthongbao09">
              <tr>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">STT</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Số GNT</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">MST thụ hưởng</strong>
                </td>
                 <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tên người thụ hưởng</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tài khoản trích nợ</strong>
                </td>
                <td class="c7" style="text-align: center !important">
                  <strong class="tb_strong">Nộp cho KBNN</strong>
                </td>
                <td class="c9" style="text-align: center !important">
                  <strong class="tb_strong">Ngày nộp GNT</strong>
                </td>
                 <td class="c9" style="text-align: center !important">
                  <strong class="tb_strong">Loại tiền</strong>
                </td>
                <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">Tổng số tiền nộp NSNN </strong>
                </td>
              </tr>
              <xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
                <tr>
                <td style="height:23px;text-align: center;">
                    <span class="contenms9">1
                    </span>
                  </td>    
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="$SO_GNT !=''">
                        <xsl:value-of select="$SO_GNT"/>
                      </xsl:if>
                    </span>
                  </td>    
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                  <xsl:if test="$MST_NNOP !=''">
                      <xsl:value-of select="$MST_NNOP"/>
                    </xsl:if>
                    </span>
                  </td>
                   <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                       <xsl:if test="$TEN_NNOP !=''">
                        <xsl:value-of select="$TEN_NNOP"/>
                      </xsl:if>  
                    </span>
                  </td>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="STK_NGHANG_NOP !=''">
                        <xsl:value-of select="STK_NGHANG_NOP"/>
                      </xsl:if>
                      -
                      <xsl:if test="MA_NGHANG_NOP !=''">
                        <xsl:value-of select="MA_NGHANG_NOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="STK_KHOBAC_NOP !=''">
                        <xsl:value-of select="STK_KHOBAC_NOP"/>
                        -</xsl:if>
                      <xsl:if test="TEN_KHOBAC_NOP !=''">
                        <xsl:value-of select="TEN_KHOBAC_NOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td>
                  <xsl:if test="$NGAY_HOSO !=''">
                        <xsl:value-of select="$NGAY_HOSO"/>
                      </xsl:if>
                    </td>
                     <td>
                  <xsl:if test="$MA_NGUYENTE !=''">
                        <xsl:value-of select="$MA_NGUYENTE"/>
                      </xsl:if>
                    </td>
                  <td style="height:23px;text-align: right;">
                    <!--<span class="contenms9" id="tongtien">
                      <xsl:if test="TONGTIENNOP !=''">
                        <xsl:value-of select="TONGTIENNOP"/>
                      </xsl:if>
                    </span>-->                    
                     <span id="tong">
                                              <xsl:if test="MA_NGUYENTE ='VND'">
                                            <span class="contenms9" id="tongtien">                                           
                                                <xsl:if test="TONGTIENNOP !=''">
                                                    <xsl:value-of select="ihtkk:formatNumber(TONGTIENNOP)"/>
                                                </xsl:if>                                            
                                            </span>
                                              </xsl:if>
                                             <xsl:if test="MA_NGUYENTE ='USD'">
                                             <span class="contenms9" id="tongtienUSD">                                            
                                                <xsl:if test="TONGTIENNOP !=''">
                                                    <xsl:value-of select="ihtkk:toFormatDecimal(TONGTIENNOP)"/>
                                                </xsl:if>                                               
                                            </span>
                                             </xsl:if>
                                             </span>
                    
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
              <p class="c3" style="margin-left: 30px; font-size: 15px; ">&#160;&#160;&#160;&#160;&#160;Mã giao dịch điện tử:&#160;
              <xsl:if test="$MA_GDICH !=''">
                        <xsl:value-of select="$MA_GDICH"/>
                      </xsl:if> </p>
          <!--   <p class="c3" style="margin-left: 30px; font-size: 15px; ">&#160;&#160;&#160;&#160;&#160;Số giấy nộp tiền:&#160;
              <xsl:if test="$SO_GNT !=''">
                        <xsl:value-of select="$SO_GNT"/>
                      </xsl:if> </p>-->
                            </xsl:when>
        <xsl:otherwise>
         <p class="c3" style="margin-left: 30px; font-size: 15px; ">&#160;&#160;&#160;&#160;&#160;Mã giao dịch điện tử:&#160;
              <xsl:if test="$MA_GDICH !=''">
                        <xsl:value-of select="$MA_GDICH"/>
                      </xsl:if> </p>
            <!-- <p class="c3" style="margin-left: 30px; font-size: 15px; ">&#160;&#160;&#160;&#160;&#160;Số giấy nộp tiền:&#160;
              <xsl:if test="$SO_GNT !=''">
                        <xsl:value-of select="$SO_GNT"/>
                      </xsl:if> </p>-->
                       <p class="c3" style="margin-left: 30px; font-size: 15px; ">&#160;&#160;&#160;&#160;&#160;Lý do:&#160;
              <xsl:if test="$TEN_TTHAI !=''">
                        <xsl:value-of select="$TEN_TTHAI"/>
                      </xsl:if> </p>
          </xsl:otherwise>
    </xsl:choose>
          <div class="contenfter">
          <p class="c3" style="margin-left: 30px; font-size: 15px; ">
            <span class="c1 "  style="font-size:15px;">Người nộp thuế cần biết thêm chi tiết xin vui lòng truy cập theo đường dẫn:&#160;</span>
            <span class="c1 c23"  style="font-size:15px;">
              <a href="https://nopthue.gdt.gov.vn">https://nopthue.gdt.gov.vn</a> hoặc  <a href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a>
            </span>
              <span class="c1 "  style="font-size:15px;"> hoặc gọi điện tới số hotline: 0437689679 để được hỗ trợ trực tiếp.</span>
          </p>
           <p class="c3" style="margin-left: 30px; font-size: 15px; ">
          <span class="c1 " style="margin-left: 30px; font-size: 15px; ">Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</span>
          </p>
          </div>
        </div>
        <div style="clear: both;">&#160;</div>
      </xsl:for-each>
	  <!-- The end -->
        </xsl:when>
        <xsl:otherwise>
            <!-- code for dates earlier than or equal to 2014-10-01 -->
			
			
			 <xsl:for-each select="THONGBAO/NDUNG_TBAO">
        <xsl:variable name="NDUNG_TBAO" select="." />
        <xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
        <xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />
        
        <xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
        <xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
        <xsl:variable name="MA_NGHANG_NOP" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGHANG_NOP" />
        <xsl:for-each select="$NDUNG_TBAO/THONGBAO_HDR">
          <div id="headermct">
            <p class="c2">&#160;</p>
            <div class="ms09 c1">
              <span>Mẫu số:&#160;
                <xsl:if test="MAU_THONGBAO !=''">
                  <span>
                    <xsl:value-of select="MAU_THONGBAO"/>
                  </span>
                </xsl:if>
              </span>
            </div>
            <table cellpadding="0" cellspacing="0" class="table_hd">
              <tbody>
                <tr class="c18 align-c">
                  <td class="c26 align-c">
                    <span class="c1 c4 c0" style="display: block">BỘ TÀI CHÍNH</span>
                    <span class="c1 c4 c0">
                      <b>TỔNG CỤC THUẾ</b>
                    </span>
                  </td>
                  <td class="c8 align-c">
                    <span class="c1 c4 c0">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                  </td>
                </tr>
                <tr class="c18 ">
                  <td class="align-c">
                    <hr class="table_hr1"/>
                  </td>
                  <td class="align-c">
                    <span class="c1 c4 c0 ">Độc lập - Tự do - Hạnh phúc</span>
                    <hr class="table_hr2"/>
                  </td>
                </tr>
                <tr class="c12">
                  <td class="c26 align-c">
                    <span class="c1">Số:
                      <span class="contenms9">
                        <xsl:if test="SO_THONGBAO !=''">
                          <span>
                            <xsl:value-of select="SO_THONGBAO"/>
                          </span>
                        </xsl:if>
                      </span>
                      /TB-TCT</span>
                  </td>
                  <td class="c8 align-c">
                    <span class="contenms9" id="ngaythang" hidden="true" style="display: none;">
                      <xsl:if test="NGAY_THONGBAO !=''">
                        <xsl:value-of select="NGAY_THONGBAO"/>
                      </xsl:if>
                    </span>
                    <span class="c1" id="ngay_thang">Ngày....tháng..... năm....</span>
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="c2 c11">&#160;</p>
            <p class="c3 c11">
              <span class="c1 c4 c0">THÔNG BÁO</span>
            </p>
            <p class="c3 c11">
              <span class="c1 c0 c4">
                V/v Xác nhận trạng thái Giấy nộp tiền.
              </span>
            </p>
            <hr class="table_hr3" />
            <p class="c2 c11">&#160;</p>
            <p class="c3">
              <span class="c1 c0">
                <strong class="tb_strong">Kính gửi:</strong>
              </span>
              &#160;&#160;
              <span class="c1 c0 c23">
                 <xsl:choose>
                <xsl:when test="MST_NTHAY !=''">
                  <xsl:if test="TEN_NTHAY !=''">
                      <xsl:value-of select="TEN_NTHAY"/>
                  </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    <xsl:if test="TEN_NNOP !=''">
                      <xsl:value-of select="TEN_NNOP"/>
                    </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
              </span>
            </p>
            <p class="c3" style="margin-left: 0px;">Mã số thuế: &#160;
              <span class="c1">
               <xsl:choose>
                <xsl:when test="MST_NTHAY !=''">
                  <xsl:if test="MST_NTHAY !=''">
                      <xsl:value-of select="MST_NTHAY"/>
                  </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    <xsl:if test="MST_NNOP !=''">
                      <xsl:value-of select="MST_NNOP"/>
                    </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
              </span>
            </p>
            <p class="c3">Vào&#160;
              <span class="c1 c23" id="hpgiayngaythang">...giờ ... phút ... giây , ngày DD/MM/YYYY</span>
              <span class="c1 ">Tổng cục thuế thông báo xác nhận trạng thái giao dịch nộp thuế điện tử của NNT với thông tin chi tiết trạng thái giao dịch chứng từ như sau:</span>
            </p>
          </div>
        </xsl:for-each>
        <div id="conten">
          <p class="c2 c11">&#160;</p>
          <table cellpadding="0" cellspacing="0" class="table_hd">
            <tbody id="msthongbao09">
              <tr>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Số GNT</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Ngày nộp GNT</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">MST thụ hưởng</strong>
                </td>
                 <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tên người thụ hưởng</strong>
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tài khoản trích nợ</strong>
                </td>
                <td class="c7" style="text-align: center !important">
                  <strong class="tb_strong">Nộp cho KBNN</strong>
                </td>
                <td class="c20" style="text-align: center !important">
                  <strong class="tb_strong">Tổng số khoản</strong>
                </td>
                <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">Tổng số tiền nộp NSNN</strong>
                </td>
                <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">Trạng thái</strong>
                </td>
              </tr>
              <xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
                <tr>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="SO_GNT !=''">
                        <xsl:value-of select="SO_GNT"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td>&#160;</td>
                   <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:choose>
                <xsl:when test="$MST_NTHAY !=''">
                  <xsl:if test="$MST_NNOP !=''">
                      <xsl:value-of select="$MST_NNOP"/>
                    </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    &#160;
                    </xsl:otherwise>
                </xsl:choose>
                    </span>
                  </td>
                   <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:choose>
                    <xsl:when test="$MST_NTHAY !=''">
                       <xsl:if test="$TEN_NNOP !=''">
                        <xsl:value-of select="$TEN_NNOP"/>
                      </xsl:if>
                     </xsl:when>
                  <xsl:otherwise>
                    &#160;
                    </xsl:otherwise>
                </xsl:choose>
                    </span>
                  </td>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="STK_NGHANG_NOP !=''">
                        <xsl:value-of select="STK_NGHANG_NOP"/>
                      </xsl:if>
                      -
                      <xsl:if test="MA_NGHANG_NOP !=''">
                        <xsl:value-of select="MA_NGHANG_NOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="STK_KHOBAC_NOP !=''">
                        <xsl:value-of select="STK_KHOBAC_NOP"/>
                        -</xsl:if>
                      <xsl:if test="TEN_KHOBAC_NOP !=''">
                        <xsl:value-of select="TEN_KHOBAC_NOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td style="height:23px;text-align: center;">
                    <span class="contenms9">
                      <xsl:if test="TONGSOMON !=''">
                        <xsl:value-of select="TONGSOMON"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9" id="tongtien">
                      <xsl:if test="TONGTIENNOP !=''">
                        <xsl:value-of select="TONGTIENNOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9">
                      <xsl:if test="TEN_TTHAI !=''">
                        <xsl:value-of select="TEN_TTHAI"/>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
          <p class="c2 c11">&#160;</p>
          <p class="c3">
            <span class="c1 ">Để tra cứu thông tin đã nộp nói trên, xin vui lòng truy cập theo đường dẫn:&#160;</span>
            <span class="c1 c23">
              <a href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a> hoặc  <a href="http://nopthue.gdt.gov.vn">http://nopthue.gdt.gov.vn</a>
            </span>
          </p>
        </div>
        <div style="clear: both;">&#160;</div>
      </xsl:for-each>
	  
	  <!-- The end -->
        </xsl:otherwise>
    </xsl:choose>
	  <div id="sigDiv"></div>
	  
	
  </xsl:template>
</xsl:stylesheet>
