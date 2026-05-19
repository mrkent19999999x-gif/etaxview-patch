<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
 xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
   <xsl:include href="../common/common.xsl"/> 

  <xsl:template match="/">
   
   <style type="text/css">ol { margin: 0; padding: 0 }
      #wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; margin: auto; padding: 40px; position: relative; width: 800px;}
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
      .c12 { height: 27pt; line-height: 20px; }
      .title { padding-top: 24pt; line-height: 1.1500000000000001; text-align: left; color: #000000;  font-size: 12px; }
      .subtitle { padding-top: 18pt; line-height: 1.1500000000000001; text-align: left; color: #666666; font-style: italic; font-size: 24px; }
      li { color: #000000;  font-size: 12px;  }
      #conten .table_hd { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; float: left; margin-top: 10px; position: relative; width: 100%; }
      #conten .table_hd tr { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center; }
      #conten .table_hd td { border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; }
      .contenms9 {  font-size: 13px; }
      .tb_strong { align: center; }</style>

       <xsl:for-each select="THONGBAO/TBAO_TRASOAT_TCT">
        <xsl:variable name="TBAO_TRASOAT_TCT" select="." />
        <xsl:for-each select="$TBAO_TRASOAT_TCT">
		
		  
          <div id="headermct" style=" margin: auto; position: relative; width: 100%; ">
		  
             <p class="c2" style=" line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;">&#160;</p>
					<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
						<div align="center" style="border: 1px solid; float: right; min-height: 19px; padding: 10px; position: relative; top: -14px; width: 250px;">
					<span style="font-size: 12px; font-family: Times New Roman; line-height: 1.5; padding-top: 5pt; height: 10pt; direction: ltr; padding-bottom: 0pt">
					Mẫu số: <b><xsl:value-of select="MAU_TBAO"/></b><br/>
                    (<span style="font-size: 12px; font-family: Times New Roman; font-style: italic; ">Ban hành kèm theo Thông tư số 110/2015/TT-BTC
                    ngày 28/07/2015 của Bộ Tài chính</span>)
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
                    <span class="c1 c15">Số:
                      <span class="contenms9">&#160;</span>
                      <xsl:if test="SO_TBAO !=''">
                        <span>
                          <xsl:value-of select="SO_TBAO"/>
                        </span>
                      </xsl:if>
                      /TB-TĐT</span>
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
            <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center " >
              <span style=" font-weight: bold ;font-size: 15px; ">THÔNG BÁO</span>
            </p>
            <p  style=" line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt; text-align: center "> 
              <span style=" font-weight: bold ;font-size: 15px; ">V/v: Xác nhận trạng thái thư tra soát</span>
            </p>
          
            <p class="c2 c11">&#160;</p>
            <p class="c3"  style=" margin-left: 62px;">
              <span style="font-size: 15px;  font-weight: bold ;">
              Kính gửi:
              </span>
              &#160;&#160;
              <span class="c1 c0 c23">
                <xsl:if test="TEN_NNOP !=''">
                  <xsl:value-of select="TEN_NNOP"/>
                </xsl:if>
              </span>
            </p>
            <p  style="margin-left: 62px; font-size:15px; "> <span  style=" font-size:15px; font-style:italic;">Mã số thuế của NNT: &#160;  </span>
              <span >
                <xsl:if test="MST_NNOP !=''">
                  <xsl:value-of select="MST_NNOP"/>
                </xsl:if>
              </span>
            </p>
             
                 <p  style="margin-left: 62px;line-height: 1.5; margin-top: 2pt; direction: ltr; padding-bottom: 0pt; font-size:15px;">Vào:
                 <span >
                 <!-- <xsl:if test="NGAY_TBAO !=''"> 
                  <xsl:value-of select="NGAY_TBAO"/>
                </xsl:if> -->
    <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(NGAY_TBAO,'yyyy')"/>            	
                         <span >, Cơ quan thuế xác nhận trạng thái giao dịch thư tra soát của NNT với thông tin chi tiết trạng thái giao dịch tra soát như sau :</span>
              
             
              </span>
            </p>   
                <table cellpadding="0"  cellspacing="0"  style=" width: 90%; text-align: center;margin-left:58px;font-size:12px">
            <tbody id="msthongbao09">
              <tr>
                <td  style="text-align: center !important; width: 150px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                  <span class="tb_strong">Số tra soát </span>
                </td>
                <td class="c14" style="text-align: center !important;  width: 170px; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                  <span class="tb_strong">Ngày tiếp nhận tra soát</span>
                </td>
                <td style=" width: 50.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center;text-align: center !important">
                  <span class="tb_strong">Số chứng từ</span>
                </td>
                <td style="text-align: center !important;  width: 47.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                  <span class="tb_strong">Số tham chiếu/Số giấy nộp tiền</span>
                </td>
                 <td style=" width: 110px; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <span class="tb_strong">Người nộp thuế</span>
                </td>
		
                <td  style="text-align: center !important;  width: 220px; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;" >
                  <span class="tb_strong">Mã số thuế</span>
                </td>
                <td style=" width: 120.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <span class="tb_strong">Nộp cho KBNN</span>
                </td>
                 <td style=" width: 120.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <span class="tb_strong">Số tiền</span>
                </td>
                 <td style=" width: 120.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <span class="tb_strong">Loại tiền</span>
                </td>
                 <td style=" width: 120.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8pt 0pt 5.8pt  text-align: center; text-align: center !important">
                  <span class="tb_strong">Trạng thái</span>
                </td>
            
              </tr>
			  
               
                <tr  class="c12">
				
                    <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                      <xsl:if test="SO_TS !=''">
                          <span> <xsl:value-of select="SO_TS"/></span>
                      </xsl:if>
                    </td>  
				  
                  <td  style="height:23px;text-align: center; width: 90.7pt; border-style: solid; border-color: #000000; border-width: 0.5pt;" >
                             <xsl:if test="NGAY_TBAO !=''">
                  <xsl:value-of select="NGAY_TBAO"/>
                </xsl:if>
                  </td>
				  
                <td   style=" width: 50.4pt; border-style: solid; border-color: #000000; border-width: 0.5pt;  padding: 0pt 5.8px 0pt 5.8px ; text-align: left; height:23px;">
                            <xsl:if test="SO_CTU !=''">
                  <xsl:value-of select="SO_CTU"/>
                </xsl:if>
                </td>
                
                <td  style="height:23px;  width:170px; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;">
                               <xsl:if test="MA_TCHIEU =''">
                  <xsl:value-of select="SO_GNT"/>
                </xsl:if><xsl:if test="SO_GNT =''">
                  <xsl:value-of select="MA_TCHIEU"/>
                </xsl:if>
                </td>
                    <td style="height:23px;   border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <xsl:if test="TEN_NNOP !=''">
                          <span> <xsl:value-of select="TEN_NNOP"/></span>
                      </xsl:if>
                </td>
                   <td  style="height:23px;text-align: center; width:200px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                      <xsl:if test="MST_NNOP !=''">
                          <span> <xsl:value-of select="MST_NNOP"/></span>
                      </xsl:if>
                    </td>  
   
                  <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                        
                      <xsl:if test="TEN_KBAC !=''">
                                <span> <xsl:value-of select="TEN_KBAC"/></span>
                      </xsl:if>
                    </td>  
                     <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">                        
						<xsl:if test="MA_NT ='VND'">                      
					  <xsl:if test="TIEN_PNOP !=''">
                        <span class="tiennop" id="tongtien"> <xsl:value-of select="ihtkk:formatNumber(TIEN_PNOP)"/></span>							
                      </xsl:if>
					  </xsl:if>
					  <xsl:if test="MA_NT ='USD'">
					   <xsl:if test="TIEN_PNOP !=''">
                            <span class="tiennop" id="tongtienUSD"> <xsl:value-of select="ihtkk:toFormatDecimal(TIEN_PNOP)"/></span>
                      </xsl:if>
					  </xsl:if>
                    </td>  
                     <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">                        
                       <xsl:if test="MA_NT !=''">
                            <span> <xsl:value-of select="MA_NT"/></span>
                      </xsl:if>
                    </td>  
                    
                   <td  style="height:23px;text-align: center; width: 45pt; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;">
                      <xsl:if test="TTHAI_XNHAN ='Y'">
                          <span> Đã tiếp nhận</span>
                      </xsl:if>
                       <xsl:if test="TTHAI_XNHAN ='N'">
                          <span> Chưa tiếp nhận</span>
                      </xsl:if>
                      <xsl:if test="TTHAI_XNHAN =''">
                          <span> </span>
                      </xsl:if>
                    </td>                
              </tr>
            </tbody>
</table>
    		  <xsl:choose>
        <xsl:when test="TTHAI_XNHAN='Y' ">
  <p   style="margin-left: 62px; font-size:15px;">
              <span  >Để sử dụng dịch vụ NNT truy cập theo đường dẫn:&#160;</span>
              <span >
                <a style="font-size:15px; font-style: italic" href="https://nopthue.gdt.gov.vn">https://nopthue.gdt.gov.vn</a>
              </span>
              <span >.</span>
            </p>
            <p class="c3"  style="margin-left: 62px; font-size:15px;">
              <span  style=" font-size:15px;">Cơ quan thuế thông báo để NNT biết, thực hiện./.</span>
            </p>
              </xsl:when>
                 <xsl:otherwise>
                  <p  style="margin-left: 62px; font-size:15px;">
            <span >Người nộp thuế cần biết thêm chi tiết, xin vui lòng truy cập theo đường dẫn:&#160;
          
              <a style="font-size:15px; font-style: italic" href="https://nopthue.gdt.gov.vn">https://nopthue.gdt.gov.vn</a>
            </span>
            <span > hoặc gọi điện tới số hotline: 0437689679 để được hỗ trợ trực tiếp.</span>
          </p>
          <p class="c3" style="margin-left: 62px; font-size:15px;">
          <span style=" font-size:15px;">Cơ quan thuế thông báo để người nộp thuế biết, thực hiện .</span>
          </p>
                  </xsl:otherwise>
               </xsl:choose>
          </div>
          <div style="clear: both;">&#160;</div>
        </xsl:for-each>
      </xsl:for-each>    
  </xsl:template>
</xsl:stylesheet>
