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
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ hồ sơ chấm dứt hiệu lực mã số thuế của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> (hoặc hồ sơ hoàn thành nghĩa vụ thuế trước khi làm thủ tục giải thể tại cơ quan đăng ký kinh doanh của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>) nộp ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/nopNgay,'dd/mm/yyyy')"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$ttinCQT/tenCQT"/> thông báo hiện đang tiến hành làm thủ tục chấm dứt hiệu lực mã số thuế (hoặc làm các thủ tục liên quan đến quyết toán thuế, hoá đơn đối với trường hợp giải thể doanh nghiệp) của người nộp thuế.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Nếu có vướng mắc, xin vui lòng liên hệ theo địa chỉ: <xsl:value-of select="$ndungTBao/boPhanCQT"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Địa chỉ: <xsl:value-of select="$ndungTBao/diaChiCQT"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Số điện thoại: <xsl:value-of select="$ndungTBao/dienThoaiCQT"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Địa chỉ E-mail: <xsl:value-of select="$ndungTBao/emailCQT"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo để <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> được biết và thực hiện./.</div>
		
		
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