<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 66/2019/TT-BTC ngày 20/9/2019 của Bộ Tài chính'"/>

		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'02/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNT"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/mst"/></div> <br/>
	-->
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Do sự cố kỹ thuật của Cổng thông tin điện tử Tổng cục Thuế, Tổng cục Thuế thông báo tạm dừng việc nhận hồ sơ thuế điện tử/ chứng từ nộp thuế điện tử của người nộp thuế từ ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/LoiKyThuat/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/LoiKyThuat/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/LoiKyThuat/ngayTBao,'yyyy')"/> 
 Cơ quan Thuế đang cố gắng khắc phục sự cố trong thời gian sớm nhất. Sau khi sự cố được khắc phục, cơ quan Thuế sẽ có thông báo cho NNT biết.</div><br/>

	
	<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thời gian khắc phục lỗi do hệ thống ứng dụng của cơ quan Thuế không tính trong tổng thời gian giải quyết hồ sơ thuế điện tử theo quy định của pháp luật.</div> <br/>					
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế xin thông báo để NNT biết và xin lỗi về sự cố này.</div>
	
-->		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm thông tin chi tiết, xin vui lòng truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/duongDan"/> hoặc gọi điện đến số hotline: <xsl:value-of select="$ndungTBao/soHotLine"/> để được hỗ trợ trực tiếp.</div> <br/>
	
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng cục Thuế thông báo để người nộp thuế biết./.</div>		

		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>