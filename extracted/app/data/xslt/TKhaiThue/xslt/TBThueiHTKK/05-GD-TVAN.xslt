<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue-TVAN">
	    <xsl:with-param name="mauTKhai" select="'05-GD/T-VAN'"/>
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
     
                <table class="tkhai_table">
                        <tr>
							<td class="align-left"><b>STT</b></td>
							<td class="align-left"><b>Mã hồ sơ</b></td>
							<td class="align-left"><b>Tên Hồ sơ</b></td>
							<td class="align-left"><b>Kỳ kết thúc</b></td>
							<td class="align-left"><b>Mã kết quả</b></td>
							<td class="align-left"><b>Kết quả</b></td>
							<td class="align-left"><b>Mã lỗi</b></td>
							<td class="align-left"><b>Mô tả mã lỗi</b></td>
							<div style="padding-left:70px">Mã số thuế: <xsl:value-of select="$noidungtb/CTietGDich/tinCTietGDich"/></div>
                            <div style="padding-left:70px">Tên NNT: <xsl:value-of select="$noidungtb/CTietGDich/tenNNT"/></div>
						</tr>
                        <xsl:for-each select="$noidungtb/CTietGDich/NoiDung05GD/NoiDung05GDTVAN">
					    <xsl:variable name="currentRows" select="position()"/>
						    <tr>
										<td class="align-c"><xsl:value-of select="$currentRows"/></td>
										<td><xsl:value-of select="maHSo"/></td>
										<td><xsl:value-of select="tenHSo"/></td>
											<td class="align-left"><xsl:value-of select="kyNgung"/></td>
										<td class="align-left"><xsl:value-of select="makquaCTietGDich"/></td>
										<td class="align-left"><xsl:value-of select="mtaKquaCTietGDich"/></td>
										<td class="align-left"><xsl:value-of select="maLoiCTietGDich"/></td>
										<td class="align-left"><xsl:value-of select="mtaLoiCTietGDich"/></td>
                                        
						</tr>
						</xsl:for-each>
			      </table>
			      <br/>
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
