<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
		<!-- Phụ lục 01-2/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_GTGT">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-2/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HÓA ĐƠN, CHỨNG TỪ CỦA HÀNG HOÁ, DỊCH VỤ MUA VÀO'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							 <td class="align-c" rowspan="2"><b>STT</b></td>
							 <td class="align-c" colspan="4"><b>Hoá đơn, chứng từ, biên lai nộp thuế</b></td>
							 <td class="align-c" rowspan="2"><b>Tên người bán</b></td>
							 <td class="align-c" rowspan="2"><b>Mã số thuế người bán</b></td>
							 <td class="align-c" rowspan="2"><b>Mặt hàng</b></td>
							 <td class="align-c" rowspan="2"><b>Giá trị HHDV mua vào chưa có thuế</b></td>
							 <td class="align-c" rowspan="2"><b>Thuế suất (%)</b></td>
							 <td class="align-c" rowspan="2"><b>Thuế GTGT</b></td>
							 <td class="align-c" rowspan="2"><b>Ghi chú hoặc thời hạn thanh toán trả chậm</b></td>
							</tr>
							<tr>
							 <td class="align-c"><b>Ký hiệu mẫu hoá đơn</b></td>
							 <td class="align-c"><b>Ký hiệu hóa đơn</b></td>
							 <td class="align-c"><b>Số hoá đơn</b></td>
							 <td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>
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
							</tr>
							<tr>
								<td colspan="12"><i>1. Hàng hoá, dịch vụ dùng riêng cho SXKD chịu thuế GTGT và sử dụng cho các hoạt động cung cấp hàng hoá, dịch vụ không kê khai, nộp thuế GTGT đủ điều kiện khấu trừ thuế:</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVDRieng/ChiTietHHDVDRieng/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoMuaChuaThue)" /></td>
                             <td class="align-r"><xsl:value-of select="thueSuat"/>%</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							 <tr>
							   <td colspan="8" class="align-l"><b>Tổng Cộng</b></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDRieng/tongGTriMVao)"/></b></td>
							   <td></td>
							   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDRieng/tongThueMVao)"/></b></td>
							   <td></td>
							 </tr>   
							<tr>
								<td colspan="12"><i>2. Hàng hoá, dịch vụ không đủ điều kiện khấu trừ:</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVKhongKTru/ChiTietHHDVKhongKTru/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
	     					  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
						     <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoMuaChuaThue)" /></td>
                             <td class="align-r"><xsl:value-of select="thueSuat"/>%</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVKhongKTru/tongGTriMVao)"/></b></td>
							   <td></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVKhongKTru/tongThueMVao)"/></b></td>
							  <td></td>
							</tr>
							
							<tr>
								<td colspan="12"><i>3. Hàng hoá, dịch vụ dùng chung cho SXKD chịu thuế và không chịu thuế 
								  đủ điều kiện khấu trừ thuế:</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVDChung/ChiTietHHDVDChung/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
	     					  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
 			  			      <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoMuaChuaThue
							  )" /></td>
                             <td class="align-r"><xsl:value-of select="thueSuat"/>%</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDChung/tongGTriMVao)"/></b></td>
							  <td></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVDChung/tongThueMVao)"/></b></td>
							  <td></td>
							</tr>
							
							<tr>
								<td colspan="12"><i>4. Hàng hóa, dịch vụ dùng cho dự án đầu tư đủ điều kiện được khấu trừ thuế (*):</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVKTru/ChiTietHHDVKTru/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
	     					  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
							  <td class="align-c"><xsl:value-of select="ngayPHanh" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="dsoMuaChuaThue" /></td>
                             <td class="align-r"><xsl:value-of select="thueSuat"/></td>
							  <td class="align-r"><xsl:value-of select="thueGTGT" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="$pl02/HHDVKTru/tongGTriMVao"/></b></td>
							  <td></td>
							  <td class="align-r"><b><xsl:value-of select="$pl02/HHDVKTru/tongThueMVao"/></b></td>
							  <td></td>
							</tr>
							
							<tr>
								<td colspan="12"><i>5. Hàng hóa, dịch vụ không phải tổng hợp trên tờ khai 01/GTGT:</i></td>
							</tr>
						   <xsl:for-each select="$pl02/HHDVMVaoKhongTHop/ChiTietHHDVMVaoKhongTHop/HDonMVao">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
	     					  <td class="align-c"><xsl:value-of select="kyHieuMauHDon" /></td>
							  <td class="align-c"><xsl:value-of select="kyHieuHDon" /></td>
							  <td class="align-c"><xsl:value-of select="soHDon" /></td>
						      <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayPHanh,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="tenNBAN" /></td>
							  <td class="align-c"><xsl:value-of select="mstNBAN" /></td>
							  <td class="align-l"><xsl:value-of select="matHang" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(dsoMuaChuaThue)" /></td>
                             <td class="align-r"><xsl:value-of select="thueSuat"/>%</td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGT)" /></td>
							  <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							</tr>
							</xsl:for-each>
							<tr>
							  <td colspan="8" class="align-l"><b>Tổng Cộng</b></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVMVaoKhongTHop/tongGTriMVao)"/></b></td>
							  <td></td>
							  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/HHDVMVaoKhongTHop/tongThueMVao)"/></b></td>
							  <td></td>
							</tr>
						</table>  
<div class="ghichu">						
				<div><b>Tổng giá trị hàng hoá, dịch vụ mua vào(**): <xsl:value-of select="ihtkk:formatNumber($pl02/tongGTriMVao)"/></b></div>
				<div><b>Tổng số thuế GTGT của hàng hoá, dịch vụ mua vào(***): <xsl:value-of select="ihtkk:formatNumber($pl02/tongThueMVao)"/></b></div>
			  </div>
			</div>
</div>		
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
			<xsl:call-template name="tkhaiFooter"/>	
<div class="ghichu">			
		<div><i><u><b>Ghi chú: </b></u></i></div><br/>
		<div><i>(*) Tổng hợp theo từng dự án đầu tư thuộc trường hợp được hoàn thuế GTGT.</i></div>
		<div><i>(**) Tổng doanh thu hàng hóa, dịch vụ mua vào  là tổng cộng số liệu tại cột 9 của dòng tổng của các chỉ tiêu 1, 2, 3, 4</i></div>
		<div><i>(***) Tổng số thuế GTGT của hàng hóa, dịch vụ  mua vào là tổng cộng số liệu tại cột 11 của dòng tổng của các chỉ tiêu 1, 2, 3, 4</i></div>
		<div><i>(****) Tổng số thuế GTGT của hàng hóa, dịch vụ bán ra là tổng cộng số liệu tại cột 10 của  dòng tổng của các chỉ tiêu 2, 3, 4.</i></div>
		<div><i>-	GTGT: giá trị gia tăng.</i></div>
		<div><i>-SXKD: sản xuất kinh doanh.</i></div>
		<div><i>-	HHDV: hàng hóa dịch vụ.</i></div>
</div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>	
		</xsl:if>		
		<!-- Kết thúc PL 01-2/GTGT -->
		
		</xsl:template>		
</xsl:stylesheet>