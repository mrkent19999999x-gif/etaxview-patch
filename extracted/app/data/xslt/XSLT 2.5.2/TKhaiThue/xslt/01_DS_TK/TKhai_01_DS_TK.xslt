<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo công văn số 1912/TCT-KK ngày 02/06/2021 của Tổng cục Thuế'"/>
		<xsl:call-template name="tkhaiHeader_01_DS_TK">
			<xsl:with-param name="mauTKhai"   select="'01/DS-TK'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			</xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
				<table>
					<tr>
						<td colspan="3">
							<b>4. Ngày gửi: </b><xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd/mm/yyyy')"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>5.   Kỳ gửi: </b><xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy= 'LD'"> Lần đầu từ ngày 
							<xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> đến ngày 
							<xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
							</xsl:if>
							
						    <xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy= 'DK'">Định kỳ 
							tháng <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai"/></xsl:if>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>6. Lần gửi: </b><xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td colspan="3">
							Ngân hàng <!-- <xsl:value-of select="$ttkthue/NNT/tenNNT"/>  -->cung cấp danh sách số hiệu tài khoản thanh toán của khách hàng là người nộp thuế, cụ thể như sau:
						</td>
					</tr>
					<!-- <tr>
						<td colspan="3">
							<b>Mã ngân hàng </b><xsl:value-of select="$tkchinh/NOIDUNG_DANHSACH_HDR/MA_NH"/>
						</td>
					</tr> -->
				</table>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Mã số thuế</b></td>
						<td class="align-c"><b>Loại giấy tờ</b></td>
						<td class="align-c"><b>Số giấy tờ</b></td>
						<td class="align-c"><b>Tên chủ tài khoản</b></td>
						<td class="align-c"><b>Số hiệu tài khoản</b></td>
						<td class="align-c"><b>Ngày mở tài khoản</b></td>
						<td class="align-c"><b>Ngày đóng tài khoản</b></td>
						<td class="align-c"><b>Loại khách hàng</b></td>
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
					</tr>
					<xsl:for-each select="$tkchinh/NOIDUNG_DANHSACH_CTIET/ROW_CTIET">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-l"><xsl:value-of select="MST"/></td>
							<td class="align-c">
							<xsl:if test="TTIN_GIAYTO/GIAYTO/LOAI_GIAYTO= '1'">Mã số doanh nghiệp</xsl:if>
							<xsl:if test="TTIN_GIAYTO/GIAYTO/LOAI_GIAYTO= '2'">Số của giấy tờ chứng minh  việc tổ chức được thành lập theo quy định của pháp luật </xsl:if>
							<xsl:if test="TTIN_GIAYTO/GIAYTO/LOAI_GIAYTO= '3'">Số CMT</xsl:if>
							<xsl:if test="TTIN_GIAYTO/GIAYTO/LOAI_GIAYTO= '4'">Số thẻ căn cước</xsl:if>
							<xsl:if test="TTIN_GIAYTO/GIAYTO/LOAI_GIAYTO= '5'">Số hộ chiếu </xsl:if>
							</td>
							<td class="align-c"><xsl:value-of select="TTIN_GIAYTO/GIAYTO/SO_GIAYTO"/></td>
							<td class="align-l"><xsl:value-of select="TEN_CHUTK"/></td>
							<td class="align-l"><xsl:value-of select="SOHIEU_TK"/></td>
							<td class="align-l"><xsl:value-of select="NGAY_MO"/></td>
							<td class="align-l"><xsl:value-of select="NGAY_DONG"/></td>
							<!-- <td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(NGAY_MO,'dd/mm/yyyy')"/></td>
							<td class="align-l"><xsl:value-of select="ihtkk:stringDatetime(NGAY_DONG,'dd/mm/yyyy')"/></td> -->
							<td class="align-l"><xsl:if test="LOAI_KH= '01'">Tổ chức</xsl:if>
							<xsl:if test="LOAI_KH= '02'">Cá nhân</xsl:if></td>
						</tr>
					</xsl:for-each>
				</table>
			</div>
				
		</div>
		<xsl:call-template name="tkhaiFooter_01_DS_TK"/>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>

