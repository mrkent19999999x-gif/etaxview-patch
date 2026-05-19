<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 39/2014/TT-BTC ngày 31/3/2014 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-BC26">
		<xsl:with-param name="mauTKhai"   select="'BC26/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
	        <table>
				<tr>
					<td>Kỳ báo cáo cuối cùng 
							<xsl:if test="$tkchinh/kyBCaoCuoi = 'true'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/kyBCaoCuoi = 'false'">[]</xsl:if>			
							 <xsl:if test="$tkchinh/kyBCaoCuoi = '1'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/kyBCaoCuoi = '0'">[]</xsl:if>	
			</td>
					<td>Chuyển địa điểm 
							<xsl:if test="$tkchinh/chuyenDiaDiem = 'true'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/chuyenDiaDiem = 'false'">[]</xsl:if>			
							 <xsl:if test="$tkchinh/chuyenDiaDiem = '1'"> [x]</xsl:if>
							 <xsl:if test="$tkchinh/chuyenDiaDiem = '0'">[]</xsl:if>	
						</td>
				</tr>
				<tr>
					<td>Ngày đầu kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayDauKyBC,'dd/mm/yyyy')"/></td>
					<td>Ngày cuối kỳ báo cáo: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCuoiKyBC,'dd/mm/yyyy')"/></td>
				</tr>							
			</table>
             <div class="align-r"><i>Đơn vị tính: Số</i></div><br/>
            <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Tên loại hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Ký hiệu mẫu hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Hình thức hóa đơn</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng tồn đầu kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Số lượng mua, phát hành trong kỳ</b></td>
							<td class="align-c" colspan="5"><b>Sử dụng trong kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Tồn cuối kỳ</b></td>
							<td class="align-c" rowspan="2"><b>Ghi chú</b></td>
						</tr>
						<tr>
 						     <td class="align-c"><b>Sử dụng</b></td>
							<td class="align-c"><b>Xóa bỏ</b></td>
							<td class="align-c"><b>Mất</b></td>
							<td class="align-c"><b>Hủy</b></td>
							<td class="align-c"><b>Cộng</b></td>
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
						</tr>
                        <xsl:for-each select="$tkchinh/HoaDon/ChiTiet">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenHDon"/></td>
								<td class="align-c"><xsl:value-of select="kHieuMauHDon"/></td>
								<td class="align-c"><xsl:value-of select="hinhThucHDon"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongTonDauKy)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongMuaPHanhTKy)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongSuDung)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongXoaBo)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongMat)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongHuy)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(cong_SuDungTKy)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tonCuoiKy)"/></td>
								<td class="align-l"><xsl:value-of select="ghiChu"/></td>
							</tr>
						</xsl:for-each>
			      </table>
	        <br/>
			<table style="page-break-inside: avoid;width:100%" >
			<tr>
			<td>	  
	        <xsl:call-template name="tkhaiFooter-bc26ac"/>
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
