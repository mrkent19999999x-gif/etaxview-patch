<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>

	<xsl:template match="/">
	
	<xsl:variable name="tbThue1" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
	<xsl:variable name="NGAY_THONGBAO_NEW"   select="$tbThue1/NGAY_THONGBAO" />


	 
	  <xsl:variable name="date" select="10000 * substring($NGAY_THONGBAO_NEW, 7, 4) + 100 * substring($NGAY_THONGBAO_NEW, 4, 2) + substring($NGAY_THONGBAO_NEW, 1, 2)"/>

    <xsl:choose>
        <xsl:when test="$date > 20151001 ">

            <!-- code for dates later than 2014-10-01  -->
			 <xsl:for-each select="THONGBAO/NDUNG_TBAO">
        <xsl:variable name="NDUNG_TBAO" select="." />
        <xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
        <xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />
        
        <xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
        <xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
        <xsl:variable name="NGAY_THONGBAO" select="$NDUNG_TBAO/THONGBAO_HDR/NGAY_THONGBAO" />
        <xsl:variable name="MA_NGHANG_NOP" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGHANG_NOP" />
        <xsl:for-each select="$NDUNG_TBAO/THONGBAO_HDR">
		
		
		
          <div  style=" margin: auto; position: relative; width: 100%; ">
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
		
            <table cellpadding="0" cellspacing="0" style="width: 100%; text-align: center;" class="table_hd1">
              <tbody>
                <tr class="c18 align-c"  style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt;">
                  <td class="c26 align-c">
                    <span  style="font-size: 15px;font-weight: bold;" >NGÂN HÀNG&#160;
                      <xsl:if test="$MA_NGHANG_NOP !=''">
                        <span>
                          <xsl:value-of select="$MA_NGHANG_NOP"/>
                        </span>
                      </xsl:if>
                    </span>
                  </td>
                  <td class="c8 align-c"  style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt;">
                    <span  style="font-size: 15px;font-weight: bold;">CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</span>
                  </td>
                </tr>
                <tr class="c18 "  style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt;">
                  <td class="align-c">
                    <hr style="margin-top: -8px; border-width: 1px thin; width: 105px;" />
                  </td>
                  <td class="align-c">
                    <span  style="font-size: 15px;font-weight: bold;">Độc lập - Tự do - Hạnh phúc</span>
                    <hr  style="border-width: 1px thin; margin-top: 8px; width: 210px;"/>
                  </td>
                </tr>
                <tr  style="height: 27pt; line-height: 40px;">
                  <td class="c26 align-c" valign="top" style="border-style: solid; border-color: #000000; border-width: 0pt;" >
                    <span class="c0">Số:
                      <span class="contenms19">
                        <xsl:if test="SO_THONGBAO !=''">
                          <span>
                            <xsl:value-of select="SO_THONGBAO"/>
                          </span>
                        </xsl:if>
                      </span>
                      /TB-NHTM</span>
                  </td>
                  <td class="c8 align-c" valign="top"   style="border-style: solid; border-color: #000000; border-width: 0pt; padding: 0pt 5.8pt 0pt 5.8pt; ">
                    <span>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/></i>
				</span>
                    
               
                  </td>
                </tr>
              </tbody>
            </table>
            <p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;  text-align: center " >&#160;</p>
            <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;  text-align: center ">
              <span   style="font-size: 15px;font-weight: bold;">THÔNG BÁO</span>
            </p>
            <p style="line-height: 1.5; padding-top: -2pt; padding-bottom: 0pt;text-align: center ">
              <span   style="font-size: 15px;font-weight: bold;">
                V/v Xác nhận trạng thái giao dịch nộp thuế điện tử.
              </span>
            </p>
         
            <p style="margin-top:0px; margin-bottom:0px;" >
              <span  style="font-size: 13px;font-weight: bold;">
               <span>  &#160;  &#160;  &#160; &#160; &#160;Kính gửi:</span>
              </span>
              &#160;&#160;
              <span   style="font-size: 15px; font-style: italic;">
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
            <p  style="margin-left: 0px; line-height: 1.5; padding-top: 1pt; margin-top:5px; margin-bottom:10px; ">  &#160;  &#160;  &#160;  &#160;Mã số thuế: &#160;
              <span  style="font-size: 15px;font-style: italic;">
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
             &#160;  &#160;  &#160;  &#160;Vào&#160;
				<xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>, Ngân hàng: <xsl:value-of select="$MA_NGHANG_NOP" /> thông báo trạng thái thực hiện thủ tục nộp thuế điện tử của người nộp thuế, cụ thể như sau:
          </div>
        </xsl:for-each>
        <div style=" float: left; margin: auto; position: relative; width: 100%;">
          <p class="c2 c11">&#160;</p>
          <table cellpadding="0" cellspacing="0" class="table_hd"  style=" border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; float: left; margin-top: -30px; position: relative; width: 100%;">
            <tbody id="msthongbao09">
              <tr>
                <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                   <span>STT</span>
                
                </td>
                <td class="c14" style="width: 150pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: center !important">
                 <span>Nội dung</span>
                 
                </td>
                <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: center !important">
                   <span>Giá trị</span>
                
                </td>
            
              </tr>
              <xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
                <tr>
                 <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important; ">
                 <span>1</span>
                </td>
                                  <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px;text-align: left !important; padding-left:10px;">
                 <span>Số GNT</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                  
                    <span class="contenms19">
                      <xsl:if test="SO_GNT !=''">
                        <xsl:value-of select="SO_GNT"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                 <span>2</span>
                </td>
                  <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                 <span>Mã hiệu chứng từ</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;"><span class="contenms19">
                      <xsl:if test="MAHIEU_CTU !=''">
                        <xsl:value-of select="MAHIEU_CTU"/>
                      </xsl:if>
                    </span></td>
                    </tr>
                    
                      <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                 <span>3</span>
                </td>
                  <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                 <span>Số chứng từ</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
                      <xsl:if test="SO_CTU !=''">
                        <xsl:value-of select="SO_CTU"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                       <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                 <span>4</span>
                </td>
                  <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >MST thụ hưởng</span>
                </td>
               <td style="height:23px; text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
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
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; text-align: center !important">
                  <span >5</span>
                </td>
                  <td class="c14" style="  width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span>Tên người thụ hưởng</span>
                </td>
                   <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
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
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; text-align: center !important">
                  <span >6</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >Tài khoản trích nợ</span>
                </td>
                           <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
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
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center; text-align: center !important">
                  <span >7</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >Nộp cho KBNN</span>
                </td>
                  
                      <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
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
                             <td class="c5" style=" width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                  <span >8</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span>Ngày nộp GNT</span>
                </td>
                   <td>
         
                    </td>
                           </tr>
                           
                                    
                   <tr>
                 <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                  <span >9</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >Ngày nộp thuế điện tử</span>
                </td>
                   <td style=" border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: left !important; padding-left:12px; ">
                  <xsl:if test="NGAY_XLY !=''">
                        <xsl:value-of select="NGAY_XLY"/>
                      </xsl:if>
                    </td>
                    </tr>
                    
                    
                    <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                  <span >10</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >Tổng số khoản</span>
                </td>
                    
                  <td style=" border-style: solid; border-color: #000000; border-width: 0.5pt;height:23px;text-align: left;padding-left:12px;">
                    <span class="contenms19">
                      <xsl:if test="TONGSOMON !=''">
                        <xsl:value-of select="TONGSOMON"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
           
                  
                  
             
           <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                 <span>11</span>
                </td>
                  <td class="c14" style=" width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span >Tổng số tiền nộp NSNN</span>
                </td>
              
                 
                  <td style="height:23px;text-align: left; padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19" id="tongtien">
                      <xsl:if test="TONGTIENNOP !=''">
                        <xsl:value-of select="TONGTIENNOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                  
                  
             <tr>
                          <td class="c5" style="width: 35px; border-style: solid; border-color: #000000; border-width: 0.5pt; text-align: center;  text-align: center !important">
                 <span>12</span>
                </td>
                  <td class="c14" style="width: 120pt; border-style: solid; border-color: #000000; border-width: 0.5pt; padding: 2px; text-align: left !important; padding-left:10px;">
                  <span>Trạng thái</span>
                </td>
                  <td style="height:23px;text-align: left;  padding-left:12px;  border-style: solid; border-color: #000000; border-width: 0.5pt;">
                    <span class="contenms19">
                      <xsl:if test="TEN_TTHAI !=''">
                        <xsl:value-of select="TEN_TTHAI"/>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
                
              </xsl:for-each>
            </tbody>
          </table>
          <div class="contenfter">
          <p class="c3">
            <span class="c1 "> &#160; &#160; &#160;Để tra cứu thông tin đã nộp thuế điện tử nói trên, xin vui lòng truy cập theo đường dẫn:&#160;</span>
            <span class="c1 c23">
                   <a href="http://nopthue.gdt.gov.vn">http://nopthue.gdt.gov.vn</a>
            </span>
          </p>
          </div>
        </div>
        <div style="clear: both;">&#160;</div>
      </xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
            <!-- code for dates earlier than or equal to 2014-10-01 -->
			<xsl:variable name="tbThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
		<xsl:variable name="NNhanTBaoThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_THONGBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_THONGBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_THONGBAO" />
			<xsl:with-param name="motaTBao"   select="'V/v Xác nhận trạng thái giao dịch nộp thuế điện tử'" />
			<xsl:with-param name="ma_nhang"   select="$NNhanTBaoThue/MA_NGHANG_NOP" />
		</xsl:call-template>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
					<td><b><i><u>Kính gửi: </u></i></b></td>
					<td>
					<xsl:choose>
					<xsl:when test="$tbThue/MST_NTHAY !=''">
						<xsl:value-of select="$tbThue/TEN_NTHAY" />
					</xsl:when>
					<xsl:otherwise>
					<xsl:value-of select="$tbThue/TEN_NNOP" />
					</xsl:otherwise>
					</xsl:choose>
					</td>
					</tr>
					<tr>
						<td></td>
						<td>
					<xsl:choose>
					<xsl:when test="$tbThue/MST_NTHAY !=''">
						<xsl:value-of select="$tbThue/MST_NTHAY" />
					</xsl:when>
					<xsl:otherwise>
					<xsl:value-of select="$tbThue/MST_NNOP" />
					</xsl:otherwise>
					</xsl:choose>
					</td>
					</tr>
				</tbody>
			</table>
			<br/>
			<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'yyyy')"/>, Ngân hàng: <xsl:value-of select="$NNhanTBaoThue/MA_NGHANG_NOP" /> xác nhận trạng thái giao dịch nộp thuế điện tử của NNT với thông tin chi tiết trạng thái giao dịch chứng từ như sau:<br/>
			<br/>
			<table cellpadding="0" cellspacing="0" border="1" >
			<tbody>
			<tr align="center">
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Số GNT</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Mã hiệu chứng từ</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Số chứng từ</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">MST thụ hưởng</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Tên người thụ hưởng</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Tài khoản trích nợ</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Nộp cho KBNN</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Ngày nộp thuế điện tử</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Tổng số khoản</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Tổng số tiền nộp NSNN</strong></td>
			<td style="height:23px; width:47px; text-align: center;"><strong class="tb_strong">Trạng thái</strong></td>
			</tr>
			<tr>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/SO_GNT" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/MAHIEU_CTU" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/SO_CTU" /></td>
			<td style="text-align: center;">
			<xsl:choose>
                <xsl:when test="$tbThue/MST_NTHAY !=''">
                  <xsl:if test="$tbThue/MST_NNOP !=''">
                      <xsl:value-of select="$tbThue/MST_NNOP"/>
                    </xsl:if>
                 </xsl:when>
                  <xsl:otherwise>
                    &#160;
                    </xsl:otherwise>
                </xsl:choose>
			</td>
			<td style="text-align: center;">
			<xsl:choose>
                    <xsl:when test="$tbThue/MST_NTHAY !=''">
                       <xsl:if test="$tbThue/TEN_NNOP !=''">
                        <xsl:value-of select="$tbThue/TEN_NNOP"/>
                      </xsl:if>
                     </xsl:when>
                  <xsl:otherwise>
                    &#160;
                    </xsl:otherwise>
                </xsl:choose>
			</td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/STK_NGHANG_NOP" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/STK_KHOBAC_NOP" /> - <xsl:value-of select="$NNhanTBaoThue/TEN_KHOBAC_NOP" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/NGAY_XLY" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/TONGSOMON" /></td>
			<td style="text-align: center;"><xsl:value-of select="ihtkk:formatNumber($NNhanTBaoThue/TONGTIENNOP)" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/TEN_TTHAI" /></td>
			</tr>
			</tbody>
			</table>
		</div>
		<br/>
		Để tra cứu thông tin đã nộp nói trên, xin vui lòng truy cập theo đường dẫn: http://nopthue.gdt.gov.vn.
		<br/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
        </xsl:otherwise>
    </xsl:choose>
		
	</xsl:template>		
</xsl:stylesheet>