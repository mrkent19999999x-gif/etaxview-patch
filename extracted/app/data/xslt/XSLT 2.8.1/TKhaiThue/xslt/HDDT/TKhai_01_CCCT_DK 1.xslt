<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="ndtkhaihddt" select="TKhai/DLTKhai" />
	<xsl:variable name="moTaBieuMau" select="''" />
	<xsl:variable name="ghiChuPL" select="''"/>
	  <xsl:call-template name="tkhaiHeader_01_CCCT_DK">
		<xsl:with-param name="MSo"   select="'01/CCCT-ĐK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
				<br/>

				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1. Cơ quan đề nghị:</b></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên cơ quan:  <xsl:value-of select="TKhai/DLTKhai/TTChung/TNNT"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: <xsl:value-of select="TKhai/DLTKhai/TTChung/DChi"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="TKhai/DLTKhai/TTChung/SDTCQuan"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Fax: <xsl:value-of select="TKhai/DLTKhai/TTChung/Fax"/></div>
				<br></br>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đầu mối liên hệ:</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người liên hệ: <xsl:value-of select="TKhai/DLTKhai/TTChung/TNLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="TKhai/DLTKhai/TTChung/SDTNLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thư điện tử: <xsl:value-of select="TKhai/DLTKhai/TTChung/DCTDTu"/></div>
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2. Nội dung đề nghị:</b></div>
	
			<xsl:if test="TKhai/DLTKhai/TTChung/HThuc = '1'">
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a) Đề nghị đăng ký mới hoặc bổ sung nội dung cung cấp thông tin hóa đơn điện tử, chứng từ điện tử với các chỉ tiêu thông tin như sau:</div>
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu thông tin</b></td>
						   <td class="align-c"><b>Mục đích sử dụng</b></td>				   						   						   						   						   
						 </tr>
						<tr>	
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/CTieu/NDCTieu">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="CTTTin"/></td>
								  <td class="align-c"><xsl:value-of select="MDSDung"/></td>		
								 </tr>
							</xsl:for-each>
						</tr>
					</table>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b) Cấp mới tài khoản truy cập Cổng thông tin hóa đơn điện tử, chứng từ điện tử theo danh sách sau:</div>
					<table class="tkhai_table">
						 <tr>
						   <td rowspan="2" class="align-c"><b>STT</b></td>
						   <td rowspan="2" class="align-c"><b>Họ và tên</b></td>
						   <td rowspan="2" class="align-c"><b>Đơn vị</b></td>
							<td rowspan="2" class="align-c"><b>Điện thoại di động</b></td>
						   <td rowspan="2" class="align-c"><b>Thư điện tử</b></td>
						   <td rowspan="2" class="align-c"><b>Mục đích sử dụng</b></td>	
							<td colspan='2' class="align-c"><b>Thời hạn sử dụng (tháng)</b></td>							   
						 </tr>
						 <tr>
							<td>Từ ngày</td>
							<td>Đến ngày</td>
						 </tr>
						<tr>	
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/CMoi/NDCMoi">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="Ten"/></td>
								  <td class="align-c"><xsl:value-of select="Dvi"/></td>
								  <td class="align-c"><xsl:value-of select="SDThoai"/></td>	
									<td class="align-c"><xsl:value-of select="DCTDTu"/></td>
								  <td class="align-c"><xsl:value-of select="MDSDung"/></td>	
									<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>							  
								 </tr>
							</xsl:for-each>
						</tr>
					</table>
			</xsl:if>
			<xsl:if test="TKhai/DLTKhai/TTChung/HThuc = '2'">
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;c) Bổ sung thời hạn sử dụng tài khoản truy cập Cổng thông tin hóa đơn điện tử, chứng từ điện tử theo danh sách sau:</div>
				<table class="tkhai_table">
						 <tr>
						   <td rowspan="2" class="align-c"><b>STT</b></td>
						   <td rowspan="2" class="align-c"><b>Họ và tên</b></td>
						   <td rowspan="2" class="align-c"><b>Đơn vị</b></td>
							<td rowspan="2" class="align-c"><b>Điện thoại di động</b></td>
						   <td rowspan="2" class="align-c"><b>Thư điện tử</b></td>
						   <td rowspan="2" class="align-c"><b>Tên tài khoản</b></td>	
							<td colspan='2' class="align-c"><b>Thời hạn sử dụng (tháng)</b></td>							   
						 </tr>
						 <tr>
							<td>Từ ngày</td>
							<td>Đến ngày</td>
						 </tr>
						<tr>	
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/CMoi/NDCMoi">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="Ten"/></td>
								  <td class="align-c"><xsl:value-of select="Dvi"/></td>
								  <td class="align-c"><xsl:value-of select="SDThoai"/></td>	
									<td class="align-c"><xsl:value-of select="DCTDTu"/></td>
								  <td class="align-c"><xsl:value-of select="TTKhoan"/></td>	
									<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(TNgay,'dd/mm/yyyy')"/></td>
								  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(DNgay,'dd/mm/yyyy')"/></td>							  
								 </tr>
							</xsl:for-each>
						</tr>
					</table>
			</xsl:if>
			<xsl:if test="TKhai/DLTKhai/TTChung/HThuc = '3'">
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;d) Chấm dứt sử dụng tài khoản truy cập Cổng thông tin hóa đơn điện tử, chứng từ điện tử theo danh sách sau:</div>
				<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Họ và tên</b></td>
						   <td class="align-c"><b>Đơn vị</b></td>
						   <td class="align-c"><b>Điện thoại di động</b></td>
						   <td class="align-c"><b>Thư điện tử</b></td>
						   <td class="align-c"><b>Tên tài khoản</b></td>	
							<td class="align-c"><b>Lý do thu hồi</b></td>							   
						 </tr>
						<tr>	
							<xsl:for-each select="TKhai/DLTKhai/NDTKhai/CMoi/NDCMoi">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
								  <td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-c"><xsl:value-of select="Ten"/></td>
								  <td class="align-c"><xsl:value-of select="Dvi"/></td>
								  <td class="align-c"><xsl:value-of select="SDThoai"/></td>	
									<td class="align-c"><xsl:value-of select="DCTDTu"/></td>
								  <td class="align-c"><xsl:value-of select="TTKhoan"/></td>	
									<td class="align-c"><xsl:value-of select="LDTHoi"/></td>							  
								 </tr>
							</xsl:for-each>
						</tr>
					</table>
			</xsl:if>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3. Hình thức nhận văn bản trả lời: </b></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;]&#160;&#160;&#160;&#160; Nhận văn bản giấy</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[X]&#160;&#160;&#160;&#160;Nhận văn bản điện tử tại địa chỉ thư điện tử</div>
				<br></br>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Chúng tôi cam kết truy cập Hệ thống dữ liệu hóa đơn điện tử của cơ quan Thuế đảm bảo bí mật nhà nước, bí mật thông tin của người nộp thuế theo quy định của pháp luật; thực hiện theo các hướng dẫn, thông báo của cơ quan thuế và phối hợp khi có yêu cầu của cơ quan thuế gửi đến địa chỉ thư điện tử chúng tôi đã đăng ký nêu trên theo quy định của pháp luật.</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Chúng tôi cam kết hoàn toàn chịu trách nhiệm quản lý và sử dụng tài khoản theo các quy định của cơ quan thuế và pháp luật về thuế.</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trân trọng./.</div>		
			</div>	
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter_01_CCCT_DK"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
 	</xsl:template>		
</xsl:stylesheet>