<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Thông tư số 18/2026/TT-BTC ngày 05/3/2026 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_dangkythue_HKD">
		<xsl:with-param name="mauTKhai"   select="'01/TB-ĐĐKD'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content"> 

					
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='1'">
						
							<br/>
										
		<table  class="tkhai_table">
							  <tr>
								
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								
								<td class="align-c" rowspan="1"><b>Hình thức kinh doanh thương mại điện tử</b></td>
								<td class="align-c" rowspan="1"><b>Ngày bắt đầu hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Ngành nghề kinh doanh chính</b></td>
								
								<td class="align-c" rowspan="1"><b>Số nhà, đường phố (thôn/ xóm)</b></td>
								<td class="align-c" rowspan="1"><b>Xã/Phường/Đặc khu</b></td>
								<td class="align-c" rowspan="1"><b>Tỉnh/ thành phố</b></td>
								<td class="align-c" rowspan="1"><b>Mã định danh địa điểm (nếu có)</b></td>
								<td class="align-c" rowspan="1"><b>Mã trang trại (nếu có đối với trường hợp hoạt động theo mô hình kinh tế trang trại)</b></td>
								
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
						<xsl:for-each select="$tkchinh/DangKyCapMoi/ChiTietThuTucDangKyMoi">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								
								<td class="align-c"> <xsl:value-of select="tenDiaDiemKD"/></td>
								
								<td class="align-c"><xsl:if test="hinhThuc_KD_TMDT='true' or hinhThuc_KD_TMDT='1'">x</xsl:if></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayHoatDong,'dd/mm/yyyy')"/></td>
								
								<td class="align-c"> <xsl:value-of select="tenNganhNghe"/></td>
								
								<td class="align-c"> <xsl:value-of select="soNha"/></td>	
								<td class="align-c"> <xsl:value-of select="ten_XaPhuong"/></td>	
								
								<td class="align-c"> <xsl:value-of select="tenTinh"/></td>	
								
								<td class="align-c"> <xsl:value-of select="maDinhDanhDiaDiem"/></td>
								<td class="align-c"> <xsl:value-of select="maTrangTrai"/></td>
								
									
								</tr>
								</xsl:for-each>
							   
		
                 </table>
					</xsl:if>
		</div>	

 <div class="content"> 

					
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='1'">
						
							<br/>
										
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Chuyển thành trụ sở chính (tích “x”)</b></td>
								<td class="align-c" rowspan="1"><b>Ngày bắt đầu hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Ngành nghề kinh doanh chính</b></td>
								
								<td class="align-c" rowspan="1"><b>Số nhà, đường phố (thôn/ xóm)</b></td>
								<td class="align-c" rowspan="1"><b>Xã/Phường/Đặc khu</b></td>
								<td class="align-c" rowspan="1"><b>Tỉnh/ thành phố</b></td>
								<td class="align-c" rowspan="1"><b>Mã định danh địa điểm (nếu có)</b></td>
								<td class="align-c" rowspan="1"><b>Mã trang trại (nếu có đối với trường hợp hoạt động theo mô hình kinh tế trang trại)</b></td>
								
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
							
						</tr>
						<xsl:for-each select="$tkchinh/ThayDoiTTin/ChiTietThayDoiThongTin">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-c"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-c"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayHoatDong,'dd/mm/yyyy')"/></td>
								
								<td class="align-c"> <xsl:value-of select="tenNganhNghe"/></td>
								
								<td class="align-c"> <xsl:value-of select="soNha"/></td>	
								<td class="align-c"> <xsl:value-of select="ten_XaPhuong"/></td>	
								
								<td class="align-c"> <xsl:value-of select="tenTinh"/></td>	
								
								<td class="align-c"> <xsl:value-of select="maDinhDanhDiaDiem"/></td>
								<td class="align-c"> <xsl:value-of select="maTrangTrai"/></td>
								
									
								</tr>
								</xsl:for-each>
							   
		
                 </table>
					</xsl:if>
		</div>	




		
<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='1'">
<br/>
		
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="2"><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="2"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" colspan="3"><b>Thông tin tạm ngừng kinh doanh</b></td>
								
								
							  </tr>
							  	
			            <tr>
						
				            <td class="align-c"><b>Từ ngày tháng năm</b></td>
				            <td class="align-c"><b>Đến ngày tháng năm</b></td>
				            <td class="align-c"><b>Lý do tạm ngừng</b></td>
						
				            							
							 </tr>
							  <tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							
							
						</tr>
						<xsl:for-each select="$tkchinh/TamNgungKinhDoanh/ChiTietTamNgungKinhDoanh">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-c"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-c"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(denNgay,'dd/mm/yyyy')"/></td>
								<td class="align-c"> <xsl:value-of select="lyDoTamNgung"/></td>
								
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
</div>
<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='1'">
<br/>
		
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="2"><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="2"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" colspan="2"><b>Thời gian đã thông báo tạm ngừng kinh doanh</b></td>
								<td class="align-c" colspan="2"><b>Tiếp tục kinh doanh trước thời hạn đã thông báo kể từ ngày</b></td>
								
								
							  </tr>
							  	
			            <tr>
						
				            <td class="align-c"><b>Từ ngày tháng năm</b></td>
				            <td class="align-c"><b>Đến ngày tháng năm</b></td>
							<td class="align-c"><b>Ngày tháng năm</b></td>
				            <td class="align-c"><b>Lý do tiếp tục kinh doanh</b></td>
						
				            							
							 </tr>
							  <tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							
						</tr>
						<xsl:for-each select="$tkchinh/KhoiPhucTamNgungKD/ChiTietKhoiPhucTamNgung">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-c"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-c"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(tuNgayTBTamNgung,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(denNgayTBTamNgung,'dd/mm/yyyy')"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayTiepTucKD,'dd/mm/yyyy')"/></td>
								
								<td class="align-c"> <xsl:value-of select="lyDoTiepTucKD"/></td>
								
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
</div>
<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='1'">
<br/>
			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Ngày tháng năm chấm dứt hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Lý do chấm dứt hoạt động</b></td>
								
								
							  </tr>
							  
						<xsl:for-each select="$tkchinh/ChamDutHoatDongKD/ChiTietChamDutHoatDong">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-c"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-c"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayChamDutHoatDong,'dd/mm/yyyy')"/></td>
								<td class="align-c"> <xsl:value-of select="ten_LyDoChamDut"/></td>
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
</div>	
  </div>

	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooter_DKT_HKD">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table> 

</xsl:template>		
</xsl:stylesheet>