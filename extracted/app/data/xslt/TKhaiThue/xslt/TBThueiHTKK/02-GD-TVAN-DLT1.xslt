<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue-TVAN">
	    <xsl:with-param name="mauTKhai" select="'02-GD/TVAN-ĐLT'"/>
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
     <div style="padding-left:70px">Mã số thuế: <xsl:value-of select="$noidungtb/CTietGDich/tinCTietGDich"/></div>
     <div style="padding-left:70px">Thư điện tử: <xsl:value-of select="$noidungtb/CTietGDich/email"/></div>
     <div style="padding-left:70px">Điện thoại: <xsl:value-of select="$noidungtb/CTietGDich/tel"/></div>
     <div style="padding-left:70px">Tên ĐLT: <xsl:value-of select="$noidungtb/CTietGDich/tenNNT"/></div>
     <div style="padding-left:70px">Chủ thể chứng thư số: <xsl:value-of select="$noidungtb/CTietGDich/subject"/></div>
     <div style="padding-left:70px">Số serial chứng thư số: <xsl:value-of select="$noidungtb/CTietGDich/serial"/></div> 
     <div style="padding-left:70px">Nhà cung cấp chứng thư số: <xsl:value-of select="$noidungtb/CTietGDich/issuer"/></div>
     <div style="padding-left:70px">Mã kết quả: <xsl:value-of select="$noidungtb/CTietGDich/makquaCTietGDich"/></div>
     <div style="padding-left:70px">Kết quả: <xsl:value-of select="$noidungtb/CTietGDich/mtaKquaCTietGDich"/></div>
     <div style="padding-left:70px">Mã lỗi: <xsl:value-of select="$noidungtb/CTietGDich/maLoiCTietGDich"/></div>
     <div style="padding-left:70px">Mã lỗi giao dịch: <xsl:value-of select="$noidungtb/CTietGDich/mtaLoiCTietGDich"/></div>
     <div><i><b><u>Ghi chú: </u></b>Thông báo được gửi tự động từ hệ thống khai thuế điện tử của Tổng cục Thuế.</i></div><br/>
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
