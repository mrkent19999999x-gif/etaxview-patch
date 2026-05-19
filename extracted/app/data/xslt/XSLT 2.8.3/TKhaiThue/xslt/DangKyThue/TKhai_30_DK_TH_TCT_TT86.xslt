<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ trưởng Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_30_DK_TCT">
			<xsl:with-param name="mauTKhai"   select="'30/ĐK-TCT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		
		<div style="width:100%;padding-top: 6pt;text-align:center">VĂN BẢN</div><br/>
		<div style="width:100%;padding-top: 6pt;text-align:center">Đăng ký chuyển địa điểm tại cơ quan thuế</div><br/>
		<div style="width:100%;padding-top: 6pt;text-align:center">nơi người nộp thuế chuyển đến<br/>────────────<br/></div><br/>
		
		
		
		<div style="width:100%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/tenCQTQuanLy"/></div><br/>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tên người nộp thuế (ghi theo đăng ký thuế):  <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/tenNNT"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Mã số thuế: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/mst"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Địa chỉ trụ sở (ghi theo địa chỉ trụ sở của tổ chức đã đăng ký thuế): <xsl:value-of select="concat($CTieuTKhaiChinhType/DiaChiTSChinh/soNha, ', ', $CTieuTKhaiChinhType/DiaChiTSChinh/tenPhuong, ', ', $CTieuTKhaiChinhType/DiaChiTSChinh/tenTinh)"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Địa chỉ kinh doanh (ghi theo địa chỉ đăng ký kinh doanh của hộ kinh doanh, cá nhân kinh doanh đã đăng ký thuế): <xsl:value-of select="concat($CTieuTKhaiChinhType/DiaChiKD/soNha, ', ', $CTieuTKhaiChinhType/DiaChiKD/tenPhuong, ', ', $CTieuTKhaiChinhType/DiaChiKD/tenTinh)"/></div>
	    
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;5. Thông tin đại lý thuế (nếu có): </div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a) Tên: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/DLyThue/tenDLyThue"/></div>		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b) Mã số thuế của đại lý thuế: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/DLyThue/mstDLyThue"/></div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;c) Số hợp đồng đại lý thuế: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/DLyThue/soHDongDLyThue"/></div>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ngày ký hợp đồng: <xsl:value-of select="$HSoKhaiThueType/TTinChung/TTinTKhaiThue/DLyThue/ngayKyHDDLyThue"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;6. Lý do đăng ký chuyển địa điểm: <xsl:value-of select="$CTieuTKhaiChinhType/lyDoDNChuyenDiaDiem"/></div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;7. Hồ sơ đính kèm: <xsl:value-of select="$CTieuTKhaiChinhType/HoSoDK/tenHS"/></div>
		
		<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.</div>
		
		
	<xsl:call-template name="tkhaiFooter_13MST"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
