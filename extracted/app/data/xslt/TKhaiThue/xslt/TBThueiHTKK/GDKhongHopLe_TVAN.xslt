<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue-TVAN">
	    <xsl:with-param name="mauTKhai" select="'null'"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
    <div>Mã giao dịch: <xsl:value-of select="$noidungtb/GDich/maGDich"/></div>
     <div>Mã loại giao dịch: <xsl:value-of select="$noidungtb/GDich/maLoaiGDich"/></div>
     <div>Nội dung giao dịch: <xsl:value-of select="$noidungtb/GDich/ndungGDich"/></div>
     <div>Mã kết quả giao dịch: <xsl:value-of select="$noidungtb/GDich/maKQuaGDich"/></div>
     <div>Kết quả giao dịch: <xsl:value-of select="$noidungtb/GDich/kquaGDich"/></div>
     <div>Mã lỗi giao dịch: <xsl:value-of select="$noidungtb/GDich/maLoiGDich"/></div>
     <div>Mô tả lỗi giao dịch: <xsl:value-of select="$noidungtb/GDich/mtaLoiGDich"/></div>
     <div>Chi tiết kết quả giao dịch:</div>
    
    
     <div style = "color: DimGray">--------------------------------------------------------------------------------------------------------------------</div><br/>
            <div style = "color: DimGray">“Nộp hồ sơ khai thuế qua mạng là sự lựa chọn thông minh của bạn!”</div><br/>
        </div>	
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
