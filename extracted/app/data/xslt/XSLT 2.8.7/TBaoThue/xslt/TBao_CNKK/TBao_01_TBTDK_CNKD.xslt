<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)
'" />
<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:call-template name="tbaoHeader_01_TBTDK_CNKD">
			<xsl:with-param name="mauTBao"   select="' 01/TBTDK-CNKD'"/>
			<xsl:with-param name="thongtuTBao"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		<div>
	
		</div>
		<div>Căn cứ quy định tại Luật Quản lý thuế số 78/2006/QH11; Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế số 21/2012/QH13 ngày 20/11/2012; Luật sửa đổi, bổ sung một số điều của các Luật về thuế số 71/2014/QH13 và các văn bản hướng dẫn thi hành;</div>
		<div>Căn cứ Tờ khai thuế của Ông/Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan" /> ; Xét đề nghị của Đội thuế: <xsl:value-of select="$ndungTBao/doiThue" />, Đội Tổng hợp - Nghiệp vụ - Dự toán, Đội Kê khai và Kế toán thuế; </div>
		<div>Chi cục Thuế <xsl:value-of select="$cqtTBao/tenCQT" /> thông báo mức doanh thu khoán dự kiến và mức thuế khoán dự kiến phải nộp của Ông/Bà và công khai thông tin của các cá nhân kinh doanh nộp thuế theo phương pháp khoán (biểu kèm theo).  </div> 
		<div> Cơ quan thuế thực hiện niêm yết công khai toàn bộ thông tin về cá nhân kinh doanh nộp thuế theo phương pháp khoán cùng địa bàn tại <xsl:value-of select="$NNhanTBaoThue/diaDiemLiemYet" /> từ ngày 20 tháng 12 đến hết ngày 31 tháng 12.</div> 
		<div>Nếu có ý kiến phản hồi, đề nghị Ông/Bà liên hệ với cơ quan thuế chậm nhất trước ngày 31 tháng 12 để được giải đáp và hướng dẫn cụ thể theo số điện thoại: <xsl:value-of select="$ndungTBao/soDienThoai" /> ; hoặc fax: <xsl:value-of select="$ndungTBao/soFax" /> ; hoặc hòm thư điện tử: <xsl:value-of select="$ndungTBao/eMail" /> ; hoặc bộ phận một cửa Chi cục Thuế <xsl:value-of select="$cqtTBao/tenCQT" /> - địa chỉ: <xsl:value-of select="$ndungTBao/diaChiCQT" /></div>
		<div>Chi cục Thuế <xsl:value-of select="$cqtTBao/tenCQT" /> thông báo để Ông/bà được biết./.</div> <br/>
		
		<div>
		</div><br/>
	<xsl:call-template name="tbaoFooter"/>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>