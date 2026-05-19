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
				<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'mm')"/> năm<xsl:value-of select="ihtkk:stringDatetime($kskthue/ngayKy,'yyyy')"/></i>
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
					<b>NGƯỜI NỘP THUẾ hoặc   ĐẠI DIỆN HỢP PHÁP CỦA NGƯỜI NỘP THUẾ <br/> hoặc TỔ CHỨC KHAI THAY</b>
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
	<!--24_1_DK_TCT-->
    <xsl:template name="tkhaiFooter_24_1_DK_TCT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<br/><span>Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./.</span>
	<br></br>
	<div class="footer_div">
		<table>
			
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
				<lable></lable>
					<!--<xsl:value-of select="$kskthue/DLyThue/NVienDLy/tenNVienDLyThue"/>
					 <br/> <b>
					<xsl:value-of select="$kskthue/DLyThue/NVienDLy/cchiHNghe"/>-->
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
</xsl:stylesheet>
