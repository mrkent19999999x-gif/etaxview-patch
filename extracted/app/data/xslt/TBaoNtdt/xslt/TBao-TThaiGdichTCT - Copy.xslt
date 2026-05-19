<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeaderTCT.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_HDR' />
		<xsl:variable name="NNhanTBaoThue" select='THONGBAO/NDUNG_TBAO/THONGBAO_CTIET/ROW_CTIET' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_THONGBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_THONGBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_THONGBAO" />
			<xsl:with-param name="motaTBao"   select="'V/v Xác nhận trạng thái Giấy nộp tiền'" />
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
			Vào <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'ii')"/> giây,
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_THONGBAO,'yyyy')"/>, Cơ quan thuế xác nhận trạng thái giao dịch nộp thuế điện tử của NNT với thông tin chi tiết trạng thái giao dịch chứng từ như sau:<br/>
			<br/>
			<table cellpadding="0" cellspacing="0" border="1" >
			<tbody>
			<tr align="center">
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">Số GNT</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">Ngày nộp thuế điện tử</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">MST thụ hưởng</strong></td>
			<td style="height:23px; ext-align: center;"><strong class="tb_strong">Tên người thụ hưởng</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Tài khoản trích nợ</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Nộp cho KBNN</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Tổng số khoản</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Tổng số tiền nộp NSNN</strong></td>
			<td style="height:23px;  ext-align: center;"><strong class="tb_strong">Trạng thái</strong></td>
			</tr>
			<tr>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/SO_GNT" /></td>
			<td style="text-align: center;"><xsl:value-of select="$NNhanTBaoThue/NGAY_XLY" /></td>
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
	</xsl:template>		
</xsl:stylesheet>