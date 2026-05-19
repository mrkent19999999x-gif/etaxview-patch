<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
	<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/> 
  <xsl:template match="/">

	<xsl:variable name="NGAY_THONGBAO_NEW"   select="TBAO_TKHOAN_NH/NGAY_TBAO" />

	 
	  <xsl:variable name="date" select="10000 * substring($NGAY_THONGBAO_NEW, 7, 4) + 100 * substring($NGAY_THONGBAO_NEW, 4, 2) + substring($NGAY_THONGBAO_NEW, 1, 2)"/>

	  
              <xsl:choose>
        <xsl:when test="$date > 20141001 ">
            <!-- code for dates later than 2014-10-01  -->
			
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
					Mẫu số: <b>04/TB-TĐT</b><br/>
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
                  <td style=" width: 150pt; border-style: solid; border-color: #000000; border-width: 0pt; ">
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
              <span   style="font-size: 15px; font-weight: bold;">V/v Đăng ký thực hiện thủ tục nộp thuế điện tử qua NHTM</span>
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
			  <span  style=" font-size:16px;">1. Thông tin tài khoản, chứng thư số đăng ký thủ tục nộp thuế điện tử:</span>
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
                <tr  class="c12" style="font-size:15px">
				
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
				  <td  style="height:23px;text-align: left;  width: 140.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                    <span class="contenms9">
					    	&#160;  
				    <xsl:if test="$TBAO_TKHOAN_NH/ISSUER_CERT_NTHUE !=''">
                    <span>
                      <xsl:value-of select="$TBAO_TKHOAN_NH/ISSUER_CERT_NTHUE"/>
                    </span>
                  </xsl:if>
				  </span>
				  </td>
				 <td    style=" width: 140.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt ; height:23px;text-align: right;">
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
			  <span   style=" font-size:16px;">&#160; 2. Địa chỉ thư điện tử để nhận thông báo, phản hồi của Ngân hàng:</span>
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
				  
				  <td style=" width: 250.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding-left: 6px; height:23px;text-align: left;">
                  <xsl:if test="EMAIL_NNT !=''">
                    <span>
                      <xsl:value-of select="EMAIL_NNT"/>
                    </span>
                  </xsl:if>
				  </td>
				
				
				 <td style="height:23px; text-align: left;  width: 240.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt; text-align: left;">
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
              <span   style=" font-size:16px;"> &#160;  &#160;  &#160;  &#160; &#160;  &#160;  &#160;Để sử dụng dịch vụ NNT truy cập theo đường dẫn:&#160;</span>
              <span style=" font-size: 15px; font-style: italic;">
                <a href="http://thuedientu.gdt.gov.vn">http://thuedientu.gdt.gov.vn</a>
              </span>
              <span style=" font-size:16px; ">.</span>
            </p>
            <p  style=" font-size:16px; line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt ">
              <span   style=" font-size:16px;"> &#160;  &#160;  &#160;  &#160; &#160;  &#160;  &#160;Ngân hàng&#160;
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
	    <!-- the end -->
        </xsl:when>
        <xsl:otherwise>
            <!-- code for dates earlier than or equal to 2014-10-01 -->
				<xsl:variable name="tbThue" select='TBAO_TKHOAN_NH' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_TBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_TBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_TBAO" />
			<xsl:with-param name="motaTBao"   select="'V/v Chấp nhận đăng ký sử dụng dịch vụ nộp thuế điện tử qua NHTM'" />
			<xsl:with-param name="ma_nhang"   select="$tbThue/MA_NHANG" />
		</xsl:call-template>
		<div align="center" style="margin:0; padding:0;">
		_________________________________
		</div>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$tbThue/TEN_NNT" /></td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế: <xsl:value-of select="$tbThue/MST" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Vào <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'ii')"/> giây,
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'yyyy')"/>, NNT đã được Ngân hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> chấp nhận sử dụng dịch vụ nộp thuế điện tử.<br/>
			<br/>
			- Thông tin chi tiết như sau:
			<br/>
			<br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Điện thoại: <xsl:value-of select="$tbThue/SDT_NNT" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ thư điện tử: <xsl:value-of select="$tbThue/EMAIL_NNT" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Số xê-ri chứng thư số: <xsl:value-of select="$tbThue/SERIAL_CERT_NTHUE" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Chủ thể chứng thư số: <xsl:value-of select="$tbThue/SUBJECT_CERT_NTHUE" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Tên tổ chức cung cấp chứng thư số: <xsl:value-of select="$tbThue/ISSUER_CERT_NTHUE" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Thực hiện nộp thuế điện tử qua Ngân hàng : <xsl:value-of select="$tbThue/TEN_NHANG" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Số tài khoản sử dụng dịch vụ NTĐT: <br/>
				<xsl:for-each select="$tbThue/TTIN_TKHOAN/STK">
                &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                    <xsl:if test="$tbThue/TTIN_TKHOAN/STK !=''">
                      <span>-
                        <xsl:value-of select="."/>
                      </span>
                    </xsl:if>
					<br/>
              </xsl:for-each>
				<br/>
			Để sử dụng dịch vụ NNT truy cập theo đường dẫn: https://nopthue.gdt.gov.vn.<br/>
			<br/>
			Ngân  hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> thông báo để NNT biết, thực hiện./.

		</div>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		<!--The end -->
        </xsl:otherwise>
    </xsl:choose>
	
	
     
  </xsl:template>
</xsl:stylesheet>
