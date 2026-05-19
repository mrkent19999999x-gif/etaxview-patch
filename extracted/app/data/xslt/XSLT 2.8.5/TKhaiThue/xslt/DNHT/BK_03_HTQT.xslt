<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>
 <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>			

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/BangKe/BKChiTiet">	 	
		<xsl:variable name="bke" select='HSoThueDTu/HSoKhaiThue/PLuc/BangKe'/>
		<div class="ndungtkhai_div">
		<div class="content">

					<xsl:if test="$tkchinh/CT_II/nhieu_DT = 'true' or $tkchinh/CT_II/nhieu_DT = '1'">
						<div style="width:100%;text-align:center"><b>BẢNG KÊ ĐỐI TƯỢNG CHI TRẢ THU NHẬP VÀ NỘI DUNG ĐỀ NGHỊ </b></div>	
						<div style="width:100%;text-align:center"><i> (Kèm theo tờ khai mẫu số 03/HTQT) </i></div>
						<div class="content">								
						   <table class="tkhai_table">
								<tr>
									<td class="align-c"><b>STT</b></td>
									<td class="align-c"><b>Mã số thuế </b></td>
									<td class="align-c"><b>Tên đầy đủ</b></td>
									<td class="align-c"><b>Loại giấy tờ</b></td>
									<td class="align-c"><b>Số</b></td>
									<td class="align-c"><b>Ngày cấp</b></td>
									<td class="align-c"><b>Tại</b></td>
									<td class="align-c"><b>Cơ quan cấp</b></td>
									<td class="align-c"><b>Tỉnh/TP</b></td>
									<td class="align-c"><b>Xã/Phường</b></td>
									<td class="align-c"><b>Địa chỉ</b></td>
									<td class="align-c"><b>Điện thoại</b></td>
									<td class="align-c"><b>Số Fax</b></td>
									<td class="align-c"><b>Email</b></td>
									<td class="align-c"><b>Tư cách pháp lý</b></td>
									<td class="align-c"><b>Nêu rõ</b></td>
									<td class="align-c"><b>Loại xác nhận</b></td>
									<td class="align-c"><b>Loại thu nhập</b></td>
									<td class="align-c"><b>Số thu nhập</b></td>
									<td class="align-c"><b>Thời gian phát sinh thu nhập từ ngày</b></td>
									<td class="align-c"><b>Thời gian phát sinh thu nhập đến ngày</b></td>
									<td class="align-c"><b>Số thuế</b></td>
									<td class="align-c"><b>Thuế suất</b></td>									
								</tr>
								<tr>
									<td class="align-c">(1)</td>
									<td class="align-c">(2)</td>
									<td class="align-c">(3)</td>
									<td class="align-c">(4)</td>
									<td class="align-c">(5)</td>
									<td class="align-c">(6)</td>
									<td class="align-c">(7)</td>
									<td class="align-c">(8)</td>	
									<td class="align-c">(9)</td>
									<td class="align-c">(10)</td>
									<td class="align-c">(11)</td>
									<td class="align-c">(12)</td>
									<td class="align-c">(13)</td>
									<td class="align-c">(14)</td>
									<td class="align-c">(15)</td>
									<td class="align-c">(16)</td>
									<td class="align-c">(17)</td>
									<td class="align-c">(18)</td>
									<td class="align-c">(19)</td>
									<td class="align-c">(20)</td>
									<td class="align-c">(21)</td>
									<td class="align-c">(22)</td>
									<td class="align-c">(23)</td>									
								</tr>
									<xsl:for-each select="$bke/BKChiTiet">
									<xsl:variable name="currentRows" select="position()"/>
										<tr>
											<td class="align-c"><xsl:value-of select="$currentRows"/></td>
											<td class="align-l"><xsl:value-of select="mst"/></td>
											<td class="align-l"><xsl:value-of select="tenDayDu"/></td>
											<td class="align-l"><xsl:value-of select="tenLoaiGiayTo"/></td>
											<td class="align-l"><xsl:value-of select="soGiayTo"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(ngayCap,'dd/mm/yyyy')"/></td>
											<td class="align-l"><xsl:value-of select="tai"/></td>
											<td class="align-l"><xsl:value-of select="coQuanCap"/></td>
											<td class="align-l"><xsl:value-of select="ten_tinh_tp"/></td>
											<td class="align-l"><xsl:value-of select="ten_xa_phuong"/></td>
											<td class="align-l"><xsl:value-of select="diaChi"/></td>
											<td class="align-l"><xsl:value-of select="dienThoai"/></td>
											<td class="align-l"><xsl:value-of select="fax"/></td>
											<td class="align-l"><xsl:value-of select="E-mail"/></td>
											<td class="align-l"><xsl:value-of select="ten_TCPL"/></td>
											<td class="align-l"><xsl:value-of select="neuRo"/></td>
											<td class="align-l"><xsl:value-of select="ten_LoaiXN"/></td>
											<td class="align-l"><xsl:value-of select="ten_LoaiTN"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:formatNumber(soTNCT)"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(tuNgayPS,'dd/mm/yyyy')"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(denNgayPS,'dd/mm/yyyy')"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:formatNumber(soThueDaNop)"/></td>
											<td class="align-l"><xsl:value-of select="ihtkk:formatNumber(thueSuat)"/></td>
										</tr>	
									</xsl:for-each>											
							</table><br/>			
						</div>
					</xsl:if>
		</div>
		</div>
	</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>
