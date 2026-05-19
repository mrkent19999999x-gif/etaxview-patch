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
					<b>ĐẠI DIỆN HỘ KINH DOANH</b>
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
<!--24_DK_TCT-->
	<xsl:template name="tkhaiFooter_24DK_TCT">
	<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>

	<br/><span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Người nộp thuế cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này./. </span>
	<div class="footer_div">
		
		<!-- <table>
	            <tr>
	                <td><i><b><u>Ghi chú:</u></b>Hộ, cá nhân, nhóm cá nhân  kinh doanh không cần đóng dấu.</i></td>
					
				</tr>
				<tr>
	                <td></td>					
					<td class="align-c"><b>NGƯỜI NỘP THUẾ hoặc NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b></td>
				</tr>
				<tr>
	                <td></td>						
					<td class="align-c"><i>(Ký, đóng dấu và ghi rõ họ tên)</i></td>
				</tr>
				<tr>
	                <td></td>						
					<td class="align-c"><xsl:value-of select="$tkchinh/nguoiDaiDien"/></td>
				</tr>
		</table>-->
		
		<table>
			<tr>
				
				<td width="25%">
					<br/> <br/>
					
				</td>
				<td colspan="1" width="30%">
					
					 <br/> <br/>
					
				</td>
				 
					<td width="35%" class="align-c">
					<b>NGƯỜI NỘP THUẾ hoặc NGƯỜI ĐẠI DIỆN THEO PHÁP LUẬT</b>
					<br/>
					<i> (Ký, ghi rõ họ tên và đóng dấu)</i>
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
</xsl:stylesheet>
