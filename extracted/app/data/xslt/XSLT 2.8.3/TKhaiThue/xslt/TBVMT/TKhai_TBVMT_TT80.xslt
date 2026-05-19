<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-TBVMT-TT80">
		<xsl:with-param name="mauTKhai"   select="'01/TBVMT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
					<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên hàng hoá</b></td>
							<td class="align-c" colspan="3"><b>Sản lượng tính thuế</b></td>
							<td class="align-c" rowspan="2"><b>Mức thuế</b></td>
							<td class="align-c" rowspan="2"><b>Thuế bảo vệ môi trường phải nộp trong kỳ</b></td>
						</tr>
						 <tr>
						<td class="align-c"><b>Đơn vị tính</b></td>
							<td class="align-c"><b>Sản lượng</b></td>
							<td class="align-c"><b>Tỷ lệ phần trăm (%) tính thuế </b></td>
							</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7) = (4) x (5) x (6)</td>
						</tr>
						<xsl:for-each select="$tkchinh/ChiTietThueBVMT/ThueBVMT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
	         				</tr>	
	         		</xsl:for-each>	
						<tr>
							<td class="align-c"></td>
							<td class="align-c"><b>Tổng cộng:</b></td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-c">\</td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ChiTietThueBVMT/tong_ct7)"/></b></td>
						</tr>
					</table>
				</div>

		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter_01TBVMT_TT80"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:template>		
</xsl:stylesheet>

