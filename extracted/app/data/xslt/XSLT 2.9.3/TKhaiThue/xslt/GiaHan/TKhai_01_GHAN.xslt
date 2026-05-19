<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:call-template name="tkhaiHeader_01_GHAN_373">
			<xsl:with-param name="mauTKhai"   select="'01/GHAN'"/>
		</xsl:call-template>
		
		<div style="width:90%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[1] </b>Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[2] </b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[3] </b>Địa chỉ nhận thông báo: <xsl:value-of select="$tkchinh/dia_ChiNhanTB"/></div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[4] </b>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[5] </b>E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/></div>	
		
		<div style="padding-top: 5pt;text-align:justify">
			<xsl:if test="$tkchinh/LyDoDeNghiGiaHan/ma_LyDo='01' or $tkchinh/LyDoDeNghiGiaHan/ma_LyDo='02' or $tkchinh/LyDoDeNghiGiaHan/ma_LyDo='03'">
			&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[6]. </b>Đề nghị <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> 
		gia hạn nộp thuế theo quy định tại Điều 24 Thông tư số 80/2021/TT-BTC ngày 29 tháng 09 năm 2021 của Bộ trưởng Bộ Tài chính, cụ thể như sau:
			</xsl:if>
			<xsl:if test="$tkchinh/LyDoDeNghiGiaHan/ma_LyDo='04'">
			&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[6]. </b>Đề nghị <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> 
		gia hạn nộp thuế theo quy định tại Điều 20 Nghị định số 126/2020/NĐ-CP ngày 20 tháng 10 năm 2020 của Chính phủ, cụ thể như sau:
			</xsl:if>
		</div>
		
		<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[7]. </b> Lý do đề nghị gia hạn: <xsl:value-of select="$tkchinh/LyDoDeNghiGiaHan/ten_LyDo"/></div>
		
		<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[8]. </b> Giá trị vật chất bị thiệt hại, các khoản được bồi thường, bảo hiểm (đối với trường hợp bất khả kháng); 
		chi phí thực hiện di dời và thiệt hại do phải di dời gây ra, các khoản được hỗ trợ, đền bù thiệt hạị (đối với trường hợp di dời cơ sở sản xuất, 
		kinh doanh): <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoTienThietHaiDiDoi)"/></div>
		
		<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[9]. </b> Diện tích đất có vướng mắc về giải phóng mặt bằng thuê đất: <xsl:value-of select="ihtkk:formatNumber($tkchinh/dienTicDat)"/> m²
		/Tổng diện tích đất trên giấy phép khai thác: <xsl:value-of select="ihtkk:formatNumber($tkchinh/tongDienTichDat)"/> m², đối với trường hợp đề nghị gia hạn nộp tiền cấp quyền khai thác khoáng sản khi có vướng mắc về giải phóng mặt bằng thuê đất.</div>
		
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số thuế và thời gian đề nghị gia hạn:</div>
		
		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-r">Đơn vị tiền: Đồng Việt Nam</div>
				<table class="tkhai_table">
					<tr>
						<td rowspan="2" class="align-c"> <b>STT</b></td>
						<td rowspan="2" class="align-c"><b>Loại thuế đề nghị gia hạn</b></td>
						<td rowspan="2" class="align-c"><b>Tiểu mục</b></td>
						<td rowspan="2" class="align-c"><b>Số tiền</b></td>
						<td rowspan="2" class="align-c"><b>Thời hạn nộp theo quy định</b></td>
						<td colspan="2" class="align-c"><b>Thời gian đề nghị gia hạn</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Từ ngày</b></td>
						<td class="align-c"><b>Đến ngày</b></td>
					</tr>					
					<tr>
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>
						<td class="align-c">(6)</td>
						<td class="align-c">(7)</td>
					</tr>
					
					<xsl:for-each select="$tkchinh/SoThueDeNghiGiaHan/CTietSoThueDeNghiGiaHan">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-j"><xsl:value-of select="ten_LoaiThue"/></td>
							<td class="align-c"><xsl:value-of select="ma_TieuMuc"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_TienDeNghi)"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thoi_HanNop,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thoi_GianDeNghiTuNgay,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thoi_GianDeNghiDenNgay,'dd/mm/yyyy')"/></td>
						</tr>														 
					</xsl:for-each>
					<tr>
						<td></td>
						<td colspan="2" class="align-l">Tổng cộng</td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueDeNghiGiaHan/tong_SoTienDeNghi)"/></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>		
		</div><br/>	
	
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10]. </b> Tài liệu gửi kèm:</div>
		
		<div><xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="tenTaiLieu"/></div>													 
			</xsl:for-each>
		</div>
		
		<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> chịu trách nhiệm trước pháp luật về các thông tin nêu trên 
		và cam kết nộp đầy đủ số tiền thuế nợ được gia hạn sau khi hết thời hạn gia hạn nộp thuế./.</div>
		
		
	<xsl:call-template name="tkhaiFooter_01_GHAN"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
