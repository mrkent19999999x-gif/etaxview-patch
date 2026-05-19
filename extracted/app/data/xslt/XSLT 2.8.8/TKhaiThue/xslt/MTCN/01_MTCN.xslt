<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="TkhaiHeader_01_MTCN">
		<xsl:with-param name="mauTKhai"   select="'01/MTCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
                      <!-- <table class="tkhai_table"> -->
                        <tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngành nghề kinh doanh chính: <xsl:value-of select="$tkchinh/ten_nnkd"/><br/><br/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/> miễn tiền chậm nộp theo quy định tại Điều 23 Thông tư số 80/2021/TT-BTC ngày 29 tháng 09 năm 2021 của Bộ trưởng Bộ Tài chính, cụ thể như sau:<br/><br/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Lý do miễn tiền chậm nộp: <xsl:value-of select="$tkchinh/ten_lydo"/>;<br/><br/>
					</td>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Giá trị vật chất bị thiệt hại: <xsl:value-of select="ihtkk:formatNumber($tkchinh/giaTriVatChat)"/> đồng;<br/><br/>
					</td>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Số tiền chậm nộp đề nghị miễn: <xsl:value-of select="ihtkk:formatNumber($tkchinh/soTienChamNop)"/> đồng;<br/><br/>
					</td>
				</tr>
				<tr>
					<td colspan="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Tài liệu gửi kèm: (ghi rõ tên tài liệu, bản chính hay bản sao)<br/></td>
					</tr>
						<xsl:for-each select="$tkchinh/TaiLieuDinhKem/Tailieu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows"/>)</td>
								<td><xsl:value-of select="tenTaiLieu"/></td><br/>
	         				</tr>	
	         		</xsl:for-each><br/>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/> chịu trách nhiệm trước pháp luật về các thông tin nêu trên./.<br/>
					</td>
					<xsl:call-template name="TkhaiFooter_MTCN"/>
				
						<!-- </table>-->
							<table style="page-break-inside: avoid;" > 
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>	
		</div>
		
					</xsl:template>	

</xsl:stylesheet>
