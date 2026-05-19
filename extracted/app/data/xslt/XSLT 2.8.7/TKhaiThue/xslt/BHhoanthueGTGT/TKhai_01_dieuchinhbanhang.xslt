<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_dieuchinhbanhang">
		<xsl:with-param name="mauTKhai"   select="'Mẫu 2.10'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'THÔNG BÁO 
Về việc thực hiện hợp đồng dịch vụ với đại lý thuế'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<td>Giấy chứng nhận đăng ký kinh doanh số: <xsl:value-of select="$tkchinh/soGiayTo"/>, Ngày cấp: <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCap,'dd/mm/yyyy')"/></td>, Cơ quan cấp: <xsl:value-of select="$tkchinh/coQuanCap"/></td><br/> 
            <br>Ngành nghề kinh doanh: <xsl:value-of select="$tkchinh/ten_NganhNghe"/></br>
			<br>Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'dd/mm/yyyy')"/>,  <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đã được <xsl:value-of select="$tkchinh/tenCQT"/> công nhận là doanh nghiệp bán hàng hoàn thuế giá trị gia tăng đối với hàng hóa của người nước ngoài mua tại Việt Nam mang theo khi xuất cảnh</br>
			<br> Nay, do <xsl:value-of select="$tkchinh/do"/> đề nghị <xsl:value-of select="$tkchinh/tenCQT"/>:  <xsl:value-of select="$tkchinh/tenLoaiThayDoi"/>  </br>
			<br><td>1. Thông tin <xsl:value-of select="$tkchinh/tenLoaiThayDoi"/></td></br>
						       <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>								
										<td class="align-c"><b>Tên chi nhánh/cửa hàng/cửa hàng đại lý </b></td>
										<td class="align-c"><b>Mã số thuế</b></td>
										<td class="align-c"><b>Địa chỉ thuế</b></td>
										<td class="align-c"><b>Kinh doanh mặt hàng</b></td>
										<td class="align-c"><b>Thông tin chữ ký số</b></td>
										<td class="align-c"><b>Số điện thoại</b></td>
										<td class="align-c"><b>Fax</b></td>
										<td class="align-c"><b>eMail</b></td>
									
										
									</tr>
						<xsl:for-each select="$tkchinh/TTDieuChinhChamdut/ChitietTTDieuChinhChamDut">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenCuaHang"/></td>
								
								<td class="align-c"><xsl:value-of select="mst"/></td>
								<td class="align-c"><xsl:value-of select="diaChi"/>, <xsl:value-of select="tenXaPhuong"/>, <xsl:value-of select="tenTinh"/></td>
								
								<td class="align-c"><xsl:value-of select="matHangKinhDoanh"/></td>
							    <td class="align-c"><xsl:value-of select="thongTinCKS"/></td>
								<td class="align-c"><xsl:value-of select="dienThoai"/></td>
								<td class="align-c"><xsl:value-of select="fax"/></td>
								<td class="align-c"><xsl:value-of select="email"/></td>
								
								</tr>
	         		</xsl:for-each>	
					
					
                      </table>
					  <td>Được <xsl:value-of select="$tkchinh/tenLoaiThayDoi"/> việc bán hàng hoàn thuế giá trị gia tăng đối với hàng hóa của người nước ngoài mua tại Việt Nam mang theo khi xuất cảnh theo quy định tại Thông tư số 72/2014/TT-BTC  ngày 30/5/2014, Thông tư 92/2019/TT-BTC ngày 31/12/2019 của Bộ trưởng  Bộ Tài chính</td><br/>
					 <br/>  <td><xsl:value-of select="$ttkthue/NNT/tenNNT"/> cam kết thực hiện và chịu trách nhiệm trước pháp luật về cam kết này</td><br/> 
            <br><xsl:value-of select="$ttkthue/NNT/tenNNT"/> kính đề nghị <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/> điều chỉnh <xsl:value-of select="$tkchinh/dieuChinh"/> doanh nghiệp bán hàng hoàn thuế giá trị gia tăng cho người nước ngoài xuất cảnh.</br>
								
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_01_dangkybanhang">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
