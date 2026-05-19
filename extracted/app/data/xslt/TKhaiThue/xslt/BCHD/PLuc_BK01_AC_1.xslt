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
		 
		<!--start phu luc BK01/AC - BẢNG KÊ CHI TIẾT HÓA ĐƠN CỦA TỔ CHỨC, CÁ NHÂN ĐẾN THỜI ĐIỂM QUYẾT TOÁN HÓA ĐƠN
  -->
	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_BK_01AC_01">	
		<xsl:variable name="pluc01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_BK_01AC_01' />
			<xsl:call-template name="tkhaiHeader-pluc-bk01">
		<xsl:with-param name="mauTKhai"   select="'BK01/AC'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT HOÁ ĐƠN CỦA TỔ CHỨC, CÁ NHÂN ĐẾN THỜI ĐIỂM QUYẾT TOÁN HOÁ ĐƠN '"/>
		<xsl:with-param name="ghiChuPL"   select="'(Đính kèm báo cáo tình hình sử dụng hoá đơn BC26/AC)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">	
			<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên loại hóa đơn</b></td>
							<td class="align-c"><b>Ký hiệu mẫu</b></td>
							<td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Đến số</b></td>							
						</tr>
						<tr>
							<td class="align-c"><b>(1)</b></td>
							<td class="align-c"><b>(2)</b></td>
							<td class="align-c"><b>(3)</b></td>
							<td class="align-c"><b>(4)</b></td>
							<td class="align-c"><b>(5)</b></td>
							<td class="align-c"><b>(6)</b></td>
							<td class="align-c"><b>(7)</b></td>
						</tr>
				        <tr>
				            <td class="align-c"><b>I</b></td>
							<td colspan="6"><b>HOÁ ĐƠN HẾT GIÁ TRỊ SỬ DỤNG</b></td>
						</tr>		
                        <xsl:for-each select="$pluc01/HDonHetGTriSDung/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="tenHoaDon"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMau"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuHD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>								
							</tr>
						</xsl:for-each>
						<tr>
						    <td class="align-c"><b>II</b></td>
							<td colspan="6"><b>HOÁ ĐƠN ĐĂNG KÝ TIẾP TỤC SỬ DỤNG </b></td>
						</tr>		
                        <xsl:for-each select="$pluc01/HDonDKiTiepSDung/ChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td><xsl:value-of select="tenHoaDon"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuMau"/></td>
								<td class="align-c"><xsl:value-of select="kyHieuHD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuong)"/></td>
								<td class="align-c"><xsl:value-of select="tuSo"/></td>
								<td class="align-c"><xsl:value-of select="denSo"/></td>								
							</tr>
						</xsl:for-each>
			      </table>	
		<div><b><br/>4. Cơ quan thuế chuyển đến (trường hợp chuyển địa điểm): </b> 
<xsl:choose>
          <xsl:when test="string(number($pluc01/cqtChuyenDen))='NaN'"><xsl:value-of select="$pluc01/cqtChuyenDen"/></xsl:when>
        <xsl:otherwise>
           <xsl:value-of select="ihtkk:getTenCT($pluc01/cqtChuyenDen)" />
        </xsl:otherwise>
        </xsl:choose>
		</div><br/>
		
	    </div>
	    </div>
		<table style="page-break-inside: avoid;width:100%" >
		<tr>
		<td>
		<xsl:call-template name="tkhaiFooter-bc26ac"/>
		<div class="ghichu">	
		<div><b><i><u>Ghi chú: </u></i></b></div><br/>
		<div>Dùng cho các trường hợp phải quyết toán hoá đơn</div>
		</div>
		<div id="sigDiv"></div>
		</td>
		</tr>
		</table>
		</xsl:if>

	<!--end phu luc BK01/AC-->
	    <br/>
		<br/>
		<br/>
	</xsl:template>		
</xsl:stylesheet>
