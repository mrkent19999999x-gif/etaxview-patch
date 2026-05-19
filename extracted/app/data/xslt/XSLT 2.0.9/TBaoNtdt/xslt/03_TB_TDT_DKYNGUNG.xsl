<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
      <xsl:for-each select="TBAO_NGUNG/TBAO_NGUNG_NT">
        <xsl:variable name="TBAO_NGUNG_NT" select="." />
        <xsl:for-each select="$TBAO_NGUNG_NT">
          <div id="headermct">
            <p class="c2">&#160;</p>
            <div class="ms09">
              <span>Mẫu số:&#160;
                <xsl:if test="MAU_TBAO !=''">
                  <span>
                    <xsl:value-of select="MAU_TBAO"/>
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
                    <span class="c1 c15">Số:&#160;
                      <span class="contenms9">&#160;</span>
                      <xsl:if test="SO_TBAO !=''">
                        <span>
                          <xsl:value-of select="SO_TBAO"/>
                        </span>
                      </xsl:if>
                      /TB-TĐT</span>
                  </td>
                  <td class="c8 align-c">
                    <span class="contenms9" id="ngaythang" hidden="true" style="display: none;">
                      <xsl:if test="NGAY_TBAO !=''">
                        <xsl:value-of select="NGAY_TBAO"/>
                      </xsl:if>
                    </span>
                    <span class="c1 " id="ngay_thang">Ngày....tháng.....năm....</span>
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
               V/v: Tài khoản giao dịch thuế điện tử
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
                <xsl:if test="TEN_NNT !=''">
                  <xsl:value-of select="TEN_NNT"/>
                </xsl:if>
              </span>
            </p>
            <p class="c0" style="margin-left: 62px;">Mã số thuế: &#160;
              <span class="c1 c0">
                <xsl:if test="MST !=''">
                  <xsl:value-of select="MST"/>
                </xsl:if>
              </span>
            </p>
              <p class="c3" style="margin-left: 62px;">Địa chỉ: &#160; 
            </p>
              <p class="c3">Căn cứ hồ sơ đăng ký ngừng giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế.     
            </p>
           <p class="c0" style="margin-left: 62px;">Mã giao dịch điện tử: &#160;
              <span class="c1 c0">
                <xsl:if test="SO_TBAO !=''">
                  <xsl:value-of select="SO_TBAO"/>
                </xsl:if>
              </span>
            </p>
             <p class="c0" style="margin-left: 62px;">Xét điều kiện thực hiện và cam kết của người nộp thuế.
            </p>
             <p class="c3">Cơ quan thuế chấp nhận đề nghị về việc đăng ký ngừng giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế kể từ &#160;
              <span class="c1 c23" id="hpgiayngaythang">...giờ ... phút ... giây , ngày DD/MM/YYYY</span>
              <span class="c1 ">cụ thể như sau:</span>     
            </p>
          </div>
           <div id="conten">
            <p class="c2 c11">&#160;</p>
            <p class="c3"></p>
            <p class="c0" style="margin-left: 62px;"> Tài khoản đăng nhập ứng dụng: &#160;
             <span class="c1 c0">
                <xsl:if test="MST !=''">
                  <xsl:value-of select="MST"/>
                </xsl:if>
              </span>
            </p>
            <p class="c3"></p>
            <p class="c0" style="margin-left: 62px;"> Lý do ngừng dịch vụ: &#160;
             <span class="c1 c0">
                <xsl:if test="LYDO_NGUNG !=''">
                  <xsl:value-of select="LYDO_NGUNG"/>
                </xsl:if>
              </span>
            </p>
            <p class="c3">
              <span class="c1 ">Cơ quan thuế thông báo để NNT biết, thực hiện./.</span>
            </p>
          </div>
          <div id="conten">
            <p class="c3">
              <span class="c1">Cơ quan thuế thông báo để NNT được biết./.</span>
            </p>
          </div>
          <div style="clear: both;">&#160;</div>
        </xsl:for-each>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
