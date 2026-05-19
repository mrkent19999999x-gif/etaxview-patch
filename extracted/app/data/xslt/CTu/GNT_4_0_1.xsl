<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	 <xsl:include href="../CTu/common/commonTT84.xsl"/> 
  <xsl:template match="/">
    <xsl:variable name="MA_NGUYENTE"   select="CHUNGTU/NDUNG_CTU_NH/NDUNG_CTU/CHUNGTU_HDR/MA_NGUYENTE" />
    <xsl:variable name="MA_THAMCHIEU"   select="CHUNGTU/NDUNG_CTU_NH/NDUNG_CTU/CHUNGTU_HDR/MA_THAMCHIEU" />
   <xsl:for-each select="CHUNGTU/NDUNG_CTU_NH">
   <xsl:variable name="NDUNG_CTU_NH" select="." />
   <table>
   <tr>
   <td style="border: 1px solid;padding: 18px;text-align: center;"><p>Không ghi vào khu vực này</p></td>
   <td style="width:50%;left: 190px;top: 40px;text-align: center;line-height: 22px; ">
   <strong>GIẤY NỘP TIỀN VÀO NGÂN SÁCH NHÀ NƯỚC</strong>
        <br/>
		Tiền mặt [&#32;] Chuyển khoản [X]<br/>
	
	
	&#160;&#160;Loại tiền:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		VND <xsl:if test="not($MA_NGUYENTE)">	[X] 	</xsl:if>
                       <xsl:if test="$MA_NGUYENTE = 'VND' "> [X] </xsl:if>
                       <xsl:if test="$MA_NGUYENTE != 'VND' ">[&#32;]</xsl:if>
		       &#160;&#160;&#160;
		       USD <xsl:if test="not($MA_NGUYENTE)">
					[&#32;]	</xsl:if>
					
                       <xsl:if test="$MA_NGUYENTE = 'USD' ">[X]</xsl:if>
                       <xsl:if test="$MA_NGUYENTE != 'USD' ">[&#32;]</xsl:if>
		      &#160;&#160; Khác:....
		       <br/>
	<em>(Đánh dấu X vào ô tương ứng)</em>
   </td>
   <td style="text-align:center;">
   <div style="right: 0;text-align: center;">
            <strong>Mẫu số C1- 02/NS</strong><br/>
            (ban hành kèm theo Thông tư số 84/2016/TT-BTC<br/>
            của Bộ Tài Chính)<br/>
            <xsl:for-each select="$NDUNG_CTU_NH">
            Mã hiệu:&#160;<xsl:if test="MAHIEU_CTU !=''"><span><xsl:value-of select="MAHIEU_CTU"/></span></xsl:if><xsl:if test="MAHIEU_CTU =''">............</xsl:if><br/>
            Số:&#160; <xsl:if test="SO_CTU != '' and SO_CTU != 'null'"><span><xsl:value-of select="SO_CTU"/></span></xsl:if>&#160;<xsl:if test="SO_CTU ='' or SO_CTU = null ">...............</xsl:if><br/>
            </xsl:for-each>
            &#160;<br/>
	       Số tham chiếu:&#160;
                    <span>
						<xsl:if test="not($MA_THAMCHIEU)">
						&#160;
						</xsl:if>
					  <xsl:if test="$MA_NGUYENTE != '' ">
                      <xsl:value-of select="$MA_THAMCHIEU"/>
					  </xsl:if>
                    </span>
          </div>
   </td>
   </tr>
   </table>
        <br/>
		<br/>
        <xsl:for-each select="$NDUNG_CTU_NH/NDUNG_CTU">
        <xsl:variable name="NDUNG_CTU" select="." />
        <xsl:variable name="MA_CTU" select="./CHUNGTU_HDR/MA_CTU" />
        <div id="conten">
        <xsl:for-each select="$NDUNG_CTU/CHUNGTU_HDR">
		<table>
		<tr>
		<td style="width:500px;">Người nộp thuế: <xsl:if test="MA_CTU !=''"><span style="display:none" id="mactu"><xsl:value-of select="MA_CTU"/></span></xsl:if>
		<xsl:if test="TEN_NNOP !=''"><span class="ttnt_1"><xsl:value-of select="TEN_NNOP"/></span></xsl:if></td>
		<td>Mã số thuế: <xsl:if test="MST_NNOP !=''"><span class="ttnt_3"><xsl:value-of select="MST_NNOP"/></span></xsl:if></td>
		</tr>
		<tr>
		<td colspan="2">
		Địa chỉ: <xsl:if test="DIACHI_NNOP !=''"><span class="ttnt_4"><xsl:value-of select="DIACHI_NNOP"/></span></xsl:if>
		</td>
		</tr>
		<tr>
		<td>Quận/Huyện: <xsl:if test="TEN_HUYEN_NNOP !=''"><span class="ttnt_5"><xsl:value-of select="TEN_HUYEN_NNOP"/></span></xsl:if> </td>
		<td>Tỉnh, TP: <xsl:if test="TEN_TINH_NNOP !=''"><span class="ttnt_7"> <xsl:value-of select="TEN_TINH_NNOP" /></span></xsl:if></td>
		</tr>
		<tr>
		<td>Người nộp thay: <xsl:if test="TEN_NTHAY !='' or TEN_NTHAY !=null" ><span class="ttnt_1"><xsl:value-of select="TEN_NTHAY"/></span></xsl:if></td>
		<td>Mã số thuế:<xsl:if test="MST_NTHAY !='' or MST_NTHAY != null "><span class="ttnt_3" id="ms_nopthay"><xsl:value-of select="MST_NTHAY"/></span></xsl:if></td>
		</tr>
		<tr>
		<td>Địa chỉ: <xsl:if test="DIACHI_NTHAY !='' or DIACHI_NTHAY !=null "><span class="ttnt_11">&#160;<xsl:value-of select="DIACHI_NTHAY"/></span></xsl:if></td>
		</tr>
		<tr>
		<td>Quận/Huyện: <xsl:if test="TEN_HUYEN_NTHAY !='' or TEN_HUYEN_NTHAY !=null"><span class="ttnt_12">&#160;<xsl:value-of select="TEN_HUYEN_NTHAY"/></span></xsl:if></td>
		<td>Tỉnh, TP: <xsl:if test="TEN_TINH_NTHAY !='' or TEN_TINH_NTHAY !=null"><span class="ttnt_14">&#160;<xsl:value-of select="TEN_TINH_NTHAY"/></span></xsl:if></td>
		</tr>
		<tr>
		<td>Đề nghị NH (KBNN): <xsl:if test="TEN_NHANG_NOP !=''"><span class="ttnt_15"> <xsl:value-of select="TEN_NHANG_NOP"/></span></xsl:if></td>
		<td>trích TK số: <xsl:if test="STK_NHANG_NOP !=''"><span id="so_tk_nhang" class="ttnt_17"><xsl:value-of select="STK_NHANG_NOP"/></span></xsl:if></td>
		</tr>
		<tr>
		<td colspan="2">hoặc thu tiền mặt để nộp NSNN theo:</td>
		</tr>
		<tr>
		<td colspan="2" style="font-size: 15px;">Nộp vào cho NSNN <xsl:if test="STK_THU = 7111">[X]</xsl:if><xsl:if test="STK_THU != 7111">[&#32;]</xsl:if> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;TK tạm thu [&#32;]
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;TK thu hồi hoàn thuế GTGT <xsl:if test="STK_THU = 8991 or STK_THU = 3121 or STK_THU =8993 or STK_THU =3397">[X]</xsl:if><xsl:if test="STK_THU != 8991 and STK_THU != 3121 and STK_THU != 8993 and STK_THU != 3397">[&#32;]</xsl:if>
		</td>
		</tr>
		<tr>
		<td>Vào tài Khoản của KBNN: <xsl:if test="TEN_KBAC !=''"><span class="ttnt_18"> <xsl:value-of select="TEN_KBAC"/></span></xsl:if></td>
		<td>Tỉnh, TP: <xsl:if test="TEN_TINH_KBAC !=''"><span class="ttnt_20"> <xsl:value-of select="TEN_TINH_KBAC"/></span></xsl:if></td>
		</tr>
		<tr>
		<td colspan="2">
		Mở tại NHTM ủy nhiệm thu: 	       <xsl:if test="TEN_NHANG_UNT !=''">
                <span class="ttnt_18">
                  <xsl:value-of select="TEN_NHANG_UNT"/>
                </span>
              </xsl:if>
			  <xsl:if test="not(TEN_NHANG_UNT)">	&#160;	</xsl:if>	
		</td>
		</tr>
		<tr>
		<td colspan="2">Nộp theo văn bản của cơ quan có thẩm quyền: </td>
		</tr>
		<tr>
		<td colspan="2"> Kiểm toán nhà nước&#160;<xsl:if test="ID_TK_KNGHI = 01">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 01">[&#32;]</xsl:if>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Thanh tra tài chính <xsl:if test="ID_TK_KNGHI = 02">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 02">[&#32;]</xsl:if></td>
		</tr>
		<tr>
		<td colspan="2">Thanh tra Chính phủ &#160;&#160;&#160;<xsl:if test="ID_TK_KNGHI = 03">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 03">[&#32;]</xsl:if>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan có thẩm quyền khác <xsl:if test="ID_TK_KNGHI = 04">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 04">[&#32;]</xsl:if></td>
		</tr>
		<tr>
		<td>Tại cơ quan quản lý thu: <xsl:if test="TEN_CQTHU !=''"><span class="ttnt_24"> <xsl:value-of select="TEN_CQTHU"/></span></xsl:if></td>
		<td>Mã CQ thu: <xsl:if test="MA_CQTHU !=''"><span class="ttnt_26"> <xsl:value-of select="MA_CQTHU"/></span></xsl:if></td>
		</tr>
	
		</table>
		<br/>
          </xsl:for-each>
          <div id="conten_table">
            <table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet">
              <tbody >
			  <tr align="center">
				<td colspan="6"><strong class="tb_strong">Phần dành cho NNT ghi khi nộp tiền vào NSNN</strong></td>
				<td colspan="2" style="margin-left:15px;margin-right:15px;">      <strong class="tb_strong">
                    Phần dành cho NH ủy nhiệm
                    <br>thu/ NH phối hợp thu/KBNN ghi</br>
                  </strong>
				</td>
			  </tr>
                <tr align="center">
	  <td style="height:23px; width:40px; text-align: center; vertical-align: middle;">
                    <strong class="tb_strong">STT</strong>
                  </td>
				     <td style="height:23px; width:80px; text-align: center;">
                    <strong class="tb_strong">Số tờ khai/ Số quyết định / Số thông báo</strong>
                  </td>
				     <td style="height:23px; width:80px; text-align: center;">
                    <strong class="tb_strong">Kỳ thuế/ Ngày quyết định/ Ngày thông báo</strong>
                  </td>
                  <td style="height:23px; width:164px; text-align: center;">
                    <strong class="tb_strong">Nội dung các khoản nộp NSNN</strong>
                  </td>
				   <td style="height:23px; width:80px; text-align: center;">
                    <strong class="tb_strong"> Số nguyên tệ </strong>
                  </td>
                  <td style="height:23px; width:80px; text-align: center;">
                    <strong class="tb_strong">Số tiền VND</strong>
                  </td>
                  <td style="height:23px; width:75px; text-align: center;">
                    <strong class="tb_strong">Mã chương</strong>
                  </td>
                  <td style="height:23px; width:75px; text-align: center;">
                    <strong class="tb_strong">Mã tiểu Mục</strong>
                  </td>
                </tr>
				<xsl:for-each select="$NDUNG_CTU/CHUNGTU_CTIET/ROW_CTIET">
                <tr >
                 <td align="center" style="vertical-align: middle;">
                      <span class="ttnt_27" id="stt"><span class="ttnt_27" id="stt" ><countNo><xsl:value-of select="position()"/></countNo></span></span>
                    </td>
					<td style="text-align: left;">
                      <span class="ttnt_27">
						<xsl:if test="SO_TK_TB_QD = '' "></xsl:if>
                      <xsl:if test="SO_TK_TB_QD != ''">
					     <xsl:value-of select="SO_TK_TB_QD"/>
					  </xsl:if>
                      </span>
                    </td>
					<td style="text-align: left;">
                      <span class="ttnt_27">
						<xsl:if test="KY_THUE = '' "></xsl:if>
                      <xsl:if test="KY_THUE != ''">
					     <xsl:value-of select="KY_THUE"/>
					  </xsl:if>
                      </span>
                    </td>
                    <td style="height:23px; width:157px;text-align: left;">
                      <span class="ttnt_27">
                        <xsl:value-of select="NDUNG_NOP"/>
						<xsl:if test="GHI_CHU!=''">
						;Ghi chú : <xsl:value-of select="GHI_CHU"/>
						</xsl:if>
						<xsl:if test="GHI_CHU=''">
						;
						</xsl:if>
                      </span>
                    </td>
                    <td style="text-align: right;">
                      <span class="ttnt_27" id="nguyente">
						<!-- Format MoneyUSD Bt library-->
<!-- 			 <xsl:value-of select="format-number(TIEN_PNOP, '###,###.00','us')"/>  --> 
					<xsl:if test="$MA_NGUYENTE = 'USD' ">
						  <xsl:value-of select="ihtkk:toFormatDecimall(TIEN_PNOP)"/>
					</xsl:if>
					  <xsl:if test="not($MA_NGUYENTE)">
						&#160;
						</xsl:if>		
                     </span>
                    </td>
                    <td style="text-align: right;">
                      <span class="ttnt_27" id="sotien">
					<xsl:if test="$MA_NGUYENTE = 'VND' ">
                        <xsl:value-of select="ihtkk:formatNumber(TIEN_PNOP)"/>
					</xsl:if>
					 <xsl:if test="not($MA_NGUYENTE)">
						<xsl:value-of select="ihtkk:formatNumber(TIEN_PNOP)"/> 
						</xsl:if>	
                      </span>
                    </td>
                    <td style="text-align: center;">
                      <span class="ttnt_27">
                        <xsl:value-of select="MA_CHUONG"/>
                      </span>
                    </td>
                    <td style="text-align: center;">
                      <span class="ttnt_27">
                        <xsl:value-of select="MA_NDKT"/>
                      </span>
                    </td>
                </tr>
				</xsl:for-each>
                <tr>                 
                <xsl:if test="$MA_CTU = 01">
                    <td colspan="4" style="text-align: right;">
                      <strong class="tb_strong">Tổng tiền</strong>
                    </td>
                  </xsl:if>
				       <td style="height:23px;text-align: right;">
                    <span class="ttnt_27" id="sum_nguyente" >
						<xsl:if test="$MA_NGUYENTE = 'USD'">
						  <xsl:value-of select="ihtkk:toFormatDecimall($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/>
					</xsl:if>
					 <xsl:if test="not($MA_NGUYENTE)">
						&#160;
						</xsl:if>	
                    </span>
                  </td>
                  <td style="height:23px;text-align: right;">
                    <span class="ttnt_27" id="sum">
					 	<xsl:if test="$MA_NGUYENTE = 'VND'">
                        <xsl:value-of select="ihtkk:formatNumber($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/>
					</xsl:if>
					 <xsl:if test="not($MA_NGUYENTE)">
						<xsl:value-of select="ihtkk:formatNumber($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/>
						</xsl:if>	
                    </span>
                  </td>
                  <td></td>
                  <td></td>
                </tr>
              </tbody>
            </table>
              <p style="font-size:15px">
              <i >Tổng số tiền ghi bằng chữ:</i>
			  <i style="margin-left:-7px">
                <xsl:if test="$MA_NGUYENTE = 'VND' ">
			        <xsl:value-of select="ihtkk:DocTienBangChu($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/> đồng 
               </xsl:if>
			    <xsl:if test="not($MA_NGUYENTE)">
						<xsl:value-of select="ihtkk:DocTienBangChu($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/> đồng 
						</xsl:if>	
               <xsl:if test="$MA_NGUYENTE = 'USD' ">
			   <xsl:value-of select="ihtkk:toEnglishCashUSD($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/> Dollar (USD)
               </xsl:if>
			    <xsl:if test="not($MA_NGUYENTE)">
						&#160;
						</xsl:if>	
			   </i>
            </p>
            <table border="1" cellpadding="0" cellspacing="0" style="width:100%">
              <tbody>
                <tr>
                  <td align="center" style="height:23px; width:120px"><strong class="tb_strong">PHẦN KBNN GHI</strong></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td rowspan="3" style="height:23px;"></td>
                  <td><span class="ttnt_27">Mã CQ thu:</span></td>
                  <td><span class="ttnt_27">Nợ TK:</span></td>
                </tr>
                <tr>
                  <td style="height:23px;"><span class="ttnt_27">Mã ĐBHC:</span></td>
                  <td><span class="ttnt_27">Có TK:</span></td>
                </tr>
                <tr>
                 <xsl:if test="$MA_CTU = 01">
                 <td colspan="2" style="height:23px;"><span class="ttnt_27">Mã nguồn NSNN:</span></td>
                 </xsl:if>
                 <xsl:if test="$MA_CTU = 02">
                  <td  style="height:23px;"><span class="ttnt_27">Mã nguồn NSNN:</span></td>
                   <td style="height:23px;"><span class="ttnt_27">Tỷ giá hạch toán:</span></td>
                  </xsl:if>
                </tr>
              </tbody>
            </table>
          </div>  
        </div>
        </xsl:for-each>
        <div style="clear: both;">&#160;</div>
      </xsl:for-each>
	  <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		
<div id="sigDiv"></div>
</td>
</tr>
</table>
  </xsl:template>
</xsl:stylesheet>
