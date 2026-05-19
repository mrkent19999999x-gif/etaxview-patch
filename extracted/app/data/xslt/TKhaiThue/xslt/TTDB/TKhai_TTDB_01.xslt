<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>   
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư  số 156/2013/TT-BTC ngày 06/11/2013 của Bộ Tài chính'" />		
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'01/TTĐB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
	    <div class="content">
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam </i></div>
						<table class="tkhai_table"  >
		     				<tr>
								<td class="align-c"><b>STT</b></td>
								<td class="align-c"><b>Tên hàng hóa, dịch vụ</b></td>
								<td class="align-c"><b>Đơn vị tính</b></td>
								<td class="align-c"><b>Sản lượng tiêu thụ</b></td>
								<td class="align-c"><b>Doanh số bán (chưa có thuế GTGT)</b></td>
								<td class="align-c"><b>Giá tính thuế TTĐB</b></td>
								<td class="align-c"><b>Thuế suất (%)</b></td>
								<td class="align-c"><b>Thuế TTĐB được khấu trừ</b></td>
								<td class="align-c"><b>Thuế TTĐB phải nộp</b></td>
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
								<td class="align-c">(9) = (6) x (7) - (8)</td>
							</tr>
							<tr>
								<td class="align-c"><b>I</b></td>
								<td class="align-l"><b>Hàng hoá chịu thuế TTĐB</b></td>
								<td></td>
								<td></td>
						 	    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot5)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot6)"/></b></td>
							    <td></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot8)"/></b></td>
							    <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/tongDongIcot9)"/></b></td>																											
							</tr>
		             	<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HangHoaChiuThueTTDB/ChiTietHangHoaChiuThueTTDB/NDungTKhaiTTDB">
						<xsl:variable name="currentRows" select='position()' />
							<tr>
						     <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ct3"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
							</tr>		
 						</xsl:for-each>		
							<tr>
							   <td class="align-c"><b>II</b></td>
							   <td class="align-l"><b>Dịch vụ chịu thuế TTĐB</b></td>
							   <td></td>
							   <td></td>
			                   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTNDB/tongDongIICot5)"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTNDB/tongDongIICot6)"/></b></td>
							   <td></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTNDB/tongDongIICot8)"/></b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/DVuChiuThueTNDB/tongDongIICot9)"/></b></td>
							</tr>	
						<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/DVuChiuThueTNDB/ChiTietDVuChiuThueTTDB/NDungTKhaiTTDB">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ct3"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>
						</tr>
						</xsl:for-each>
							<tr>
							  <td class="align-c"><b>III</b></td>
							  <td class="align-l"><b>Hàng hóa thuộc trường hợp không phải chịu thuế TTĐB</b></td>
							  <td></td>
							  <td></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTNDB/tongDongIIICot5)"/></b></td>
							  <td></td>
							  <td></td>
							  <td></td>
							  <td></td>
							</tr>
							 <tr>
            				    <td class="align-c">A</td>
							    <td class="align-l">Hàng hóa xuất khẩu</td>
							    <td></td>
							    <td></td>
							    <td></td>
							    <td></td>
							    <td></td>
							    <td></td>
							    <td></td>
							 </tr>
							<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTNDB/HHXuatKhau/NDungHHoaKhongThue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ct3"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							</tr>
							</xsl:for-each>
							<tr>
							<td class="align-c">B</td>
							<td class="align-l">Hàng hóa bán để xuất khẩu</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							</tr>
							<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTNDB/HHBanDeXuatKhau/NDungHHoaKhongThue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ct3"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							</tr>
							</xsl:for-each>
							<tr>
							 <td class="align-c">C</td>
							 <td class="align-l">Hàng hóa gia công để xuất khẩu</td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							</tr>
							<xsl:for-each select="$tkchinh/BangChiTietThueTTDB/HHoaKhongChiuThueTNDB/HHGiaCongXuatKhau/NDungHHoaKhongThue">
						<xsl:variable name="currentRows" select='position()' />
						<tr>
						     <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="align-c"><xsl:value-of select="ct3"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
							 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
							 <td></td>
							 <td></td>
							 <td></td>
							 <td></td>
							</tr>
							</xsl:for-each>
							<tr>
								<td></td>
								<td class="align-c" ><b>Tổng cộng:</b></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongDSoBanChuaThue)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongGiaThue)"/></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongThueKTru)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/BangChiTietThueTTDB/tongThuePNop)"/></b></td>
							</tr>
          	    </table>
	<div class="ghichu">	          	    
          	    <div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng)</i></div>
  	</div>         	    
          	</div>	
		</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
	<xsl:call-template name="tkhaiFooter"/>
	<br/>
		<div class="align-l">
		   <b><i><u>Hộ trợ hạch toán MLNSNN</u></i></b>
		   <br/>
		    Hạch toán chỉ tiêu [09] vào  tiểu mục <xsl:value-of select="$tkchinh/tieuMucHachToan"/>
		</div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>
   </xsl:template>		
</xsl:stylesheet>