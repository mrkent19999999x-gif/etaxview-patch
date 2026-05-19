<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 37/2010/TT-BTC ngày 18/3/2010 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-TT372010">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>SỐ TT</b></td>
							<td class="align-c" rowspan="2"><b>KÝ HIỆU CHỨNG TỪ</b></td>
							<td class="align-c" colspan="2"><b>SỐ CHỨNG TỪ</b></td>
							<td class="align-c" rowspan="2"><b>HỌ VÀ TÊN NGƯỜI BỊ KHẤU TRỪ THUẾ</b></td>
							<td class="align-c" rowspan="2"><b>MÃ SỐ THUẾ (HOẶC SỐ CMND; SỐ HỘ CHIẾU)</b></td>
							<td class="align-c" rowspan="2"><b>SỐ TIỀN THUẾ</b></td>
							<td class="align-c" rowspan="2"><b>GHI CHÚ</b></td>
							</tr>
						<tr>
						<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Ngày tháng năm</b></td>
						</tr>
				<xsl:for-each select="$tkchinh/ChungTu/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuCTu"/></td>
								<td class="align-l"><xsl:value-of select="soCTu"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayCTu, 'dd/mm/yyyy')"/></td>
								<td class="align-l"><xsl:value-of select="hoVaTen"/></td>
								<td class="align-c"><xsl:value-of select="mst_CMT_HoChieu"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThue)"/></td>
	         					<td class="align-l"><xsl:value-of select="ghiChu"/></td>
							</tr>
						</xsl:for-each>
			</table>
		<br/><div>Tổng cộng số tiền thuế đã cấp chứng từ khấu trừ thuế: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ChungTu/tongSoTienThue)"/></div>
		<div>(Bằng chữ: <xsl:value-of select="ihtkk:DocTienBangChu($tkchinh/ChungTu/tongSoTienThue)"/>)</div>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>	  
        <xsl:call-template name="tkhaiFooter-TT372010"/> 
		<div id="sigDiv"></div>
		</td>
		</tr>
		</table>	
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
