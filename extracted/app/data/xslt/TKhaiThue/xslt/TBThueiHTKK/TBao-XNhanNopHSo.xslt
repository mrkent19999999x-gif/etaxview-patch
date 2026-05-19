<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue">
	    <xsl:with-param name="mauTKhai"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                 <div><xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'ii')"/> giây, ngày  <xsl:value-of select="ihtkk:stringDatetime($noidungtb/ngayXacNhan,'dd/mm/yyyy')"/>, Cơ quan Thuế đã nhận được hồ sơ khai thuế của đơn vị, gồm có:</div><br/>

                <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tờ khai/Phụ Lục</b></td>
							<td class="align-c"><b>Loại tờ khai</b></td>
							<td class="align-c"><b>Kỳ tính thuế</b></td>
							<td class="align-c"><b>Lần nộp</b></td>
							<td class="align-c"><b>Nơi nộp</b></td>
						</tr>
                        <xsl:for-each select="$noidungtb/DSachHSoNop/NDungDSach">
						<xsl:variable name="currentRows" select="position()"/>
						<tr>
										<td class="align-c"><xsl:value-of select="$currentRows"/></td>
										<td><xsl:value-of select="tokhai-phuluc"/></td>
										<td><xsl:value-of select="loaiToKhai"/></td>
										<td class="align-c"><xsl:value-of select="kyTinhThue"/></td>
										<td class="align-c"><xsl:value-of select="lanNop"/></td>
                                        <td><xsl:value-of select="noiNop"/></td>
						</tr>
						</xsl:for-each>
			      </table>
			      <br/>
            <div>Để tra cứu thông tin đã kê khai, xin vui lòng truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</div><br/>
            <div><i><b><u>Ghi chú: </u></b>Thông báo này được gửi tự động từ hệ thống nhận tờ khai qua mạng của Cơ quan Thuế</i></div><br/>
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
