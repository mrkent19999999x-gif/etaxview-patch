<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 160/2013/TT-BTC ngày 14/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_06TemRuou">
		<xsl:with-param name="mauTKhai"   select="'06'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                      <table class="tkhai_table">
                         <tr>
							 <td rowspan="4" class="align-c"><b>STT</b></td>
							 <td rowspan="4" class="align-c"><b>Ký hiệu mẫu</b></td>
							 <td rowspan="4" class="align-c"><b>Tên tem</b></td>
							 <td rowspan="4" class="align-c"><b>Ký hiệu</b></td>
							 <td colspan="5" class="align-c"><b>Số tồn đầu kỳ, mua trong kỳ </b></td>
							 <td colspan="8" class="align-c"><b>Số sử dụng, mất, huỷ trong kỳ</b></td>
							 <td colspan="3" rowspan="3" class="align-c"><b>Tồn cuối kỳ</b></td>
						</tr>
						<tr>
							<td rowspan="3" class="align-c"><b>Tổng số</b></td>
							<td colspan="2" rowspan="2" class="align-c"><b>Số tồn đầu kỳ</b></td>
							<td colspan="2" rowspan="2" class="align-c"><b>Số mua trong kỳ</b></td>
							<td colspan="3" rowspan="2" class="align-c"><b>Tổng số sử dụng, mất, huỷ</b></td>
							<td colspan="5" class="align-c"><b>Trong đó</b></td>
						</tr>
						<tr>
						<td rowspan="2" class="align-c"><b>Số lượng đã sử dụng</b></td>
							<td colspan="2" class="align-c"><b>Mất</b></td>
							<td colspan="2" class="align-c"><b>Hủy</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Cộng</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
						</tr>
					    <tr>
							<td class="align-c"><i>(1)</i></td>
							<td class="align-c"><i>(2)</i></td>
							<td class="align-c"><i>(3)</i></td>
							<td class="align-c"><i>(4)</i></td>
							<td class="align-c"><i>(5)</i></td>
							<td class="align-c"><i>(6)</i></td>
							<td class="align-c"><i>(7)</i></td>
							<td class="align-c"><i>(8)</i></td>
							<td class="align-c"><i>(9)</i></td>
							<td class="align-c"><i>(10)</i></td>
							<td class="align-c"><i>(11)</i></td>
							<td class="align-c"><i>(12)</i></td>
							<td class="align-c"><i>(13)</i></td>
							<td class="align-c"><i>(14)</i></td>
							<td class="align-c"><i>(15)</i></td>
							<td class="align-c"><i>(16)</i></td>
							<td class="align-c"><i>(17)</i></td>
							<td class="align-c"><i>(18)</i></td>
							<td class="align-c"><i>(19)</i></td>
							<td class="align-c"><i>(20)</i></td>
						</tr>
				<xsl:for-each select="$tkchinh/BangKe/ChiTietBangKe">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct12)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
								<td class="align-r"><xsl:value-of select="ct15"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
								<td class="align-r"><xsl:value-of select="ct17"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)"/></td>

							</tr>
						</xsl:for-each>
									</table> <br/>
						<div>Cam kết báo cáo tình hình sử dụng hóa đơn trên đây là đúng sự thật, nếu sai, đơn vị chịu hoàn toàn trách nhiệm trước pháp luật. <xsl:value-of select="$tkchinh/lyDoMat"/></div>
                        
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>	  
        <xsl:call-template name="tkhaiFooter_TemRuou"/> 
		<div id="sigDiv"></div>
		<div><i>(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân sản xuất rượu</i></div>
		</td>
		</tr>
		</table>	
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
