<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_01_MTCN">
		<xsl:with-param name="mauTKhai"   select="'01/MTCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
                      <!-- <table class="tkhai_table"> -->
                        <tr>
					<td colspan="3">
						Ngành nghề kinh doanh chính: <xsl:value-of select="$tkchinh/nnkd"/><br/><br/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/> đề nghị <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/> miễn tiền chậm nộp phát sinh trong năm 2020 và năm 2021 còn nợ theo Nghị quyết số 406/NQ-UBTVQH15 do phát sinh lỗ trong kỳ tính thuế năm 2020 với số tiền là: <xsl:value-of select="$tkchinh/soTien"/> đồng (Viết bằng chữ: <xsl:value-of select="$tkchinh/soTienVietBangChu"/> đồng).<br/><br/>
					</td>
				</tr>
				<tr>
						<td colspan="3"><xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/> xin gửi kèm các tài liệu (nếu có):<br/></td>
					</tr>
						<xsl:for-each select="$tkchinh/TaiLieuDinhKem/Tailieu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td>(<xsl:value-of select="$currentRows"/>)</td>
								<td><xsl:value-of select="tenTaiLieu"/></td><br/>
	         				</tr>	
	         		</xsl:for-each><br/>
					<td colspan="3">
						<xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/> xin chịu trách nhiệm trước pháp luật về tính chính xác của kết quả sản xuất kinh doanh nêu trên./.<br/>
					</td>
					<xsl:call-template name="tkhaiFooter_MTCN"/>
				
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
