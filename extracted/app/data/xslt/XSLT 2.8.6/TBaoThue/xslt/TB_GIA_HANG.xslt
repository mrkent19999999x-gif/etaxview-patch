<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../include/TBaoLPTBHeader.xsl"/>
	<!--<xsl:include href="../include/TBaoLPTBFooter.xsl"/> -->
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="nnthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT'/>
		<xsl:variable name="ctieuTKhaiChinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="row_ctiet" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/DACDIEMTAISAN/ROW_CTIET'/>
		<xsl:call-template name="TBaoHangHeader">
		</xsl:call-template>
		<br/>
<div class="ndungtkhai_div">
	<div class="content">
		<table class="tkhai_table" >
			<tbody>
				
				<tr class="header_tbhang" style ="border:1">
					<td rowspan="2"><b>STT</b></td>
					<td rowspan="2"><b>Xuất xứ</b></td>
					<td colspan="2"><b>Giấy chứng nhận đăng kiểm</b></td>
					<td rowspan="2"><b>Loại phương tiện</b></td>
					<td rowspan="2"><b>Nhãn hiệu</b></td>
					<td rowspan="2"><b>Kiểu loại xe [Số loại hoặc Tên thương mại và Mã kiểu loại (đối với ô tô)]</b></td>
					<td rowspan="2"><b>Thể tích làm việc/ Công suất (cm3/ kW)</b></td>
					<td rowspan="2"><b>Số người cho phép chở (kể cả lái xe)</b></td>
					<td rowspan="2"><b>Trọng tải (Khối lượng hàng chuyên chở cho phép tham gia giao thông)(kg)(nếu có)</b></td>
					<td rowspan="2"><b>Nước sản xuất</b></td>
					<td rowspan="2"><b>Năm sản xuất</b></td>
					<td rowspan="2"><b>Tên phiên bản</b></td>
					<td rowspan="2"><b>Giá bán lẻ đã bao gồm thuế GTGT (VNĐ)</b></td>
					<td rowspan="2"><b>Thời điểm áp dụng(dd/mm/yyyy)</b></td>
					<td rowspan="2"><b>Ghi chú
						<br/>
						(nếu có)</b>
					</td>
				</tr>
				<tr class="header_tbhang">
					<td><b>Số Giấy CN</b></td>
					<td><b>Ngày cấp<br/>(dd/mm/yyyy)</b></td>
				</tr>
				<tr>
					<td>
						<i style="font-size: 12px">(1)</i>
					</td>
					<td>
						<i style="font-size: 12px">(2)</i>
					</td>
					<td>
						<i style="font-size: 12px">(3)</i>
					</td>
					<td>
						<i style="font-size: 12px">(4)</i>
					</td>
					<td>
						<i style="font-size: 12px">(5)</i>
					</td>
					<td>
						<i style="font-size: 12px">(6)</i>
					</td>
					<td>
						<i style="font-size: 12px">(7)</i>
					</td>
					<td>
						<i style="font-size: 12px">(8)</i>
					</td>
					<td>
						<i style="font-size: 12px">(9)</i>
					</td>
					<td>
						<i style="font-size: 12px">(10)</i>
					</td>
					<td>
						<i style="font-size: 12px">(11)</i>
					</td>
					<td>
						<i style="font-size: 12px">(12)</i>
					</td>
					<td>
						<i style="font-size: 12px">(13)</i>
					</td>
					<td>
						<i style="font-size: 12px">(14)</i>
					</td>
					<td>
						<i style="font-size: 12px">(15)</i>
					</td>
					<td>
						<i style="font-size: 12px">(16)</i>
					</td>
				</tr>
				<tr>
					<td colspan="16" align="left">
						<b>I. Xe đã có trong Bảng giá tính lệ phí trước bạ của Bộ Tài chính</b>
					</td>
				</tr>
				<xsl:for-each select="$row_ctiet">
				<xsl:if test="TINH_TRANG_XE='Y'">
					
						<tr>
							<td style="text-align: center">
								<xsl:value-of select="STT"/>
							</td>
							<td>
								<xsl:if test="SO_GIAYCHUNGNHAN !='' and NGAY_CAP=''">Nhập khẩu</xsl:if>
								<xsl:if test="SO_GIAYCHUNGNHAN !='' and NGAY_CAP !=''">Lắp ráp trong nước</xsl:if>
							</td>
							<td>
								<xsl:value-of select="SO_GIAYCHUNGNHAN"/>
							</td>
							<td>
								<xsl:value-of select="NGAY_CAP"/>
							</td>
							<td>
								<xsl:value-of select="TEN_LOAI_PHUONGTIEN"/>
							</td>
							<td>
								<xsl:value-of select="TEN_NHANHIEU"/>
							</td>
							<td>
								<xsl:value-of select="TEN_KIEULOAIXE"/>
							</td>
							<td>
								<xsl:value-of select="THE_TICH"/>
							</td>
							<td>
								<xsl:value-of select="SO_CHO_NGOI"/>
							</td>
							<td>
								<xsl:value-of select="TRONG_TAI"/>
							</td>
							<td>
								<xsl:value-of select="TEN_NUOC_SX"/>
							</td>
							<td>
								<xsl:value-of select="NAM_SX"/>
							</td>
							<td>
								<xsl:value-of select="TEN_PHIENBAN"/>
							</td>
							<td>
								<xsl:value-of select="ihtkk:formatNumber(GIA_BAN_LE)"/>
							</td>
							<td>
								<xsl:value-of select="THOI_DIEM_AP_DUNG"/>
							</td>
							<td>
								<xsl:value-of select="GHI_CHU"/>
							</td>
						</tr>
					
				</xsl:if>
				</xsl:for-each>
				<tr>
					<td colspan="16" align="left">
						<b>II. Xe chưa có trong Bảng giá tính lệ phí trước bạ của Bộ Tài chính</b>
					</td>
				</tr>
					
					<xsl:for-each select="$row_ctiet">
					<xsl:if test="TINH_TRANG_XE='N'">
						<tr>
							<td style="text-align: center">
								<xsl:value-of select="STT"/>
							</td>
							<td>
								<xsl:if test="SO_GIAYCHUNGNHAN !='' and NGAY_CAP=''">Nhập khẩu</xsl:if>
								<xsl:if test="SO_GIAYCHUNGNHAN !='' and NGAY_CAP !=''">Lắp ráp trong nước</xsl:if>
							</td>
							<td>
								<xsl:value-of select="SO_GIAYCHUNGNHAN"/>
							</td>
							<td>
								<xsl:value-of select="NGAY_CAP"/>
							</td>
							<td>
								<xsl:value-of select="TEN_LOAI_PHUONGTIEN"/>
							</td>
							<td>
								<xsl:value-of select="TEN_NHANHIEU"/>
							</td>
							<td>
								<xsl:value-of select="TEN_KIEULOAIXE"/>
							</td>
							<td>
								<xsl:value-of select="THE_TICH"/>
							</td>
							<td>
								<xsl:value-of select="SO_CHO_NGOI"/>
							</td>
							<td>
								<xsl:value-of select="TRONG_TAI"/>
							</td>
							<td>
								<xsl:value-of select="TEN_NUOC_SX"/>
							</td>
							<td>
								<xsl:value-of select="NAM_SX"/>
							</td>
							<td>
								<xsl:value-of select="TEN_PHIENBAN"/>
							</td>
							<td>
								<xsl:value-of select="ihtkk:formatNumber(GIA_BAN_LE)"/>
							</td>
							<td>
								<xsl:value-of select="THOI_DIEM_AP_DUNG"/>
							</td>
							<td>
								<xsl:value-of select="GHI_CHU"/>
							</td>
						</tr>
					
				</xsl:if>
				</xsl:for-each>
			</tbody>
		</table>
	</div>
</div>	
		
		
		<div style="padding-top:10px">Số điện thoại:
			<xsl:value-of select="$nnthue/dthoaiNNT"/>
		</div>
		<table style="page-break-inside: avoid;">
			<tr>
				<td>
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
