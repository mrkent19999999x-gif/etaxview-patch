<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBAO_TKHOAN_NH' />
		<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="$tbThue/MAU_TBAO"/>
			<xsl:with-param name="soTBao"   select="$tbThue/SO_TBAO" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NGAY_TBAO" />
			<xsl:with-param name="motaTBao"   select="'V/v Chấp nhận đăng ký sử dụng dịch vụ nộp thuế điện tử qua NHTM'" />
			<xsl:with-param name="ma_nhang"   select="$tbThue/MA_NHANG" />
		</xsl:call-template>
		<div align="center" style="margin:0; padding:0;">
		_________________________________
		</div>
		<br/>
		<div>
			<table>
				<tbody>
					<tr>
						<td><b><i><u>Kính gửi:</u></i></b></td>
						<td><xsl:value-of select="$tbThue/TEN_NNT" /></td>
					</tr>
					<tr>
						<td></td>
						<td>Mã số thuế: <xsl:value-of select="$tbThue/MST" /></td>
					</tr>
				</tbody>
			</table>
			<br/>
			Vào <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'ii')"/> giây,
			ngày <xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($tbThue/NGAY_TBAO,'yyyy')"/>, NNT đã được Ngân hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> chấp nhận sử dụng dịch vụ nộp thuế điện tử.<br/>
			<br/>
			- Thông tin chi tiết như sau:
			<br/>
			<br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Điện thoại: <xsl:value-of select="$tbThue/SDT_NNT" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ thư điện tử: <xsl:value-of select="$tbThue/EMAIL_NNT" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Số xê-ri chứng thư số: <xsl:value-of select="$tbThue/SERIAL_CERT_NTHUE" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Chủ thể chứng thư số: <xsl:value-of select="$tbThue/SUBJECT_CERT_NTHUE" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Tên tổ chức cung cấp chứng thư số: <xsl:value-of select="$tbThue/ISSUER_CERT_NTHUE" /><br/> 
				&#160;&#160;&#160;&#160;&#160;&#160;- Thực hiện nộp thuế điện tử qua Ngân hàng : <xsl:value-of select="$tbThue/TEN_NHANG" /><br/>
				&#160;&#160;&#160;&#160;&#160;&#160;- Số tài khoản sử dụng dịch vụ NTĐT: <br/>
				<xsl:for-each select="$tbThue/TTIN_TKHOAN/STK">
                &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                    <xsl:if test="$tbThue/TTIN_TKHOAN/STK !=''">
                      <span>-
                        <xsl:value-of select="."/>
                      </span>
                    </xsl:if>
					<br/>
              </xsl:for-each>
				<br/>
			Để sử dụng dịch vụ NNT truy cập theo đường dẫn: https://nopthue.gdt.gov.vn.<br/>
			<br/>
			Ngân  hàng: <xsl:value-of select="$tbThue/TEN_NHANG" /> thông báo để NNT biết, thực hiện./.

		</div>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>