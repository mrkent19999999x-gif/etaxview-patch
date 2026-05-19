<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số ...'" />
		 <xsl:call-template name="tkhaiHeader_dangkythue_HKD">
		<xsl:with-param name="mauTKhai"   select="'...'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		
	  </xsl:call-template>
 	<div class="ndungtkhai_div">
            <div class="content"> 

					
					<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/dangKyMoi='true' or HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/dangKyMoi='1'">
						
							
							<div  class="align-l"><b>I. Đối với thủ tục đăng ký mới:</b></div>			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Ngày bắt đầu hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Ngành nghề kinh doanh chính</b></td>
								<td class="align-c" rowspan="1"><b>Có hoạt động kinh doanh TMĐT </b></td>
								<td class="align-c" rowspan="1"><b>Số nhà, đường phố (thôn/ xóm)</b></td>
								<td class="align-c" rowspan="1"><b>Phường/Xã/Đặc khu</b></td>
								<td class="align-c" rowspan="1"><b>Tỉnh/ thành phố</b></td>
								<td class="align-c" rowspan="1"><b>Mã định danh địa điểm (nếu có)</b></td>
								<td class="align-c" rowspan="1"><b>Mã trang trại (nếu có đối với trường hợp hoạt động theo mô hình kinh tế trang trại)</b></td>
								<td class="align-c" rowspan="1"><b>Địa điểm kinh doanh chính(tích [x], chỉ được tích 1 lần)</b></td>
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
						</tr>
						<xsl:for-each select="$PL/DangKyCapMoi/ChiTietThuTucDangKyMoi">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-l"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-l"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayHoatDong,'dd/mm/yyyy')"/></td>
								
								<td class="align-c"> <xsl:value-of select="tenNganhNghe"/></td>
								<td class="align-c"><xsl:if test="kinhDoanhTMDT='true' or kinhDoanhTMDT='1'">x</xsl:if></td>
								<td class="align-c"> <xsl:value-of select="soNha"/></td>	
								<td class="align-c"> <xsl:value-of select="ten_XaPhuong"/></td>	
								
								<td class="align-c"> <xsl:value-of select="tenTinh"/></td>	
								
								<td class="align-c"> <xsl:value-of select="maDinhDanhDiaDiem"/></td>
								<td class="align-r"> <xsl:value-of select="maTrangTrai"/></td>
								<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
									
								</tr>
								</xsl:for-each>
							   
		
                 </table>
					</xsl:if>
		</div>	

 <div class="content"> 

					
					<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/thayDoiThongTin='true' or HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/thayDoiThongTin='1'">
						
							
							<div  class="align-l"><b>I. Đối với thủ tục thay đổi thông tin:</b></div>			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>Mã địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Ngày bắt đầu hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Ngành nghề kinh doanh chính</b></td>
								<td class="align-c" rowspan="1"><b>Có hoạt động kinh doanh TMĐT </b></td>
								<td class="align-c" rowspan="1"><b>Số nhà, đường phố (thôn/ xóm)</b></td>
								<td class="align-c" rowspan="1"><b>Phường/Xã/Đặc khu</b></td>
								<td class="align-c" rowspan="1"><b>Tỉnh/ thành phố</b></td>
								<td class="align-c" rowspan="1"><b>Mã định danh địa điểm (nếu có)</b></td>
								<td class="align-c" rowspan="1"><b>Mã trang trại (nếu có đối với trường hợp hoạt động theo mô hình kinh tế trang trại)</b></td>
								<td class="align-c" rowspan="1"><b>Địa điểm kinh doanh chính(tích [x], chỉ được tích 1 lần)</b></td>
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
						</tr>
						<xsl:for-each select="$PL/ThuTucThayDoiThongTin/ChiTietThayDoiThongTin">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-l"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-l"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayHoatDong,'dd/mm/yyyy')"/></td>
								
								<td class="align-c"> <xsl:value-of select="tenNganhNghe"/></td>
								<td class="align-c"><xsl:if test="kinhDoanhTMDT='true' or kinhDoanhTMDT='1'">x</xsl:if></td>
								<td class="align-c"> <xsl:value-of select="soNha"/></td>	
								<td class="align-c"> <xsl:value-of select="ten_XaPhuong"/></td>	
								
								<td class="align-c"> <xsl:value-of select="tenTinh"/></td>	
								
								<td class="align-c"> <xsl:value-of select="maDinhDanhDiaDiem"/></td>
								<td class="align-r"> <xsl:value-of select="maTrangTrai"/></td>
								<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
									
								</tr>
								</xsl:for-each>
							   
		
                 </table>
					</xsl:if>
		</div>	




		
<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/tamNgung='true' or HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/tamNgung='1'">
<div  class="align-l"><b>II. Đối với thủ tục đăng ký tạm ngừng kinh doanh:</b></div>			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="2"><b>STT (Địa điểm kinh doanh)</b></td>
								<td class="align-c" rowspan="2"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" colspan="3"><b>Đăng ký tạm ngừng kinh doanh</b></td>
								<td class="align-c" colspan="2"><b>Đăng ký tiếp tục hoạt động trước thời hạn tạm ngừng kinh doanh</b></td>
								<td class="align-c" rowspan="2"><b>Địa điểm kinh doanh chính (tự hiển thị NNT không kê khai)</b></td>
								
							  </tr>
							  	
			            <tr>
						
				            <td class="align-c"><b>Từ ngày tháng năm</b></td>
				            <td class="align-c"><b>Đến ngày tháng năm</b></td>
				            <td class="align-c"><b>Lý do</b></td>
						
				            <td class="align-c"><b>Ngày tháng năm</b></td>
							 <td class="align-c"><b>Lý do</b></td>
							
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
							
						</tr>
						<xsl:for-each select="$PL/TamNgungKinhDoanh/ChiTietTamNgungKinhDoanh">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-l"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-l"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(tuNgay,'dd/mm/yyyy')"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(denNgay,'dd/mm/yyyy')"/></td>
								<td class="align-l"> <xsl:value-of select="lyDoTamNgung"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayThangNam,'dd/mm/yyyy')"/></td>
								<td class="align-l"> <xsl:value-of select="lyDoTiepTucHD"/></td>
									<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/chamDutHoatDong='true' or HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/chamDutHoatDong='1'">
<div  class="align-l"><b>III. Đối với thủ tục chấm dứt hoạt động:</b></div>			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>STT (Địa điểm kinh doanh)</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Ngày chấm dứt hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Lý do chấm dứt hoạt động</b></td>
								<td class="align-c" rowspan="1"><b>Địa điểm kinh doanh chính (tự hiển thị NNT không kê khai)</b></td>
								
							  </tr>
							  
						<xsl:for-each select="$PL/ChamDutHoatDongKD/ChiTietChamDutHoatDong">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-l"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-l"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayChamDutHoatDong,'dd/mm/yyyy')"/></td>
								<td class="align-l"> <xsl:value-of select="ten_LyDoChamDut"/></td>
									<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
</div>	

<div class="content"> 
<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/khoiPhucHoatDong='true' or HSoThueDTu/HSoKhaiThue/PLuc/PL_dangkythue_HKD/khoiPhucHoatDong='1'">
<div  class="align-l"><b>IV. Đối với thủ tục khôi phục hoạt động kinh doanh: </b></div>			
		<table  class="tkhai_table">
							  <tr>
								<td class="align-c" rowspan="1" ><b>Mã Địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Tên địa điểm kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Ngày tháng năm khôi phục hoạt động kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Lý do đề nghị khôi phục hoạt động kinh doanh</b></td>
								<td class="align-c" rowspan="1"><b>Địa điểm kinh doanh chính (tự hiển thị NNT không kê khai)</b></td>
							  </tr>
							 
						<xsl:for-each select="$PL/KhoiPhucHoatDongKD/ChiTietKhoiPhucHoatDong">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								
								<td class="align-l"> <xsl:value-of select="maDiaDiemKD"/></td>
								<td class="align-l"> <xsl:value-of select="tenDiaDiemKD"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ngayKhoiPhucHoatDong,'dd/mm/yyyy')"/></td>
								<td class="align-l"> <xsl:value-of select="ten_LyDoKhoiPhuc"/></td>
									<td class="align-c"><xsl:if test="diaDiemKDChinh='true' or diaDiemKDChinh='1'">x</xsl:if></td>
								</tr>
								</xsl:for-each>
							   
		
</table>
</xsl:if>
</div>
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