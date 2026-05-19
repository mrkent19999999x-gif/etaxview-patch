<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeaderTCT110.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>


	<xsl:template match="/">
	<xsl:variable name="tbThue1" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
	<xsl:variable name="NGAY_THONGBAO_NEW"   select="$tbThue1/NGAY_THONGBAO" />


	 
	  <xsl:variable name="date" select="10000 * substring($NGAY_THONGBAO_NEW, 7, 4) + 100 * substring($NGAY_THONGBAO_NEW, 4, 2) + substring($NGAY_THONGBAO_NEW, 1, 2)"/>

	 <span>asđâs
                          <xsl:value-of select="$date"/>
                        </span>
	 <xsl:choose>
        <xsl:when test="$date > 20160401 ">
            <!-- code for dates later than 2016-10-01  -->
			
			
			
        <xsl:for-each select="THONGBAO/NDUNG_TBAO">
        <xsl:variable name="NDUNG_TBAO" select="." />
        <xsl:variable name="TEN_NNOP" select="./THONGBAO_HDR/TEN_NNOP" />
        <xsl:variable name="MST_NNOP" select="./THONGBAO_HDR/MST_NNOP" />
        
        <xsl:variable name="TEN_NTHAY" select="./THONGBAO_HDR/TEN_NTHAY" />
        <xsl:variable name="MST_NTHAY" select="./THONGBAO_HDR/MST_NTHAY" />
        <xsl:variable name="NGAY_THONGBAO" select="$NDUNG_TBAO/THONGBAO_HDR/NGAY_THONGBAO" />
        <xsl:variable name="MA_NGHANG_NOP" select="./THONGBAO_CTIET/ROW_CTIET/MA_NGHANG_NOP" />
        <xsl:for-each select="$NDUNG_TBAO/THONGBAO_HDR">
          <div id="headermct1">
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
                  <td class="c8 align-c" valign="top">
                    <span>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/></i>
				</span>
                    
               
                  </td>
                </tr>
              </tbody>
            </table>
            <p style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt;  text-align: center " >&#160;</p>
            <p style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt;  text-align: center ">
              <span class="c1 c4 c0">THÔNG BÁO</span>
            </p>
            <p class="c33 c11">
              <span class="c1 c0 c4">
                V/v Xác nhận trạng thái giao dịch nộp thuế điện tử.
              </span>
            </p>
         
            <p >
              <span class="c1 c0">
               <span>Kính gửi:</span>
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
              <span  class="c1 c0 c23">
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
           Vào&#160;
				<xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'ii')"/> giây, 
			ngày <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($NGAY_THONGBAO,'yyyy')"/>, Ngân hàng: <xsl:value-of select="$MA_NGHANG_NOP" /> thông báo trạng thái thực hiện thủ tục nộp thuế điện tử của người nộp thuế, cụ thể như sau:
          </div>
        </xsl:for-each>
        <div id="conten1">
          <p class="c2 c11">&#160;</p>
          <table cellpadding="0" cellspacing="0" class="table_hd">
            <tbody id="msthongbao09">
              <tr>
                <td class="c5" style="text-align: center !important">
                   <span>STT</span>
                
                </td>
                <td class="c14" style="text-align: center !important">
                 <span>Nội dung</span>
                 
                </td>
                <td class="c14" style="text-align: center !important">
                   <span>Giá trị</span>
                
                </td>
            
              </tr>
              <xsl:for-each select="$NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET">
                <tr>
                 <td class="c5" style="text-align: center !important; ">
                 <span>1</span>
                </td>
                                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                 <span>Số GNT</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;">
                  
                    <span class="contenms19">
                      <xsl:if test="SO_GNT !=''">
                        <xsl:value-of select="SO_GNT"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                <tr>
                          <td class="c5" style="text-align: center !important">
                 <span>2</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                 <span>Mã hiệu chứng từ</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;"><span class="contenms19">
                      <xsl:if test="MAHIEU_CTU !=''">
                        <xsl:value-of select="MAHIEU_CTU"/>
                      </xsl:if>
                    </span></td>
                    </tr>
                    
                      <tr>
                          <td class="c5" style="text-align: center !important">
                 <span>3</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                 <span>Số chứng từ</span>
                </td>
                  <td style="height:23px;text-align: left; padding-left:12px;">
                    <span class="contenms19">
                      <xsl:if test="SO_CTU !=''">
                        <xsl:value-of select="SO_CTU"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                       <tr>
                          <td class="c5" style="text-align: center !important">
                 <span>4</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >MST thụ hưởng</span>
                </td>
               <td style="height:23px;text-align: left; padding-left:12px;">
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
                          <td class="c5" style="text-align: center !important">
                  <span >5</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span>Tên người thụ hưởng</span>
                </td>
                   <td style="height:23px;text-align: left; padding-left:12px;">
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
                          <td class="c5" style="text-align: center !important">
                  <span >6</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >Tài khoản trích nợ</span>
                </td>
                           <td style="height:23px;text-align: left; padding-left:12px;">
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
                          <td class="c5" style="text-align: center !important">
                  <span >7</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >Nộp cho KBNN</span>
                </td>
                  
                      <td style="height:23px;text-align: left; padding-left:12px;">
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
                             <td class="c5" style="text-align: center !important">
                  <span >8</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span>Ngày nộp GNT</span>
                </td>
                   <td>
         
                    </td>
                           </tr>
                           
                                    
                   <tr>
                 <td class="c5" style="text-align: center !important">
                  <span >9</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >Ngày nộp thuế điện tử</span>
                </td>
                   <td style="text-align: center !important">
                  <xsl:if test="NGAY_XLY !=''">
                        <xsl:value-of select="NGAY_XLY"/>
                      </xsl:if>
                    </td>
                    </tr>
                    
                    
                    <tr>
                          <td class="c5" style="text-align: center !important">
                  <span >10</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >Tổng số khoản</span>
                </td>
                    
                  <td style="height:23px;text-align: right;padding-right:12px;">
                    <span class="contenms19">
                      <xsl:if test="TONGSOMON !=''">
                        <xsl:value-of select="TONGSOMON"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
           
                  
                  
             
           <tr>
                          <td class="c5" style="text-align: center !important">
                 <span>11</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span >Tổng số tiền nộp NSNN</span>
                </td>
              
                 
                  <td style="height:23px;text-align: right; padding-right:12px;">
                    <span class="contenms19" id="tongtien">
                      <xsl:if test="TONGTIENNOP !=''">
                        <xsl:value-of select="TONGTIENNOP"/>
                      </xsl:if>
                    </span>
                  </td>
                  </tr>
                  
                  
             <tr>
                          <td class="c5" style="text-align: center !important">
                 <span>12</span>
                </td>
                  <td class="c14" style="text-align: left !important; padding-left:10px;">
                  <span>Trạng thái</span>
                </td>
                  <td style="height:23px;text-align: left;  padding-left:12px;">
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
            <span class="c1 ">Để tra cứu thông tin đã nộp thuế điện tử nói trên, xin vui lòng truy cập theo đường dẫn:&#160;</span>
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
		
		<xsl:variable name="tbThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
		<xsl:variable name="NNhanTBaoThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_THONGBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_THONGBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_THONGBAO" />
			<xsl:with-param name="motaTBao"   select="'Xác nhận nộp hồ sơ thuế điện tử/ chứng từ nộp thuế điện tử'" />
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
			Căn cứ chứng từ nộp thuế điện tử của người nộp thuế gửi tới cơ quan thuế
			lúc <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'ii')"/> giây,
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'yyyy')"/>, Cơ quan thuế xác nhận việc nộp chứng từ nộp thuếđiện tử của người nộp thuế, cụ thể như sau: <br/>
			<br/>
			Tên chứng từ nộp thuế điện tử: Thông tin giấy nộp tiền
			<br/>
			<table cellpadding="0" cellspacing="0" border="1" >
			<tbody>
			<tr align="center">
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">STT</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">Số GNT</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">MST thụ hưởng</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">Tên người thụ hưởng</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Tài khoản trích nợ</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Nộp cho KBNN</strong></td>

			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Tổng số tiền nộp NSNN</strong></td>

			</tr>
			<tr>
			<td style="text-align: center;">1</td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/SO_GNT" /></td>

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

			<td style="text-align: center;"><xsl:value-of select="ihtkk:formatNumber($NNhanTBaoThue/TONGTIENNOP)" /></td>

			</tr>
			</tbody>
			</table>
	
       
              <span class="c1 ">Mã giao dịch điện tử:&#160; </span>
			 <xsl:if test="$tbThue/MA_GDICH !=''">
                    <span>
                      <xsl:value-of select="$tbThue/MA_GDICH"/>
                    </span>
                  </xsl:if>
	  
			
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
            <!-- code for dates earlier than or equal to 2014-10-01 -->
        </xsl:otherwise>
    </xsl:choose>
		
	</xsl:template>		
</xsl:stylesheet>