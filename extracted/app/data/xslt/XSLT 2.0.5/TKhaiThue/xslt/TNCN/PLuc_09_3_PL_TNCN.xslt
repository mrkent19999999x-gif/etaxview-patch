<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
	<!--start phu luc 09_3/PL-TNCN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN">	
		<xsl:variable name="pl03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN' />
			<xsl:call-template name="tkhaiHeader-pluc-09-3-TNCN">
		<xsl:with-param name="mauTKhai"   select="'09-3/PL-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'GIẢM TRỪ GIA CẢNH CHO NGƯỜI PHỤ THUỘC'"/>
		<xsl:with-param name="ghiChuPL"   select="'(theo tờ khai quyết toán thuế thu nhập cá nhân mẫu số 09/KK-TNCN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
				<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
			  	<table class="tkhai_table">
						<tr class="tkhaiheader">
						     <td class="align-l" colspan="9">I. Người phụ thuộc đã có MST/CMND/Hộ chiếu</td>
					     </tr>
					     <tr class="tkhaiheader">
							   <td class="align-c" rowspan="2">STT</td>
							 <td class="align-c" rowspan="2">Họ và tên</td>
							 <td class="align-c" rowspan="2">Ngày sinh</td>
							 <td class="align-c" rowspan="2">Mã số thuế </td>
							<td class="align-c" rowspan="2">Quốc tịch</td>
							 <td class="align-c" rowspan="2">Số CMND/ Hộ chiếu</td>
							 <td class="align-c" rowspan="2">Quan hệ với người nộp thuế</td>
							 <td class="align-c" colspan="2">Thời gian được tính giảm trừ trong năm</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c">Từ tháng</td>
							 <td class="align-c">Đến tháng</td>
							</tr>
							<tr class="tkhaiheader">
	  	                    <td class="align-c">[09]</td>
							<td class="align-c">[10]</td>
							<td class="align-c">[11]</td>
							<td class="align-c">[12]</td>
							<td class="align-c">[13]</td>
							<td class="align-c">[14]</td>
							<td class="align-c">[15]</td>
							<td class="align-c">[16]</td>
							<td class="align-c">[17]</td>
							</tr>
						   <xsl:for-each select="$pl03/NPTCoMST/CTietNPTCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct10"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct11, 'dd/mm/yyyy')"/></td>
						    <td class="align-c"><xsl:value-of select="ct12"/></td>
							 <td class="align-l" ><xsl:value-of select="ct13"/></td>
							 <td class="align-l"><xsl:value-of select="ct14"/></td>
						    <td class="align-l"><xsl:value-of select="ct15"/></td>
						    <td class="align-l"><xsl:value-of select="ThoiGianGiamTru/ct16"/></td>
						    <td class="align-l"><xsl:value-of select="ThoiGianGiamTru/ct17"/></td>						 
							</tr>
							</xsl:for-each >
					   </table>
					   <table class="tkhai_table">
							<tr class="tkhaiheader">
						     <td class="align-l" colspan="13">II. Người phụ thuộc chưa có MST/CMND/Hộ chiếu</td>
						     </tr>
							<tr class="tkhaiheader">
							 <td class="align-c" rowspan="3">STT</td>
							 <td class="align-c" rowspan="3">Họ và tên</td>
							 <td class="align-c" colspan="7">Thông tin trên giấy khai sinh</td>
							<td class="align-c" rowspan="3">Quốc tịch</td>
							 <td class="align-c" rowspan="3">Quan hệ với người nộp thuế</td>
							 <td class="align-c" colspan="2">TThời gian được tính giảm trừ trong năm</td>
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c" rowspan="2">Ngày sinh</td>
							 <td class="align-c" rowspan="2">Số</td>
				     		 <td class="align-c" rowspan="2">Quyển số</td>
							 <td class="align-c" colspan="4">Nơi đăng ký</td>
							 <td class="align-c" rowspan="2">Từ tháng</td>
				     		 <td class="align-c" rowspan="2">Đến tháng</td>							 
							</tr>
							<tr class="tkhaiheader">
							 <td class="align-c" >Quốc gia</td>
							 <td class="align-c">Tỉnh/ Thành phố</td>
				     		 <td class="align-c">Quận/Huyện</td>
							 <td class="align-c">Phường/Xã</td>
							</tr>							
							<tr class="tkhaiheader">
	  	                    <td class="align-c">[18]</td>
							<td class="align-c">[19]</td>
							<td class="align-c">[20]</td>
							<td class="align-c">[21]</td>
							<td class="align-c">[22]</td>
							<td class="align-c">[23]</td>
							<td class="align-c">[24]</td>
							<td class="align-c">[25]</td>
							<td class="align-c">[26]</td>
							<td class="align-c">[27]</td>
							<td class="align-c">[28]</td>
							<td class="align-c">[29]</td>
							<td class="align-c">[30]</td>							
							</tr>
						   <xsl:for-each select="$pl03/NPTChuaCoMST/CTietNPTChuaCoMST">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l" ><xsl:value-of select="ct19"/></td>
							 <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ThongTinGKS/ct20, 'dd/mm/yyyy')"/></td>
						     <td class="align-l"><xsl:value-of select="ThongTinGKS/ct21"/></td>
							 <td class="align-l" ><xsl:value-of select="ThongTinGKS/ct22"/></td>
							 <td class="align-l"><xsl:value-of select="ThongTinGKS/NoiDangKy/ct23"/></td>
						    <td class="align-l"><xsl:value-of select="ThongTinGKS/NoiDangKy/ct24"/></td>
						    <td class="align-l"><xsl:value-of select="ThongTinGKS/NoiDangKy/ct25"/></td>
						    <td class="align-l"><xsl:value-of select="ThongTinGKS/NoiDangKy/ct26"/></td>
					  	  <td class="align-l"><xsl:value-of select="ct27"/></td>
						    <td class="align-l"><xsl:value-of select="ct28"/></td>
						    <td class="align-l"><xsl:value-of select="ThoiGianGiamTru/ct29"/></td>
						    <td class="align-l"><xsl:value-of select="ThoiGianGiamTru/ct30"/></td>							 
							</tr>
							</xsl:for-each >	
						   </table>	   	
 						
                        </div>
					</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter"/>	
	<div id="sigDiv"></div>
</td>
</tr>
</table>			
			</xsl:if>		   
	</xsl:template>		
</xsl:stylesheet>