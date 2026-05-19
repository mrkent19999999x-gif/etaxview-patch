<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="TKhai/DLTKhai/NDTKhai" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	  <xsl:call-template name="tkhaiHeader_CTT50">
		<xsl:with-param name="MSo"   select="'CTT50'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
					<table class="tkhai_table">
						<tr>
								<td colspan="2" class="align-l">
									Tên người nộp thuế: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/TTNNT/Ten"/>
								<br></br>
									Mã số thuế: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/TTNNT/MST"/>
								<br></br>
									Mã thửa đất: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/TTNNT/MaPNN"/>
									<br></br>
									Địa chỉ thửa đất: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/TTNNT/DChi"/>
								</td>
						</tr>
						<tr>
								<td class="align-l">
									Căn cứ thông báo nộp thuế của: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/CCu/DVTBao"/>
									<br></br>
									Số: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/CCu/STBao"/> ngày  <xsl:value-of select="ihtkk:stringDatetime(BCTHSDBLai/DLBLai/NDBLai/CCu/NTBao,'dd')"/> 
										tháng <xsl:value-of select="ihtkk:stringDatetime(BCTHSDBLai/DLBLai/NDBLai/CCu/NTBao,'mm')"/>
										  năm <xsl:value-of select="ihtkk:stringDatetime(TBCTHSDBLai/DLBLai/NDBLai/CCu/NTBao,'yyyy')"/>
										  <br></br>
									Nội dung thu: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/CCu/NDThu"/>
								</td>
								<td class="align-l">
									Số thuế phải nộp theo thông báo: <xsl:value-of select="ihtkk:formatNumber(BCTHSDBLai/DLBLai/NDBLai/TToan/STNKNay)"/>
									<br></br>
									Số tiền chậm nộp: <xsl:value-of select="ihtkk:formatNumber(BCTHSDBLai/DLBLai/NDBLai/TToan/STCNop)"/>
								</td>
						</tr>
						<tr>
								<td colspan="10" class="align-l"> 
								Tổng cộng số thuế phải nộp: <xsl:value-of select="ihtkk:formatNumber(BCTHSDBLai/DLBLai/NDBLai/TToan/TCSTNop)"/>
								<br></br>
								Số tiền bằng chữ: <xsl:value-of select="BCTHSDBLai/DLBLai/NDBLai/TToan/STBChu"/>.
								</td>
						</tr>
				</table> 	
			</div>		
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_CTT50"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>