<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
			<xsl:call-template name="tkhaiHeader_01_KTCN">
				<xsl:with-param name="mauTKhai"   select="'01/KTCN'"/>
				<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			</xsl:call-template>
	    
		<div style="width:90%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/>, 
		mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>, địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>, 
		<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/> đã cung cấp hàng hóa, 
		dịch vụ cho <xsl:value-of select="$tkchinh/ten_DonViSuDungVonNSNN"/> là đơn vị sử dụng vốn NSNN theo hợp đồng số: <xsl:value-of select="$tkchinh/so_HopDong"/>, 
		ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_HopDong,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_HopDong,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_HopDong,'yyyy')"/>, trong đó:</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Giá trị hợp đồng</div>
		
		<div style="padding-top: 4pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Giá trị hợp đồng được thanh toán từ nguồn vốn NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/gia_TriHopDongNguonNSNN)"/> đồng.</div>
		
		<div style="padding-top: 4pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Giá trị hợp đồng được thanh toán từ nguồn ngoài NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/gia_TriHopDongNguonNgoaiNSNN)"/> đồng. </div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. <xsl:value-of select="$tkchinh/ten_DonViSuDungVonNSNN"/>  đã thanh toán cho <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		số tiền là: <xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_TienDaThanhToan)"/> đồng, trong đó:</div>
		
		<div style="padding-top: 4pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền được thanh toán từ nguồn vốn NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/so_TienDaTTNguonNSNN)"/> đồng.</div>
		
		<div style="padding-top: 4pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền được thanh toán từ nguồn ngoài NSNN: <xsl:value-of select="ihtkk:formatNumber($tkchinh/so_TienDaTTNguonNgoaiNSNN)"/> đồng.</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Số tiền <xsl:value-of select="$tkchinh/ten_DonViSuDungVonNSNN"/> chưa thanh toán 
		cho <xsl:value-of select="$ttkthue/NNT/tenNNT"/> từ nguồn vốn NSNN là: <xsl:value-of select="ihtkk:formatNumber($tkchinh/so_TienChuaTTNguonNSNN)"/> đồng.</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Thời hạn <xsl:value-of select="$tkchinh/ten_DonViSuDungVonNSNN"/>  phải thanh toán theo hợp đồng là 
		ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThanhToan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThanhToan,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThanhToan,'yyyy')"/> (1)</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;5. <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đề nghị <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> không tính tiền chậm nộp theo quy định tại 
		Điều 22 Thông tư số 80/2021/TT-BTC ngày 29 tháng 09 năm 2021 của Bộ trưởng Bộ Tài chính đối với số thuế thuộc:</div>

		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-r">Đơn vị tiền: Đồng Việt Nam</div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <b>STT</b></td>
						<td class="align-c"><b>Loại</b></td>
						<td class="align-c"><b>Tờ khai</b></td>
						<td class="align-c"><b>Loại kỳ tính thuế</b></td>
						<td class="align-c"><b>Kỳ tính thuế</b></td>
						<td class="align-c"><b>Số quyết định</b></td>
						<td class="align-c"><b>Ngày quyết định</b></td>
						<td class="align-c"><b>Số tiền</b></td>
						<td class="align-c"><b>Hạn nộp (2)</b></td>
						<td class="align-c"><b>Không tính tiền chậm nộp từ ngày</b></td>
						<td class="align-c"><b>Không tính tiền chậm nộp đến ngày (3)</b></td>
					</tr>				
					<xsl:for-each select="$tkchinh/soThueDeNghiKTCN/CTietSoThueDeNghiKTCN">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-l"><xsl:value-of select="ten_Loai"/></td>
							<td class="align-j"><xsl:value-of select="ten_ToKhai"/></td>
							<td class="align-l"><xsl:value-of select="ten_LoaiKyTinhThue"/></td>
							<td class="align-c"><xsl:value-of select="ky_TinhThue"/></td>
							<td class="align-c"><xsl:value-of select="so_QuyetDinh"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_QuyetDinh,'dd/mm/yyyy')"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/soThueDeNghiKTCN/CTietSoThueDeNghiKTCN/so_TienDeNghi)"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thoi_HanNop,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tu_NgayKTCN,'dd/mm/yyyy')"/></td>
							<td class="align-c"><xsl:value-of select="den_NgayKTCN"/></td>
						</tr>														 
					</xsl:for-each>
					<tr>
						<td></td>
						<td colspan="6" class="align-l">Tổng cộng</td>
						<td class="align-c"><xsl:value-of select="ihtkk:formatNumber($tkchinh/soThueDeNghiKTCN/tong_SoTienDeNghi)"/></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			 </div><br/>		
			
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;6. Tài liệu gửi kèm:</div>
			
			<div><xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
					<xsl:variable name="currentRows1" select='position()'/>																
					<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="tenTaiLieu"/></div>													 
				</xsl:for-each>
			</div>
		
		</div>	
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		chịu trách nhiệm trước pháp luật về các thông tin nêu trên./.</div>
		
		
	<xsl:call-template name="tkhaiFooter_01_KTCN"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
