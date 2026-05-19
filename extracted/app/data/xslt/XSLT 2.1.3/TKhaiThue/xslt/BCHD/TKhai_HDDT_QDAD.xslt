<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-QDAD-HDDT">
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="' (Ban hành kèm theo Thông tư số 32/2011/TT-BTC ngày 14/3/2011 của Bộ Tài chính)
'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
			<div class="align-c">-----------------</div>
			<div class="align-c"><b>GIÁM ĐỐC <xsl:value-of select="$tkchinh/CanCu/giamDoc"/></b></div>
			<div>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Căn cứ Thông tư số 32/2011/TT-BTC ngày 14/3/2011 của Bộ Tài chính hướng dẫn về khởi tạo, phát hành và sử dụng hoá đơn điện tử bán hàng hóa, cung ứng dịch vụ; </div>
			<div>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Căn cứ Quyết định thành lập (hoặc Giấy đăng ký kinh doanh) số <xsl:value-of select="$tkchinh/CanCu/quyetDinhTLapSo"/></div>
			<div>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Xét đề nghị của <xsl:value-of select="$tkchinh/CanCu/deNghiCua"/></div>
			<div class="align-c"><b>QUYẾT ĐỊNH:</b></div>
			<div><b>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Điều 1. </b>Áp dụng hình thức hóa đơn điện tử trong đơn vị từ ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/QuyetDinh/Dieu1/ngayApDung,'dd/mm/yyyy')"/> trên cơ sở hệ thống thiết bị và các bộ phận kỹ thuật liên quan như sau:</div>
			<div>&#160;&#160;&#160;&#160; &#160; &#160;&#160;- Tên hệ thống thiết bị (tên các phương tiện điện tử), tên phần mềm ứng dụng dùng để khởi tạo, lập hoá đơn điện tử <xsl:value-of select="$tkchinh/QuyetDinh/Dieu1/tenHeThongTBi"/></div>
			<div>&#160;&#160;&#160;&#160; &#160; &#160;&#160;- Bộ phận kỹ thuật hoặc tên nhà cung ứng dịch vụ chịu trách nhiệm về mặt kỹ thuật hoá đơn điện tử, phần mềm ứng dụng <xsl:value-of select="$tkchinh/QuyetDinh/Dieu1/boPhanKyThuat"/></div>
			<div><b>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Điều 2. </b>Mẫu các loại hoá đơn điện tử và mục đích sử dụng của mỗi loại hoá đơn<i> (liệt kê chi tiết): </i> <xsl:value-of select="$tkchinh/QuyetDinh/Dieu2/chiTietHoaDon"/></div>
			<table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c" colspan="2"><b>Mẫu hóa đơn điện tử</b></td>
				<td class="align-c" colspan="2"><b>Mục đích sử dụng</b></td>
			 </tr>
			  <xsl:for-each select="$tkchinh/QuyetDinh/Dieu2/BangChiTietHoaDon">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l" colspan="2"><xsl:value-of select="chiTietHoaDon"/></td>
								<td class="align-l" colspan="2"><xsl:value-of select="mucDichSDung"/></td>
							</tr>
						</xsl:for-each>
			 </table>
			<div><b>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Điều 3. </b><xsl:value-of select="$tkchinh/QuyetDinh/Dieu3/quyTrinh"/></div>
				<div><b>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Điều 4. </b><xsl:value-of select="$tkchinh/QuyetDinh/Dieu4/trachNhiem"/></div>
			<div><b>&#160;&#160;&#160;&#160; &#160; &#160;&#160;Điều 5. </b>Quyết định này có hiệu lực thi hành kể từ ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/QuyetDinh/Dieu5/ngayHieuLuc,'dd/mm/yyyy')"/>. Lãnh đạo các bộ phận kế toán, bộ phận bán hàng, bộ phận kỹ thuật,… chịu trách nhiệm triển khai, thực hiện Quyết định này./.</div>
		
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter-QDAD-HDDT"/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>