<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <style type="text/css">ol { margin: 0; padding: 0 }
      #wrapper { background: none repeat scroll 0 0 #FFFFFF; min-height: 100%; height: 100%; margin: auto; padding: 40px; position: relative; width: 700px;}
      #headermct { margin: auto; position: relative; width: 100%; }
      #conten { float: left; margin: auto; position: relative; width: 100%; }
      .ms09 { border: 1px solid; float: right; height: 19px; padding: 10px; position: relative; top: -13px; width: 145px; text-align:center; }
      .table_hd1 { width: 100%; text-align: center; }
      .table_hd1 td { padding: 0px;}
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
      .c26 {border-style: solid; border-color: #000000; border-width: 0pt; }
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
      .tb_strong { align: center; }
      .contenfter{float: left; position: relative; width: 100%; display: inline;}
      </style>
    
      <!--  <xsl:variable name="NGAY_NOP_GNT" select="/THONGBAO/NGAY_NOP_GNT" />-->
        <xsl:for-each select="THONGBAO/NDUNG_TBAO">
        <xsl:variable name="NDUNG_TBAO" select="." />
        <xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
        <xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />
        
        <xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
        <xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
        <xsl:variable name="NGAY_THONGBAO" select="$NDUNG_TBAO/THONGBAO_HDR/NGAY_THONGBAO" />
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
            <table cellpadding="0" cellspacing="0" class="table_hd1">
              <tbody>
                <tr class="c18 align-c">
                  <td class="c26 align-c">
                    <span class="c1 c4 c0">NGÂN HÀNG&#160;
                      <xsl:if test="$MA_NGHANG_NOP !=''">
                        <span>
                          <xsl:value-of select="$MA_NGHANG_NOP"/>
                        </span>
                      </xsl:if>
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
                  <td class="c26 align-c" valign="top">
                    <span class="c1">Số:
                      <span class="contenms9">
                        <xsl:if test="SO_THONGBAO !=''">
                          <span>
                            <xsl:value-of select="SO_THONGBAO"/>
                          </span>
                        </xsl:if>
                      </span>
                      /TB-NHTM</span>
                  </td>
                  <td class="c8 align-c" valign="top">
                    <span class="contenms9" id="ngaythang" hidden="true" style="display: none;">
                      <xsl:if test="$NGAY_THONGBAO !=''">
                        <xsl:value-of select="$NGAY_THONGBAO"/>
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
                V/v Xác nhận trạng thái giao dịch nộp thuế điện tử.
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
              <span class="c1 ">Ngân hàng
                <xsl:if test="$MA_NGHANG_NOP !=''">
                  <span>
                    <xsl:value-of select="$MA_NGHANG_NOP"/>
                  </span>
                </xsl:if>
                xác nhận trạng thái giao dịch nộp thuế điện tử của NNT với thông tin chi tiết trạng thái giao dịch chứng từ như sau:</span>
            </p>
          </div>
        </xsl:for-each>
        <div id="conten">
          <p class="c2 c11">&#160;</p>
          <table cellpadding="0" cellspacing="0" class="table_hd">
            <tbody id="msthongbao09">
              <tr>
                <td class="c14" style="text-align: center !important">
                    <strong class="tb_strong">STT</strong>
                  
                </td>
                <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Nội dung</strong>
               
                </td>
                <td class="c14" style="text-align: center !important">
                    <strong class="tb_strong">Giá trị</strong>
                 
                </td>
               
              </tr>
              <xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
                <tr>
                 <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">1</strong>
                </td>
                                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Số GNT</strong>
                </td>
                  <td style="height:23px;text-align: left;">
                  
                    <span class="contenms9">
                      <xsl:if test="SO_GNT !=''">
                        <xsl:value-of select="SO_GNT"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">2</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Mã hiệu chứng từ</strong>
                </td>
                  <td><span class="contenms9">
                      <xsl:if test="MAHIEU_CTU !=''">
                        <xsl:value-of select="MAHIEU_CTU"/>
                      </xsl:if>
                    </span></td>
                    </tr>
                    
                      <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">3</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Số chứng từ</strong>
                </td>
                  <td style="height:23px;text-align: left;">
                    <span class="contenms9">
                      <xsl:if test="SO_CTU !=''">
                        <xsl:value-of select="SO_CTU"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                       <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">4</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">MST thụ hưởng</strong>
                </td>
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
                  
                  </tr>
                  
                   <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">5</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tên người thụ hưởng</strong>
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
                  </tr>
                  
                  
                    <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">6</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tài khoản trích nợ</strong>
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
                  </tr>
                  
                         <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">7</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Nộp cho KBNN</strong>
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
         </tr>
         <tr>
                             <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">8</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Ngày nộp GNT</strong>
                </td>
                   <td>
               <!--   <xsl:if test="$NGAY_NOP_GNT !=''">
                        <xsl:value-of select="$NGAY_NOP_GNT"/>
                      </xsl:if>-->
                    </td>
                           </tr>
                           
                                    
                   <tr>
                 <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">9</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Ngày nộp thuế điện tử</strong>
                </td>
                   <td>
                  <xsl:if test="NGAY_XLY !=''">
                        <xsl:value-of select="NGAY_XLY"/>
                      </xsl:if>
                    </td>
                    </tr>
                    
                    
                    <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">10</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tổng số khoản</strong>
                </td>
                    
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9">
                      <xsl:if test="TONGSOMON !=''">
                        <xsl:value-of select="TONGSOMON"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
           
                  
                  
             
           <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">11</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Tổng số tiền nộp NSNN (VND)</strong>
                </td>
              
                 
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9" id="tongtien">
                      <xsl:if test="TONGTIENNOP !=''">
                        <xsl:value-of select="TONGTIENNOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                  
                  
             <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">12</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Trạng thái</strong>
                </td>
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9">
                      <xsl:if test="TEN_TTHAI !=''">
                        <xsl:value-of select="TEN_TTHAI"/>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
                
				
				     <tr>
                          <td class="c21" style="text-align: center !important">
                  <strong class="tb_strong">13</strong>
                </td>
                  <td class="c14" style="text-align: center !important">
                  <strong class="tb_strong">Phí</strong>
                </td>
                  <td style="height:23px;text-align: right;">
                    <span class="contenms9">
                      <xsl:if test="PHI !=''">
                        <xsl:value-of select="PHI"/>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
				
              </xsl:for-each>
            </tbody>
          </table>
          <div class="contenfter">
          <p class="c3">
            <span class="c1 ">Để tra cứu thông tin đã nộp nói trên, xin vui lòng truy cập theo đường dẫn:&#160;</span>
            <span class="c1 c23">
              <a href="http://nhantokhai.gdt.gov.vn">http://nhantokhai.gdt.gov.vn</a>
            </span>
          </p>
          </div>
        </div>
        <div style="clear: both;">&#160;</div>
      </xsl:for-each>
    
  </xsl:template>
</xsl:stylesheet>
