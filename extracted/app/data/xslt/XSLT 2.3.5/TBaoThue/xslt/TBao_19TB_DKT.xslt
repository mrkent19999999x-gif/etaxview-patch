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
				<xsl:variable name="ttinCQT" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:call-template name="tbaoHeader_03TB_ĐK">
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" /> 
		</xsl:call-template>	
		<div> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> - <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></div>
		<div> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Quản lý thuế, Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế và các văn bản hướng dẫn hiện hành.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Thông tư số 95/2016/TT-BTC ngày 28/06/2016 của Bộ Tài chính hướng dẫn về đăng ký thuế.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ công văn số <xsl:value-of select="$ndungTBao/soCV"/> ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayCV,'dd/mm/yyyy')"/> của  <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> về việc đề nghị khôi phục trạng thái mã số thuế và các tài liệu đính kèm.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$ttinCQT/tenCQT"/> thông báo khôi phục trạng thái hoạt động của mã số thuế <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> cho <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> địa chỉ <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/> như sau:</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; + Trạng thái mã số thuế trước khi khôi phục: <xsl:value-of select="$ndungTBao/trangthaiMSTTruoc"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; + Trạng thái mã số thuế sau khi khôi phục:  <xsl:value-of select="$ndungTBao/trangthaiMSTSau"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; + Lý do khôi phục mã số thuế: <xsl:value-of select="$ndungTBao/lyDo"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> được phép sử dụng mã số thuế theo quy định của Luật Quản lý thuế kể từ ngày ghi trên Thông báo này./.</div>
		
		
					<table>
							<tr>
						        <td width="50%"></td>
						        <td width="10%"></td>			
							    <td width="40%" class="align-c" >QUYỀN HẠN, CHỨC VỤ CỦA NGƯỜI KÝ </td>
							</tr>

							<tr>
								 <td width="50%"></td>
						        <td width="10%"></td>	
								<td width="40%" class="align-c"><i>(Ký, ghi rõ họ tên và đóng dấu)</i></td>
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