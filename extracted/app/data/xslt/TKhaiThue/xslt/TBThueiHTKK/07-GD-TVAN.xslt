<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue-TVAN">
	    <xsl:with-param name="mauTKhai" select="'07-GD/T-VAN'"/>
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
      <div style="padding-left:70px">Tên NNT: <xsl:value-of select="$noidungtb/CTietGDich/tenNNT"/></div>
     <div style="padding-left:70px">Mã hồ sơ: <xsl:value-of select="$noidungtb/CTietGDich/maHSo"/></div>
     <div style="padding-left:70px">Tên hồ sơ: <xsl:value-of select="$noidungtb/CTietGDich/tenHSo"/></div> 
     <div style="padding-left:70px">Mã loại hồ sơ: <xsl:value-of select="$noidungtb/CTietGDich/maLoaiHSo"/></div>
     <div style="padding-left:70px">Loại hồ sơ: <xsl:value-of select="$noidungtb/CTietGDich/tenLoaiHSo"/></div>
     <div style="padding-left:70px">Kỳ tính thuế: <xsl:value-of select="$noidungtb/CTietGDich/kyKKhaiHThi"/></div>
     <div style="padding-left:70px">Lần nộp: <xsl:value-of select="$noidungtb/CTietGDich/lanNop"/></div>
     <div style="padding-left:70px">Cơ quan thuế: <xsl:value-of select="$noidungtb/CTietGDich/tenCQTNoiNop"/></div>
     <div style="padding-left:70px">Mã kết quả: <xsl:value-of select="$noidungtb/CTietGDich/makquaCTietGDich"/></div>
     <div style="padding-left:70px">Kết quả: <xsl:value-of select="$noidungtb/CTietGDich/mtaKquaCTietGDich"/></div>
     <div style="padding-left:70px">Mã lỗi: <xsl:value-of select="$noidungtb/CTietGDich/maLoiCTietGDich"/></div>
     <div style="padding-left:70px">Mô tả lỗi: <xsl:value-of select="$noidungtb/CTietGDich/mtaLoiCTietGDich"/></div>
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
