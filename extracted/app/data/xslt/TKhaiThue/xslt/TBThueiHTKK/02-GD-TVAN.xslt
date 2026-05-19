<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
<xsl:variable name="noidungtb" select='TBaoThueDTu/TBaoThue/NDungTBao/CTietGDich' />
<xsl:variable name="noidungtb1" select='TBaoThueDTu/TBaoThue/NDungTBao/GDich' />
<xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />
<xsl:call-template name="tkhaiHeaderTBThue-TVAN">

</xsl:call-template>

		  
		<div class="ndungtkhai_div">
            <div class="content">
            <div>Mã giao dịch: <xsl:value-of select="$noidungtb1/maGDich"/></div>
             <div>Mã loại giao dịch: <xsl:value-of select="$noidungtb1/maLoaiGDich"/></div>
              <div>Nội dung giao dịch: <xsl:value-of select="$noidungtb1/ndungGDich"/></div>
              <div>Mã kết quả giao dịch: <xsl:value-of select="$noidungtb1/maKQuaGDich"/></div>
              <div>Kết quả giao dịch: <xsl:value-of select="$noidungtb1/kquaGDich"/></div> 
               <div>Mã lỗi giao dịch: <xsl:value-of select="$noidungtb1/maLoiGDich"/></div>   
               <div>Mô tả lỗi giao dịch: <xsl:value-of select="$noidungtb1/mtaLoiGDich"/></div>   
            <div>Chi tiết kết quả giao dịch:</div>
     <div style="padding-left:70px">Mã số thuế: <xsl:value-of select="$noidungtb/tinCTietGDich"/></div>
     <div style="padding-left:70px">Thư điện tử: <xsl:value-of select="$noidungtb/email"/></div>
     <div style="padding-left:70px">Điện thoại: <xsl:value-of select="$noidungtb/tel"/></div>
     <div style="padding-left:70px">Tên NNT: <xsl:value-of select="$noidungtb/tenNNT"/></div>
     <div style="padding-left:70px">Chủ thể chứng thư số: <xsl:value-of select="$noidungtb/subject"/></div>
     <div style="padding-left:70px">Số serial chứng thư số: <xsl:value-of select="$noidungtb/serial"/></div> 
     <div style="padding-left:70px">Nhà cung cấp chứng thư số: <xsl:value-of select="$noidungtb/issuer"/></div>
     <div style="padding-left:70px">Mã kết quả: <xsl:value-of select="$noidungtb/makquaCTietGDich"/></div>
     <div style="padding-left:70px">Kết quả: <xsl:value-of select="$noidungtb/mtaKquaCTietGDich"/></div>
     <div style="padding-left:70px">Mã lỗi: <xsl:value-of select="$noidungtb/maLoiCTietGDich"/></div>
     <div style="padding-left:70px">Mã lỗi giao dịch: <xsl:value-of select="$noidungtb/mtaLoiCTietGDich"/></div>
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
