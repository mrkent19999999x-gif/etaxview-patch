<?xml version='1.0' encoding='UTF-8' ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 <xsl:include href="../common/common.xsl"/> 
 
    <!--start Footer  -->	
	<xsl:template name="tkhaiFooter">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./... </span>
	<div class="footer_div">
		<table>
			<tr>
				<td width="25%">
					<br/>
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="30%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="35%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
			<tr>
				
				<td width="25%"></td>
				<td colspan="1" width="30%">
					
				</td>
				<td width="35%" class="align-c">
					
				</td>
			</tr>
			<tr>
				
				<td width="25%"/>
				<td width="35%"/>
				<td colspan="1" width="30%" class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--PL114-->
	<xsl:template name="tkhaiFooter_PL114">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue' />
	<br/><span>Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những thông tin đã khai./. </span>
	<div class="footer_div">
		<table width="100%">
			<tr>
				<td></td>
				<td></td>
				<td>&#160;&#160;&#160;&#160; &#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160; &#160;&#160;&#160; Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></td>
			</tr>
			<tr>
				<td width="30%">
				<br/>
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
				</td>
					<td colspan="1" width="25%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>

				<td colspan="1" width="45%" align="center">
				<b>NGƯỜI NỘP THUẾ hoặc  <br/>ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
				</td>
			</tr>
			<tr>
				
				<td>
					Họ và tên: <br/>
					Chứng chỉ hành nghề số:
				</td>
				
				<td>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
		
					<td class="align-c">
					
				
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i>
					</td>
			
				
			</tr>
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--PL92-->
	<xsl:template name="tkhaiFooter_PL92">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue' />
	<br/><span>Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những thông tin đã khai./. </span>
	<div class="footer_div">
		<table width="100%">
			<tr>
				<td></td>
				<td></td>
				<td>&#160;&#160;&#160;&#160; &#160; &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160; &#160; &#160;&#160;&#160; Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></td>
			</tr>
			<tr>
				<td width="30%">
				<br/>
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
				</td>
					<td colspan="1" width="25%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>

				<td colspan="1" width="45%" align="center">
				<b>NGƯỜI NỘP THUẾ hoặc  <br/>ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
				</td>
			</tr>
			<tr>
				
				<td>
					Họ và tên: <br/>
					Chứng chỉ hành nghề số:
				</td>
				
				<td>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
		
					<td class="align-c">
					
				
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i>
					</td>
			
				
			</tr>
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
   <!--start Footer DK-TVAN  -->		
   <xsl:template name="tkhaiFooter_DK_TVAN">
   		<xsl:variable name="ttchungdk" select='DKyThue/TTinChung' />	
		<xsl:variable name="ndungdk" select='DKyThue/NDungDKy' />	
	<div class="footer_div">	
		<table >
			<tr>
			    <td class="align-c"> <b>Chữ ký số của tổ chức cung cấp dịch vụ T-VAN</b></td>
			    <td class="align-c"><b>Chữ ký số của người nộp thuế</b></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td class="align-c"><xsl:value-of select="$ndungdk/tenToChuc"/></td>
				<td class="align-c"><xsl:value-of select="$ttchungdk/TTinDKyThue/tenNNT"/></td>
			</tr>
		</table>
		</div>   
</xsl:template>
	
			<!-- Footer Bao cao tai chinh TT200 không liên tục-->
	<xsl:template name="tkhaiFooter-BCTC200-KoLienTuc">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div class="footer_div">
		<table width = "100%">
            <td class="align-c" width = "33%">								
                                    <b>Người lập biểu</b><br/>(Ký, họ tên) 
							
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/nguoiLapBieu"/>
									<br/>
			</td>       
			<td class="align-c" width = "33%">								
                                    <b>Kế toán trưởng </b><br/>(Ký, họ tên) 
									
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/keToanTruong"/>
									<br/>
			</td>       
            <td class="align-c" width = "33%">								
                                    <i>Lập, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongKhongLienTuc/ngayLap,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongKhongLienTuc/ngayLap,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongKhongLienTuc/ngayLap,'yyyy')"/></i><br/>
									<b>Giám đốc </b><br/><i>(Ký, họ tên, đóng dấu) </i>
								
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongKhongLienTuc/giamDoc"/>
									<br/>
			</td>
	    </table>		
				
		</div>
	</xsl:template>
	
			<!-- Footer Bao cao tai chinh TT200 liên tục-->
	<xsl:template name="tkhaiFooter-BCTC200-LienTuc">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div class="footer_div">
		<table width = "100%">
            <td class="align-c" width = "33%">								
                                    <b>Người lập biểu</b><br/>(Ký, họ tên) 
							
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/nguoiLapBieu"/>
									<br/>
			</td>       
			<td class="align-c" width = "33%">								
                                    <b>Kế toán trưởng </b><br/>(Ký, họ tên) 
									
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/keToanTruong"/>
									<br/>
			</td>       
            <td class="align-c" width = "33%">								
                                    <i>Lập, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongLienTuc/ngayLap,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongLienTuc/ngayLap,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CDKT_HoatDongLienTuc/ngayLap,'yyyy')"/></i><br/>
									<b>Giám đốc </b><br/><i>(Ký, họ tên, đóng dấu) </i>
								
									<br/><br/><br/><xsl:value-of select="$tkchinh/CDKT_HoatDongLienTuc/giamDoc"/>
									<br/>
			</td>
	    </table>		
				
		</div>
	</xsl:template>

	<!--start Footer TKhai_SDNN_02 -->
	<xsl:template name="tkhaiFooter2">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<div class="footer_div">
			<table >
			<tr>
				<td colspan="4">
					<br/>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./.  </td>
			</tr>
			
		</table>
		<table >
			<tr class="align-c">
				<td width="30%">
				<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKeKhai,'dmy')"/>
				</td>
				<td width="30%"></td>
				<td width="30%">
				<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayUBNDXacNhan,'dmy')"/>
				</td>
			</tr>
			<tr class="align-c">
				<td class="b">Chủ hộ	</td>
				<td class="b">Cán bộ thuế</td>
				<td class="b">UBND xã, phường, thị trấn</td>
			</tr>
			<tr class="align-c">
				<td class="b">(Ký ghi rõ họ tên)</td>
				<td class="b">(Ký ghi rõ họ tên)</td>
				<td class="b">(Ký ghi rõ họ tên, đóng dấu)</td>
			</tr>
			<tr>
				<td  height="50px"></td>
				<td></td>
				<td></td>
			</tr>
			<tr class="align-c">
				<td > <xsl:value-of select="$tkchinh/tenChuHo"/></td>
				<td > <xsl:value-of select="$tkchinh/tenCanBoThue"/></td>
				<td > <xsl:value-of select="$tkchinh/daiDienUBND"/></td>
			</tr>
		</table>
		</div>
	</xsl:template>
	
	<!--start footer TKhai_SDNN_02 -->
	<xsl:template name="tkhaiFooter3">
	<xsl:param name="dTuong1" />
	<xsl:param name="dTuong2" />
	<xsl:param name="ngayThang" />
	<xsl:param name="ghichu1" />
	<xsl:param name="ghichu2" />
	<xsl:param name="nguoiky1" />
	<xsl:param name="nguoiky2" />
		<table width="100%">
			<tr>
					<td width="50%">
						<div class="content">
							<div class="align-c"><b><xsl:value-of select="$dTuong1"/></b></div>
							<div class="align-c"><xsl:value-of select="ihtkk:stringDatetime($ngayThang,'dmy')"/></div>
							<div class="align-c"><xsl:value-of select="$ghichu1"/></div>
							<br/><br/>
							<div class="align-c"><xsl:value-of select="$nguoiky1"/></div>
						</div>
					</td>
					<td width="50%">
						<div class="content">
							<div class="align-c"><b><xsl:value-of select="$dTuong2"/></b></div>
							<div class="align-c"><xsl:value-of select="$ghichu2"/></div>
							<br/><br/>
							<div class="align-c"><xsl:value-of select="$nguoiky1"/></div>
						</div>
					</td>
			</tr>			
		</table>
	</xsl:template>
	
	<!--Start footer TBao TNCN1-->
	<xsl:template name="tkhaiFooterTBaoTNCN1">
	<table >
			<tr>
				<td width="100"/>
				<td colspan="3">
					<b>NGƯỜI NHẬN THÔNG BÁO NỘP TIỀN </b></td>
			</tr>
			<tr>
				<td width="10%"/>
				<td width="25%" class="align-c">Ngày <xsl:value-of select= "ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/NguoiNhanTBaoKyTen/ngayNhanTBao,'dd')"/>								
									 tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/NguoiNhanTBaoKyTen/ngayNhanTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/NguoiNhanTBaoKyTen/ngayNhanTBao,'yyyy')"/> </td>
			
				
			</tr>
			<tr>
				<td width="10%"></td>
				<td width="25%" class="align-c">(Ký, ghi rõ họ tên) </td> <br/>
				<br/>
				
				<td colspan="1" width="30%">
					<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/CanCuThongBao/ongBa"/>
				</td>
				<td width="35%" class="align-c">
	
					<b>THỦ TRƯỞNG CƠ QUAN THUẾ  </b>
					<br/>
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i> <br/>
					<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/thuTruongCQTKy"/>
				</td>
				<td width="10%"></td>
			</tr>
			<tr>
				<td width="10%"/>
				<td width="25%"/>
				<td width="35%"/>
				<td colspan="1" width="30%" class="align-c"></td>
			</tr>
		</table> <br/>
		</xsl:template>
		
	<!--Start footer TBao TNCN2-->
	<xsl:template name="tkhaiFooterTBaoTNCN2">
	
			<div class="footer_div">
				<table >
					<tr>
						<td width="10%"/>
						<td width="25%"/>
						<td width="35%"/>
						<td colspan="1" width="30%" class="align-c">
							Ngày  <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/ThuTruongThuTienKy/ngayKy ,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/ThuTruongThuTienKy/ngayKy ,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/ThuTruongThuTienKy/ngayKy ,'yyyy')"/></td>
					</tr>
					<tr>
						<td width="10%"/>
						<td width="25%"> </td>
						<td colspan="1" width="30%"></td>
						<td width="35%" class="align-c">
							<b>THỦ TRƯỞNG CƠ QUAN THU TIỀN</b>
							<br/>
							<i> (Ký, ghi rõ họ tên, đóng dấu) </i><br/>
							 <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chuKy/ThuTruongThuTienKy/chuKyCuaThuTruongCQThuTien"/>
						</td>
					</tr>
				</table>
			</div>
	</xsl:template>
	
	<!--start footer DKy_TNCN-16DK-->
			<xsl:template name="tkhaiFooter-DKy_TNCN-16DK">
			<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
			<div class="footer_div">
				<table >
				<tr>
					 <td colspan="4"> cam đoan những nội dung kê khai là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã khai./.</td>
				</tr>
					<tr>
						<td width="10%"/>
						<td width="25%"/>
						<td width="35%"/>
						<td colspan="1" width="30%" class="align-c">
							Ngày  <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy ,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy ,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy ,'yyyy')"/></td>
					</tr>
					<tr>
						<td width="10%"/>
						<td width="25%"> </td>
						<td colspan="1" width="30%"></td>
						<td width="35%" class="align-c">
							<b>CÁ NHÂN CÓ THU NHẬP</b>
							<br/>
							<i> (Ký và ghi rõ họ tên) </i><br/>
							 <xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
						</td>
					</tr>
				</table>
			</div>
	</xsl:template>
	
	<!-- Footer Bao cao tai chinh -->
	<xsl:template name="tkhaiFooter-BCTC">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div class="footer_div">
		<table width = "100%">
            <td class="align-c" width = "33%">								
                                    <b>Người lập biểu</b><br/>(Ký, Ghi rõ họ tên) 
							
									<br/><xsl:value-of select="$tkchinh/nguoiLapBieu"/>
									<br/>
			</td>       
			<td class="align-c" width = "33%">								
                                    <b>Kế toán trưởng </b><br/>(Ký, Ghi rõ họ tên) 
									
									<br/><xsl:value-of select="$tkchinh/keToanTruong"/>
									<br/>
			</td>       
            <td class="align-c" width = "33%">								
                                    <i>Lập ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLap,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLap,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLap,'yyyy')"/></i><br/>
									<b>Giám đốc </b><br/><i>(Ký, Ghi rõ họ tên, Đóng dấu) </i>
								
									<br/><xsl:value-of select="$tkchinh/giamDoc"/>
									<br/>
			</td>
	    </table>		
				
		</div>
	</xsl:template>
	
		<!-- Footer Bao cao tai chinh QD16 -->
	<xsl:template name="tkhaiFooter-BCTC16">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div class="footer_div">
		<table width = "100%">
            <td class="align-c" width = "33%">								
                                    <b>Người lập biểu</b><br/>(Ký, Ghi rõ họ tên) 
								
									<br/><xsl:value-of select="$tkchinh/PhanKy/nguoiLapBieu"/>
									<br/>
			</td>       
			<td class="align-c" width = "33%">								
                                    <b>Kế toán trưởng </b><br/>(Ký, Ghi rõ họ tên) 
								
									<br/><xsl:value-of select="$tkchinh/PhanKy/keToanTruong"/>
									<br/>
			</td>       
            <td class="align-c" width = "33%">								
                                    <i>Lập ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/PhanKy/ngayLap,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/PhanKy/ngayLap,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/PhanKy/ngayLap,'yyyy')"/></i><br/>
									<b>Giám đốc </b><br/><i>(Ký, Ghi rõ họ tên, Đóng dấu) </i>
								
									<br/><xsl:value-of select="$tkchinh/PhanKy/giamDoc"/>
									<br/>
			</td>
	    </table>		
				
		</div>
	</xsl:template>
	
    <!--start Footer  BC01/AC-->	
	<xsl:template name="tkhaiFooter-bc01ac">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	        <colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
	            <tr>
	                <td></td>
	                <td></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'yyyy')"/></i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
	<!--start Footer  BC21/AC-->	
	<xsl:template name="tkhaiFooter-bc21ac">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	            <tr>
	                <td><b><i><u>Nơi nhận:</u></i></b></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'yyyy')"/></i></td>
				</tr>
				<tr>
	                <td><i>- Cơ quan thuế trực tiếp quản lý</i></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
	                <td><i>- Lưu.</i></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
			
				</tr>
				<tr>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
	<!--start Footer  BC26/AC-->	
	<xsl:template name="tkhaiFooter-bc26ac">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />	
	 <div>Cam kết báo cáo tình hình sử dụng hóa đơn trên đây là đúng sự thật, nếu sai, đơn vị chịu hoàn toàn trách nhiệm trước pháp luật.</div>
        <table>
            <tr>
                <td class="align-c"><b>Người lập biểu</b></td>
                <td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'yyyy')"/></i></td>						
            </tr>
			<tr>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên)</i></td>
				<td class="align-c"><b>ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
			</tr>     
			<tr>
				<td class="align-c"><xsl:value-of select="$tkchinh/nguoiLapBieu"/></td>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên và đóng dấu)</i></td>
			</tr>      
			<tr>
				<td></td>
				<td class="align-c">
				<xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
			</tr>             
	    </table>
	</xsl:template>	    
	
	<!--start Footer  TB01/AC-->	
	<xsl:template name="tkhaiFooter-tb01ac">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	            <tr>
	                <td><i><b><u>Ghi chú:</u></b>Tổ chức, cá nhân tự in hoá đơn không ghi cột Doanh nghiệp in và Hợp đồng đặt in</i></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'yyyy')"/></i></td>
				</tr>
				<tr>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
	<!--start Footer  TB04/AC-->	
	<xsl:template name="tkhaiFooter-tb04ac">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	        <colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
	            <tr>
	                <td></td>
	                <td></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayThongBao,'yyyy')"/></i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
	<!--start Footer  Biên lai TB01/AC-->	
	<xsl:template name="tkhaiFooter-TB01-BLai">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	        <colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
	            <tr>
	                <td></td>
	                <td></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'yyyy')"/></i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c">
			
					<xsl:value-of select="$tkchinh/thuTruongDonVi"/></td>
				</tr>
		</table>
	</xsl:template>
	
		<!--start Footer  Biên lai BC01/AC-->	
	<xsl:template name="tkhaiFooter-BC01-BLai">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	        <colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
	            <tr>
	                <td></td>
	                <td></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayLapBCao,'yyyy')"/></i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b>
					</td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c">
				
					<i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
			<!--start Footer  Biên lai BC21/AC-->	
	<xsl:template name="tkhaiFooter-BC21-BLai">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div><br/>
        <table>
	        <colgroup>
				<col width="200px"/>
				<col width="200px"/>
				<col width="200px"/>
			</colgroup>
	            <tr>
	                <td><b><i><u>Nơi nhận:</u></i></b></td>
	                <td></td>
					<td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'yyyy')"/></i></td>
				</tr>
				<tr>
                    <td><i>- Cơ quan thuế trực tiếp quản lý</i></td>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
                    <td><i>- Lưu.</i></td>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i>
					</td>
				</tr>
				<tr>
                    <td></td>
	                <td></td>						
					<td class="align-c">
				
					<xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
	<!--start Footer  BCHD TT372010-->	
	<xsl:template name="tkhaiFooter-TT372010">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		
        <table width="100%">
	        <colgroup>
				<col width="50%"/>
				<col width="50%"/>
				
			</colgroup>
	           	<tr>
					
					<td></td>
					<td class="align-c"><b>ĐẠI DIỆN TỔ CHỨC CHI TRẢ THU NHẬP</b></td>
				</tr>
				<tr>
	              
	                <td></td>					
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i>
					</td>
				</tr>
				<tr>
                  
	                <td></td>						
					<td class="align-c">
				
					<xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>
	</xsl:template>
	
		<!--start Footer  biên lai BC26/AC-->	
	<xsl:template name="tkhaiFooter-bc26ac-BLai">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />	
	 <div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div>
        <table>
            <tr>
                <td class="align-c"><b>Người lập biểu</b></td>
                <td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayKy,'yyyy')"/></i></td>						
            </tr>
			<tr>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên)</i></td>
				<td class="align-c"><b>ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
			</tr>     
			<tr>
				<td class="align-c"></td>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên và đóng dấu)</i></td>
			</tr>      
			<tr>
				<td class="align-c"><xsl:value-of select="$tkchinh/nguoiLapBieu"/></td>
				<td class="align-c">
		
				<xsl:value-of select="$tkchinh/thuTruongDonVi"/></td>
			</tr>             
	    </table>
	</xsl:template>	    
	
			<!--start Footer  biên lai BC7/AC-->	
	<xsl:template name="tkhaiFooter-bc7ac-BLai">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />	
	 <div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div>
        <table>
            <tr>
                <td class="align-c"><b>Người lập biểu</b></td>
                <td class="align-c"><i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayBCao,'yyyy')"/></i></td>						
            </tr>
			<tr>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên)</i></td>
				<td class="align-c"><b>ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
			</tr>     
			<tr>
				<td class="align-c"><xsl:value-of select="$tkchinh/nguoiLapBieu"/></td>
				<td class="align-c"><i>(Ký, ghi rõ họ, tên và đóng dấu)</i></td>
			</tr>      
			<tr>
				<td></td>
				<td class="align-c">
		
				<xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
			</tr>             
	    </table>

	</xsl:template>	    
	<!--start Footer  -->	
	<xsl:template name="tkhaiFooter_01DNHT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./... </span>
	<div class="footer_div">
		<table width="100%">
			<tr>
				<td width="30%">
				<br/>
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
				</td>
					<td colspan="1" width="25%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>

				<td colspan="1" width="45%" align="center">
				<b>NGƯỜI NỘP THUẾ hoặc  <br/>ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
				</td>
			</tr>
			<tr>
				
				<td>
					Họ và tên: <br/>
					Chứng chỉ hành nghề số:
				</td>
				
				<td>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
	
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
		
					<td class="align-c">
					
				
					<i> Ký, ghi rõ họ tên, chức vụ và đóng dấu (nếu có)</i>
					</td>
			
				
			</tr>
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--start Footer TKhai_MTCN -->
	<xsl:template name="tkhaiFooter_MTCN">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<!-- <xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' /> -->
	<div class="footer_div">
			<table >
			<tr>
					<td width="30%">
					<div align="center" style="margin:0; padding:0;">
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<i><xsl:value-of select="$tkchinh/diaDanh"/> Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i><br/>
					<b>NGƯỜI NỘP THUẾ hoặc <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					(Ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có) hoặc <br/> ký điện tử)
					</div>
				</td>
				</tr>
		</table>
		</div>
	</xsl:template>	
	    <!--start Footer  gia hạn nộp thuế -->	
	<xsl:template name="tkhaiFooterGH">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

	<br/><span>Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về những thông tin đã khai; tôi cam kết nộp đầy đủ số tiền thuế theo thời hạn nộp thuế được gia hạn./.</span>
	<div class="footer_div">
		<table>
			<tr>
				<td width="25%">
					<br/>
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="30%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> Ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="35%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
			<tr>
				
				<td width="25%"></td>
				<td colspan="1" width="30%">
					
				</td>
				<td width="35%" class="align-c">
					
				</td>
			</tr>
			<tr>
				
				<td width="25%"/>
				<td width="35%"/>
				<td colspan="1" width="30%" class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
</xsl:stylesheet>
