<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="ttinDaiLyThue" select='TBaoThueDTu/TBaoThue/TTinChung/DaiLyThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>
<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_BC26_BLDT">
			<xsl:with-param name="mauTBao"   select="'01-01/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
							
			<xsl:if test="$ndungTBao/trangThai='Y' or $ndungTBao/trangThai='0'">
			           
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/> của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>					
						gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>.</div>	
					<xsl:for-each select="$ndungTBao/HoSoThue/CTietHoSoThue">
						<xsl:if test="kyTinhThue and normalize-space(kyTinhThue)">
							<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Kỳ tính thuế: <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/kyTinhThue"/></div>										
						</xsl:if>	
					</xsl:for-each>				
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ hóa đơn điện tử của người nộp thuế đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/></div>						
			</xsl:if>							
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng liên hệ với cơ quan thuế nơi nộp hồ sơ để được hỗ trợ.</div> 
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> biết và thực hiện./.</div><br/>
				<br/><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã hồ sơ: <xsl:value-of select="$ndungTBao/maDVC"/></div><br/>		
		
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>	

	
</xsl:stylesheet>