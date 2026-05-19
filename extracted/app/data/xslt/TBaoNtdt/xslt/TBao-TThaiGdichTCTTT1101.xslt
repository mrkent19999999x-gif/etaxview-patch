<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeaderTCT110.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
		<xsl:variable name="NNhanTBaoThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
			
			<xsl:variable name="matthai" select='$NNhanTBaoThue/MA_TTHAI' />
			
		<xsl:call-template name="tbaoHeader1">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_THONGBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_THONGBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_THONGBAO" />
			<xsl:with-param name="motaTBao"   select="'Xác nhận nộp hồ sơ thuế điện tử/ chứng từ nộp thuếđiện tử'" />
		</xsl:call-template>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
					<td>&#160;&#160;&#160;&#160;&#160;<b><i><u>Kính gửi: </u></i></b></td>
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
						<tr ><td/><td/></tr>
					<tr >
					<br/>
						<td style="margin-top:10px;" > <i><span>&#160;&#160;&#160;	&#160;&#160;Mã số thuế của NNT:&#160; </span></i></td>
						<td style="margin-top:10px;" >
				
								 
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
			
			  
			   <xsl:choose>
        <xsl:when test="$matthai='17' ">
		&#160;&#160;&#160;&#160;&#160;Căn cứ chứng từ nộp thuế điện tử của người nộp thuế gửi tới cơ quan thuế
			lúc <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'ii')"/> giây,
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_HOSO,'yyyy')"/>, Cơ quan thuế xác nhận việc nộp chứng từ nộp thuếđiện tử của người nộp thuế, cụ thể như sau: <br/>
			<br/>
			&#160;&#160;&#160;&#160;&#160;Tên chứng từ nộp thuế điện tử: Thông tin giấy nộp tiền
			<br/>
				<br/>
				
			<table cellpadding="0" cellspacing="0" border="1" >
			<tbody>
			<tr align="center">
			<td style="height:23px; text-align: center;"><strong class="tb_strong">STT</strong></td>
			<td style="height:23px; text-align: center;"><strong class="tb_strong">Số GNT</strong></td>
			<td style="height:23px; text-align: center;"><strong class="tb_strong">MST thụ hưởng</strong></td>
			<td style="height:23px; text-align: center;"><strong class="tb_strong">Tên người thụ hưởng</strong></td>
			<td style="height:23px;  text-align: center;"><strong class="tb_strong">Tài khoản trích nợ</strong></td>
			<td style="height:23px;  text-align: center;"><strong class="tb_strong">Nộp cho KBNN</strong></td>

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
	
       <br/>
              <span >&#160;&#160;&#160;&#160;&#160;Mã giao dịch điện tử:&#160; </span>
			 <xsl:if test="$tbThue/MA_GDICH !=''">
                    <span>
                      <xsl:value-of select="$tbThue/MA_GDICH"/>
                    </span>
                  </xsl:if>

            <!-- code for dates later than 2014-10-01  -->
        </xsl:when>
        <xsl:otherwise>
			
			&#160;&#160;&#160;&#160;&#160;Tên chứng từ nộp thuế điện tử: Thông tin giấy nộp tiền
			<br/>		<br/>
			<span >&#160;&#160;&#160;&#160;&#160;Mã giao dịch điện tử:&#160; </span>
			 <xsl:if test="$tbThue/MA_GDICH !=''">
                    <span>
                      <xsl:value-of select="$tbThue/MA_GDICH"/>
                    </span>
                  </xsl:if>
				  	<br/>		<br/>
			<span >&#160;&#160;&#160;&#160;&#160;Số giấy nộp tiền:&#160; </span>
			 <xsl:if test="$NNhanTBaoThue/SO_GNT !=''">
                    <span>
                      <xsl:value-of select="$NNhanTBaoThue/SO_GNT"/>
                    </span>
                  </xsl:if>
				    	<br/>		<br/>
			<span >&#160;&#160;&#160;&#160;&#160;Lý do:&#160; </span>
			 <xsl:if test="$NNhanTBaoThue/TEN_TTHAI !=''">
                    <span>
                      <xsl:value-of select="$NNhanTBaoThue/TEN_TTHAI"/>
                    </span>
                  </xsl:if>
            <!-- code for dates earlier than or equal to 2014-10-01 -->
        </xsl:otherwise>
    </xsl:choose>
			
	  
			
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
	</xsl:template>		
</xsl:stylesheet>