<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
			<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_03TB_ĐK">
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" /> 
		</xsl:call-template>	
		<div> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan Thuế nhận được Giấy đề nghị hoàn trả khoản thu NSNN số <xsl:value-of select="$ndungTBao/soDNHT"/> ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayDNHT,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayDNHT,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayDNHT,'yyyy')"/> của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> - <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> và hồ sơ gửi kèm theo. </div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ quy định tại <xsl:value-of select="$ndungTBao/quyDinh"/>, cơ quan Thuế thông báo tạm dừng giải quyết hồ sơ đề nghị hoàn thuế của người nộp thuế.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Lý do: <xsl:value-of select="$ndungTBao/lyDo"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Sau khi có đủ căn cứ <xsl:value-of select="$ndungTBao/canCu"/>, cơ quan Thuế sẽ tiếp tục giải quyết hồ sơ hoàn thuế theo quy định.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Nếu có vướng mắc, xin liên hệ với cơ quan Thuế để được giải đáp.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Số điện thoại: <xsl:value-of select="$ndungTBao/soDienThoaiCQT"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Địa chỉ: <xsl:value-of select="$ndungTBao/diaChiCQT"/></div>
		
		
					<table>
							<tr>
						        <td width="50%"></td>
						        <td width="10%"></td>			
							    <td width="40%" class="align-c" >THỦ TRƯỞNG CƠ QUAN THUẾ</td>
							</tr>

							<tr>
								 <td width="50%"></td>
						        <td width="10%"></td>	
								<td width="40%" class="align-c"><i>(Ký, ghi rõ họ tên, chức vụ và đóng dấu)</i></td>
							</tr>
					</table>
			<br/>	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>