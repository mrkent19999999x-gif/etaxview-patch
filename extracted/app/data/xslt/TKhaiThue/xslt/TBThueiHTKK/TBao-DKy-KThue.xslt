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
                 <div>Ngày  <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'dd/mm/yyyy')"/>, cơ quan thuế xác nhận các thông tin về việc đăng ký hồ sơ khai thuế nộp qua mạng của đơn vị, gồm có:</div><br/>

                 <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tờ khai</b></td>
							<td class="align-c"><b>Loại kỳ kê khai</b></td>
							<td class="align-c"><b>Kỳ bắt đầu</b></td>
						</tr>
                        <xsl:for-each select="$noidungtb/DSachTKhaiDKy/SacThue">
							<tr>
								<td colspan="4"><b><xsl:value-of select="tenSacThue"/></b></td>
							</tr>
								<xsl:for-each select="DangKyToKhai/ToKhai">
									<xsl:variable name="currentRows" select="position()"/>
									<tr>
										<td class="align-c"><xsl:value-of select="$currentRows"/></td>
										<td><xsl:value-of select="tenToKhai"/></td>
										<td><xsl:value-of select="loaiKyKeKhai"/></td>
										<td><xsl:value-of select="kyBatDau"/></td>
									</tr>
								</xsl:for-each>
						</xsl:for-each>
			      </table>
			      <br/>
            <div>Để sử dụng dịch vụ đơn vị truy cập theo đường dẫn: http://kekhaithue.gdt.gov.vn</div><br/>
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
