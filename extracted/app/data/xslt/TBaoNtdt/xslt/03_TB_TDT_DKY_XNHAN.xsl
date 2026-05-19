<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../common/common.xsl"/>
  <xsl:template match="/">
   <style type="text/css">ol { margin: 0; padding: 0 }
      #wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto; padding: 40px; position: relative; width: 700px;}
      #headermct { margin: auto; position: relative; width: 100%; }
      #conten { float: left; margin: auto; position: relative; width: 100%; }
      .ms09 { border: 1px solid; float: right; height: 19px; padding: 10px; position: relative; top: -13px; width: 145px; text-align:center; }
      .table_hd { width: 100%; text-align: center; }
      #headermct table td{ padding: 0px;}
      .table_hr1 { margin-top: -8px; border-width: 1px thin; width: 105px; }
      .table_hr2 { border-width: 1px thin; margin-top: 8px; width: 210px; }
      .table_hr3 { border-width: 1px thin; margin-top: 8px; width: 150px; }
      .c5 { width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; }
      .c9 { width: 74.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 0pt 5.8pt 0pt 5.8pt }
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

       <xsl:for-each select="TBAO_TKHOAN_NH">
        <xsl:variable name="TBAO_TKHOAN_NH" select="." />
        <xsl:for-each select="$TBAO_TKHOAN_NH">
		  <xsl:variable name="tthaixachnhan" select="TTHAI_XNHAN" />
		  
          <div id="headermct" style=" margin: auto; position: relative; width: 100%; ">
		  
             <p class="c2" style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;">&#160;</p>
					<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					
						<div align="center" style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 285px;">
					<span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					Mẫu số: <b><xsl:value-of select="MAU_THONGBAO"/></b><br/>
                    (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban hành kèm theo Thông tư số 110/2015/TT-BTC
                    ngày 28/07/2015 của Bộ Tài chính</span>)
				
					</span>
				</div>
			
				</td>
			</tr>
			
		</tbody>
	</table>
            <table cellpadding="0" cellspacing="0" style=" width: 100%; text-align: center;" >
              <tbody>
                  <tr   style="height: 22pt; ">
                  <td  style=" border-style: solid; border-color: #000000; border-width: 0pt;">
                    <span    style="display: block; font-weight: bold ;font-size: 15px; ">BỘ TÀI CHÍNH</span>
                    <span    style=" font-weight: bold ;font-size: 15px; ">
                      <b>TỔNG CỤC THUẾ</b>
                    </span>
                  </td>
                  <td style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt">
                    <span style=" font-weight: bold ;font-size: 15px; ">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                  </td>
                </tr>
                <tr  style="height: 22pt; ">
                  <td >
                    <hr  style=" margin-top: -8px; border-width: 1px thin; width: 105px;"/>
                  </td>
                  <td >
                    <span  style=" font-weight: bold ;font-size: 15px; ">Độc lập - Tự do - Hạnh phúc</span>
                    <hr style="border-width: 1px thin; margin-top: 8px; width: 210px;"/>
                  </td>
                </tr>
                <tr  style="height: 27pt; line-height: 40px; " >
                  <td style=" border-style: solid; border-color: #000000; border-width: 0pt; ">
                    <span class="c1 c15">Số:
                      <span class="contenms9">&#160;</span>
                      <xsl:if test="SO_TBAO !=''">
                        <span>
                          <xsl:value-of select="SO_TBAO"/>
                        </span>
                      </xsl:if>
                      /TB-TĐT</span>
                  </td>
                 
				  
				  
				     <td class="c8 align-c" valign="top"   style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; ">
                    <span>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/></i>
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
              <span style=" font-weight: bold ;font-size: 15px; ">V/v: Tài khoản giao dịch thuế điện tử</span>
            </p>
          
            <p class="c2 c11">&#160;</p>
            <p class="c3"  style=" margin-left: 62px;">
              <span style="font-size: 15px;  font-weight: bold ;">
              Kính gửi:
              </span>
              &#160;&#160;
              <span class="c1 c0 c23">
                <xsl:if test="TEN_NNT !=''">
                  <xsl:value-of select="TEN_NNT"/>
                </xsl:if>
              </span>
            </p>
            <p  style="margin-left: 62px; font-size:15px; "> <span  style=" font-size:15px; font-style:italic;">Mã số thuế của NNT: &#160;  </span>
              <span >
                <xsl:if test="MST !=''">
                  <xsl:value-of select="MST"/>
                </xsl:if>
              </span>
            </p>
              <p  style="margin-left: 62px; font-size:15px; "> <span  style=" font-size:15px; font-style:italic;">  Địa chỉ: &#160;
              
			  </span> <span>
              <xsl:if test="DIACHI_NNT !=''">
                  <xsl:value-of select="DIACHI_NNT"/>
                </xsl:if>
              </span>
            </p>
                 <p  style="margin-left: 62px;line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">Căn cứ hồ sơ đăng ký giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế củangười nộp thuế.     
            </p>
           <p  style="margin-left: 62px;font-size:15px;">Mã giao dịch điện tử: &#160;
              <span >
                <xsl:if test="SO_TBAO !=''">
                  <xsl:value-of select="SO_TBAO"/>
                </xsl:if>
              </span>
            </p>
			 <p style="margin-left: 62px; line-height: 1.5; margin-top: 1pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">Xét điều kiện thực hiện và cam kết của người nộp thuế.
              </p>
			  <xsl:choose>
        <xsl:when test="$tthaixachnhan='Y' ">
		   <p  style="margin-left: 62px; line-height: 1.5; margin-top: 1pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">Cơ quan thuế chấp nhận đề nghị về việc đăng ký giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế kể từ&#160;
            	<xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>
              <span >&#160; cụ thể như sau:</span>     
            </p>
			
			
            <!-- code for dates later than 2014-10-01  -->
        </xsl:when>
        <xsl:otherwise>
		  <p  style="margin-left: 62px; line-height: 1.5; margin-top: 1pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">Cơ quan thuế không chấp nhận đề nghị về việc đăng ký giao dịch thuế điện tử của người nộp thuế. &#160;
              
            </p>
            <!-- code for dates earlier than or equal to 2014-10-01 -->
        </xsl:otherwise>
    </xsl:choose>
          
          
          </div>
		  
		      <div style="float: left; margin: auto; position: relative; width: 100%;"  >
            <p  style="line-height: 1.5; margin-top: 1pt; direction: ltr; padding-bottom: 0pt "></p>
		  	  <xsl:choose>
        <xsl:when test="$tthaixachnhan='Y' ">
      
            <p  style="margin-left: 62px; font-size: 15px; "> Tài khoản đăng nhập ứng dụng: &#160;
             <span >
                <xsl:if test="MST !=''">
                  <xsl:value-of select="MST"/>
                </xsl:if>
              </span>
            </p>
            <p  style="line-height: 1.5; margin-top: 1pt; direction: ltr; padding-bottom: 0pt "></p>
            <p  style="margin-left: 62px; font-size:15px;"> Mật khẩu đăng nhập ứng dụng: &#160;
            </p>
          
		  
		  </xsl:when>
        <xsl:otherwise>
		<p  style="margin-left: 62px; font-size: 15px; "> Lý do: &#160;
             <span >
                <xsl:if test="LYDO  !=''">
                  <xsl:value-of select="LYDO "/>
                </xsl:if>
              </span>
            </p>
		
            <!-- code for dates earlier than or equal to 2014-10-01 -->
        </xsl:otherwise>
    </xsl:choose>
  <p   style="margin-left: 62px; font-size:15px;">
              <span  >Để sử dụng dịch vụ NNT truy cập theo đường dẫn:&#160;</span>
              <span >
                <a href="https://nopthue.gdt.gov.vn">https://nopthue.gdt.gov.vn</a>
              </span>
              <span >.</span>
            </p>
            <p class="c3"  style="margin-left: 62px; font-size:15px;">
              <span  style=" font-size:15px;">Cơ quan thuế thông báo để NNT biết, thực hiện./.</span>
            </p>
          </div>

          <div style="clear: both;">&#160;</div>
        </xsl:for-each>
      </xsl:for-each>    
  </xsl:template>
</xsl:stylesheet>
