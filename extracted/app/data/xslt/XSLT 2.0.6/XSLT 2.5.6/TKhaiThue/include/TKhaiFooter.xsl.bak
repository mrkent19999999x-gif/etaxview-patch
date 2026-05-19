<?xml version='1.0' encoding='UTF-8' ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 <xsl:include href="../common/common.xsl"/> 
 
    <!--start Footer  -->	
	<xsl:template name="tkhaiFooter">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>&#160;&#160;Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./... </span>
	<div class="footer_div">
		<table >
		<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td width="15%">
				</td>
				<td width="55%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
		
			<tr>
				
				<td width="25%">
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b><br/> 					
					Họ và tên: <xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/> <br/> <br/>	
					Chứng chỉ hành nghề số: <xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<td  width="15%">
				
					 <br/> <br/>
					
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="55%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="55%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
		
			<tr>
				
				<td width="25%"/>
				<td width="15%"/>
				<td  width="55%" class="align-c">
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
	<br/><span>Tôi cam đoan những nội dung kê khai trên là đúng và chịu trách nhiệm trước pháp luật về thông tin đã khai./. </span>
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
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./. </span>
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
					Họ và tên:<br/>
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
					<br/>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.  </td>
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
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./... </span>
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
	
		 
	 <!--start Footer  -->	
	<xsl:template name="tkhaiFooter_03_DL_HDDT">
	<xsl:variable name="kskthue" select='TKhai/DLTKhai/TTChung' />
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./ </span>
	<div class="footer_div">
		<table>
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i><xsl:value-of select="$kskthue/DDanh"/>,	ngày <xsl:value-of select='substring-before($kskthue/NLap,"/")'/> tháng <xsl:value-of select='substring-before(substring-after($kskthue/NLap,"/"),"/")'/> năm <xsl:value-of select='substring($kskthue/NLap,7,10)'/></i>
				
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					<!-- <xsl:value-of select="$kskthue/TDLThue"/> -->
					 <br/>
				</td>
		
				<td width="50%" class="align-c">
				<b>NGƯỜI NỘP THUẾ hoặc<br/>ĐẠI ĐIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
				<br/>
				<i>Chữ ký số, chữ ký điện tử của người nộp thuế</i>
				</td>
				
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
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--start Footer tờ khai 02TNDN - TT80-->		
   <xsl:template name="tkhaiFooter_02TNDN_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	 <!--start Footer  -->	
	 
	 <!--start Footer tờ khai 04TNDN - TT80-->		
   <xsl:template name="tkhaiFooter_04TNDN_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	 <!--start Footer  -->	
	 
	 <!--start Footer tờ khai 05TNDN - TT80-->		
   <xsl:template name="tkhaiFooter_05TNDN_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	 <!--start Footer  -->
	 
	 <!--start Footer tờ khai 06TNDN - TT80-->		
   <xsl:template name="tkhaiFooter_06TNDN_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	<!--start Footer  -->	
	<xsl:template name="tkhaiFooter_01HT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./... </span>
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
					
				
					<i>(Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	 <!--start Footer  -->
<!--start Footer tờ khai NTNN - TT80-->		
   <xsl:template name="tkhaiFooter_TBVMT_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	
	<!--start Footer tờ khai 01/TBVMT (TT80/2021)-->		
   <xsl:template name="tkhaiFooter_01TBVMT_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
			<div><b><u>Ghi chú:</u></b></div>
			<div><i>1. Cột (5) “Tỷ lệ phần trăm (%) tính thuế”: Đối với mặt hàng là nhiên liệu hỗn hợp chứa xăng, dầu, mỡ nhờn gốc hóa thạch và nhiên liệu sinh học thì “Tỷ lệ phần trăm (%) tính thuế” là tỷ lệ phần trăm (%) xăng, dầu, mỡ nhờn gốc hóa thạch có trong nhiên liệu hỗn hợp do người nộp thuế tự xác định căn cứ tiêu chuẩn kỹ thuật chế biến nhiên liệu hỗn hợp được cơ quan có thẩm quyền phê duyệt; Đối với các mặt hàng khác thì “ Tỷ lệ phần trăm (%) tính thuế” là 100%.</i></div>
			<br/>
			<div><i>2. Chỉ tiêu [09], [10], [11]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh có hoạt động sản xuất hàng hoá chịu thuế BVMT tại địa phương khác tỉnh nơi đóng trụ sở chính đối với trường hợp người nộp thuế khai thuế BVMT tại nơi sản xuất hàng hóa chịu thuế BVMT theo quy định tại điểm đ, e khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh do Chi cục thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho huyện do Chi cục thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
		</div>
	</xsl:template>
	
	<!--start Footer tờ khai 01-1/TBVMT (TT80/2021)-->		
   <xsl:template name="tkhaiFooter_Pluc01-TBVMT-TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
			<div><b><u>Ghi chú:</u></b></div>
			<div><i>1. Cột (4), (5): Khai thông tin  địa bàn cấp huyện, tỉnh nơi đơn vị thực hiện nhiệm vụ tiêu thụ than/ cơ sở khai thác than đóng trụ sở.</i></div>
			<br/>
			<div><i>2. Trường hợp Cột (2) là “Tên đơn vị thực hiện nhiệm vụ tiêu thụ than” thì:Cột (6) điền thông tin “cơ quan thuế tại địa bàn nơi người nộp thuế đóng trụ sở chính” đối với trường hợp người nộp thuế do Cục Thuế Doanh nghiệp lớn quản lý trực tiếp; đối với trường hợp khác thì bỏ trống</i></div>
		</div>
	</xsl:template>
	
	<!--start Footer tờ khai 01-2/TBVMT (TT80/2021)-->		
   <xsl:template name="tkhaiFooter_Pluc02-TBVMT-TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
			<div><b><u>Ghi chú:</u></b></div>
			<div><i>1. Cột (4), (5): Khai thông tin  địa bàn cấp huyện, tỉnh nơi doanh nghiệp/ đơn vị phụ thuộc đóng trụ sở.</i></div>
			<br/>
			<div><i>2. Trường hợp Cột (2) là “Tên doanh nghiệp trụ sở chính” thì: Cột (6) điền thông tin “cơ quan thuế tại địa bàn nơi người nộp thuế đóng trụ sở chính” đối với trường hợp người nộp thuế do Cục Thuế Doanh nghiệp lớn quản lý trực tiếp; đối với trường hợp khác thì bỏ trống.</i></div>
			<br/>
			<div><i>3. Cột (10) được xác định bằng (=) Sản lượng của từng mặt hàng xăng dầu do doanh nghiệp/ đơn vị phụ thuộc bán ra thuộc đối tượng phải kê khai, tính thuế BVMT tại cột (9) chia (:) sản lượng tính thuế của từng mặt hàng xăng dầu tương ứng tại chỉ tiêu cột (4) của Tờ khai mẫu số 01/TBVMT có Phụ lục này.</i></div>
			<br/>
			<div><i>4. Cột (11) được xác định bằng (=) tỷ lệ phân bổ (%) của từng mặt hàng xăng dầu tại cột (10) nhân (x) thuế BVMT phải nộp trong kỳ của từng mặt hàng xăng dầu tương ứng tại chỉ tiêu cột (7) của Tờ khai mẫu số 01/TBVMT có Phụ lục này.</i></div>
		</div>
	</xsl:template>
	
	
	<!--start Footer tờ khai TT80_NIU-->	
	<xsl:template name="tkhaiFooter_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	
	<!--start Footer tờ khai NCCNN_TT80_NIU-->
	<xsl:template name="tkhaiFooter_NCCNN">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
	<div>File đính kèm:…….</div>
	<div class="footer_div">
		<table>
			<tr>
				<td colspan="1" width="40%">
				</td>
				<td width="100%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
			</tr>
			<tr>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="40%" class="align-c">
					<b>ĐẠI DIỆN NGÂN HÀNG THƯƠNG MẠI, TỔ CHỨC<br/>TRUNG GIAN THANH TOÁN</b>
					<br/>
					<i> (Ký, ghi rõ họ tên, chức vụ và đóng dấu)</i>
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
	
	<!--start Footer tờ khai 01/ĐK-TĐKTT - TT80_NIU-->	
	<xsl:template name="tkhaiFooter_01_DK_TDKTT_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<div class="footer_div">
		<table>
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="20%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc   ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	
	<!--start Footer tờ khai 06/TNCN TT80_NIU-->	
	<xsl:template name="tkhaiFooter_06_TNCN_TT80">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />

	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./.</span>
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
				
				<td width="20%">
					Họ và tên: <br/> <br/>
					Chứng chỉ hành nghề số:
				</td>
				<td colspan="1" width="20%">
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc   ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ <br/> hoặc TỔ CHỨC KHAI THAYS</b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
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
	<!--start Footer  -->	
	<xsl:template name="tkhaiFooter-03TNDN-TT80">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>&#160;&#160;Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về số liệu đã khai./... </span>
	<div class="footer_div">
		<table >
		<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td width="35%">
				</td>
				<td width="40%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
		
			<tr>
				
				<td width="25%">
					<b>NHÂN VIÊN ĐẠI LÝ THUẾ</b><br/> 					
					Họ và tên: <xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/> <br/> <br/>	
					Chứng chỉ hành nghề số: <xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>
				</td>
				<td  width="35%">
				
					 <br/> <br/>
					
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="40%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)/Ký điện tử)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="40%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
		
			<tr>
				
				<td width="25%"/>
				<td width="35%"/>
				<td  width="40%" class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--start Footer to khai 01/TEM -->	
	<xsl:template name="tkhaiFooter_01_TEM_TT23">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>&#160;&#160;Chúng tôi cam kết hoàn toàn chịu trách nhiệm trước pháp luật về tính chính xác, trung thực của nội dung nêu trên và thực hiện theo đúng quy định của pháp luật./. </span>
	<div class="footer_div">
		<table >
		<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td width="15%">
				</td>
				<td width="55%" class="align-c">
				<br/>
				<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				
		</tr>
		
			<tr>
				
				<td width="25%">
					
				</td>
				<td  width="25%">
				
					 <br/> <br/>
					
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="55%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc  <br/> ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ  </b>
					<br/>
					<i> (Chữ ký số, chữ ký điện tử của người nộp thuế)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="55%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
		
			<tr>
				
				<td width="25%"/>
				<td width="15%"/>
				<td  width="55%" class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$kskthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--start Footer to khai 03/TEM -->	
	<xsl:template name="tkhaiFooter_03_TEM_TT23">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<br/><span>&#160;&#160;Chúng tôi cam kết hoàn toàn chịu trách nhiệm trước pháp luật về tính chính xác, trung thực của nội dung nêu trên và thực hiện theo đúng quy định của pháp luật./. </span>
	<div class="footer_div">
		<table>
		<tr>
				<td width="25%">
					<br/>
					

				</td>
				<td width="15%">
				</td>
				<td width="55%" class="align-c">
				<br/>
				
				</td>
				
		</tr>
		
			<tr>
				
				<td width="35%">
				<br/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Nơi nhận:</b><br/> 					
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Như trên;<br/>	
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lưu: VT, 
				</td>
				<td  width="25%">
				
					 <br/> <br/>
					
				</td>
				<xsl:if test="$kskthue/TKhaiThue/ngayKy ">
					<td width="40%" class="align-c">
					<b>NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b>
					<br/>
					<i> (Chữ ký số, chữ ký điện tử của người nộp thuế)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/TKhaiThue/ngayKy)">
					<td width="40%" style="text-align:center">
						
					</td>
				</xsl:if>
			</tr>
		
			<tr>
				
				<td width="25%"/>
				<td width="15%"/>
				<td  width="55%" class="align-c">
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

