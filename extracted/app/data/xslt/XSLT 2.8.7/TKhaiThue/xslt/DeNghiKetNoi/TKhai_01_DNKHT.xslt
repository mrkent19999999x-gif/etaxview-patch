<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:call-template name="tkhaiHeader_NoHeader">
			<xsl:with-param name="mauTKhai"   select="'01/ĐNKHT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		<div style="width:90%;padding-top: 6pt;text-align:center"><b>Kính gửi: </b><xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
		<div style="padding-top: 5pt">1.Thông tin về khoản nộp thừa của người nộp thuế từ chối nhận lại:</div>
		
		<div class="ndungtkhai_div">
            <div class="content">
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <b>STT</b></td>
						<td class="align-c"><b>Số chứng từ nộp NSNN</b></td>
						<td class="align-c"><b>Ngày chứng từ nộp NSNN</b></td>
						<td class="align-c"><b>Chương</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Tên cơ quan thu</b></td>
						<td class="align-c"><b>Loại tiền</b></td>
						<td class="align-c"><b>Số tiền thuế, tiền chậm nộp, tiền phạt phải nộp</b></td>
						<td class="align-c"><b>Số tiền thuế, tiền chậm nộp, tiền phạt đã nộp</b></td>
						<td class="align-c"><b>Số tiền thuế, tiền chậm nộp, tiền phạt nộp thừa</b></td>
					</tr>
					<xsl:for-each select="$tkchinh/TTin_KhoanNopThua/CTiet">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-l"><xsl:value-of select="so_CTu"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_CTu,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ma_Chuong"/></td>
							<td class="align-c"><xsl:value-of select="ten_TieuMuc"/></td>
							<td class="align-c"><xsl:value-of select="ten_CQThu"/></td>
							<td class="align-c"><xsl:value-of select="ma_Loai_Tien"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/CTiet/soTienPhaiNop)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/CTiet/soTienDaNop)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/CTiet/soTienNopThua)"/></td>
						</tr>														 
					</xsl:for-each>
					<tr>
						<td></td>
						<td colspan="5" class="align-l"><b>Tổng cộng:</b></td>
						<td class="align-c"><xsl:value-of select="$tkchinh/TTin_KhoanNopThua/TongCong/Tong_Ma_Loai_Tien"/></td>
						<b><td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/TongCong/tong_soTienPhaiNop)"/></td></b>
						<b><td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/TongCong/tong_soTienDaNop)"/></td></b>
						<b><td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TTin_KhoanNopThua/TongCong/tong_soTienNopThua)"/></td></b>
					</tr>
				</table>
			</div>		
		</div><br/>	
		
		<div style="padding-top: 5pt">2. Lý do đề nghị từ chối nhận lại số tiền nộp thừa: <xsl:value-of select="$tkchinh/lyDoTuChoi"/></div>
	
		<div style="padding-top: 5pt">3. Thông tin, tài liệu gửi kèm (ghi rõ tên tài liệu, bản chính, bản sao):</div>
		
		<div><xsl:for-each select="$tkchinh/TLieu_DinhKem/CTiet">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="ten_TaiLieu"/></div>													 
			</xsl:for-each>
		</div>
	<xsl:call-template name="tkhaiFooter_01_DNKHT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
