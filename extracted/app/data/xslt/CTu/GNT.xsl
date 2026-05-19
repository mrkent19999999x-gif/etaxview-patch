<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../TKhaiThue/common/common.xsl"/> 
  <xsl:template match="/">
   <xsl:for-each select="CHUNGTU/NDUNG_CTU_NH">
   <xsl:variable name="NDUNG_CTU_NH" select="." />
   <table>
   <tr>
   <td style="border: 1px solid;padding: 18px;text-align: center;"><p>Không ghi vào khu vực này</p></td>
   <td style="width:50%;left: 190px;top: 40px;text-align: center;line-height: 22px; ">
   <strong>GIẤY NỘP TIỀN VÀO NGÂN SÁCH NHÀ NƯỚC</strong>
        <br/>
		Tiền mặt [&#32;] Chuyển khoản [X]<br/>
		<em>(Đánh dấu X vào ô tương ứng)</em>
   </td>
   <td style="text-align:center;">
   <div style="right: 0;text-align: center;">
            <strong>Mẫu số C1- 02/NS</strong><br/>
            (TT số 08/2013/TT-BTC ngày 10/01/2013
            của Bộ Tài Chính)<br/>
            <xsl:for-each select="$NDUNG_CTU_NH">
            Mã hiệu:&#160;<xsl:if test="MAHIEU_CTU !=''"><span><xsl:value-of select="MAHIEU_CTU"/></span></xsl:if><xsl:if test="MAHIEU_CTU =''">............</xsl:if><br/>
            Số:&#160; <xsl:if test="SO_CTU != '' and SO_CTU != 'null'"><span><xsl:value-of select="SO_CTU"/></span></xsl:if>&#160;<xsl:if test="SO_CTU ='' or SO_CTU = null ">...............</xsl:if><br/>
            </xsl:for-each>
            &#160;<br/>
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
		<td>Huyện: <xsl:if test="TEN_HUYEN_NNOP !=''"><span class="ttnt_5"><xsl:value-of select="TEN_HUYEN_NNOP"/></span></xsl:if> </td>
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
		<td>Huyện: <xsl:if test="TEN_HUYEN_NTHAY !='' or TEN_HUYEN_NTHAY !=null"><span class="ttnt_12">&#160;<xsl:value-of select="TEN_HUYEN_NTHAY"/></span></xsl:if></td>
		<td>Tỉnh, TP: <xsl:if test="TEN_TINH_NTHAY !='' or TEN_TINH_NTHAY !=null"><span class="ttnt_14">&#160;<xsl:value-of select="TEN_TINH_NTHAY"/></span></xsl:if></td>
		</tr>
		<tr>
		<td>Đề nghị NH (KBNN): <xsl:if test="TEN_NHANG_NOP !=''"><span class="ttnt_15"> <xsl:value-of select="TEN_NHANG_NOP"/></span></xsl:if></td>
		<td>trích TK số: <xsl:if test="STK_NHANG_NOP !=''"><span id="so_tk_nhang" class="ttnt_17"><xsl:value-of select="STK_NHANG_NOP"/></span></xsl:if></td>
		</tr>
		<tr>
		<td>(hoặc) nộp tiền mặt để chuyển cho KBNN: <xsl:if test="TEN_KBAC !=''"><xsl:value-of select="TEN_KBAC"/></xsl:if></td>
		<td>Tỉnh, TP: 
             <xsl:if test="TEN_TINH_KBAC !=''"><xsl:value-of select="TEN_TINH_KBAC"/></xsl:if></td>
		</tr>
		<tr>
		<td colspan="2">
		Để ghi thu NSNN vào TK: 
            <xsl:value-of select="STK_THU"/>
            hoặc nộp vào TK tạm thu số: 
             <xsl:if test="LOAI_TK_THU = 02"><xsl:value-of select="STK_THU"/></xsl:if>
			 </td>
		</tr>
		<tr>
		<td colspan="2">
		Trường hợp nộp theo kết luận của CQ có thẩm quyền:
		</td>
		</tr>
		<tr>
		<td colspan="2">TK 3521 (Kiểm toán NN) &#160;<xsl:if test="ID_TK_KNGHI = 1">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 1">[&#32;]</xsl:if>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		TK 3523 (Thanh tra CP) &#160;&#160;&#160;<xsl:if test="ID_TK_KNGHI = 3">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 3">[&#32;]</xsl:if>
		</td>
		</tr>
		<tr>
		<td colspan="2">TK 3522 (Thanh tra TC) <xsl:if test="ID_TK_KNGHI = 2">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 2">[&#32;]</xsl:if>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;TK 3529 (CQ có thẩm quyền khác ) <xsl:if test="ID_TK_KNGHI = 4">[X]</xsl:if><xsl:if test="ID_TK_KNGHI != 4">[&#32;]</xsl:if></td>
		</tr>
		<tr>
		<td>Cơ quan quản lý thu: 
            <xsl:if test="TEN_CQTHU !=''"><span class="ttnt_24"> <xsl:value-of select="TEN_CQTHU"/></span></xsl:if></td>
			<td>
			Mã CQ thu:
            <xsl:if test="MA_CQTHU !=''"><span class="ttnt_26"> <xsl:value-of select="MA_CQTHU"/></span></xsl:if>
			</td>
		</tr>
		<tr>
		<td colspan="2" >Tờ khai HQ, QĐ số::&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;ngày:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Loại hình XNK:</td>
		</tr>
		<tr>
		<td>(hoặc) Bảng kê Biên lai số:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ngày:</td>
		</tr>
		</table>
          <br/>
          </xsl:for-each>
          <div id="conten_table">
            <table cellpadding="0" cellspacing="0" border="1" id="chungtu_ctiet">
              <tbody >
                <tr align="center">
                  <td style="height:23px; width:47px; ext-align: center;"><strong class="tb_strong">STT</strong></td>
                  <td style="height:23px; width:377px; ext-align: center;"><strong class="tb_strong">Nội dung các khoản nộp NS</strong></td>
                  <td style="height:23px; width:91px; ext-align: center;"><strong class="tb_strong">Mã NDKT</strong></td>
                  <td style="height:23px; width:96px; ext-align: center;"><strong class="tb_strong">Mã chương</strong></td> 
                  <td style="height:23px; width:96px; ext-align: center;"><strong class="tb_strong">Kỳ thuế</strong></td> 
                  <td style="height:23px; width:171px; text-align: center;"><strong class="tb_strong"><xsl:if test="$MA_CTU =01">Số tiền</xsl:if><xsl:if test="$MA_CTU = 02">Số tiền VND</xsl:if></strong></td>
                </tr>
				<xsl:for-each select="$NDUNG_CTU/CHUNGTU_CTIET/ROW_CTIET">
                <tr >
                  <td align="center"><span class="ttnt_27" id="stt"></span></td>
                  <td style="height:23px; width:277px;text-align: left;"><span class="ttnt_27"><xsl:value-of select="NDUNG_NOP"/><xsl:if test="GHI_CHU !='' ">(<xsl:value-of select="GHI_CHU"/>)</xsl:if></span></td>
                  <td style="text-align: left;"><span class="ttnt_27"><xsl:value-of select="MA_NDKT"/></span></td>
                  <td style="text-align: left;"><span class="ttnt_27"><xsl:value-of select="MA_CHUONG"/></span></td>
                  <td style="text-align: left;"><span class="ttnt_27"><xsl:value-of select="KY_THUE"/></span></td>
                  <td style="text-align: right;"><span class="ttnt_27" id="sotien"><xsl:value-of select="ihtkk:formatNumber(TIEN_PNOP)"/></span></td>
                </tr>
				</xsl:for-each>
                <tr>                 
                  <xsl:if test="$MA_CTU = 01">
                  <td colspan="5" style="text-align: right;"><strong class="tb_strong">Tổng tiền</strong></td>
                  </xsl:if>
                  <td style="height:23px; width:171px;text-align: right;" ><span class="ttnt_27" id="sum"><xsl:value-of select="ihtkk:formatNumber($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/></span></td>
                </tr>
              </tbody>
            </table>
            <p><i>Tổng số tiền ghi bằng chữ:</i>&#160;&#160;<xsl:value-of select="ihtkk:DocTienBangChu($NDUNG_CTU/CHUNGTU_HDR/TONG_TIEN)"/></p>
			<div style="clear: both;">&#160;</div>
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