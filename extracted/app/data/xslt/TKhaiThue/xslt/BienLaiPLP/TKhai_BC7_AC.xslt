<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 303/2016/TT-BTC ngày 15/11/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BC7/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
			<table>
				<tr>
					<td>Kỳ báo cáo cuối cùng [<xsl:if test="$tkchinh/kyBCaoCuoi = 'true' "> X </xsl:if>]	</td>
					<td>Chuyển địa điểm [<xsl:if test="$tkchinh/chuyenDiaDiem = 'true' "> X </xsl:if>]	</td>
				</tr>
				<tr>
					<td>Ngày đầu kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayDauKyBC,'dd/mm/yyyy')"/></td>
					<td>Ngày cuối kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCuoiKyBC,'dd/mm/yyyy')"/></td>
				</tr>							
			</table>
            <div class="align-r"><i>Đơn vị tính: Số</i></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="4"><b>STT</b></td>
							<td class="align-c" rowspan="4"><b>Tên loại biên lai</b></td>
							<td class="align-c" rowspan="4"><b>Ký hiệu mẫu biên lai</b></td>
							<td class="align-c" rowspan="4"><b>Ký hiệu biên lai</b></td>
							<td class="align-c" colspan="5"><b>Số tồn đầu kỳ, mua/phát hành trong kỳ</b></td>
							<td class="align-c" colspan="10"><b>Số sử dụng, xóa bỏ, mất, hủy trong kỳ</b></td>
							<td class="align-c" rowspan="3" colspan="3"><b>Tồn cuối kỳ </b></td>
						</tr>
						<tr>
							<td class="align-c" rowspan="3"><b>Tổng số</b></td>
							<td class="align-c" colspan="2" rowspan="2"><b>Số tồn đầu kỳ</b></td>
							<td class="align-c" colspan="2" rowspan="2"><b>Số mua/phát hành trong kỳ</b></td>
							<td class="align-c" colspan="3" rowspan="2"><b>Tổng số sử dụng, xóa bỏ, mất, hủy</b></td>
							<td class="align-c" colspan="7"><b>Trong đó</b></td>
													</tr>
						<tr>
							<td class="align-c" rowspan="2"><b>Số lượng đã sử dụng</b></td>
							<td class="align-c" colspan="2"><b>Xóa bỏ</b></td>
							<td class="align-c" colspan="2"><b>Mất</b></td>
							<td class="align-c" colspan="2"><b>Hủy</b></td>
						</tr>
						<tr>
                            <td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến Số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến Số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến Số</b></td>
							<td class="align-c"><b>Cộng</b></td>							
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Số</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến Số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
							<td class="align-c"><b>(8)</b></td>
							<td class="align-c"><b>(9)</b></td>
							<td class="align-c"><b>(10)</b></td>
							<td class="align-c"><b>(11)</b></td>
							<td class="align-c"><b>(12)</b></td>
							<td class="align-c"><b>(13)</b></td>
							<td class="align-c"><b>(14)</b></td>
							<td class="align-c"><b>(15)</b></td>
							<td class="align-c"><b>(16)</b></td>
							<td class="align-c"><b>(17)</b></td>
							<td class="align-c"><b>(18)</b></td>
							<td class="align-c"><b>(19)</b></td>
							<td class="align-c"><b>(20)</b></td>
							<td class="align-c"><b>(21)</b></td>
							<td class="align-c"><b>(22)</b></td>
						</tr>
                        <xsl:for-each select="$tkchinh/BKeBienLai/CTietBKeBienLai">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="tenBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMauBienLai"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuBienLai"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTonMuaTrKy_tongSo)"/></td>
								<td class="align-c"><xsl:value-of select="soTonDauKy_tuSo"/></td>
								<td class="align-c"><xsl:value-of select="soTonDauKy_denSo"/></td>
								<td class="align-c"><xsl:value-of select="muaTrongKy_tuSo"/></td>
								<td class="align-c"><xsl:value-of select="muaTrongKy_denSo"/></td>
								<td class="align-c"><xsl:value-of select="tongSoSuDung_tuSo"/></td>
								<td class="align-c"><xsl:value-of select="tongSoSuDung_denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoSuDung_cong)"/></td>
								<td class="align-r"><xsl:value-of select="soDaSDung"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(xoaBo_soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="xoaBo_so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(mat_soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="mat_so"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(huy_soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="huy_so"/></td>
								<td class="align-c"><xsl:value-of select="tonCuoiKy_tuSo"/></td>
								<td class="align-c"><xsl:value-of select="tonCuoiKy_denSo"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tonCuoiKy_soLuong)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c" colspan="4"><b>Tổng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCongSoTonDKy)"/></b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCongSDung)"/></b></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/tongCongSoTonCKy)"/></b></td>
						</tr>
			      </table>
	        <br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
	        <xsl:call-template name="tkhaiFooter-bc7ac-BLai"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
		</div>	
		</div>
		<br/>
		<br/>
		<br/>
		
</xsl:template>		
</xsl:stylesheet>
