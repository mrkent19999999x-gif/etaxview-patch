<?xml version='1.0' encoding='UTF-8' ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
 <xsl:include href="../common/common.xsl"/> 
 
    <!--start Footer  -->	
	<xsl:template name="tkhaiFooter">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

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
	
	    <!--start Footer 05-ĐK-TH-TCT -->	
	<xsl:template name="tkhaiFooter_05DK">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

	<br/><span>Tôi cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./. </span>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>CƠ QUAN CHI TRẢ THU NHẬP hoặc ĐẠI DIỆN HỢP <br/> PHÁP CỦA CƠ QUAN CHI TRẢ THU NHẬP  </b>
					<br/>
					<i> Ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)</i>
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
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
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
	
		
		<!--Phien ban 1.0.1 dang kys thue-->
		<!--05-DK-TH-TCT-->
		 <!--start Footer 05-ĐK-TH-TCT -->	
	<xsl:template name="tkhaiFooter_05DK_TH">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

	<br/><span>Tôi xin cam đoan những nội dung trong bản kê khai này là đúng theo thông tin đăng ký thuế/thông tin thay đổi của cá nhân đã ủy quyền và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./. </span>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>CƠ QUAN CHI TRẢ THU NHẬP hoặc ĐẠI DIỆN HỢP <br/> PHÁP CỦA CƠ QUAN CHI TRẢ THU NHẬP  </b>
					<br/>
					<i> Ký, ghi rõ họ tên và đóng dấu (nếu có)</i>
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
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		</div>
		<div>
		<u>Ghi chú</u>:  Cơ quan chi trả thu nhập chỉ tích vào 1 trong 2 chỉ tiêu “Đăng ký thuế” hoặc “Thay đổi thông tin đăng ký thuế” tương ứng với hồ sơ ủy quyền của cá nhân là hồ sơ đăng ký thuế lần đầu hoặc hồ sơ thay đổi thông tin đăng ký thuế.
		</div>
	</xsl:template>
 <!--start Footer 20-ĐK-TCT -->	
	<xsl:template name="tkhaiFooter_20DK_TH">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân; CCCD: Căn cước công dân)</i> </span>			
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./.</span>
	
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>CƠ QUAN CHI TRẢ THU NHẬP hoặc ĐẠI DIỆN HỢP <br/> PHÁP CỦA CƠ QUAN CHI TRẢ THU NHẬP  </b>
					<br/>
					<i> Ký, ghi rõ họ tên; chức vụ và đóng dấu (nếu có)</i>
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
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
<!--start Footer 20-ĐK-TCT -->	
	<xsl:template name="tkhaiFooter_20DK_TCT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<xsl:if test="$ttkthue/nhanKQQuaBuuDien = 'true'">
					<input type="checkbox" checked="true" disabled="disabled"></input>
				</xsl:if>
				<xsl:if test="$ttkthue/nhanKQQuaBuuDien != 'true'">
					<input type="checkbox" disabled="disabled"></input>
				</xsl:if>
				<b>&#160;Không nhận kết quả tại trụ sở cơ quan thuế</b>
	<br/><span><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân; CCCD: Căn cước công dân)</i> </span>			
	<br/><span>Tôi cam đoan số liệu khai trên là đúng và chịu trách nhiệm trước pháp luật về những số liệu đã khai./.</span>
	
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>CÁ NHÂN CÓ THU NHẬP</b>
					<br/>
					<i>(Ký và ghi rõ họ tên)</i>
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
				<br/>					
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
<!--start Footer 05-ĐK-TCT -->	

	<xsl:template name="tkhaiFooter_05DK_TCT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span><b>Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./.</b></span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>NGƯỜI ĐĂNG KÝ THUẾ</b>
					<br/>
					<i>(Ký và ghi rõ họ tên)</i>
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
	
	<!--Footer Plu_DKT_105-->
	<xsl:template name="tkhaiFooter_05DK_TCT_105">
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI ĐĂNG KÝ THUẾ</b>
					<br/>
					<i>(Ký và ghi rõ họ tên)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--03-DK-TCT-->
	<xsl:template name="tkhaiFooter_03DK_TCT_105">
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>ĐẠI DIỆN HỘ KINH DOANH, CÁ NHÂN KINH DOANH</b>
					<br/>
					<i>(Ký và ghi rõ họ tên)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	
	
	<!--start Footer Pluc_DKT -->	
	<xsl:template name="tkhaiFooter_pluc">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span><b>&#160;&#160;&#160;Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./.</b></span>
	<div class="footer_div">
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>ĐẠI DIỆN HỘ KINH DOANH, CÁ NHÂN KINH DOANH</b>
					<br/>
					<i>(Ký và ghi rõ họ tên)</i>
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
	<!--01-DK-TCT-->
<xsl:template name="tkhaiFooter_pluc_01">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span><b>&#160;&#160;&#160;Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./.</b></span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					<i>Ký, ghi rõ họ tên và đóng dấu (nếu có)</i>
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
	
	<!--04-DK-TCT-->
<xsl:template name="tkhaiFooter_04">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Cam kết của Nhà thầu hoặc Nhà thầu phụ thực hiện nghiêm chỉnh luật pháp về thuế, nộp kịp thời và đầy đủ các khoản thuế phát sinh, đảm bảo việc khấu trừ và nộp đủ các khoản thuế của Nhà thầu và người lao động làm việc tại Việt Nam theo hợp đồng.
	<br/>Contractors, sub-contractors commit to observe all tax laws, timely and fully pay taxes, ensure to withhold and pay full tax dues of sub-contractors and employees involved in the contract in Vietnam.</span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>NGƯỜI ĐẠI DIỆN NHÀ THẦU/NHÀ THẦU PHỤ/BAN ĐIỀU HÀNH LIÊN DANH</b>
					<br/>Representative of contractor (or sub-contractor)
					<br/>
					<i>(Signature)</i>
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
	<!--04-DK-TCT_BK-->
<xsl:template name="tkhaiFooter_pluc_04_BK">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>NGƯỜI ĐẠI DIỆN NHÀ THẦU/NHÀ THẦU PHỤ/BAN ĐIỀU HÀNH LIÊN DANH</b>
					<br/>Representative of contractor (or sub-contractor)
					<br/>
					<i>(Signature)</i>
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
	<!--06-DK-TCT-->
<xsl:template name="tkhaiFooter_06">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span><b>Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung 
đã kê khai./.</b></span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>TRƯỞNG CƠ QUAN ĐẠI DIỆN HOẶC PHÓ CƠ QUAN ĐẠI DIỆN</b>
					<br/>Head or Deputy Head of Mission
					<br/>
					<i>Ký tên</i>
					<br/>
					<i>(Signature)</i>
					</td>
			</tr>
			
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$tkchinh/coQuanDDNgoaiGiao"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
		<br/><span><b>Vụ Lễ tân Bộ ngoại giao xác nhận Cơ quan đại diện nêu trên thuộc đối tượng được hưởng ưu đãi miễn trừ ngoại giao theo quy định của Pháp lệnh về ưu đãi miễn trừ ngoại giao</b></span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayVuLeTan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayVuLeTan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayVuLeTan,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>VỤ TRƯỞNG VỤ LỄ TÂN</b>
					<br/>Director of Protocol Department
					<br/>
					<i>Ký tên, đóng dấu - nếu có</i>
					<br/>
					<i>(Signature)</i>
					</td>
			</tr>
			
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$tkchinh/vuLeTan"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	<!--06-DK-TCT-BK01-->
<xsl:template name="tkhaiFooter_06BK">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>TRƯỞNG CƠ QUAN ĐẠI DIỆN HOẶC PHÓ CƠ QUAN ĐẠI DIỆN</b>
					<br/>Head or Deputy Head of Mission
					<br/>
					<i>Ký tên</i>
					<br/>
					<i>(Signature)</i>
					</td>
			</tr>
			
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$tkchinh/coQuanDDNgoaiGiao"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
		
	</xsl:template>
	<!--footer phu luc to khai 01-DK-TCT-95-->
	<xsl:template name="tkhaiFooter_pluc_01_BK">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					<i>Ký, ghi rõ họ tên và đóng dấu (nếu có)</i>
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
<!--TT105-->
<!--01-DK-TCT-->
<xsl:template name="tkhaiFooter_pluc_01_105">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>&#160;&#160;&#160;Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./.</span>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ HOẶC ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					<i>Ký, ghi rõ họ tên và đóng dấu (nếu có)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
<!--01-DK-TCT_BK_105-->
<xsl:template name="tkhaiFooter_pluc_01_BK_105">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/>/<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ HOẶC ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b>
					<br/>
					<i>Ký, ghi rõ họ tên và đóng dấu (nếu có)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
<!--06-DK-TCT-->
<xsl:template name="tkhaiFooter_06_105">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật về những nội dung đã kê khai./.</span>
	<div class="footer_div">
	
		<table width="100%">
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'dd/mm/yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				<td width="25%">
					<br/>
					<b></b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<i>Date: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCoQuanNN,'dd/mm/yyyy')"/></i>
				</td>
				
			</tr>
			
				<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
					<td width="35%" class="align-c">
					<b>TRƯỞNG CƠ QUAN ĐẠI DIỆN HOẶC PHÓ CƠ QUAN ĐẠI DIỆN</b>
					<br/>Head or Deputy Head of Mission
					<br/>
					<i>Ký tên</i>
					<br/>
					<i>(Signature)</i>
					</td>
			</tr>
			
	
			<tr>
				
				<td />
				<td />
				<td class="align-c">
				<br/>
				<br/>					
					<xsl:value-of select="$tkchinh/coQuanDDNgoaiGiao"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>

	</xsl:template>
	<!--32-DK-TCT-->
<xsl:template name="tkhaiFooter_pluc_32">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.</span>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ</b>
					<br/>
					<i>(Ký, ghi rõ họ, tên)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	
	<!--13-MST-->
    <xsl:template name="tkhaiFooter_13MST">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.</span>
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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b>
					<br/>
					<i>(Ký, ghi rõ họ, tên)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
	
	<!--24_DK_TCT-->
    <xsl:template name="tkhaiFooter_24DK_TCT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.</span>
	<br></br>
	<div class="footer_div">
		<table>
			<tr>
				<td width="25%">
					<br/>
					<b>Nơi nhận:</b>
				</td>
				<td colspan="1" width="30%">
				</td>
				<td width="35%" class="align-c">
				<br/>
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
				</td>
				
			</tr>
			<tr>
				
				<td width="25%">
					- CQT quản lý;<br/> <br/>
					- Lưu: VT
				</td>
				<td colspan="1" width="30%">
				<lable></lable>
					<!--<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <br/>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>-->
				</td>
				<xsl:if test="$kskthue/ngayKy ">
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b>
					<br/>
					<i>(Ký, ghi rõ họ, tên)</i>
					</td>
				</xsl:if>
				<xsl:if test="not($kskthue/ngayKy)">
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
					<xsl:value-of select="$kskthue/nguoiKy"/>
				</td>
			</tr>
		</table>
		<br/>
		</div>
	</xsl:template>
</xsl:stylesheet>
