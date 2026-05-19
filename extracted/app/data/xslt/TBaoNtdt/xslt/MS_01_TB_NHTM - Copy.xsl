<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
  <xsl:template match="/">
    <style type="text/css">ol { margin: 0; padding: 0 }
      #wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto; padding: 40px; position: relative; width: 700px;}
      #headermct { margin: auto; position: relative; width: 100%; }
      #conten { float: left; margin: auto; position: relative; width: 100%; }
      .ms09 { border: 1px solid; float: right; height: 19px; padding: 10px; position: relative; top: -13px; width: 185px; }
      .table_hd { width: 100%; text-align: center; }
      #headermct table td{ padding: 0px;}
      .table_hr1 { margin-top: -8px; border-width: 1px thin; width: 105px; }
      .table_hr2 { border-width: 1px thin; margin-top: 8px; width: 210px; }
      .table_hr3 { border-width: 1px thin; margin-top: 8px; width: 150px; }
      .c5 { width: 20pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; }
      .c9 { width: 74.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c8 { border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c20 { width: 54.2pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;
      }
	   .c35 { width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; }
    
      .c13 { width: 233.7pt; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c14 { width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; }
      .c22 { width: 233.6pt; border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c6 { width: 52.8pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c21 { width: 140.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;
      }
      .c26 { width: 140pt; border-style: solid; border-color: #000000; border-width: 0pt; }
      .c7 { width: 97.1pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
      .c2 { line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt }
      .c3 { line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt }
      .c19 { height: 11pt; direction: ltr }
      .c10 { height: 28pt }
      .c1 { font-size: 13px }
      .c18 { height: 22pt; }
      .c15 { font-size: 14px }
      .c4 { font-weight: bold }
      .c0 { font-size: 15px }
      .c25 { height: 0pt }
      .c11 { text-align: center }
      .c23 { font-style: italic }
      .c12 { height: 27pt; line-height: 40px; }
      .title { padding-top: 24pt; line-height: 1.1500000000000001; text-align: left; color: #000000; font-size: 36px;  font-weight: bold; padding-bottom: 6pt }
      .subtitle { padding-top: 18pt; line-height: 1.1500000000000001; text-align: left; color: #666666; font-style: italic; font-size: 24px;  padding-bottom: 4pt }
      
      #conten .table_hd1 { border-collapse: collapse; border-color: #000000; float: left; margin-top: 10px; position: relative; width: 100%; color: #404040;}
      #conten .table_hd1 tr { border-collapse: collapse; border-color: #000000;  }
      #conten .table_hd1 td { border-collapse: collapse; border-color: #000000;  }
      .contenms9 {  font-size: 13px; }
      .tb_strong { align: center; }</style>
            
      <xsl:for-each select="TBAO_TKHOAN_NH">
        <xsl:variable name="TBAO_TKHOAN_NH" select="." />
        <xsl:for-each select="$TBAO_TKHOAN_NH">
		    
          <div id="headermct" style="margin: auto; position: relative; width: 100%;">
       
			  <p  style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;">&#160;</p>
					<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					
						<div align="center" style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 285px;">
					<span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					Mẫu số: <b>04/TB-TDT</b><br/>
                    (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban hành kèm theo Thông tư số 110/2015/TT-BTC
                    ngày 28/07/2015 của Bộ Tài chính</span>)
				
					</span>
				</div>
			
				</td>
			</tr>
			
			</tbody>
	</table>
			
            <table cellpadding="0" cellspacing="0" style=" width: 100%; text-align: center;">
              <tbody>
                <tr  style="height: 22pt; ">
                  <td style=" width: 140pt; border-style: solid; border-color: #000000; border-width: 0pt; ">
                    <span  style="font-size: 15px; font-weight: bold;">NGÂN HÀNG
                      <xsl:if test="MA_NHANG !=''">
                        <span>
                          <xsl:value-of select="MA_NHANG"/>
                        </span>
                      </xsl:if>
                    </span>
                  </td>
                  <td class="c8 align-c">
                    <span  style="font-size: 15px; font-weight: bold;">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                  </td>
                </tr>
                <tr class="c18 " style="height: 22pt; ">
                  <td class="align-c">
                    <hr class="table_hr1"/>
                  </td>
                  <td class="align-c">
                    <span  style="font-size: 15px; font-weight: bold;">Độc lập - Tự do - Hạnh phúc</span>
                    <hr class="table_hr2"/>
                  </td>
                </tr>
                <tr class="c12">
                  <td style=" width: 140pt; border-style: solid; border-color: #000000; border-width: 0pt; ">
                    <span class="c1 c15">Số:
                      <span class="contenms9">&#160;</span>
                      <xsl:if test="SO_TBAO !=''">
                        <span>
                          <xsl:value-of select="SO_TBAO"/>
                        </span>
                      </xsl:if>
                      /TB-NHTM</span>
                  </td>
                  <td class="c8 align-c">
                
                   <span>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/></i>
				</span>
  
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="c2 c11">&#160;</p>
            <p  style=" text-align: center; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; ">
              <span  style="font-size: 15px; font-weight: bold;">THÔNG BÁO</span>
            </p>
            <p  style=" text-align: center; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; ">
              <span   style="font-size: 15px; font-weight: bold;">V/v Chấp nhận đăng ký sử dụng dịch vụ nộp thuế điện tử qua NHTM</span>
            </p>
            <!--<hr  style=" text-align: center; border-width: 1px thin; margin-top: 8px; width: 150px; " />-->
            <p class="c2 c11" >&#160;</p>
            <p  style="margin-left: 50px; line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt ">
              <span  style="font-size: 13px; font-weight: bold;">
                <strong class="tb_strong"> Kính gửi:&#160;</strong>
              </span>
              &#160;&#160;
              <span style=" font-size: 15px; font-style: italic;">
                <xsl:if test="TEN_NNT !=''">
                  <xsl:value-of select="TEN_NNT"/>
                </xsl:if>
              </span>
            </p>
            <p class="c0" style="margin-left: 50px; font-size: 15px ">Mã số thuế của NNT: &#160;
              <span style="font-size: 15px; ">
                <xsl:if test="MST !=''">
                  <xsl:value-of select="MST"/>
                </xsl:if>
              </span>
            </p>
			
			
			 &#160;  &#160;  &#160;  &#160; &#160;  &#160;  &#160;Vào&#160;
				<xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>, người nộp thuế đã được Ngân hàng: <xsl:if test="TEN_NHANG !=''">
                  <span>
                    <xsl:value-of select="TEN_NHANG"/>
                  </span>
                </xsl:if> chấp nhận đăng ký thực hiện thủ tục nộp thuế điện tử qua Ngân hàng, thông tin chi tiết như sau:
  
       
          </div>
          <div style="float: left; margin: auto; position: relative; width: 100%;">
	

		   <p style="margin-left: 50px; line-height: 1.5; margin-top: 10px; direction: ltr; padding-bottom: 0pt ">
			  <span  style=" font-size:16px;">1. Thông tin tài khoản, chứng thư số đưng ký thủ tục nộp thuế điện tử:</span>
		    </p>
          <table cellpadding="0" cellspacing="0"  style=" width: 100%; text-align: center;">
            <tbody id="msthongbao09">
              <tr>
                <td  style="text-align: center !important; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                  <strong class="tb_strong">STT</strong>
                </td>
                <td class="c14" style="text-align: center !important;  width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                  <strong class="tb_strong">Số tài khoản sử dụng dịch vụ NTĐT</strong>
                </td>
                <td style=" width: 90.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;text-align: center !important">
                  <strong class="tb_strong">Tên chủ tài khoản</strong>
                </td>
                <td style="text-align: center !important;  width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                  <strong class="tb_strong">Tên tổ chức chứng thực chữ ký số</strong>
                </td>
                 <td style=" width: 140.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <strong class="tb_strong">Số sê-ri chứng thư số</strong>
                </td>
				   <!--   <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Chủ thể chứng thư số</strong>
                </td>-->
                <td class="c14" style="text-align: center !important;  width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;" colspan="2">
                  <strong class="tb_strong">Thời hạn sử dụng chứng thư số</strong>
                </td>
            
              </tr>
			  
			         <xsl:for-each select="$TBAO_TKHOAN_NH/TTIN_TKHOAN/STK">
                <tr  class="c12">
				
				  <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">

                    <xsl:number/>
                   
                  </td>  
				  
                  <td  style="height:23px;text-align: center; width: 90.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;" >
                                    <span class="contenms9">   	&#160;  
				 <xsl:if test="$TBAO_TKHOAN_NH/TTIN_TKHOAN/STK !=''">
                      <span>
					   
                        <xsl:value-of select="."/>
                      </span>
                    </xsl:if>
					</span>
                  </td>
				  
				 
				  
				    <td   style=" width: 90.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8px 0pt 5.8px ; text-align: left; height:23px;">
                   
				   <span class="contenms9">
					    	&#160;  
               <!--   <xsl:if test="$TBAO_TKHOAN_NH/SUBJECT_CERT_NTHUE !=''">
                    <span>
                      <xsl:value-of select="$TBAO_TKHOAN_NH/SUBJECT_CERT_NTHUE"/>
                    </span>
                  </xsl:if>-->
				  </span>
                </td>
				  <td  style="height:23px;text-align: right;  width: 140.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                    <span class="contenms9">
					    	&#160;  
				    <xsl:if test="$TBAO_TKHOAN_NH/ISSUER_CERT_NTHUE !=''">
                    <span>
                      <xsl:value-of select="$TBAO_TKHOAN_NH/ISSUER_CERT_NTHUE"/>
                    </span>
                  </xsl:if>
				  </span>
				  </td>
				 <td    style=" width: 140.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; height:23px;text-align: right;">
                    <span class="contenms9">
                   <xsl:if test="$TBAO_TKHOAN_NH/SERIAL_CERT_NTHUE !=''">
                    <span>
                      <xsl:value-of select="$TBAO_TKHOAN_NH/SERIAL_CERT_NTHUE"/>
                    </span>
                  </xsl:if>
				  </span>
                </td>
				<!--
				 <td class="c14"  style="height:23px;text-align: right;">
                    <span class="contenms9">
                                <xsl:if test="$TBAO_TKHOAN_NH/SUBJECT_CERT_NTHUE !=''">
                        <xsl:value-of select="$TBAO_TKHOAN_NH/SUBJECT_CERT_NTHUE"/>
                      </xsl:if>
				  </span>
                </td>-->
				
				 <td   style="height:23px; text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                     <!--    <span class="contenms9">
                                <xsl:if test="$VALIDFROM !=''">
                        <xsl:value-of select="$VALIDFROM"/>
                      </xsl:if>
				  </span>-->
				  <a>  &#160; </a>
                </td>
					 <td   style="height:23px; text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms9">
					&#160;
                                 <!--   <xsl:if test="$VALIDTO !=''">
                        <xsl:value-of select="$VALIDTO"/>
                      </xsl:if>-->
				  </span>
                </td>
                </tr>
              </xsl:for-each>
			      </tbody>
</table>


   
             <p class="c3" style="margin-left: 50px; line-height: 1.5; margin-top: 6pt; direction: ltr; padding-bottom: 0pt ">
			  <span   style=" font-size:16px;">&#160; 2. Địa chỉ thư điện tử để nhận thông báo, phản hồi của Ngân Hàng</span>
		    </p>
			      <table cellpadding="0" cellspacing="0" class="table_hd">
            <tbody id="msthongbao09">
              <tr >
              <td style="text-align: center !important;  width: 50pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                  <span >STT</span>
                </td>
                <td  style="text-align: center !important;  width: 250.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                  <span >Địa chỉ thư điện tử</span>
                </td>
				  <td style="text-align: center !important;  width: 240.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;">
                  <span >Họ tên người sử dụng</span>
                </td>
                <td  style=" width: 140.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;; text-align: center !important">
                  <span >Ghi chú </span>
                </td>

              </tr>
			  
			       
                <tr class="c12" style=" height: 27pt; line-height: 40px; ">
				
			
                   <td  style="height:23px;text-align: center; width: 50pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">

                    <xsl:number/>
                  
                  </td>  
				  
				  <td style=" width: 250.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;; height:23px;text-align: left;">
                  <xsl:if test="EMAIL_NNT !=''">
                    <span>
                      <xsl:value-of select="EMAIL_NNT"/>
                    </span>
                  </xsl:if>
				  </td>
				
				
				 <td style="height:23px; text-align: left;  width: 240.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;">
<span>		    	&#160;  		   
				   <xsl:if test="TEN_LHE_NTHUE !=''">
                    <span class="contenms9">
					    
                            <xsl:value-of select="TEN_LHE_NTHUE"/>     
				  </span>
				     </xsl:if>
					 </span>
                </td>
				
				
				
					 <td style=" width: 140.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;; height:23px;text-align: left;">
                    <span class="contenms9">
                           	&#160;   
				     </span>
                    </td>
                </tr>
       
			      </tbody>
</table>

            <p  style="margin-left: 50px; line-height: 1.5; margin-top: 16px; direction: ltr; padding-bottom: 0pt ">
              <span  style=" font-size:16px;">3. Số điện thoai:&#160; </span>
			   <xsl:if test="SDT_NNT !=''">
                    <span>
                      <xsl:value-of select="SDT_NNT"/>
                    </span>
                  </xsl:if>
		    </p>
        
            <p style="line-height: 1.5; margin-top: 4pt; direction: ltr; padding-bottom: 0pt ">
              <span   style=" font-size:16px;">Để sử dụng dịch vụ NNT truy cập theo đường dẫn:&#160;</span>
              <span style=" font-size: 15px; font-style: italic;">
                <a href="http://nopthue.gdt.gov.vn">http://nopthue.gdt.gov.vn</a>
              </span>
              <span style=" font-size:16px; ">.</span>
            </p>
            <p  style=" font-size:16px; line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt ">
              <span   style=" font-size:16px;">Ngân hàng&#160;
                <xsl:if test="TEN_NHANG !=''">
                  <span>
                    <xsl:value-of select="TEN_NHANG"/>
                  </span>
                </xsl:if>
                thông báo để NNT biết, thực hiện./.</span>
            </p>
          </div>
          <div style="clear: both;">&#160;</div>
       </xsl:for-each>
      </xsl:for-each>   
  </xsl:template>
</xsl:stylesheet>
