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
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Quyết định số 
 …./QĐ -TCT ngày …/…/2015 của Tổng cục trưởng Tổng cục Thuế
'" />
		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'06/QTr-KK'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
		</xsl:call-template>
		<br/>
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ khai thuế <xsl:value-of select="$ndungTBao/tenHoSo"/>, kỳ tính thuế <xsl:value-of select="$ndungTBao/kyTinhThue"/> của <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> đã nộp cho cơ quan thuế ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd/mm/yyyy') "/>.</div><br/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div><br/>

	
			<table class="tkhai_table">
				<tr>
					<td class="align-c">STT</td>
					<td class="align-c">Nội dung lỗi </td>
					<td class="align-c">Phương thức xử lý/ Lý do </td>
				</tr>
				<tr>
					<td class="align-c"><i>(1)</i></td>
					<td class="align-c"><i>(2)</i></td>
					<td class="align-c"><i>(3)</i></td>
				</tr>
				
				 <xsl:for-each select="$ndungTBao/ThongTinLoi/CTietThongTinLoi">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="noiDungLoi" /></td>
							  <td class="align-l"><xsl:value-of select="phuongThucXuLy" /></td>
							</tr>
							</xsl:for-each>
			</table>	<br/>			
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;NNT cần biết thêm chi tiết xin vui lòng liên hệ với cơ quan thuế theo địa chỉ: <xsl:value-of select="$ndungTBao/tenBoPhanLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: <xsl:value-of select="$ndungTBao/diaChiBoPhanLHe"/> </div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại: <xsl:value-of select="$ndungTBao/soDThoaiBoPhanLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ Email: <xsl:value-of select="$ndungTBao/emailBoPhanLHe"/> </div>

<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</div>	
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>		
	</xsl:template>		
</xsl:stylesheet>